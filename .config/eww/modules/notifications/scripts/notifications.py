import dbus
import dbus.service
from dbus.mainloop.glib import DBusGMainLoop
from gi.repository import GLib
import threading
import time

class Notification:
    def __init__(self, id, summary, body, icon):
        self.id = id
        self.summary = summary
        self.body = body
        self.icon = icon

notifications = []
current_id = 0

def remove_object(notif):
    time.sleep(10)
    if notif in notifications:
        notifications.remove(notif)
        print_state()

def add_object(notif):
    notifications.insert(0, notif)
    print_state()
    timer_thread = threading.Thread(target=remove_object, args=(notif,))
    timer_thread.daemon = True
    timer_thread.start()

def print_state():    
    string = ""
    for item in notifications:
        string = string + f"""
                  (button :class 'notif' :onclick 'bash ~/.config/eww/modules/notifications/scripts/notifications.sh close {item.id}'
                   (box :orientation 'horizontal' :space-evenly false
                      (image :image-width 60 :image-height 60 :path '{item.icon or ''}')
                      (box :orientation 'vertical'
                        (label :width 300 :wrap true :text '{item.summary or ''}')
                        (label :width 50 :wrap true :text '{item.body or ''}')
                  )))
                  """
    string = string.replace('\n', ' ')
    print(fr"""(box :orientation 'vertical' {string or ''})""", flush=True)

class NotificationServer(dbus.service.Object):
    def __init__(self):
        bus_name = dbus.service.BusName('org.freedesktop.Notifications', bus=dbus.SessionBus())
        dbus.service.Object.__init__(self, bus_name, '/org/freedesktop/Notifications')

    @dbus.service.method('org.freedesktop.Notifications', in_signature='susssasa{ss}i', out_signature='u')
    def Notify(self, app_name, replaces_id, app_icon, summary, body, actions, hints, timeout):
        global current_id
        current_id += 1
        notif = Notification(current_id, summary, body, app_icon)
        add_object(notif)
        return current_id

    @dbus.service.method('org.freedesktop.Notifications', out_signature='ssss')
    def GetServerInformation(self):
        return ("Custom Notification Server", "ExampleNS", "1.0", "1.2")

    @dbus.service.method('org.freedesktop.Notifications', in_signature='u', out_signature='')
    def CloseNotification(self, id):
        global notifications
        notifications = [n for n in notifications if n.id != id]
        print_state()

DBusGMainLoop(set_as_default=True)

if __name__ == '__main__':
    server = NotificationServer()
    mainloop = GLib.MainLoop()
    mainloop.run()

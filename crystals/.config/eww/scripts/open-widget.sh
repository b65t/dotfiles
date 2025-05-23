#!/bin/bash

case "$1" in
  settings)

    state=$(eww get open_sett)

    open_sett() {
      if [[ -z $(eww list-windows | grep '*settings') ]]; then
         eww open settings
      fi
      eww update open_sett=true
    }

    close_sett() {
      eww update open_sett=false
    }

    case $2 in
    close)
      close_sett
      exit 0
      ;;
    esac

    case $state in
      true)
        close_sett;;
      false)
        open_sett;;
    esac

  ;;
  calendar)
  state=$(eww get open_calendar)

  open_calendar() {
    if [[ -z $(eww list-windows | grep '*calendar') ]]; then
        eww open calendar
    fi
    eww update open_calendar=true
  }

  close_calendar() {
    eww update open_calendar=false
  }

  case $2 in
    close)
        close_calendar
    exit 0;;
  esac

  case $state in
      true)
        close_calendar;;
      false)
        open_calendar;;
  esac

  ;;
  music)

    state=$(eww get open_wmusic)

    open_wmusic() {
      if [[ -z $(eww list-windows | grep '*wmusic') ]]; then
         eww open wmusic
      fi
      eww update open_wmusic=true
    }

    close_wmusic() {
      eww update open_wmusic=false
    }

    case $2 in
      close)
        close_wmusic
      exit 0;;
    esac

    case $state in
      true)
        close_wmusic;;
      false)
        open_wmusic;;
    esac

  ;;
  notifications-center)

    state=$(eww get open_notifications-center)

    open_notifications-center() {
      if [[ -z $(eww list-windows | grep '*notification-center') ]]; then
         eww open notification-center
      fi
      eww update open_notifications-center=true
    }

    close_notifications-center() {
      eww update open_notifications-center=false
    }

    case $2 in
      close)
        close_notifications-center
      exit 0;;
    esac

    case $state in
      true)
        close_notifications-center;;
      false)
        open_notifications-center;;
    esac

  ;;
  dock)

  state=$(eww get open_dock)

  open_dock() {
    if [[ -z $(eww list-windows | grep '*dock') ]]; then
       eww open dock
    fi
    eww update open_dock=true
  }

  close_dock() {
    eww update open_dock=false
  }

  case $2 in
    close)
        close_dock
    exit 0;;
  esac

  case $state in
    true)
        close_dock;;
    false)
        open_dock;;
  esac

  ;;
  *)
    echo "Usage : $0 {widget name}"
  ;;
esac

exit 0

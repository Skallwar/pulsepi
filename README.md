# PulsePi
This is a simple script to setup a pulseaudio network music box

## Server
### Requirements
``pulseaudio`` and the ``zeroconf`` module must be instaled

### Install
- Edit ``system.pa`` and update the line with ``## Insert here authorized subnet``.
- Run ``install.sh`` as root.

## Client
### Requirements
``zeroconf`` pulseaudio module and ``avahi`` must be installed

### Install
- Add ``load-module module-zeroconf-discover`` to ``/etc/pulse/default.pa``
- Start and enable ``avahi-daemon.service``

Your pulseaudio network music box should appears in ``pavucontrol``.

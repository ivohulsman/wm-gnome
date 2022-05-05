#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr

PATH_I3_GNOME = $(PREFIX)/bin/i3-gnome
PATH_I3_GNOME_DESKTOP = $(PREFIX)/share/applications/i3-gnome.desktop
PATH_I3_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/i3-gnome.session
PATH_I3_GNOME_XSESSION = $(PREFIX)/share/xsessions/i3-gnome.desktop
PATH_GNOME_SESSION_I3 = $(PREFIX)/bin/gnome-session-i3

PATH_LEFTWM_GNOME = $(PREFIX)/bin/leftwm-gnome
PATH_LEFTWM_GNOME_DESKTOP = $(PREFIX)/share/applications/leftwm-gnome.desktop
PATH_LEFTWM_GNOME_SESSION = $(PREFIX)/share/gnome-session/sessions/leftwm-gnome.session
PATH_LEFTWM_GNOME_XSESSION = $(PREFIX)/share/xsessions/leftwm-gnome.desktop
PATH_GNOME_SESSION_LEFTWM = $(PREFIX)/bin/gnome-session-leftwm

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/i3wm/i3-gnome-xsession.desktop $(PATH_I3_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/i3wm/i3-gnome.desktop $(PATH_I3_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/i3wm/i3-gnome.session $(PATH_I3_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/i3wm/i3-gnome $(PATH_I3_GNOME)
	$(INSTALL) -m0755 -D session/i3wm/gnome-session-i3 $(PATH_GNOME_SESSION_I3)
	$(INSTALL) -m0644 -D session/leftwm/leftwm-gnome-xsession.desktop $(PATH_LEFTWM_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/leftwm/leftwm-gnome.desktop $(PATH_LEFTWM_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/leftwm/leftwm-gnome.session $(PATH_LEFTWM_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/leftwm/leftwm-gnome $(PATH_LEFTWM_GNOME)
	$(INSTALL) -m0755 -D session/leftwm/gnome-session-leftwm $(PATH_GNOME_SESSION_LEFTWM)

i3wm:
	$(INSTALL) -m0644 -D session/i3wm/i3-gnome-xsession.desktop $(PATH_I3_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/i3wm/i3-gnome.desktop $(PATH_I3_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/i3wm/i3-gnome.session $(PATH_I3_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/i3wm/i3-gnome $(PATH_I3_GNOME)
	$(INSTALL) -m0755 -D session/i3wm/gnome-session-i3 $(PATH_GNOME_SESSION_I3)

leftwm:
	$(INSTALL) -m0644 -D session/leftwm/leftwm-gnome-xsession.desktop $(PATH_LEFTWM_GNOME_XSESSION)
	$(INSTALL) -m0644 -D session/leftwm/leftwm-gnome.desktop $(PATH_LEFTWM_GNOME_DESKTOP)
	$(INSTALL) -m0644 -D session/leftwm/leftwm-gnome.session $(PATH_LEFTWM_GNOME_SESSION)
	$(INSTALL) -m0755 -D session/leftwm/leftwm-gnome $(PATH_LEFTWM_GNOME)
	$(INSTALL) -m0755 -D session/leftwm/gnome-session-leftwm $(PATH_GNOME_SESSION_LEFTWM)

uninstall:
	rm -f $(PATH_I3_GNOME)
	rm -f $(PATH_I3_GNOME_DESKTOP)
	rm -f $(PATH_I3_GNOME_SESSION)
	rm -f $(PATH_I3_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_I3)
	rm -f $(PATH_LEFTWM_GNOME)
	rm -f $(PATH_LEFTWM_GNOME_DESKTOP)
	rm -f $(PATH_LEFTWM_GNOME_SESSION)
	rm -f $(PATH_LEFTWM_GNOME_XSESSION)
	rm -f $(PATH_GNOME_SESSION_LEFTWM)



.PHONY: all install uninstall

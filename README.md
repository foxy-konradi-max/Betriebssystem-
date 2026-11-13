# FluidOS

Ein schlankes Linux-System (Debian 12 + XFCE) für Laptops wie dein ThinkPad.
Look: macOS-Stil mit Ubuntu-Einflüssen. Enthalten sind:

- **Oberfläche:** Menüleiste oben, Dock unten mit Zoom, WhiteSur-Fenster, Mac-Symbole, runde Ecken, Schatten und Unschärfe (picom)
- **Suche:** Super + Leertaste öffnet eine Spotlight-ähnliche Suche
- **Programme:** Google Chrome, Firefox, App Store (GNOME Software mit Flathub)
- **Installer:** Calamares im FluidOS-Design
- **Start:** Startbildschirm mit FluidOS-Logo und Ladebalken, GRUB-Menü mit Hintergrundbild (nur im installierten System, nicht auf dem USB-Stick)
- **Spiele:** Über den Software-Store (Flathub) installierbar, z. B. GZDoom, Freedoom, Chocolate Doom
- **Sprache:** Deutsch, Tastatur und Zeitzone Berlin

## ISO bauen (ohne Linux-Rechner)

1. Kostenloses Konto auf github.com anlegen und ein neues Repository erstellen.
2. Den **Inhalt** dieses Ordners ins Stammverzeichnis des Repositorys hochladen (auch den versteckten Ordner `.github`; nicht den übergeordneten Ordner `fluidos` selbst).
3. Oben auf **Actions** klicken, **FluidOS ISO bauen** wählen, **Run workflow** drücken.
4. Nach etwa 30 bis 90 Minuten unter **Artifacts** die Datei **FluidOS-ISO** herunterladen und entpacken.

## Auf den ThinkPad bekommen

1. ISO mit **Rufus** (Modus: ISO-Abbild) oder **balenaEtcher** auf einen USB-Stick (mind. 4 GB) schreiben.
2. ThinkPad neu starten, beim Logo **F12** drücken, USB-Stick wählen.
3. Zuerst nur testen. Zum Installieren das Symbol **FluidOS installieren** auf dem Desktop öffnen.

Alle Daten auf der Zielplatte werden bei der Installation gelöscht. Das Installer-Symbol bleibt auch auf dem installierten System auf dem Desktop und kann gelöscht werden.

## Hinweise

- Der Build muss zuerst in GitHub Actions erfolgreich durchlaufen. Ein erfolgreicher ISO-Build wurde für dieses Projekt noch nicht nachgewiesen; teste die ISO zunächst in einer virtuellen Maschine oder von einem USB-Stick im Live-Modus.
- Läuft der Laptop mit den Effekten zäh, den Eintrag **Compositor** (picom) in den Autostart-Einstellungen ausschalten.

## Anpassen

- Programme: `config/package-lists/fluidos.list.chroot`
- Design: `config/hooks/live/0200-theme.hook.chroot` und `config/includes.chroot/`
- Hintergrundbild: `config/includes.chroot/usr/share/backgrounds/fluidos/wallpaper.png`

## Doom und andere Spiele

Im Store nach **Doom**, **GZDoom** oder **Freedoom** suchen. Freedoom ist kostenlos und enthält eigene Spieldaten. Für das Original-Doom werden Spieldateien benötigt, die man kaufen muss (zum Beispiel über Steam). Auch **SuperTuxKart**, **Xonotic**, **OpenTTD** und viele weitere Spiele finden sich im Store.

---
title: "rsync"
date: 2022-04-04T20:22:33+02:00
image: "/img/data-transfer.png"
aliases: ["/posts/rsync/"]
---

![Sync](/img/data-transfer.png)

Dank `rsync` können Daten/Verzeichnisse sehr schnell und einfach zwischen zwei Verzeichnisse (Source und Target) synchronisiert werden.  
rsync kann dabei auch OS übergreifend verwendet werden.

Ich verwende `rsync` zum sychronisieren meiner Sourcen vom PC mit der IBM i.  
Dank der Vielzahl an Erweiterungen für den **VSCode** ist es möglich den rsync Befehl z.B. automatisch beim Speichern ausführen zu lassen.


`rsync` via `yum` **installieren**:
```sh
yum install rsync
```

`rsync` verwendet bei der Übertragung zu einem fernen Server SSH.  
Daher muss der SSH Server (Deamon) laufen:
```sh
STRTCPSVR *SSHD
```

### Beispiel

```
rsync -av --rsync-path=/QOpenSys/pkgs/bin/rsync --exclude={'venv','__pycache__','.vscode'} /source-dir/ 192.168.0.1:/home/prouza/target-dir/
```

**`--rsync-path`**  
Damit auf der IBM i in der Shell Sitzung auch der `rsync` command korrekt gefunden wird

**`--exclude`**  
Dateien und Verzeichnisse, die nicht synchronisiert werden sollen



### SSH Public Key Authentifizierung
Um ein automatisches Login zu ermöglichen, kann der Login über eine Key-Authentifizierung erfolgen.  
D.h. statt eines User + Passworts erfolgt der Login über einen Private-Key, der am PC hinterlegt ist.  
Dadurch geschieht der Login automatisch und es kann gleich losgearbeitet werden.

[Hier (Public Key Authentifizierung)](https://www.thomas-krenn.com/de/wiki/OpenSSH_Public_Key_Authentifizierung_unter_Ubuntu) gibt es eine gute Beschreibung für den Einstieg.
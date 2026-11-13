---
title: "Bash Shell"
date: 2022-04-04T20:22:33+02:00
image: "/img/bash-logo.svg"
aliases: ["/posts/bash/"]
---

![Bash](/img/bash-logo.svg)

Dank der Bash macht das Arbeiten via Shell wieder Spaß.  
Es gibt eine Vielzahl an **Features** die durch die Bash bekommen:

* Mit Bildauf/Bildab kann in der Befehlshistory blättern werden
* Mit STRG + R kann in der Befehlshistory nach einem Zeichen gesucht werden
* Mit TAB wird das Verzeichnis oder die Datei via Autovervollständigung automatisch befüllt
* Diverse Befehle die mit der Bash mitgeliefert werden

Bash via yum **installieren**:
```sh
yum install bash
```

Über eine SQL Prozedur kann die Bash für ein Userprofil als Default Bash hinterlegt werden:

```sql
CALL QSYS2.SET_PASE_SHELL_INFO('PROUZA', '/QOpenSys/pkgs/bin/bash');
```

Damit via SSH überhaupt vom PC zugegriffen werden kann, muss der SSH Server (Deamon) laufen:
```sh
STRTCPSVR *SSHD
```

Ich verwende SSH für
* Filetransfer (statt FTP)
* Applikationen (z.B.: VSCode)
* SSH Zugriffe vom PC für Shell Aktivitäten

### SSH Public Key Authentifizierung
Um ein automatisches Login zu ermöglichen, kann der Login über eine Key-Authentifizierung erfolgen.  
D.h. statt eines User + Passworts erfolgt der Login über einen Private-Key, der am PC hinterlegt ist.  
Dadurch geschieht der Login automatisch und es kann gleich losgearbeitet werden.

[Hier (Public Key Authentifizierung)](https://www.thomas-krenn.com/de/wiki/OpenSSH_Public_Key_Authentifizierung_unter_Ubuntu) gibt es eine gute Beschreibung für den Einstieg.
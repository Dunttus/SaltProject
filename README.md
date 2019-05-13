# SaltProject

## Tarkoitus ja tavoite tila
• **Debian** – Verkonlaajuinen sivujen esto ohjelmisto Pi-hole ja UFW asennettuna ja konfiguroituna.

• **Mx Linux** – Bash terminaali mieltymykset konfiguroitu ja taustakuva vaihdettu.

• **Xubuntu** – LAMP, SSH ja UFW asennettuna ja konfiguroituna.

• **Windows Server 2016** – Ohjelmistot asennettu: 7zip, Firefox, AutoIt, Vlc, Putty.

• **Windows 10** – Ohjelmistot asennettu: 7zip, Firefox, AutoIt, Vlc, Putty, Steam ja Gimp.

## Windows asennukset
Windows ohjelmistojen asennukseen tarvitset vielä paketin hallinnan, jonka ohje löytyy [SaltStackin](https://docs.saltstack.com/en/latest/topics/windows/windows-package-manager.html) sivulta.

## Orjia lisäävä bash skripti
	#!/bin/bash
	sudo apt-get update && sudo apt-get install -y salt-minion && sudo apt-get install -y pwgen
	echo master: 10.0.0.0$'\r'id: user-$(pwgen 10) | sudo tee /etc/salt/minion
	sudo systemctl restart salt-minion

## Lisätietoja
Lisätietoja löytyy blogista: (https://jonihakala208450670.wordpress.com/2019/04/28/kurssityo/)

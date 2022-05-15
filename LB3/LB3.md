# Leistungsbeurteilung 3 Doku Edi Sherifi 
## Diese Dokumentation wurde geschrieben von Edi Sherifi. 
----------------------------------------------------------------------------
# **Inhaltsverzeichnis**
## Einleitung
## Grafische Übersicht
## Meine Umgebung
## Beschreibung des Codes
## yaml File
## Tests
## Sicherheit
## Persönliche Reflexion
## Quellen
## Kontaktperson

## Einleitung
Für die Leistungsbeurteilung 3 erstelle ich mit einer yaml-Datei eine Datenbank samt Wordpress-Page access. Mit dem Befehl "docker-compose up -d" sollten die beiden VM's automatisiert aufstarten. Ich werde dazu zwei bereits vorhandene Builds verwenden. Das ist der Sinn dahinter. Ich habe am Anfang zuerst ein anderes Projekt durchgeführt, welches jedoch scheiterte. 
Ich musste eine andere Idee finden. 

## Grafische Übersicht
Diese Grafik zeigt auf, wie die Umgebung aufgebaut ist. 

    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    #                                                               #	
    #    +++++++++++++++++++++++++    ++++++++++++++++++++++++++    #
    #    # Web-Server            #    # Datenbank-Server       #    #       
    #    # Port: 8080            #    # Port: 3306             #    #       
    #    # Volume:/              #    # Volume: /var/lib/mysql #    #       
    #    +++++++++++++++++++++++++    ++++++++++++++++++++++++++    #
    #                                                               #	
    # Container                                                     #	
    +---------------------------------------------------------------+
    + Container-Engine: Docker                                      +	
    +---------------------------------------------------------------+
    + Gast OS: Ubuntu 16.04                                         +	
    +---------------------------------------------------------------+
    + Hypervisor: VirtualBox                                        +	
    +---------------------------------------------------------------+
    + Host-OS: Windows, MacOS, Linux                                +	
    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


## Meine Umgebung

Ich habe, wie in der grafischen Übersicht ersichtlich, eine mariadb-Datenbank aufgesetzt, mit Zugriff über WordPress
Der Zugriff erfolgt über folgenden Link: http://localhost:8080/. 

## Beschreibung des Codes

## yaml File

## Tests

## Sicherheit

## Persönliche Reflexion


## Quellen/Quellenverzeichnis

Bei einem Grossteil des Quellcodes für mein yaml-File Scripts musste ich im Internet Beispiele anschauen oder mich bei Herr Bergers Vorlage bedienen, da ich Mühe hatte das gesamte Projekt von Null zu starten. 
Trotzdem habe ich den Code verstanden und auch selbst teilweise fertig geschrieben. 
Es ist mir sehr wichtig, mein eigenes Projekt auch verstehen zu können.

|Links|
|----|
|https://hub.docker.com/|
|https://github.com/docker/awesome-compose|

## Kontaktperson

Bei Fragen oder Anliegen, wenden Sie sich bitte an folgende Kontaktperson:

|Name|Vorname|E-Mail|Firma|
|----|-----|-----|-----|
|Sherifi|Edi|edi.sherifi@edu.tbz.ch|Credit Suisse|

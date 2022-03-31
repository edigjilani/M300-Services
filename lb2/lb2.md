# LB2 Doku Edi Sherifi 
## Diese Dokumentation ist ein Produkt von Edi Sherifi. 
----------------------------------------------------------------------------
# **Inhaltsverzeichnis**
## Einleitung
## Grafische Übersicht
## Meine Umgebung
## Befehle
## Vagrant
## Platzhalter
## Platzhalter
## Web
## Testfälle
## Persönliche Reflexion

## Einleitung
Für die Leistungsbeurteilung 2 erstelle ich mit meinem Vagrantfile einen Webserver mit einer Datenbank dahinter. Es wird eine Webseite und Datenbank gehostet. Ich kann mich per Website mit einem Benutzer und Passwort auf der Datenbank anmelden. Mit dem Befehl "vagrant up" sollten die beiden VM's automatisiert aufstarten. Das ist der Sinn dahinter. 

## Grafische Übersicht
Dieses Bild zeigt auf wie die Umgebung aufgebaut ist. 

    
     Notebook - Privates Netz 192.168.69.1                 
     Port: 8080 (192.168.69.145:80)                                                           	
        %%%%%%%%%%%%%%%%%%%%%%              %%%%%%%%%%%%%%%%%%%%%%%   
        = Web-Server         =              = Datenbank-Server    =           
        = Host: Weberserver1 =              = Host: Datenbank1    =    
        = IP: 192.168.69.145 = <Connection> = IP: 192.168.69.144  =    
        = Port: 80           =              = Port 3306           =    
        = Nat: 8080          =              = Nat:                =    
        %%%%%%%%%%%%%%%%%%%%%%              %%%%%%%%%%%%%%%%%%%%%%%


## Meine Umgebung

Ich habe, wie oben bereits erwähnt, einen Webserver und eine Datenbank aufgesetzt. Selbstverständlich kann man mit dem Tool [Adminer](https://www.adminer.org/) auf die Datenbank zugreifen.
<p></p>




   
                                                                       

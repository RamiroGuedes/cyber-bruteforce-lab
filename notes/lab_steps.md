# Etapas do Laboratório

## Ambiente
- VM Kali Linux
- VM Metasploitable 2
- VirtualBox em modo Host-Only
- IP Metasploitable: 192.168.56.101

## Testes realizados

### FTP
Ferramenta: Medusa  
Módulo: ftp  

Comando:
medusa -h 192.168.56.101 -U wordlists/users.txt -P wordlists/passwords.txt -M ftp -v 6

### Web (DVWA)
Módulo: http-form  

Login Target: /dvwa/login.php

### SMB
Módulo: smbnt

## Conclusões

- Serviços vulneráveis permitem ataques de brute force
- Falta de lockout facilita invasão
- Palavra-passe fraca é o maior risco

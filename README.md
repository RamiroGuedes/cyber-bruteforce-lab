Simulação de Ataque Brute Force em Ambiente Controlado — Kali Linux + Medusa by Dio.me

* OBJETIVO DO PROJETO

Este projeto tem como objetivo simular, em ambiente virtual controlado, ataques de força bruta em diferentes serviços (FTP, WEB e SMB), utilizando Kali Linux e a ferramenta Medusa, com foco ético e defensivo.

O laboratório foi desenvolvido com o intuito de compreender:

- Como funcionam os ataques de brute force
- Quais serviços são mais visados
- Quais falhas facilitam esse tipo de ataque
- Como prevenir e mitigar esse risco em ambientes reais

Este conteúdo foi realizado em laboratório isolado, sem acesso à internet ou a ambientes produtivos.

-----------------------------------------------------------------------------------------------------------

* FERRAMENTAS UTILIZADAS

- Kali Linux  
- Metasploitable 2  
- DVWA (Damn Vulnerable Web Application)  
- Medusa  
- Nmap  
- VirtualBox  
- Git e GitHub  

------------------------------------------------------------------------------------------------------------

* LABORATÓRIO

O cenário foi montado utilizando duas máquinas virtuais no VirtualBox, com rede em modo **Host-Only** (isolada).

| Máquina | Função | IP |
|------|------|-----|
| Kali Linux | Máquina atacante (laboratório) | 192.168.56.102 |
| Metasploitable 2 | Máquina vulnerável | 192.168.56.101 |

Ambiente **sem acesso externo**, apenas entre as VMs.

-----------------------------------------------------------------------------------------------------------

* CENÁRIOS

Foram testados três cenários principais:

1 - Força bruta em serviço FTP

Objetivo:  
Verificar se um serviço FTP vulnerável permite acesso através de combinações simples de usuário/senha.

Resultado:  
Foi possível validar que, sem políticas de segurança, serviços expostos permitem tentativas ilimitadas de autenticação.

-----------------------------------------------------------------------------------------------------------

2 -  Automação em formulário web (DVWA)

Objetivo:  
Avaliar vulnerabilidades em páginas de login com proteção fraca ou inexistente.

Resultado:  
Formulários sem CAPTCHA, sem rate limit ou sem lockout são altamente vulneráveis.

---------------------------------------------------------------------------------------------------------

 3 - Password spraying em SMB

Objetivo:  
Testar a reutilização de senhas em múltiplas contas através de enumeração de usuários.

Resultado:  
Foi comprovado que usuários com senhas simples ou padrão são facilmente comprometidos.

--------------------------------------------------------------------------------------------------------

* ESTRUTURA DO REPOSITORIO GITH

/scripts → Exemplos comentados de comandos utilizados
/wordlists → Wordlists simples para laboratório
/notes → Documentação das etapas e descobertas
README.md → Documentação principal

--------------------------------------------------------------------------------------------------------

* PRINCIPAIS VULNERABILIDADES ENCONTRADAS

Durante o laboratório foi possível identificar riscos comuns em ambientes reais:

. Senhas fracas ou padrões  
. Ausência de bloqueio por tentativas inválidas  
. Falta de política de senha  
. Serviços desnecessários ativos  
. Falta de monitoramento  
. Ausência de autenticação reforçada  

--------------------------------------------------------------------------------------------------------

MEDIDAS DE MITIGAÇÃO SUGERIDAS

Ações para prevenção:

- Implementar **lockout automático** após tentativas falhas
- Utilizar **MFA** (Autenticação Multifator)
- Bloquear serviços não utilizados
- Aplicar **rate limit** em formulários web
- Usar **CAPTCHA** em páginas públicas de autenticação
- Implementar logs e alertas (Datadog / Zabbix / Dynatrace / Newrelic)
- Criar política de senha forte (Password Policy)

Essas medidas são essenciais em qualquer ambiente corporativo.

-------------------------------------------------------------------------------------------------------

* CONCLUSÃO

Este projeto demonstrou na prática como ataques de brute force funcionam e por que eles ainda representam um risco real.

Mais importante do que executar a simulação, foi compreender:

- Como detectar
- Como prevenir
- Como bloquear
- Como educar usuários

-------------------------------------------------------------------------------------------------------

* AVISO

Este projeto foi realizado apenas em ambiente controlado para estudo.  
Qualquer uso fora desse contexto é de total responsabilidade do usuário.

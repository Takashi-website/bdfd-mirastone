$onlyIf[$guildID!=;( <:errado:1292312941030277200> › <@$authorID>, esse comando só pode ser usado em servidores.]
$onlyPerms[admin;( <:errado:1292312941030277200> › <@$authorID>, infelizmente você não tem permissão de `administrador` para utilizar esse coamando!]
$onlyIf[$message[2]!=;( <:errado:1292312941030277200> › <@$authorID>, você esqueceu de digitar a ação! Ações possiveis `config`, `criar`.]

$if[$or[$toLowercase[$message[2]]==setup;$toLowercase[$message[2]]==config]==true]

$title[Configuração do Sistema de Ticket]
$addField[Configurar Canais;- Defina os canais específicos onde os tickets serão abertos, garantindo uma organização eficiente das solicitações e problemas dos membros.]
$addField[Configurar Cargos ;- Atribua cargos específicos que terão acesso aos tickets, como a equipe de suporte ou moderadores, para agilizar o atendimento e solução de problemas.]
$addField[Configurar Mensagens;- Ajuste mensagens automáticas para recebimento de tickets, respostas padrão e fechamento de tickets, garantindo uma comunicação clara e eficiente com os usuários.]
$addField[Outros;- Personalize outras funcionalidades do sistema de ticket, como categorias de tickets, templates de respostas e integração com sistemas externos para uma gestão mais completa.]

$image[https://mirastone.vercel.app/images/banners/setup_ticket.png]
$color[#5b64f3]

$addButton[no;ticket/canais/$authorID;Configurar Canais;primary;no;<:hastag:1294115110310117456>]
$addButton[no;ticket/cargos/$authorID;Configurar Cargos;primary;no;<:user:1294116672403410955>]
$addButton[no;ticket/mensagens/$authorID;Configurar Mensagens;primary;no;<:notebook:1294115108384935936>]
$addButton[no;ticket/outros/$authorID;Outros;primary;no;<:menudotsvertical:1294115102496260218>]

$endif

$if[$or[$toLowercase[$message[2]]==criar;$toLowercase[$message[2]]==create]==true]
( <a:Timer:1293529296194768896> › <@$authorID>, este comando está em desenvolvimento, veja mais informações clicando [aqui](https://discord.gg/x6EwK7S8Xh )!
$endif

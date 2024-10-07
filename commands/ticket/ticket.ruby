$onlyIf[$guildID!=;( ⛔ › <@$authorID>, este comando só pode ser executado em **servidores**.]
$onlyPerms[admin;( ⛔ › <@$authorID>, você tem que possuir a permissão de **administrador** para utlizar esse comando.]

$title[( 📂 › $username[$botID] - Ticket]
$thumbnail[$serverIcon]
$color[$getVar[color]]

$description[> Olá, bem-vindo ao painel de configuração do sistema de **Tickets** do **$username[$botID]**! Este comando vai te guiar por todas as etapas necessárias para configurar os canais e cargos relacionados ao sistema de tickets, além de algumas outras opções adicionais.
- Premium: ``$if[$textSplit[$getServerVar[premium];/]$splitText[1]==true]Sim ( Permanente )$elseif[$getTimestamp<=$textSplit[$getServerVar[premium];/]$splitText[1]]Sim$elseif[$getTimestamp>$textSplit[$getServerVar[premium];/]$splitText[1]]Não$endif``]

$var[id;config/ticket/$authorID]
$newSelectMenu[$var[id];1;1;Selecione uma opção]
$addSelectMenuOption[$var[id];( 📚 › Configurar Canais;canais;Configure os canais relacionados ao tickets.;no]
$addSelectMenuOption[$var[id];( ⭐ › Configurar Cargos;cargos;Configure os cargos relacionados ao tickets.;no]
$addSelectMenuOption[$var[id];( 🛠️ › Outros Sistemas;sistemas;Configure outros sistemas relacionados ao tickets.;no]

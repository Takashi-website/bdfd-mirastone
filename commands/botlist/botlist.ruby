$nomention
$onlyIf[$guildID!=;( ⛔ › <@$authorID>, utilize meus comandos em um servidor!]
$onlyPerms[admin;( ⛔ › <@$authorID>, infelizmente você não tem permissão de `administrador` para utilizar esse coamndo!]

$title[( <:bot:1291927211686756372> › $username[$botID] - BotList]
$description[> Olá, bem-vindo ao painel de configuração do sistema de **Botlist** do **$username[$botID]**! Este comando vai te guiar por todas as etapas necessárias para configurar os canais e cargos relacionados ao sistema de botlist, além de algumas outras opções adicionais.
- Premium: ``$if[$textSplit[$getServerVar[premium];/]$splitText[1]==true]Sim ( Permanente )$elseif[$getTimestamp<=$textSplit[$getServerVar[premium];/]$splitText[1]]Sim$elseif[$getTimestamp>$textSplit[$getServerVar[premium];/]$splitText[1]]Não$endif``]
$thumbnail[$serverIcon]
$color[$getVar[color]]


$var[id;config/botlist/$authorID]
$newSelectMenu[$var[id];1;1;Selecione uma opção]
$addSelectMenuOption[$var[id];( 📚 › Configurar Canais;canais;Configure os canais relacionados a botlist.;no]
$addSelectMenuOption[$var[id];( ⭐ › Configurar Cargos;cargos;Configure os cargos relacionados ao botlist.;no]
$addSelectMenuOption[$var[id];( 🛠️ › Outros Sistemas;sistemas;Configure outros sistemas relacionados a botlist.;no]

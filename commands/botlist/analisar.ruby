$onlyIf[$guildID!=;( <:errado:1292312941030277200> › <@$authorID>, esse comando só pode ser usado em servidores.]
$onlyIf[$hasRole[$authorID;$textSplit[$getServerVar[cargos];/]$splitText[5]]==true;( <:errado:1292312941030277200> › <@$authorID>, você não é um `verificador` para utilizar esse comando.]
$onlyIf[$mentioned[1]!=;( <:errado:1292312941030277200> › <@$authorID>, mencione uma aplicação para ser análisada.]
$onlyIf[$isBot[$mentioned[1]]==true;( <:errado:1292312941030277200> › <@$authorID>, mencione uma aplicação válida.]
$onlyIf[$textSplit[$getUserVar[bot;$mentioned[1]]];/]$splitText[1]==1;( <:errado:1292312941030277200> › <@$authorID>, essa aplicação já foi analisada ou não foi enviada para análise.]

$title[( 🔬 › Análise]
$color[$getVar[color]]
$thumbnail[$userAvatar[$mentioned[1]]]
$description[$textSplit[$getUserVar[bot;$mentioned[1]];/]
$var[dev;$splitText[2]]
Bot **$username[$mentioned[1]]** do usuário **$username[$var[dev]]**

$addField[**<:lupa:1292173697162940560> › Análise**;
**`Você vai aprovar ou Reprovar está Aplicação?`, lembre-se de verificar nossos requisitos, para que a Aplicação seja reprovada ou aprovada com sucesso, algumas informações abaixo!**]

$addField[**<:CERTO:1292312954619826226> › Aprovar**;
> Clique em <:CERTO:1292312954619826226> `Aprovar` para aprovar a aplicação **$username[$mentioned[1]]**]

$addField[**<:errado:1292312941030277200> › Reprovar**;
> Clique em <:errado:1292312941030277200> `Reprovar` para reprovar a aplicação **$username[$mentioned[1]]**]]

$addButton[no;an/aprovar/$mentioned[1]/$authorID;Aprovar;success;no;<:CERTO:1292312954619826226>]
$addButton[no;an/reprovar/$mentioned[1]/$authorID;Reprovar;danger;no;<:errado:1292312941030277200>]

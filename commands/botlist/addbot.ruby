$onlyIf[$guildID!=;( <:errado:1292312941030277200> › <@$authorID>, esse comando só pode ser usado em servidores.]
$onlyIf[$hasRole[$authorID;$textSplit[$getServerVar[cargos];/]$splitText[5]]==true;( <:errado:1292312941030277200> › <@$authorID>, você não é um `verificador` para utilizar esse comando.]
$onlyIf[$textSplit[$getServerVar[canais];/]$splitText[6]==$channelID;( <:errado:1292312941030277200> › <@$authorID>, esse canal não serve para adicionar bots.]
$onlyIf[$message[3]!=;]

$textSplit[$message[2];/]

$addButton[no;addbot/enviar;$splitText[1];$splitText[2];no;$splitText[3];$message[3]]

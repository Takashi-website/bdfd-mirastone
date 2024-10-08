$onlyIf[$guildID!=;( <:errado:1292312941030277200> › <@$authorID>, esse comando só pode ser usado em servidores.]
$onlyIf[$hasRole[$authorID;$textSplit[$getServerVar[cargos];/]$splitText[5]]==true;( <:errado:1292312941030277200> › <@$authorID>, você não é um `verificador` para utilizar esse comando.]
$onlyIf[$textSplit[$getServerVar[canais];/]$splitText[6]==$channelID;( <:errado:1292312941030277200> › <@$authorID>, esse canal não serve para adicionar bots.]
$onlyIf[$message[2]!=;( <:errado:1292312941030277200> › <@$authorID>, falta de argumentos, exemplo de uso: `$var[prefix]addbot <ID da mensagem>`]


$addButton[no;addbot/enviar;Enviar Aplicação;secondary;no;<:addbot:1292173655295393802>;$message[2]]

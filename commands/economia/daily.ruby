$onlyIf[$getTimestamp>=$textSplit[$getVar[daily;$authorID];/]$splitText[1];( <a:Timer:1293529296194768896> › <@$authorID>, você já resgatou seu daily hoje! Volte amanhã depois das <t:$splitText[1]:t> para resgatar novamente.]

$var[cd-daily;$calculate[((24-$hour)*3600)+((60-$minute)*60)+($second)+$getTimestamp+7200]]
$var[valor;$random[1000;10000]]

$title[( 🎁 › $username[$botID] - Daily]
$description[> Parabéns **$username** você resgatou sua recompensa diária com sucesso! Você resgatou <:mt_miragold:1292789798708445185> **$numberSeparator[$var[valor]]** Miragolds!
- Volte amanhã depois das <t:$var[cd-daily]:t> para resgatar novamente.]
$thumbnail[$userAvatar[$authorID]]
$color[$getVar[color]]

$setVar[daily;$var[cd-daily]/$splitText[2];$authorID]
$setVar[coin;$sum[$getVar[coin;$authorID];$var[valor]];$authorID]

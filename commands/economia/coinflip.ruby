$argsCheck[>2;( <:errado:1292312941030277200> ) - <@$authorID>, você não digitou todos os argumentos `$getServerVar[prefix]coinflip <valor> <cara ou coroa>`]
$onlyIf[$isNumber[$message[2]]==true;( <:errado:1292312941030277200> ) - <@$authorID>, o valor da aposta deve conter apenas números.]
$onlyIf[$getVar[coin;$authorID]>$message[2];( <:errado:1292312941030277200> ) - <@$authorID>, você não possui **$message[2]** miragolds para fazer a aposta.]
$onlyIf[$message[2]>0;( <:errado:1292312941030277200> ) - <@$authorID>, você não pode apostar numeros abaixo de 0!]
$onlyIf[$checkContains[$message[3];cara;coroa]==true;( <:errado:1292312941030277200> ) - <@$authorID>, digite uma escolha entre **cara** ou **coroa**.]
$var[random;$randomText[cara;coroa]]
$if[$var[random]==$message[3]] 
( <:mt_miragold:1292789798708445185> ) - <@$authorID>, Você apostou **$numberSeparator[$message[2]]** miragolds no lado `$message[3]` e a moeda caiu no lado `$message[3]`, você ganhou!
$setVar[coin;$sum[$getVar[coin;$authorID];$message[2]];$authorID]
$else
( <:mt_miragold:1292789798708445185> ) - <@$authorID>, Você apostou **$numberSeparator[$message[2]]** miragolds no lado `$message[3]` e a moeda caiu no lado `$var[random]`, você perdeu!
$setVar[coin;$sub[$getVar[coin;$authorID];$message[2]];$authorID]
$endif

$if[$textSplit[$customID;/]$and[$splitText[1]==an;$splitText[2]==aprovar;$splitText[4]==$authorID]==true]

$newModal[an/aprovar/modal/$splitText[3]/$authorID;$username[$botID] | Enviar Análise]
$addTextInput[1;paragraph;NOTA:;0;300;true;;Envie a nota da aplicação $username[$splitText[3]].]

$endif

$if[$textSplit[$customID;/]$and[$splitText[1]==an;$splitText[2]==reprovar;$splitText[4]==$authorID]==true]

$newModal[an/reprovar/modal/$splitText[3]/$authorID;$username[$botID] | Enviar Análise]
$addTextInput[1;paragraph;NOTA:;0;300;true;;Envie a nota da aplicação $username[$splitText[3]].]

$endif

$if[$textSplit[$customID;/]$and[$splitText[1]==an;$splitText[2]==aprovar;$splitText[3]==modal;$splitText[5]==$authorID]==true]

$removeAllComponents[$messageID] $var[id;$splitText[4]] $ephemeral
$editMessage[$channelID;$messageID;( <:CERTO:1292312954619826226> › <@$authorID>, análise concluída com sucesso! A aplicação **$username[$var[id]]** foi aprovada.]
( <:CERTO:1292312954619826226> › <@$authorID>, a aplicação **$username[$var[id]]** foi retirada da lista de espera e ganhou o cargos <@&$textSplit[$getServerVar[cargos];/]$splitText[3]> com **sucesso**!

$sendEmbedMessage[$textSplit[$getServerVar[canais];/]$splitText[4];<@$textSplit[$getUserVar[bot;$var[id]];/]$splitText[2]>;<:CERTO:1292312954619826226>  - Aplicação Aprovada ( Sucesso );;
> Parabéns **_$username[$textSplit[$getUserVar[bot;$var[id]];/]$splitText[2]]_** sua aplicação **_$username[$var[id]]_** foi ***_Aprovada_*** com sucesso!
- **Nota:**
```$input[1]```
;#36B504;Analisado por: $username;$authorAvatar;;;$userAvatar[$var[id]];;no;no]

$textSplit[$getUserVar[bot;$var[id]];/]
$var[dev;$splitText[2]]
$setUserVar[bot;2/$splitText[2]/$splitText[3]/$splitText[4]/$splitText[5]/$getTimestamp;$var[id]]

$textSplit[$getUserVar[dev;$var[dev]];/]
$setUserVar[dev;0/$splitText[2]$if[$splitText[3]!=]/$splitText[3]$endif$if[$splitText[4]!=]/$splitText[4]$endif$if[$splitText[5]!=]/$splitText[5]$endif$if[$splitText[6]!=]/$splitText[6]$endif$if[$splitText[7]!=]/$splitText[7]$endif$if[$splitText[8]!=]/$splitText[8]$endif$if[$splitText[9]!=]/$splitText[9]$endif$if[$splitText[10]!=]/$splitText[10]$endif$if[$splitText[11]!=]/$splitText[11]$endif$if[$splitText[12]!=]/$splitText[12]$endif;$var[id]]

$textSplit[$getServerVar[queue];/]
$var[index;$if[$splitText[1]==$var[id]]1$elseif[$splitText[2]==$var[id]]2$elseif[$splitText[3]==$var[id]]3$elseif[$splitText[4]==$var[id]]4$elseif[$splitText[5]==$var[id]]5$elseif[$splitText[6]==$var[id]]6$elseif[$splitText[7]==$var[id]]7$elseif[$splitText[8]==$var[id]]8$elseif[$splitText[9]==$var[id]]9$elseif[$splitText[10]==$var[id]]10$elseif[$splitText[11]==$var[id]]11$elseif[$splitText[12]==$var[id]]12$endif]
$removeSplitTextElement[$var[index]]
$setServerVar[queue;$splitText[1]$if[$splitText[2]!=]/$splitText[2]$endif$if[$splitText[3]!=]/$splitText[3]$endif$if[$splitText[4]!=]/$splitText[4]$endif$if[$splitText[5]!=]/$splitText[5]$endif$if[$splitText[6]!=]/$splitText[6]$endif$if[$splitText[7]!=]/$splitText[7]$endif$if[$splitText[8]!=]/$splitText[8]$endif$if[$splitText[9]!=]/$splitText[9]$endif$if[$splitText[10]!=]/$splitText[10]$endif$if[$splitText[11]!=]/$splitText[11]$endif$if[$splitText[12]!=]/$splitText[12]$endif]

$roleGrant[$var[id];+$textSplit[$getServerVar[cargos];/]$splitText[3];-$textSplit[$getServerVar[cargos];/]$splitText[2]]
$roleGrant[$textSplit[$getUserVar[bot;$var[id]];/]$splitText[2];+$textSplit[$getServerVar[cargos];/]$splitText[4]]

$endif

$if[$textSplit[$customID;/]$and[$splitText[1]==an;$splitText[2]==reprovar;$splitText[3]==modal;$splitText[5]==$authorID]==true]

$removeAllComponents[$messageID] $var[id;$splitText[4]] $ephemeral
$editMessage[$channelID;$messageID;( <:CERTO:1292312954619826226> › <@$authorID>, análise concluída com sucesso! A aplicação **$username[$var[id]]** foi reprovada.]
( <:CERTO:1292312954619826226> › <@$authorID>, a aplicação **$username[$var[id]]** foi retirada da lista de espera e saiu do servidor com **sucesso**!

$sendEmbedMessage[$textSplit[$getServerVar[canais];/]$splitText[4];<@$textSplit[$getUserVar[bot;$var[id]];/]$splitText[2]>;<:errado:1292312941030277200>  - Aplicação Reprovada ( Falha );;
> Parabéns **_$username[$textSplit[$getUserVar[bot;$var[id]];/]$splitText[2]]_** sua aplicação **_$username[$var[id]]_** foi ***_Rprovada_***!
- **Nota:**
```$input[1]```
;#B70103;Analisado por: $username;$authorAvatar;;;$userAvatar[$var[id]];;no;no]

$textSplit[$getUserVar[bot;$var[id]];/]
$var[dev;$splitText[2]]
$setUserVar[bot;0/$splitText[2]/$splitText[3]/$splitText[4]/$splitText[5]/$getTimestamp;$var[id]]

$textSplit[$getUserVar[dev;$var[dev]];/]
$setUserVar[dev;0/$splitText[2]$if[$splitText[3]!=]/$splitText[3]$endif$if[$splitText[4]!=]/$splitText[4]$endif$if[$splitText[5]!=]/$splitText[5]$endif$if[$splitText[6]!=]/$splitText[6]$endif$if[$splitText[7]!=]/$splitText[7]$endif$if[$splitText[8]!=]/$splitText[8]$endif$if[$splitText[9]!=]/$splitText[9]$endif$if[$splitText[10]!=]/$splitText[10]$endif$if[$splitText[11]!=]/$splitText[11]$endif$if[$splitText[12]!=]/$splitText[12]$endif;$var[id]]

$textSplit[$getServerVar[queue];/]
$var[index;$if[$splitText[1]==$var[id]]1$elseif[$splitText[2]==$var[id]]2$elseif[$splitText[3]==$var[id]]3$elseif[$splitText[4]==$var[id]]4$elseif[$splitText[5]==$var[id]]5$elseif[$splitText[6]==$var[id]]6$elseif[$splitText[7]==$var[id]]7$elseif[$splitText[8]==$var[id]]8$elseif[$splitText[9]==$var[id]]9$elseif[$splitText[10]==$var[id]]10$elseif[$splitText[11]==$var[id]]11$elseif[$splitText[12]==$var[id]]12$endif]
$removeSplitTextElement[$var[index]]
$setServerVar[queue;$splitText[1]$if[$splitText[2]!=]/$splitText[2]$endif$if[$splitText[3]!=]/$splitText[3]$endif$if[$splitText[4]!=]/$splitText[4]$endif$if[$splitText[5]!=]/$splitText[5]$endif$if[$splitText[6]!=]/$splitText[6]$endif$if[$splitText[7]!=]/$splitText[7]$endif$if[$splitText[8]!=]/$splitText[8]$endif$if[$splitText[9]!=]/$splitText[9]$endif$if[$splitText[10]!=]/$splitText[10]$endif$if[$splitText[11]!=]/$splitText[11]$endif$if[$splitText[12]!=]/$splitText[12]$endif]

$kick[$var[id];Foi reprovado pelo verificador: $username]

$endif


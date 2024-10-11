$nomention 

$if[$textSplit[$customID;/]$and[$splitText[1]==ticket;$splitText[2]==canais;$splitText[3]==$authorID]==true]

$textSplit[$getServerVar[canais];/]
$newModal[ticket/canais/modal/$authorID;Mirastone | Ticket]
$addTextInput[1;short;CATEGORIA TICKET;10;30;true;$splitText[1];Coloque o ID ou o nome da categoria aqui.]
$addTextInput[2;short;CANAL DE LOGS;10;30;true;$splitText[2];Coloque o ID ou o nome do canal aqui.]

$endif

$if[$textSplit[$customID;/]$and[$splitText[1]==ticket;$splitText[2]==canais;$splitText[3]==modal;$splitText[4]==$authorID]==true]

$ephemeral $suppressErrors[( <:errado:1292312941030277200> ) - <@$authorID>, ouve um erro inesperado tente novamente.]
$onlyIf[$if[$isNumber[$input[1]]==true]$serverChannelExists[$input[1]]$elseif[$isNumber[$input[1]]==false]$serverChannelExists[$channelID[$input[1]]]$endif==true;( <:errado:1292312941030277200> ) - <@$authorID>, a categoria de ticket não existe nesse servidor.]
$onlyIf[$if[$isNumber[$input[2]]==true]$serverChannelExists[$input[2]]$elseif[$isNumber[$input[2]]==false]$serverChannelExists[$channelID[$input[2]]]$endif==true;( <:errado:1292312941030277200> ) - <@$authorID>, o canal de logs não existe nesse servidor.]
$onlyIf[$channelType[$input[1]]==category;( <:errado:1292312941030277200> ) - <@$authorID>, a categoria de tiket só pode ser setada em `categoria`.]
$onlyIf[$channelType[$input[2]]==text;( <:errado:1292312941030277200> ) - <@$authorID>, o canal de logs só pode ser setado em canais de `texto`.]

$textSplit[$getServerVar[canais];/]
$setServerVar[canais;$if[$isNumber[$input[1]]==true]$input[1]$elseif[$isNumber[$input[1]]==false]$channelID[$input[1]]$endif/$if[$isNumber[$input[2]]==true]$input[2]$elseif[$isNumber[$input[2]]==false]$channelID[$input[2]]$endif/$splitText[3]/$splitText[4]/$splitText[5]/$splitText[6]/$splitText[7]/$splitText[8]/$splitText[9]/$splitText[10]/$splitText[11]/$splitText[12]/$splitText[13]/$splitText[14]]
( <:CERTO:1292312954619826226> ) - <@$authorID>, você configurou o a categoria de ticket e canal de logs com sucesso!

$endif

$if[$textSplit[$customID;/]$and[$splitText[1]==ticket;$splitText[2]==cargos;$splitText[3]==$authorID]==true]

$textSplit[$getServerVar[cargos];/]
$newModal[ticket/cargos/modal/$authorID;Mirastone | Ticket]
$addTextInput[1;short;ATENDENTE TICKET;10;30;true;$splitText[1];Coloque o ID ou o nome do cargo aqui.]
$addTextInput[2;short;BLACKLIST;10;30;false;$splitText[2];Coloque o ID ou o nome do cargo aqui.]

$endif

$if[$textSplit[$customID;/]$and[$splitText[1]==ticket;$splitText[2]==cargos;$splitText[3]==modal;$splitText[4]==$authorID]==true]

$ephemeral $suppressErrors[( <:errado:1292312941030277200> ) - <@$authorID>, ouve um erro inesperado tente novamente.]
$onlyIf[$if[$isNumber[$input[1]]==true]$roleExists[$input[1]]$elseif[$isNumber[$input[1]]==false]$roleExists[$roleID[$input[1]]]$endif==true;( <:errado:1292312941030277200> ) - <@$authorID>, o cargo para atendente não existe nesse servidor.]
$if[$input[2]!=]$onlyIf[$if[$isNumber[$input[2]]==true]$roleExists[$input[2]]$elseif[$isNumber[$input[2]]==false]$roleExists[$roleID[$input[2]]]$endif==true;( <:errado:1292312941030277200> ) - <@$authorID>, o cargo para blacklist não existe nesse servidor.]$endif

$textSplit[$getServerVar[canais];/]
$setServerVar[cargos;$if[$isNumber[$input[1]]==true]$input[1]$elseif[$isNumber[$input[1]]==false]$roleID[$input[1]]$endif/$if[$isNumber[$input[2]]==true]$input[2]$elseif[$isNumber[$input[2]]==false]$if[$input[2]!=]$roleID[$input[2]]$endif$endif/$splitText[3]/$splitText[4]/$splitText[5]/$splitText[6]/$splitText[7]/$splitText[8]/$splitText[9]/$splitText[10]/$splitText[11]/$splitText[12]/$splitText[13]/$splitText[14]]
( <:CERTO:1292312954619826226> ) - <@$authorID>, você configurou o cargo atendente e blacklist com sucesso!

$endif

$if[$textSplit[$customID;/]$and[$splitText[1]==ticket;$splitText[2]==mensagens;$splitText[3]==$authorID]==true]

$ephemeral
$onlyIf[$if[$textSplit[$getServerVar[premium];/]$splitText[1]==true]true$elseif[$getTimestamp<=$splitText[1]]true$elseif[$getTimestamp>$splitText[1]]false$endif==true;( <:errado:1292312941030277200> › <@$authorID>, o servidor atual não possui premium para utilizar essa função.]

$newModal[ticket/mensagens/modal/$authorID;Mirastone | Ticket]
$addTextInput[1;paragraph;MENSAGEM DO TICKET;10;320;true;$getServerVar[ticket-text];ID: {id}
Nome: {name}
Tickets: {ticket}
Assumido: {assumido}
Motivo: {motivo}]

$endif

$if[$textSplit[$customID;/]$and[$splitText[1]==ticket;$splitText[2]==mensagens;$splitText[3]==modal;$splitText[4]==$authorID]==true]

$ephemeral $suppressErrors[( <:errado:1292312941030277200> ) - <@$authorID>, ouve um erro inesperado tente novamente.]

$setServerVar[ticket-text;$input[1]]
( <:CERTO:1292312954619826226> ) - <@$authorID>, você configurou a mensagem do ticket com sucesso!

$endif

$if[$textSplit[$customID;/]$and[$splitText[1]==ticket;$splitText[2]==outros;$splitText[3]==$authorID]==true]

$textSplit[$getServerVar[ticket];/]
$newModal[ticket/outros/modal/$authorID;Mirastone | Ticket]
$addTextInput[1;paragraph;TITULO CANAL;5;35;true;$splitText[1];ID: {id}
Nome: {name}
Tickets: {ticket}]
$addTextInput[2;short;WEBHOOKS;4;5;false;$splitText[2];Coloque true ou false.]
$addTextInput[3;short;TICKET POR USUÁRIO;1;10;true;$splitText[3];Digite um numero que será a quantidade de tickets abertos por usuário.]

$endif

$if[$textSplit[$customID;/]$and[$splitText[1]==ticket;$splitText[2]==outros;$splitText[3]==modal;$splitText[4]==$authorID]==true]

$ephemeral $suppressErrors[( <:errado:1292312941030277200> ) - <@$authorID>, ouve um erro inesperado tente novamente.]
$onlyIf[$checkContains[$toLowercase[$input[2]];true;false]==true;( <:errado:1292312941030277200> ) - <@$authorID>, você não digitou o que é pedido na segunda pergunta corretamente.]
$onlyIf[$isNumber[$input[3]]==true;( <:errado:1292312941030277200> ) - <@$authorID>, você não digitou a ultima pergunta corretamente.]
$onlyIf[$checkContains[$input[1];@;#;:;?;&;*;!;%;$;=;+;/;\;^;<;>;|;[;\];(;);";';~;.;,;_;%{-SEMICOL-}%]==false;( <:errado:1292312941030277200> ) - <@$authorID>, você digitou um carácter que não é permitido para a criação do canal.]

$textSplit[$getServerVar[ticket];/]
( <:CERTO:1292312954619826226> ) - <@$authorID>, você configurou os sistemas do ticket com sucesso!
$setServerVar[ticket;$replaceText[$input[1]; ;-;-1]/$input[2]/$input[3]/]

$endif

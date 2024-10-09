$onlyIf[$guildID!=;( <:errado:1292312941030277200> › <@$authorID>, esse comando só pode ser usado em servidores.]
$onlyIf[$hasRole[$authorID;$textSplit[$getServerVar[cargos];/]$splitText[5]]==true;( <:errado:1292312941030277200> › <@$authorID>, você não é um `verificador` para utilizar esse comando.]

$textSplit[$getServerVar[queue];/]
$onlyIf[$splitText[1]!=;( <:errado:1292312941030277200> › <@$authorID>, não há nenhuma aplicação na lista de espera nesse momento.]
$var[w;$getTextSplitLength]
$var[v;1] $var[id;$splitText[$var[v]]]
$textSplit[$getUserVar[bot;$var[id]];/]

$title[( <:list:1291983545455218721> › $username[$var[id]] - Queue ( $var[v]/$var[w] )]
$description[
- ID: `$var[id]`
- Dono: `$username[$splitText[2]]`
- Prefix/Slash: `$splitText[4]/$if[$splitText[3]==true]Sim$elseif[$splitText[3]==false]Não$endif`
- Enviado: <t:$splitText[5]>
- Descrição: `$getUserVar[desc;$var[id]]`
]
$thumbnail[$userAvatar[$var[id]]]
$color[$getVar[color]]

$var[x;$if[$var[v]==1]yes$elseif[$var[v]!=1]no$endif]
$var[z;$if[$var[v]==$var[w]]yes$elseif[$var[v]!=$var[w]]no$endif]

$addButton[no;queue/-/$var[v]/$authorID;;danger;$var[x];⬅️]
$addButton[no;addbot/add/$var[id]/$authorID;;secondary;no;<:addbot:1292173655295393802>]
$addButton[no;queue/topic/$var[id]/$authorID;;secondary;no;<:lupa:1292173697162940560>]
$addButton[no;queue/delet/$var[id]/$authorID;;secondary;no;<:lixeira:1292174481900441702>]
$addButton[no;queue/+/$var[v]/$authorID;;danger;$var[z];➡️]

$var[id;$findUser[$message[2]]]

$if[$isBot[$var[id]]==true]
$onlyIf[$textSplit[$getUserVar[bot;$var[id]];/]$splitText[1]==2;( <:errado:1292312941030277200> › <@$authorID>, essa aplicação anida não foi análisada.]

$textSplit[$getUserVar[bot;$var[id]];/]
$title[$username[$var[id]]]
$description[$getUserVar[desc;$var[id]]]
$addField[Informações:;
- Desenvolvedor: [`@$username[$splitText[2]]`\](https://discord.com/users/$splitText[2])
- Prefixo: `$splitText[4]`
- Slash: `$splitText[3]`
- Aprovado: <t:$splitText[6]:>
⭐ **$getUserVar[votos;$var[id]] votos** | 🎖️ **#$getLeaderboardPosition[user;votos;desc;$var[id]]**]

$endif

$if[$isBot[$var[id]]==false]
$textSplit[$getUserVar[dev;$var[id]];/]
$var[desc;$if[$getVar[desc;$var[id]]!=]$getVar[desc;$var[id]]$elseif[$getVar[desc;$var[id]]==]Troque a sua descrição utilizando o botão abaixo.$endif]

https://mirastone.vercel.app/api/perfil?owner_d=1264206060986564630&api_id=4135664258&username=$url[encode;$username[$var[id]]]&description=$url[encode;$var[desc]]&avatar=$url[encode;$userAvatar[$var[id]]]&coins=$url[encode;$getVar[coin;$var[id]]]&botImages=$url[encode;$if[$splitText[3]!=]$userAvatar[$splitText[3]]$endif$if[$splitText[4]!=],$userAvatar[$splitText[4]]$endif$if[$splitText[5]!=],$userAvatar[$splitText[5]]$endif$if[$splitText[6]!=],$userAvatar[$splitText[6]]$endif$if[$splitText[7]!=],$userAvatar[$splitText[7]]$endif$if[$splitText[8]!=],$userAvatar[$splitText[8]]$endif$if[$splitText[9]!=],$userAvatar[$splitText[9]]$endif$if[$splitText[10]!=],$userAvatar[$splitText[10]]$endif$if[$splitText[11]!=],$userAvatar[$splitText[11]]$endif$if[$splitText[12]!=],$userAvatar[$splitText[12]]$endif]&icons=1,2,3,4,5&background=$textSplit[$getVar[banner;$var[id]];/]$url[encode;$splitText[1]]

$if[$var[id]==$authorID]
$addButton[no;p/desc/$authorID;Alterar Descrição;secondary;no]
$endif
$endif

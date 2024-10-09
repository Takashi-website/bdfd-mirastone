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
$title[$username[$var[id]]]
$description[
$getVar[desc;$var[id]]]
$addField[Aplicações:;
$if[$splitText[3]!=] $var[i;3] 🔊 $[`@$username[$splitText[$var[i]]]`\](https://discord.com/users/$splitText[$var[i]]) - **$getUserVar[votos;$splitText[$var[i]]] votos** 
$if[$splitText[4]!=] $var[i;4] 🔊 $[`@$username[$splitText[$var[i]]]`\](https://discord.com/users/$splitText[$var[i]]) - **$getUserVar[votos;$splitText[$var[i]]] votos** $endif
$if[$splitText[5]!=] $var[i;5] 🔊 $[`@$username[$splitText[$var[i]]]`\](https://discord.com/users/$splitText[$var[i]]) - **$getUserVar[votos;$splitText[$var[i]]] votos** $endif
$if[$splitText[6]!=] $var[i;6] 🔊 $[`@$username[$splitText[$var[i]]]`\](https://discord.com/users/$splitText[$var[i]]) - **$getUserVar[votos;$splitText[$var[i]]] votos** $endif
$if[$splitText[7]!=] $var[i;7] 🔊 $[`@$username[$splitText[$var[i]]]`\](https://discord.com/users/$splitText[$var[i]]) - **$getUserVar[votos;$splitText[$var[i]]] votos** $endif
$if[$splitText[8]!=] $var[i;8] 🔊 $[`@$username[$splitText[$var[i]]]`\](https://discord.com/users/$splitText[$var[i]]) - **$getUserVar[votos;$splitText[$var[i]]] votos** $endif
$if[$splitText[9]!=] $var[i;9] 🔊 $[`@$username[$splitText[$var[i]]]`\](https://discord.com/users/$splitText[$var[i]]) - **$getUserVar[votos;$splitText[$var[i]]] votos** $endif
$if[$splitText[10]!=] $var[i;10] 🔊 $[`@$username[$splitText[$var[i]]]`\](https://discord.com/users/$splitText[$var[i]]) - **$getUserVar[votos;$splitText[$var[i]]] votos** $endif
$if[$splitText[11]!=] $var[i;11] 🔊 $[`@$username[$splitText[$var[i]]]`\](https://discord.com/users/$splitText[$var[i]]) - **$getUserVar[votos;$splitText[$var[i]]] votos** $endif
$if[$splitText[12]!=] $var[i;12] 🔊 $[`@$username[$splitText[$var[i]]]`\](https://discord.com/users/$splitText[$var[i]]) - **$getUserVar[votos;$splitText[$var[i]]] votos** $endif
$elseif[$splitText[3]!=]`Nenhuma aplicação ainda...`$endif]
$endif

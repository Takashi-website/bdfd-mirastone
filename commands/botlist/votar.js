$onlyIf[$guildID!=;( <:errado:1292312941030277200> › <@$authorID>, esse comando só pode ser usado em servidores.]

$var[bot;$findUser[$message[2]]]
$onlyIf[$message[2]!=;( <:errado:1292312941030277200> › <@$authorID>, mencione apenas aplicações para votar.]
$onlyIf[$isBot[$var[bot]]==true;( <:errado:1292312941030277200> › <@$authorID>, mencione uma aplicação válida.]
$onlyIf[$textSplit[$getUserVar[bot;$var[bot]];/]$splitText[1]==2;( <:errado:1292312941030277200> › <@$authorID>, essa aplicação anida não foi análisada.]

$setUserVar[votos;$sum[$getUserVar[votos;$var[bot]];$if[$textSplit[$getVar[premium;$authorID];/]$splitText[2]==true]2$elseif[$getTimestamp<=$textSplit[$getVar[premium;$authorID];/]$splitText[2]]2$elseif[$getTimestamp>$textSplit[$getVar[premium;$authorID];/]$splitText[2]]1$endif];$var[bot]]
( 🎉 › <@$authorID> acaba de votar no incrível bot **$username[$var[bot]]**! 🗳️ Com isso, o bot agora conta com **$getUserVar[votos;$var[bot]] votos**! 🌟 Cada voto é uma demonstração de apoio e carinho para bot. Muito obrigado a todos que participam e fazem parte dessa jornada! Vamos continuar crescendo juntos e levando o **$username[$var[bot]]** a novos patamares! 🚀

$sendEmbedMessage[$textSplit[$getServerVar[canais];/]$splitText[5];<@$var[bot]>;Voto $if[$textSplit[$getVar[premium;$authorID];/]$splitText[2]==true]Premium$elseif[$getTimestamp<=$textSplit[$getVar[premium;$authorID];/]$splitText[2]]Premium$elseif[$getTimestamp>$textSplit[$getVar[premium;$authorID];/]$splitText[2]]$endif;;
🎉 – <@$authorID> votou com sucesso na aplicação **$username[$var[bot]]** que agora tem **$getUserVar[votos;$var[bot]] voto(s)**!
> Isso ajuda muito a **Aplicação** e ao **Desenvolvedor** da aplicação!;$getVar[color];;;Votado por: $username;$authorAvatar;$userAvatar[$var[bot]]]

$var[top-1;$getLeaderboardValue[user;votos;asc;1;id]]
$var[top-2;$getLeaderboardValue[user;votos;asc;2;id]]
$var[top-3;$getLeaderboardValue[user;votos;asc;3;id]]
$var[top-3;$getLeaderboardValue[user;votos;asc;4;id]]
$var[top-3;$getLeaderboardValue[user;votos;asc;5;id]]

$if[$or[$var[bot]==$var[top-1];$var[bot]==$var[top-2];$var[bot]==$var[top-3]]==true]
$onlyBotPerms[manageroles;;( <:errado:1292312941030277200> › <@$authorID>, eu não possuo permissão de **Gerencias Cargos** para dar o cargo de **Top 3 Bots** para a aplicação.]

$if[$var[bot]==$var[top-1]] $roleGrant[$var[top-1];+1287406572267372554] $roleGrant[$var[top-4];+1287406572267372554] $roleGrant[$var[top-5];+1287406572267372554] $endif
$if[$var[bot]==$var[top-2]] $roleGrant[$var[top-2];+1287406572267372554] $roleGrant[$var[top-4];+1287406572267372554] $roleGrant[$var[top-5];+1287406572267372554] $endif
$if[$var[bot]==$var[top-3]] $roleGrant[$var[top-3];+1287406572267372554] $roleGrant[$var[top-4];+1287406572267372554] $roleGrant[$var[top-5];+1287406572267372554] $endif
$endif

$onlyIf[$guildID!=;( <:errado:1292312941030277200> › <@$authorID>, esse comando só pode ser usado em servidores.]

$var[bot;$findUser[$message[2]]]
$onlyIf[$message[2]!=;( <:errado:1292312941030277200> › <@$authorID>, mencione apenas aplicações para votar.]
$onlyIf[$isBot[$var[bot]]==true;( <:errado:1292312941030277200> › <@$authorID>, mencione uma aplicação válida.]
$onlyIf[$textSplit[$getUserVar[bot;$var[bot]];/]$splitText[1]==2;( <:errado:1292312941030277200> › <@$authorID>, essa aplicação anida não foi análisada.]
$globalCooldown[2h;( <a:Timer:1293529296194768896> › <@$authorID>, você votou recentemente aguarde `%time%` para votar novamente.]

$setUserVar[votos;$sum[$getUserVar[votos;$var[bot]];$if[$textSplit[$getVar[premium;$authorID];/]$splitText[2]==true]2$elseif[$getTimestamp<=$textSplit[$getVar[premium;$authorID];/]$splitText[2]]2$elseif[$getTimestamp>$textSplit[$getVar[premium;$authorID];/]$splitText[2]]1$endif];$var[bot]]
( 🎉 › <@$authorID> acaba de votar no incrível bot **$username[$var[bot]]**! 🗳️ Com isso, o bot agora conta com **$getUserVar[votos;$var[bot]] votos**! 🌟 Cada voto é uma demonstração de apoio e carinho para o bot. Muito obrigado a todos que participam e fazem parte dessa jornada! Vamos continuar crescendo juntos e levando o **$username[$var[bot]]** a novos patamares! 🚀

$sendEmbedMessage[$textSplit[$getServerVar[canais];/]$splitText[5];<@$var[bot]>;Voto $if[$textSplit[$getVar[premium;$authorID];/]$splitText[2]==true]Premium$elseif[$getTimestamp<=$textSplit[$getVar[premium;$authorID];/]$splitText[2]]Premium$elseif[$getTimestamp>$textSplit[$getVar[premium;$authorID];/]$splitText[2]]$endif;;
🎉 – <@$authorID> votou com sucesso na aplicação **$username[$var[bot]]** que agora tem **$getUserVar[votos;$var[bot]] voto(s)**!
> Isso ajuda muito a **Aplicação** e ao **Desenvolvedor** da aplicação!;$getVar[color];;;Votado por: $username;$authorAvatar;$userAvatar[$var[bot]]]

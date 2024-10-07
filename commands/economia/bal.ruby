$var[user;$findUser[$message[1]]]
$setVar[coin;$getVar[coin;$var[user]];$var[user]]

$title[( <:mt_miragold:1292789798708445185> › $username[$var[user]] - Carteira]
$description[> Você possui **$numberSeparator[$getVar[coin;$var[user]]] miragolds**! Você está em **#$getLeaderboardPosition[globalUser;coin;desc;$var[user]] lugar** no ranking, veja outros ostentadores com `m.rank`!]
$thumbnail[$userAvatar[$var[user]]]
$color[$getVar[color]]

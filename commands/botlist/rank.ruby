$var[type;$toLowercase[$message[2]]]
$onlyIf[$var[type]!=;( <:errado:1292312941030277200> › <@$authorID>, você esqueceu de especificar o tipo do rank que quer ver.]

$if[$or[$var[type]==v;$var[type]==vote;$var[type]==votos;$var[type]==voto]==true]

$var[top-1;$getLeaderboardValue[user;votos;asc;1;id]]
$var[top-2;$getLeaderboardValue[user;votos;asc;2;id]]
$var[top-3;$getLeaderboardValue[user;votos;asc;3;id]]
$var[top-4;$getLeaderboardValue[user;votos;asc;4;id]]
$var[top-5;$getLeaderboardValue[user;votos;asc;5;id]]

$color[$getVar[color]]
$title[⭐ Rank Votos]
$description[
$var[i;1]**#0$getLeaderboardPosition[user;votos;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[votos;$var[top-$var[i]]]** votos | [Me Adicione\](https://discordapp.com/oauth2/authorize?client_id=$var[top-$var[i]]&scope=bot&permissions=2146958847)
$var[i;2]$if[$var[top-$var[i]]!=]**#0$getLeaderboardPosition[user;votos;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[votos;$var[top-$var[i]]]** votos | [Me Adicione\](https://discordapp.com/oauth2/authorize?client_id=$var[top-$var[i]]&scope=bot&permissions=2146958847)$endif
$var[i;3]$if[$var[top-$var[i]]!=]**#0$getLeaderboardPosition[user;votos;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[votos;$var[top-$var[i]]]** votos | [Me Adicione\](https://discordapp.com/oauth2/authorize?client_id=$var[top-$var[i]]&scope=bot&permissions=2146958847)$endif
$var[i;4]$if[$var[top-$var[i]]!=]**#0$getLeaderboardPosition[user;votos;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[votos;$var[top-$var[i]]]** votos | [Me Adicione\](https://discordapp.com/oauth2/authorize?client_id=$var[top-$var[i]]&scope=bot&permissions=2146958847)$endif
$var[i;5]$if[$var[top-$var[i]]!=]**#0$getLeaderboardPosition[user;votos;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[votos;$var[top-$var[i]]]** votos | [Me Adicione\](https://discordapp.com/oauth2/authorize?client_id=$var[top-$var[i]]&scope=bot&permissions=2146958847)$endif
]

$endif

$if[$or[$var[type]==an;$var[type]==analisadores;$var[type]==analises;$var[type]==análises]==true]

$var[top-1;$getLeaderboardValue[user;coin;asc;1;id]]
$var[top-2;$getLeaderboardValue[user;coin;asc;2;id]]
$var[top-3;$getLeaderboardValue[user;coin;asc;3;id]]
$var[top-4;$getLeaderboardValue[user;coin;asc;4;id]]
$var[top-5;$getLeaderboardValue[user;coin;asc;5;id]]

$color[$getVar[color]]
$title[⭐ Rank Verificadores]
$description[
$var[i;1]**#0$getLeaderboardPosition[user;coin;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[coin;$var[top-$var[i]]]** análises | Ultima análise em <t:$getUserVar[votos;$var[top-$var[i]]]:>
$var[i;2]$if[$var[top-$var[i]]!=]**#0$getLeaderboardPosition[user;coin;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[coin;$var[top-$var[i]]]** análises | <t:$getUserVar[votos;$var[top-$var[i]]]:>$endif
$var[i;3]$if[$var[top-$var[i]]!=]**#0$getLeaderboardPosition[user;coin;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[coin;$var[top-$var[i]]]** análises | <t:$getUserVar[votos;$var[top-$var[i]]]:>$endif
$var[i;4]$if[$var[top-$var[i]]!=]**#0$getLeaderboardPosition[user;coin;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[coin;$var[top-$var[i]]]** análises | <t:$getUserVar[votos;$var[top-$var[i]]]:>$endif
$var[i;5]$if[$var[top-$var[i]]!=]**#0$getLeaderboardPosition[user;coin;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[coin;$var[top-$var[i]]]** análises | <t:$getUserVar[votos;$var[top-$var[i]]]:>$endif
]

$endif

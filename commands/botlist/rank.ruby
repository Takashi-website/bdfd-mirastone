$var[type;$toLowercase[$message[2]]]

$if[$or[$var[type]==v;$var[type]==vote;$var[type]==votos;$var[type]==voto]==true]

$var[top-1;$getLeaderboardValue[user;votos;asc;1;id]]
$var[top-2;$getLeaderboardValue[user;votos;asc;2;id]]
$var[top-3;$getLeaderboardValue[user;votos;asc;3;id]]
$var[top-4;$getLeaderboardValue[user;votos;asc;4;id]]
$var[top-5;$getLeaderboardValue[user;votos;asc;5;id]]

$title[⭐ Rank Votos]
$description[
$var[i;1]**#0$getLeaderboardPosition[user;votos;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[votos;$var[top-$var[i]]]** votos | [Me Adicione\](https://discordapp.com/oauth2/authorize?client_id=$var[top-$var[i]]&scope=bot&permissions=2146958847)
$var[i;2]**#0$getLeaderboardPosition[user;votos;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[votos;$var[top-$var[i]]]** votos | [Me Adicione\](https://discordapp.com/oauth2/authorize?client_id=$var[top-$var[i]]&scope=bot&permissions=2146958847)
$var[i;3]**#0$getLeaderboardPosition[user;votos;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[votos;$var[top-$var[i]]]** votos | [Me Adicione\](https://discordapp.com/oauth2/authorize?client_id=$var[top-$var[i]]&scope=bot&permissions=2146958847)
$var[i;4]**#0$getLeaderboardPosition[user;votos;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[votos;$var[top-$var[i]]]** votos | [Me Adicione\](https://discordapp.com/oauth2/authorize?client_id=$var[top-$var[i]]&scope=bot&permissions=2146958847)
$var[i;5]**#0$getLeaderboardPosition[user;votos;desc;$var[top-$var[i]]]** - **$username[$var[top-$var[i]]]**
-# **$getUserVar[votos;$var[top-$var[i]]]** votos | [Me Adicione\](https://discordapp.com/oauth2/authorize?client_id=$var[top-$var[i]]&scope=bot&permissions=2146958847)
]

$endif

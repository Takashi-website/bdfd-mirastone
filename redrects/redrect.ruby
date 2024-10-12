$onlyIf[$var[m2]!=;]

$if[$or[$var[m2]==bal;$var[m2]==atm;$var[m2]==saldo]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/economia/bal.ruby

$elseif[$or[$var[m2]==daily;$var[m2]==resgatar;$var[m2]==diária;$var[m2]==diaria]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/economia/daily.ruby

$elseif[$or[$var[m2]==coinflip;$var[m2]==cara-coroua;$var[m2]==cc;$var[m2]==coin]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/economia/coinflip.ruby

$elseif[$var[m2]==botlist]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/botlist/botlist.ruby

$elseif[$or[$var[m2]==q;$var[m2]==queue;$var[m2]==fila]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/botlist/queue.ruby

$elseif[$or[$var[m2]==ab;$var[m2]==addbot;$var[m2]==add-bot]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/botlist/addbot.ruby

$elseif[$or[$var[m2]==an;$var[m2]==analise;$var[m2]==análise;$var[m2]==analisar;$var[m2]==análisar]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/botlist/analisar.ruby

$elseif[$or[$var[m2]==v;$var[m2]==votar;$var[m2]==vote]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/botlist/votar.js

$elseif[$or[$var[m2]==p;$var[m2]==perfil;$var[m2]==profile]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/botlist/perfil.ruby

$elseif[$or[$var[m2]==r;$var[m2]==top;$var[m2]==rank]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/botlist/rank.ruby

$elseif[$or[$var[m2]==setprefix;$var[m2]==prefix;$var[m2]==set-prefix]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/modera%C3%A7%C3%A3o/set-prefix.ruby

$elseif[$or[$var[m2]==mod;$var[m2]==moderação;$var[m2]==moderation]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/modera%C3%A7%C3%A3o/mod.ruby

$elseif[$var[m2]==ticket]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/ticket/ticket.ruby

$elseif[$or[$var[m2]==help;$var[m2]==ajuda;$var[m2]==cmds]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/utilidade/ajuda.ruby

$elseif[$or[$var[m2]==infobot;$var[m2]==bi;$var[m2]==botinfo]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/utilidade/botinfo.ruby

$elseif[$or[$var[m2]==infoserver;$var[m2]==si;$var[m2]==serverinfo]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/utilidade/serverinfo.ruby

$elseif[$or[$var[m2]==ping;$var[m2]==pong;$var[m2]==ms]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/utilidade/ping.ruby

$elseif[$var[m2]==avatar]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/utilidade/avatar.ruby

$else
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/redrects/nada.ruby
$endif


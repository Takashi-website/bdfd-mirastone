$onlyIf[$var[m2]!=;]

$if[$or[$var[m2]==bal;$var[m2]==atm;$var[m2]==saldo]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/economia/bal.ruby
$endif
$if[$var[m2]==botlist]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/botlist/botlist.ruby
$endif
$if[$or[$var[m2]==q;$var[m2]==queue;$var[m2]==fila]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/botlist/queue.ruby
$endif
$if[$or[$var[m2]==ab;$var[m2]==addbot;$var[m2]==add-bot]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/botlist/addbot.ruby
$endif
$if[$or[$var[m2]==an;$var[m2]==analise;$var[m2]==análise;$var[m2]==analisar;$var[m2]==análisar]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/botlist/analisar.ruby
$endif
$if[$or[$var[m2]==setprefix;$var[m2]==prefix;$var[m2]==set-prefix]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/modera%C3%A7%C3%A3o/set-prefix.ruby
$endif
$if[$var[m2]==ticket]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/ticket/ticket.ruby
$endif
$if[$or[$var[m2]==help;$var[m2]==ajuda;$var[m2]==cmds]==true]
https://raw.githubusercontent.com/Takashi-website/bdfd-mirastone/refs/heads/main/commands/utilidade/ajuda.ruby
$endif


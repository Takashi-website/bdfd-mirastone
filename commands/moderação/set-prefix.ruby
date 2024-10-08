$var[p;$message[2]]

$onlyIf[$guildID!=;( <:errado:1292312941030277200> › <@$authorID>, este comando não pode ser utilizado em mensagens diretas. Utilize-o apenas em **servidores**.)
$onlyIf[$checkUserPerms[$authorID;manageServer]==true;( <:errado:1292312941030277200> › <@$authorID>, você precisa da permissão de **Gerenciar Servidor** para executar este comando.)
$onlyIf[$var[p]!=;( <:errado:1292312941030277200> › <@$authorID>, por favor, insira um valor válido para definir como meu novo prefixo.)
$onlyIf[$charCount[$var[p]]<=3;( <:errado:1292312941030277200> › <@$authorID>, o novo prefixo não pode ultrapassar **3 caracteres**.]
$onlyIf[$checkContains[$toLowercase[$cropText[$var[msg];1;]];a;b;c;d;e;f;g;h;i;j;k;l;m;n;o;p;q;r;s;t;u;v;w;x;y;z;!;~;&;=;#;[;.;-;_;+;`;|;{;};?;%;^;*;/]==true;( <:errado:1292312941030277200> › <@$authorID>, o prefixo informado não pode ser utilizado, pois pode causar falhas no meu sistema. Sinto muito.]

$setServerVar[prefix;$var[p]]
$sendMessage[( <:CERTO:1292312954619826226> › <@$authorID>, o prefixo do bot foi alterado com sucesso para ``$var[p]`` neste servidor!]

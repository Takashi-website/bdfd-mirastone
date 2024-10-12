$onlyIf[$guildID!=;( <:errado:1292312941030277200> › <@$authorID>, esse comando só pode ser usado em servidores.]

$color[$getServerVar[color]]
$thumbnail[$serverIcon]
$title[Informações do servidor]
$description[> Abaixo estaram as informações do servidor **$serverName[$guildID]**.]

$addField[✨ | Informações Básicas;
- Nome: ``$serverName[$guildID]``
- Proprietário: ``@$username[$serverOwner]`` ( ``$serverOwner`` )
- ID: ``$guildID``
- Data de criação: <t:$calculate[($guildID/4194304+1420070400000)/1000]:F> ( <t:$calculate[($guildID/4194304+1420070400000)/1000]:R> )
]
$addField[📊 | Estatísticas;
- Canais: ``$numberSeparator[$channelCount]``
- Cargos: ``$numberSeparator[$roleCount]``
- Emojis: ``$numberSeparator[$emoteCount]``
- Membros: ``$numberSeparator[$membersCount]``
]
$addField[🔎 | Outras Informações;
- Nivel de verificação: ``$replaceText[$replaceText[$replaceText[$replaceText[$replaceText[$serverVerificationLvl;Very High;Muito Alto];None;Nenhum];Low;Baixo];Medium;Médio];High;Alto]``
- Região: ``$replaceText[$serverRegion;Brazil;Brasil]``
]
$addButton[no;$serverIcon;Icon do Servidor;link;no;🖼]

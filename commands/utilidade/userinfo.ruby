$var[user;$findUser[$message[2]]]

$color[$getServerVar[color]]
$thumbnail[$userAvatar[$var[user]]]
$title[Informações do Usuário]
$description[> Abaixo estaram as informações do usuário **$username[$var[user]]**.]
$addField[✨ | Informações Básicas;
- Tag: ``@$username[$var[user]]``
- ID: ``$var[user]``
- Privado: ``$replaceText[$replaceText[$isUserDMEnabled[$var[user]];false;Fechada;-1];true;Aberta;-1]``
- Data de Criação: <t:$calculate[( $var[user] / 4194304 + 1420070400000) / 1000]> ( <t:$calculate[( $var[user] / 4194304 + 1420070400000) / 1000]:R> )
- Status: ``$replaceText[$replaceText[$replaceText[$replaceText[$getUserStatus[$var[user]];online;Disponível;-1];dnd;Não perturbe;-1];idle;Ausente;-1];offline;Invisível;-1]``]
$addField[👀 | Outras Informações;
- É Administrador?: ``$replaceText[$replaceText[$isAdmin[$var[user]];false;Não;-1];true;Sim;-1]``
- Maior Cargo: <@&$highestRole[$var[user]]>]

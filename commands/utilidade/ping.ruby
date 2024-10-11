**Ping!** 🏓
 
$if[$ping<=100]- **Conexão ótima:** O tempo de resposta do servidor é de **$ping** ms. Estou aqui para ajudar e garantir que sua experiência seja incrível!
$elseif[$ping<=200]
- **Conexão razoável:** O tempo de resposta é de **$ping** ms. Pode haver alguns atrasos, mas estou sempre aqui para ajudar!
$elseif[$ping>=201]
- **Conexão ruim:** O tempo de resposta é de **$ping** ms. Parece que a conexão não está muito boa. Tente novamente mais tarde, ou verifique sua conexão!
$endif
- Se precisar de ajuda ou tiver dúvidas, estou aqui para ajudar! Use `$getServerVar[prefix]ajuda` para ver outros comandos.

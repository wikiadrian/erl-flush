-module(test_lexer1).
-include_lib("eunit/include/eunit.hrl").
-import(lexer1, [inicio/1]).

inicio_test_() ->
    [?_assert(inicio("eunit/test_lexer1.html") == [
    		{estatico,1,1,"<!-- hola \n\t"},
    		{expresion,2,2,"{{}}"},
		{estatico,2,6,"\n\t"},
		{enunciado,3,2,"{%%}"},
		{estatico,3,6,"\n\t-->\n<html>\n\t<body bg color=\"bl"},
		{expresion,6,20,"{{ue}}"},
		{estatico,6,26,"\">\n\t\t"},
		{enunciado,7,3,"{%  \"hola1\" + 'hola2' / \"ho\n\t\tla3\" = \"ho\\nla4\"%}"},
		{estatico,8,21," \n\t\t"},
		{expresion,9,3,"{{\"ho'la'5\" % 'ho\n\t\tla6' - 'ho\"la\"7'}}"},
		{estatico,10,21,"\n\t</body>\n</html>\n\n"}]),
	?_assert(inicio("{{ '{{' }}") == [{expresion,1,1,"{{ '{{' }}"}]),
	?_assert(inicio("{% '%}' %}") == [{enunciado,1,1,"{% '%}' %}"}]),
	?_assertThrow(invalidsyntax, inicio("{% {{ }} %}")),
	?_assertThrow(invalidsyntax, inicio("{{ {% %} }}")),
	?_assert(inicio("{{ \"\n\" }}") /= [{expresion,1,1,"{{ \"
	\" }}"}])].

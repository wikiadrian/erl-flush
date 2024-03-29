-module(test_servidor).
-import(serverl, [inicio/0, listaHead/2, stringHeaders/2]).
-import(cliente, [test1/2]).
-compile(export_all).


-include_lib("eunit/include/eunit.hrl").

%serv_test_() ->
%	[?_assert(inicio() == ["Erl-FlushServer Ver. 0.1
%(C) by Erl-Flush Team, 2008."])].

forma_test_()	->
	[?_assert(cliente:test1(8800, "GET /forma.html HTTP/1.0")=="HTTP/1.0 200 OK\nServer: erlflussServer/0.1\nContent-type : text/html\n\n<html>\n<body>\n<form name=\"input\" method=\"POST\" action=\"forma/eval\">\nUsername: \n<input type=\"text\" name=\"user\">\n<input type=\"submit\" value=\"Submit\">\n</form>\n</body>\n</html>\n\n")].

css_test_() ->
    [?_assert(test1(8800, "GET /deportes.css HTTP/1.0") == "HTTP/1.0 200 OK\nServer: erlflussServer/0.1\nContent-type : text/css\n\n/*Para los titulos de pagina*/\r\n#content H1 { margin-top : 8px; color : #990000;}\r\n/*Para el cuadro de cual es tu equipo*/\r\nDIV.yourTeam {\r\n\tbackground-color : #F7F7F7;\r\n\tbackground : url(../img/img_equipo.gif) no-repeat;\r\n\tborder : solid 1px #B2B2B2;\r\n\t\tpadding : 50px 0 12px 5px;\r\n\ttext-align : center;\r\n}\r\n/*Para el componente de tu equipo (version pequenya)*/\r\nDIV.yourTeam.litleFlags {\r\n\tmargin-bottom:15px; \r\n\tpadding-bottom : 0;\r\n\tbackground-image:url(../img/img_equipo_litle.gif);\r\n}\r\n\r\n/*Para el componente de tu equipo*/\r\nDIV.yourTeam.litleFlags LI{\r\n\twidth : 30px;\r\n\tmargin: 6px 2px 0 0 !important\r\n}\r\n\n")].

jpeg_test_() ->
    [?_assert(test1(8800, "GET /img/carita.jpeg HTTP/1.0") == [72,84,84,80,47,49,46,48,32,50,48,48,32,79,75,10,83,101,114,118,101,114,58,32,
  101,114,108,102,108,117,115,115,83,101,114,118,101,114,47,48,46,49,10,67,111,
  110,116,101,110,116,45,116,121,112,101,32,58,32,105,109,97,103,101,47,106,
  112,101,103,10,10,255,216,255,224,0,16,74,70,73,70,0,1,1,1,0,96,0,96,0,0,255,
  225,0,22,69,120,105,102,0,0,73,73,42,0,8,0,0,0,0,0,0,0,0,0,255,219,0,67,0,8,
  6,6,7,6,5,8,7,7,7,9,9,8,10,12,20,13,12,11,11,12,25,18,19,15,20,29,26,31,30,
  29,26,28,28,32,36,46,39,32,34,44,35,28,28,40,55,41,44,48,49,52,52,52,31,39,
  57,61,56,50,60,46,51,52,50,255,219,0,67,1,9,9,9,12,11,12,24,13,13,24,50,33,
  28,33,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,
  50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,50,
  50,50,255,192,0,17,8,0,20,0,20,3,1,34,0,2,17,1,3,17,1,255,196,0,31,0,0,1,5,1,
  1,1,1,1,1,0,0,0,0,0,0,0,0,1,2,3,4,5,6,7,8,9,10,11,255,196,0,181,16,0,2,1,3,3,
  2,4,3,5,5,4,4,0,0,1,125,1,2,3,0,4,17,5,18,33,49,65,6,19,81,97,7,34,113,20,50,
  129,145,161,8,35,66,177,193,21,82,209,240,36,51,98,114,130,9,10,22,23,24,25,
  26,37,38,39,40,41,42,52,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,
  86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,
  122,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,
  163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,
  196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,225,226,227,
  228,229,230,231,232,233,234,241,242,243,244,245,246,247,248,249,250,255,196,
  0,31,1,0,3,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,2,3,4,5,6,7,8,9,10,11,255,196,0,
  181,17,0,2,1,2,4,4,3,4,7,5,4,4,0,1,2,119,0,1,2,3,17,4,5,33,49,6,18,65,81,7,
  97,113,19,34,50,129,8,20,66,145,161,177,193,9,35,51,82,240,21,98,114,209,10,
  22,36,52,225,37,241,23,24,25,26,38,39,40,41,42,53,54,55,56,57,58,67,68,69,70,
  71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,
  117,118,119,120,121,122,130,131,132,133,134,135,136,137,138,146,147,148,149,
  150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,
  183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,
  216,217,218,226,227,228,229,230,231,232,233,234,242,243,244,245,246,247,248,
  249,250,255,218,0,12,3,1,0,2,17,3,17,0,63,0,244,143,17,120,138,233,175,46,
  173,173,111,110,116,235,123,27,187,123,57,102,182,142,39,154,89,230,242,182,
  128,36,86,81,24,19,33,39,27,137,206,54,133,253,229,59,120,166,181,213,238,44,
  116,157,107,87,182,185,130,24,174,36,23,87,13,121,12,161,218,64,129,132,197,
  152,0,99,109,193,26,50,65,31,54,112,85,156,233,146,234,218,124,214,38,241,45,
  53,55,187,117,219,153,26,41,156,220,44,201,30,9,109,146,59,32,199,36,194,229,
  114,192,37,77,111,174,233,215,119,192,233,182,211,94,220,73,178,43,137,96,
  135,111,144,160,159,150,87,125,161,89,11,18,98,207,152,55,19,179,147,95,158,
  230,121,142,62,56,186,156,178,146,229,109,43,61,18,210,215,233,170,187,215,
  185,221,78,156,57,85,206,187,66,213,134,183,164,165,239,146,97,127,50,88,100,
  143,118,224,178,71,35,70,248,56,25,93,200,216,36,2,70,9,0,240,10,203,240,76,
  102,75,13,71,84,228,38,167,127,37,196,107,142,60,180,84,129,24,31,226,87,88,
  86,64,71,24,144,99,32,100,149,247,152,121,206,116,97,57,171,54,147,107,206,
  199,20,146,77,164,106,106,218,22,159,173,136,190,219,28,219,225,207,151,45,
  189,196,144,72,160,227,43,190,54,86,218,112,164,174,112,74,169,35,32,99,46,
  63,4,218,72,127,226,105,169,234,154,170,15,187,21,204,203,28,120,238,172,144,
  172,107,34,158,1,89,3,12,113,140,19,146,138,39,135,163,57,169,206,9,181,179,
  105,92,20,154,86,76,233,168,162,138,216,71,255,217,10]
)].

error404_test_() ->
    [?_assert(test1(8800, "GET /algonovalido.wtf HTTP/1.0") =="HTTP/1.0 404 Not Found\nServer: StupidErlangServer/0.1\nContent-Type: text/html; charset=ISO-8859-1\n\n\n<html>\n  <head>\n    <title>Not Found!</title>\n    <style type='text/css'>\n      body {\n        background-color: white;       \n        font-family: sans-serif;\n        font-size: medium;\n        padding: 20px;\n      }\n      pre {\n        margin: 0px 20px;\n        padding: 20px;\n        border: 1px solid #000000;\n        background-color: #eeeeee;\n      }\n    </style>\n  </head>\n  <body>\n    <h1>404 Not Found</h1>\n     Recurso no encontrado:\n\t/home/adrian/erl-flush/resources/algonovalido.wtf\n  </body>\n</html>\n")].

error405_test_() ->
    [?_assert(test1(8800, "TRACE /forma.html HTTP/1.0") == "HTTP/1.0 405 Method Not Allowed\nServer: StupidErlangServer/0.1\nContent-Type: text/html; charset=ISO-8859-1\nAllow: GET, POST\n\n<html>\n  <head>\n    <title>405 Method Not Allowed</title>\n    <style type='text/css'>\n      body {\n        background-color: white;       \n        font-family: sans-serif;\n        font-size: medium;\n        padding: 20px;\n      }\n      pre {\n        margin: 0px 20px;\n        padding: 20px;\n        border: 1px solid #000000;\n        background-color: #eeeeee;\n      }\n    </style>\n  </head>\n  <body>\n    <h1>405 Method Not Allowed</h1>\n\tEl metodo especificado en la linea de peticion no esta permitido para el recurso identificado por la solicitud. \n\t\n  </body>\n</html>\n")].
   
fact_test_()	->
	[?_assert(cliente:test1(8800, "GET /prueba/fact?x=5&y=10 HTTP/1.0")=="HTTP/1.0 200 OK\nServer:Erl-flush\r\nContent-type:text/plain\r\n\n<html>\n\t<body>\n\t\t120\n\t\t<br>\n\t\t3628800\n\t</body>\n</html>\n")].
	
parametros_post_test_() ->
	[?_assert(cliente:test1(8800, "POST /forma/eval HTTP/1.0\r\n\r\nuser=maricela\r\n") == "HTTP/1.0 200 OK\nContent-Type:text/plain\r\nAllow:GET,POST\r\nServer:Erl-flush/1.0\r\n\n<html>\r\n\t<body>\r\n\t\tmaricela\r\n\r\n\t</body>\r\n</html>")].
	
lheaders_test_() ->
	[?_assert(server:listsHead1(["Accept: application/html", "Content-type: text/html"]) == [{"Accept", " application/html"}, {"Content-type" , " text/html"}])].
	
stringHead_test_()	->
	[?_assert(server:stringHeaders1([{"Accept"," application/html"},{"Content-type"," text/html"}])== "Accept: application/html\r\nContent-type: text/html\r\n")].
	
modulo_no_existe_test_()	->
	[?_assert(cliente:test1(8800, "GET /adrian/malto?x=10 HTTP/1.0") == "HTTP/1.0 404 Not Found\nServer: StupidErlangServer/0.1\nContent-Type: text/html; charset=ISO-8859-1\n\n\n<html>\n  <head>\n    <title>Not Found!</title>\n    <style type='text/css'>\n      body {\n        background-color: white;       \n        font-family: sans-serif;\n        font-size: medium;\n        padding: 20px;\n      }\n      pre {\n        margin: 0px 20px;\n        padding: 20px;\n        border: 1px solid #000000;\n        background-color: #eeeeee;\n      }\n    </style>\n  </head>\n  <body>\n    <h1>404 Not Found</h1>\n     Recurso no encontrado:\n\tadrian\n  </body>\n</html>\n")].
	
modulo_falla_test_()	->
	[?_assert( cliente:test1(8800, "GET /prueba/fact?x=l HTTP/1.0")== "HTTP/1.0 500  Internal Server Error\r\nServer: StupidErlangServer/0.1\r\nContent-Type: text/html; charset=ISO-8859-1\r\nAllow: GET, POST\r\n\n\r\n<html>\r\n  <head>\r\n    <title>500  Internal Server Error</title>\r\n    <style type='text/css'>\r\n      body {\r\n        background-color: white;       \r\n        font-family: sans-serif;\r\n        font-size: medium;\r\n        padding: 20px;\r\n      }\r\n      pre {\r\n        margin: 0px 20px;\r\n        padding: 20px;\r\n        border: 1px solid #000000;\r\n        background-color: #eeeeee;\r\n      }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <h1>500  Internal Server Error</h1>\r\n\tThe server has encountered an error or is incapable of performing the request.\r\n\tprueba\r\n  </body>\r\n</html>\r\n")].
#Tutorial para utilizar Erl-Flush.

# TUTORIAL #

## Instalación: ##

Para instalar Erl-Flush dependiendo de tu sistema operativo debes seguir los sencillos pasos descritos en las siguientes ligas:

  * Windows: http://code.google.com/p/erl-flush/wiki/InstalacionenWindows
  * Linux: http://code.google.com/p/erl-flush/wiki/InstalacionenLinux

## MVC ##

Erl-Flush esta basado en Modelo Vista Controlador, por lo que sus funciones estan modularizadas, asi que dentro del proyecto puedes encontrar las siguientes carpetas

> erl-flush
    * views.
    * ctrl

Esto permite separar los archivos que sirven como vista para la pagina, que son los que llevan el diseño, de los archivos que llevan la programación. Los primeros deben ser guardados en la carpeta _views_, mientras que los segundos son guardados en _ctrl_.

## Views ##

¿Que se debe guardar en esta carpeta?

La carpeta de views esta creada para poder guardar las vistas de la pagina, es donde ira el html, javascript, etc. que dará funcionalidad a ésta. A esta página puede ir agregada la gramatica propia de erl-flush, la cual sera usada en conjunto con un controlador.

  * Ejemplo:

```
     factorial.html

     <html>
	<body>
		{{x}}
		<br>
		{{y}}
	</body>
     </html>

```
> _**La anterior es una página de html sencilla en donde se desea imprimir el valor dinamico de "x" y "y"**_

> ## Gramatica de Plantillas ##
> Erl-Flush maneja operadores diferentes para poder crear Comentarios, Expresiones, Ciclos y Condiciones. A continuación una referencia de como hacer uso de estos.

> ### Comentarios ###
**Operador** : _{# #}_

```
<html>
	<body>
                {#Este es un comentario#}
	</body>
</html>

```
_El codigo anterior muestra un comentario en una vista, que puede servir para describir o crear anotaciones, los comentarios no se mostrarán en el resultado de la vista, solo estarán en el source._

> ### Expresiones ###
**Operador** : _{{ }}_

```
<html>
	<body>
                {#Este es un comentario#}
		{{x}}
		<br>
		{{y}}
	</body>
</html>

```
_El codigo anterior muestra como se pueden mandar llamar variables previamente definidas en el diccionario_

> ### Condiciones y Ciclos ###
**Operador** : _{% %}_

```
          Condicion
<html>
	<body>
              {#Este es un comentario#}
	      {% if x > 3 %}
                 {{x}}
              {% endif %}
              <br>
	      {{y}}
	</body>
</html>

```
_El codigo anterior muestra el uso de una condición if, en donde solo se imprime el valor de x (previamente cargado en el diccionario) si éste es mayor a 3_

```
          Ciclos listas
<html>
	<body>
              {#Este es un comentario#}
	      {% for i in rango %}
                 {{i}}
              {% endfor %}
              <br>
	      {{y}}
	</body>
</html>

```
_El codigo anterior muestra el uso de un ciclo for, en donde se recorre la lista "rango" y se imprimen sus valores._

```
          Ciclos diccionarios
<html>
	<body>
              {#Este es un comentario#}
	      {% for i,j in rangodetuplas %}
                 {{i}}
                 <br>
                 {{j}}
              {% endfor %}
              <br>
	      {{y}}
	</body>
</html>

```
_El codigo anterior muestra el uso de un ciclo for, en donde se recorre el diccionario "rangodetuplas" y se imprimen sus valores (key, value)_

## Ctrl ##

¿Que se debe guardar en esta carpeta?

La carpeta de ctrl esta creada para poder guardar llos cotroladores de la página, es donde ira codigo que más que diseño le brinda funcionalidad a la pagina.

Los controladores se crean basandose en el lenguaje erlang.

  * Ejemplo:

```
      prueba.erl
     -module(prueba).
-export([fact/2]).

factorial(Params,_)-> 
	{[{A,factorial(list_to_integer(B))}||{A,B}<-Params],[{"Server", "Erl-flush"},{"Content-type", "text/plain"}]}.

factorial(0) ->	1;
factorial(N) -> N * factorial(N-1).

```
> _**El codigo anterior es un controlador llamado prueba.erl que realiza el factorial de cierto numero.**_
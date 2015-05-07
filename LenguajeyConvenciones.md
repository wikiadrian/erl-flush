#Se describe a grandes rasgos las convenciones del lenguaje Erlang

# Lenguaje y Convenciones #

Nuestro proyecto será programado en el lenguaje funcional Erlang. Para poder realizar este proyecto primero tenemos que saber las convenciones que tenemos que respetar.
Las convenciones de este y cualquier lenguaje son muy grandes por lo que enlistaremos las convenciones que creemos más importantes.

Las palabras reservadas en este lenguaje son :  after, and, andalso, band, begin, bnot, bor, bsl, bsr, bxor, case, catch, cond, div, end, fun, if, let, not, of, or, orelse, query, receive, rem, try, when, xor.

Una secuecia puede estar formado por uno o más elementos. Por ejemplo, las clausulas consisten en una secuencia de expresiones. Esto quiere decir que al menos debe de haber una expresión.Por otro lado una lista es cualquier número de elementos. Esto quiere decir que puede tener cero, uno o más elementos.

Todo el código de Erlang está dividido en modulos (modules).  Un módulo consiste en una secuencia de atributos y declaración de funciones. Cada módulo debe de terminar con un punto (.).

Una declaración de funciones es una secuencia de function clauses separadas por punto y coma (;) y terminadas por un punto (.).
Una function clause consiste de una expresión head y de una expresión para el cuerpo separadas por ->.

Una expresión head consiste del nombre de una función, una lista de argumentos y un secuancia de guards opcional, con la palabra clave when.
El número de argumentos N es la cardinalidad de la función.  Una función es única definida por el nombre del modulo, el nombre de la función y la cardinalidad. Esto es, dos funciones con el mismo nombre, el mismo módulo pero con diferente cardinalidad son dos funciones completamente diferentes.

El cuerpo de la función consiste de una secuencia de expresiones separadas por una coma (,).

# CONVENCIONES #

String con comillas simples.

Palabras reservadas:
•	OR
•	AND
•	XOR
•	NOT

Nota: Solo se aceptan las palabras reservadas y (==, >, <, !=)si tienen paréntesis, ejemplo:
(1+1) or (2+2)

Las variables no definidas no se imprimen.

Si la variable no está definida es NULL, numérico=0, Booleano=Falso.

Notación infija.

## Precedencia ##

Operators Associativity

:

#

(unary) +, (unary) -, bnot, not

/, `*`, div, rem, band, and                     Left associative

+, -, bor, bxor, bsl, bsr, or, xor                  Left associative

++, - - Right associative

`==`, /=, =<, <, >=, >, =:=, =/=

andalso

orelse



## Relacionales ##

'hola' < 'casa'

'hola' == 'hola'

'casa' != 'hola'

  1. < 2

## Logicas ##

3.2 or 5


E -> E '+' T

E -> E '-' T

E -> E and T

E -> T

T -> T '`*`' F

T -> T '/' F

T -> T '%' F

T -> T or F

T -> T xor F

T -> F

F -> '(' B ')'

F -> '-' F

F -> not F

F -> num

## Terminales ##

> , < , == , string, num, /=, >= ,=<


B -> I > I

B -> I < I

B -> I == I

B -> I /= I

B -> I >= I

B -> I =< I

B -> I

I -> E

I -> string

I -> boolean
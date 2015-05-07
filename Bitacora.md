#En esta página se llevará el registro de lo que se hace en cada sesión.

# Bitácora #
| **Fecha** | **Duración** | **Personas presentes** | **Dificultades afrontadas** | **Resultado obtenidos** |
|:----------|:--------------|:-----------------------|:----------------------------|:------------------------|
| 12-Ago-2008 | 1.5 hr | Adrian, Malto(Manuel), Mamachuy(persona presente espiritual, alma del equipo), Luna y Mary | No se encontraban convenciones de Erlang. Dificultades para elegir la licencia (nada grave) | Creación del proyecto en google code. Elección de la licencia que llevará el proyecto. Determinación del lenguaje (Erlang) y sus convenciones|
| 07-Sep-2008 | 1.5 hr | Adrian, Malto, Mamachuy, Luna y Mary | Problemas para reunirnos. Problemas para instalar eunit. | Reparto de trabajo para investigar y adelantar en lo que nos juntamos presencialmente, diseño de automatas.|
| 08-Sep-2008 | 2.5 hrs | Adrian, Malto, Mamachuy y Mary | Discrepancia en el entendimiento del problema y de la solución del mismo. Surgimiento de dudas con respecto a los alcances del problema. | Creación de los autómatas para las history cards 1, 2 y 3. Implementación de los automatas para las history cards 2 y 3 |
| 10-Sep-2008 | 3 hrs | Adrian, Malto, Mamachuy, Luna y Mary | Estrés con respecto al tiempo de entrega de los autómatas.  | Depuración de los diagramas y del codigo en general, simplificación de los automatas debido al nivel de complejidad. |
| 11-Sep-2008 | 3 hrs | Adrian y Mamachuy | En las pruebas de unidad no me salía algo lógico con excepciones | Modificacion de los automatas parser1 y lexer1 para que arrojaran excepciones y modificaciones en las pruebas de unidad y makefile |
| 11-Sep-2008 | 2 hrs | Adrian, Mamachuy y Mary | Buscar horario para trabajar | Refactor de Lexer2N y sus test. Agregar la excepcion para una expresion erronea y modificar los casos de prueba donde se espera una excepcion.  |
| 12-Sep-2008 | 1 hrs | Adrian y Mamachuy | El manejo de los strings y las pruebas de lexer2N | Refactorización de lexer2N así como la documentación del proyecto. Anexe unos comentarios que puedan ser de utilidad.  |
| 24-Sep-2008 | 1.5 hrs | Adrian, Luna, Mary, Malto y Mamachuy | Ninguna | Establecer convenciones, agregar signos: <,> y ! al lexer2N y definicion de la gramatica para expresiones aritmeticas  |
| 01-Oct-2008 | 3 hrs | Adrian, Luna, Mary, Malto y Mamachuy | Ninguna =) | Cambio de signo ! por / en el lexer2N. Se agrego a la gramatica(en papel) expresiones relacionales y logicas. Comienzo de implementacion de la tarjeta 4 parser1 llamara a lexer1 y lexer1  llamara a lexer2. |
| 03-Oct-2008 | 1 hr | Adrian y Mamachuy | Al convertir Strings, numbers y floats | Se creo una clase que una parser1, lexer1 y lexer2, que además le da formato a las tuplas para mandarlas a yecc|
| 03-Oct-2008 | 2 hrs | Luna, Mary, Malto y Mamachuy | En los test del parser(yecc) |  Se creo la gramatica con yecc y se resolvieron los problemas con strings, float e integers |
| 05-Oct-2008 | 4.5 hrs | Adrian, Mary, Malto y Mamachuy |Integracion de los lexers, agregar funcionalidad al parser |  Elaboracion del lexer3 que hace lo necesario para que el parser tenga su entrada correspondiente, agregar funcionalidad al parser, integracion de los lexers e implementacion del evaluador de expresiones|
| 06-Oct-2008 | 1 hrs | Adrian, Mary, Malto, Mamachuy y Luna | Salio un caso no considerado  | Se corrigió el caso y se añadió la clase peval para que regresara el resultado en un string|
| 08-Oct-2008 | .5 hrs | Adrian, y Mamachuy | Se nos olvido agregar el test de peval.erl | Elaboración de la prueba de unidad, test\_peval.erl |
| 12-Oct-2008 | 5 hrs | Luna, Adrian, Malto, Mary y Mamachuy |  Activar los puertos | Elaboración del Servidor Web y su archivo de Configuración. |
| 15-Oct-2008 | 2.5 hrs | Luna, Adrian, Malto, Mary y Mamachuy |  - | Corregir detalles. Hacer un cliente para el servidor y ayude en las pruebas. Incluir metodo POST al servidor y mandar error 405 si no es un metodo valido (GET o POST). |
| 16-Oct-2008 | 1.5 hrs | Adrian y Mamachuy |  Problemas para leer la informacion de los archivos | Actualizar el make, corregir detalles del servidor |
| 21-Oct-2008 | 3 hrs |  Adrian, Mary, Malto,Luna y Mamachuy  |  La localizacion del modulo que recibe apply | Modificaciones al servidor, creacion del controlador y carpetas ctrl y views ||+|
| 26-Oct-2008 | 6 hrs |  Adrian, Mary, Malto,Luna y Mamachuy  | - | Modificaciones al controlador y al servidor para recibir la lista de parametros con metodo POST. Modificar el make por la localizacion de archivos compilados (.beam)|
| 27-Oct-2008 | 1.5 hrs |  Adrian, Mary y Mamachuy  | Escasez de tiempo | Modificaciones al test\_servidor.erl para poder probar casos no considerados|
| 27-Oct-2008 | 2 hrs |  Adrian y Mamachuy  | - | Solucion de problemas con headers.|
| 28-Oct-2008 | 2.5 hrs |  Adrian, Mary y Mamachuy  | Escasez de tiempo  | Cachar errores que deberian dar errores http 404 o 500|
| 30-Oct-2008 | 2 hrs |  Adrian y Mamachuy  | -  | Separar el controller|
| 09-Nov-2008 | 5 hrs |  Luna, Adrian, Malto, Mary y Mamachuy  | -  | Trabajo sobre las tarjetas 16 y 17, creacion de lexer4, eval\_if. |
| 12-Nov-2008 | 2.5 hrs |  Mary, Luna, Malto y Mamachuy  | -  | eval\_for.|
| 19-Nov-2008 | 3 hrs |  Mary, Luna, Malto y Mamachuy  | Falta de tiempo  | Corregir detalles para pasar prueba del cliente.|
| 26-Nov-2008 | 2.5 hrs |  Mary, Luna, Malto y Mamachuy  | -  | Diseño de la aplicacion y busqueda de tareas necesarias para estar listos para la presentacion final.|
| 28-Nov-2008 | 2 hrs |  Mary, Luna, Malto y Mamachuy  | -  | Esquelto de la aplicacion y edicion video.|
| 28-Nov-2008 | 2 hrs |  Mary, Luna, Malto y Mamachuy  | Periodo de examenes finales   | Esquelto de la aplicacion y edicion video.|
| 30-Nov-2008 | 10 hrs |  Mary, Luna, Malto y Mamachuy  | Periodo de examenes finales   | Detalles finales, edicion video, vistas y controladores de la aplicacion, corregir errores de la base de datos, turorial y aportaciones a la documentacion.|
| 1-Dic-2008 | 6 hrs |  Mary, Luna, Malto y Mamachuy  | Periodo de examenes finales| Detalles finales y edicion video.|

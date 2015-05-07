#Se describe la gramatica del lenguaje de plantillas que se utilizo

# Lenguaje de Plantillas #

Erl-Flush tiene tres diferentes tipos de operadores para poder realizar las tareas dentro de una plantilla:

  * '{##}' Comentarios ->
    * Como su nombre lo dice se utilizan para comentar cierta parte del codigo dinamico. Como en todos los lenguajes, esta parte del codigo no es visible en la aplicacion, solo en el source. Ej.
```
                    {# Esto es un comentario #} 
```


  * '{{}}' Expresiones ->
    * Se utilizan para desplegar algun valor dinamico mediante una variable. Ej:
```
                    {{ variablemuylarga + 2 }} 
```
> > > _**Supondiendo que "variablemuylarga = 2" el resultado de este codigo será 4**_
    * **NOTA:**_El valor de una variable que no fue correctamente definida es_ _**false**_.

  * '{%%}' Ciclos y Condiciones ->
    * Se utilizan para poder realizar una iteración a lo largo de una lista o un diccionario. Ej.
```
                    {% if x < 2 %}
                       {{x}}
                    {%endif%}
```
> > > _**Este codigo mostrará el valor de la variable x, solo si es menor a 2**_
```
                    {% for i in lista %}
                        {{i}}
                    {%endfor%}
```
> > > _**Suponiendo que "lista = [1,2,3]", este codigo recorerá la lista imprimiendo cada valor en ella, es decir 1 2 3**_co
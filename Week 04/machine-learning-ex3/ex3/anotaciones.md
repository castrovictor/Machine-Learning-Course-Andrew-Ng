## One vs all
**Explicación:**
Tenemos en y si el punto es de una clase u otra. Es decir, si tenemos clase 1,2,3, y nuestro punto pertenece
a la clase del 2, tenemos un 2 en esa fila de la y. Así, al recorrer el bucle desde la clase 1 hasta la N, evaluando
y == c, donde c es el contador, todas aquellas filas que tenga un 2 (suponemos que estamos con c = 2), tendrán un 1.
Esto se traduce a que todas esas filas con verdadero, son de esa clase, el resto es falso (aunque se mezclen clases), tal y como queremos hacer con el one vs all. Pasándole a fmincg nuestra función lrcostfunction, obtenemos nuestra función de coste optimizada, aunque ya de por sí la hayamos implementado regularizada y tal.
En alltheta vamos guardando, por filas, los parámetros obtenidos, hay que trasponer el theta ya que lo vamos a guardar como vector fila y viene dado como vector columna.

-- ONDELETE

/*
    ONDELETE se utiliza cuando quieres que 
    al eliminar un registro
    de la TABLA A se borre TAMBIEN su referencia de TABLA B

    osea..

    si borras el pais, en cascada borraras LOA REGISTROS relaiconados

    en cascada borras las relaciones foraneas
    a TODAS LAS TABLAS referenciadas por TABLA A


    osea, TABLA A si tiene 3 relaciones a 
    tabla B, C Y D. entonces...

    borraras todos los registros de estas tablas doinde 
    habia relacion...

*/


package mx.edu.um.rh

class Grupo {
    String nombre
    Integer maximo
    Integer minimo

    static constraints = {
        nombre maxSize:2,blank:false
        maximo blank:false
        minimo blank:false
    }
    
    static mapping={
        table name:'grupo',schema:'aron'
    }
}

package mx.edu.um.rh

class Porcentaje {
    Grupo grupo
    BigDecimal porcentaje
    static belongsTo=[Grupo]

    static constraints = {
    }
    
    static mapping={
        table name:'porcentaje',schema:'aron'
    }
}

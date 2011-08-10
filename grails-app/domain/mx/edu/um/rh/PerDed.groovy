package mx.edu.um.rh

class PerDed {
    String clave
    String nombre
    String naturaleza
    String frecuenciaPago
    String status
    String formula
    Map atributos
    //Queda Pendiente lo que Antes era CentroCosto,CtaMayor,Concepto
    
    static hasMany=[atributos:Atributo]

    static constraints = {
        clave maxSize:6,unique:true,blank:false
        nombre maxSize:50,unique:true,blank:false
        naturaleza maxSize:1,blank:false
        status maxSize:1,blank:false
        formula maxSize:70,blank:false        
    }
    static mapping={
        table name:'perdeds',schema:'aron'
        frecuenciaPago column:'periodo'
    }
}

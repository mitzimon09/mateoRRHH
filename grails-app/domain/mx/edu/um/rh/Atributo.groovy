package mx.edu.um.rh

class Atributo {
    //PerDed perded
    String nombre
    String descripcion
    String simbolo    
    //static belongsTo=[PerDed]
    static constraints = {
        nombre maxSize:50,blank:false
        descripcion maxSize:100,blank:false
        simbolo maxSize:2,blank:false
    }
    
    static mapping={
        sort "simbolo"
        table name:'atributo',schema:'aron'
    }
}

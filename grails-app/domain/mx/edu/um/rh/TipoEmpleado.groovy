package mx.edu.um.rh

class TipoEmpleado {
    String descripcion
    String prefijo
    
    static constraints = {
        descripcion blank:false,maxSize:40
        prefijo maxSize:3,blank:false
    }
    
    static mapping={
        table name:'tipoempleado',schema:'aron'
        }
}

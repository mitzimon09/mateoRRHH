package mx.edu.um.rh
import general.*
class Empleado {
    Empresa empresa
    String clave
    String nombre
    String apPaterno
    String apMaterno
    String genero
    Date fechaNacimiento
    String direccion
    String status
    EmpleadoPersonales empleadoPersonales
    EmpleadoLaborales empleadoLaborales
    
    //static belonsgTo=[empleadoPersonales:EmpleadoPersonales]
    
    
    public String getNombreCompleto(){
        "$nombre $apPaterno $apMaterno"
    }

    static constraints = {
        clave maxSize:7,blank:false,unique:true
        nombre maxSize:50,blank:false
        apPaterno maxSize:30,blank:false,column:'appaterno'
        apMaterno maxSize:30,blank:false,column:'apmaterno'
        fechaNacimiento blank:false,column:'fechanacimiento'
        direccion maxSize:100,blank:false
        genero maxSize:2,blank:false
        status maxSize:2,blank:false
    }
    
    static mapping={
        table name:'empleado',schema:'aron'
        apPaterno column:'appaterno'
        apMaterno column:'apmaterno'
        fechaNacimiento column:'fechanacimiento'
        
    }   
        static namedQueries = {
        listaEmpleadoByTipoYEmpresa{empresaId,tipoId ->
            //log.debug "tipo $tipoId empresa $empresaId"
            empleadoLaborales{
                tipo{
                    idEq(tipoId)
                }
            }
            empresa{
                idEq(empresaId)            
            }
        }        
    }
}

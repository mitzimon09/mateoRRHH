package mx.edu.um.rh
import mx.edu.um.rh.interfaces.*
import general.*
class EmpleadoService implements EmpleadoServiceInt {
    
    
    Empleado getEmpleado(String clave) throws NullPointerException{
        //log.debug "getEmpleadoByClave"
        def empleado=Empleado.findByClave(clave)
        //log.debug "Empleado: $empleado"
        if(!empleado){
            throw new NullPointerException("empleado.inexistente")
        }
        return empleado
    }
    
    List<Empleado> getEmpleadosByEmpresaAndTipo(Empresa empresa,TipoEmpleado tipo) throws NullPointerException{
        log.debug "getEmpleadosByEmpresaAndTipo $empresa.id $tipo.id"
        def empleados=Empleado.listaEmpleadoByTipoYEmpresa(empresa.id,tipo.id)
        //log.debug "Empleados ---------------------> ${empleados.list()}"
        //return new ArrayList<Empleado>()
        return empleados.list()
    }
    def serviceMethod() {

    }
}

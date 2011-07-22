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
        Empleado empleado=new Empleado()
        empleado.empresa=empresa
        EmpleadoLaborales emplLaborales=new EmpleadoLaborales()
        emplLaborales.tipo=tipo
        empleado.empleadoLaborales=emplLaborales
        empleado.status="A"
        def empleados=Empleado.listaEmpleadosParametros(empleado)
        log.debug "Empleados ${empleados.list().size()}"
        return empleados.list()
    }
    
    List<Empleado> getEmpleadosByEmpresa(Empresa empresa) throws NullPointerException{
        Empleado empleado=new Empleado()
        empleado.empresa=empresa
        empleado.status="A"
        def empleados=Empleado.listaEmpleadosParametros(empleado)
        return empleados.list()
        }
    
    List<Empleado> getEmpleadosByTipo(TipoEmpleado tipo) throws NullPointerException{
        Empleado empleado=new Empleado()
        EmpleadoLaborales emplLaborales=new EmpleadoLaborales()
        emplLaborales.tipo=tipo
        empleado.empleadoLaborales=emplLaborales
        empleado.status="A"
        def empleados=Empleado.listaEmpleadosParametros(empleado)
        return empleados.list()
    }
    
    
    
    def serviceMethod() {
    }
}

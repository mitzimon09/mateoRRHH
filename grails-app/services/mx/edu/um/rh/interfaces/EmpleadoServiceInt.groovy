/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mx.edu.um.rh.interfaces
import mx.edu.um.rh.*
import general.*
/**
 *
 * @author eder
 */
interface EmpleadoServiceInt {
    Empleado getEmpleado(String clave) throws NullPointerException
    List<Empleado> getEmpleadosByEmpresaAndTipo(Empresa empresa,TipoEmpleado tipo) throws NullPointerException
    List<Empleado> getEmpleadosByEmpresa(Empresa empresa) throws NullPointerException
    List<Empleado> getEmpleadosByTipo(TipoEmpleado tipo) throws NullPointerException
    
	
}


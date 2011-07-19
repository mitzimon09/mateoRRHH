package mx.edu.um.rh


import general.*
import grails.test.*
import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
//@TestMixin(GrailsUnitTestMixin)
@TestFor(EmpleadoController)
class EmpleadoControllerIntegrationTests extends BaseIntegrationTest{
    
    def springSecurityService
    def empleadoServiceInt
    
    /*
     *Esta Prueba no corre en el controller prueba la funcionalidad del service
     */
    @Test
    void debieraTraerUnEmpleadoPorClaveANivelService(){
        log.debug "test EmpleadoByClave"
        def clave="9800052"
        def empleado=empleadoServiceInt.getEmpleado(clave)
        //notThrown(NullPointerException)
        assertEquals 'ISMAEL',empleado.nombre
        assertEquals 'CASTILLO',empleado.apPaterno
        assertEquals 'OSUNA',empleado.apMaterno
        assertEquals 139,empleado.id
    }
        
    @Test
    void debieraMarcarErrorEmpleadoPorClaveANivelService(){
        log.debug "test EmpleadoByClave"
        def clave="9999999"
        try{            
            def empleado=empleadoServiceInt.getEmpleado(clave)
        }catch (NullPointerException npe){            
            assertEquals "empleado.inexistente",npe.message
        }       
    }    
}

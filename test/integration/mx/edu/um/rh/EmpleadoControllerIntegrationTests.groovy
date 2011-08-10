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
    /*
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
        
    @Test
    void debieraTraerEmpleadosByEmpresaAndTipo(){
        log.debug "debieraTraerEmpleadosByEmpresaAndTipo"
        //def empresaId=102
        //def tipoId=1
        def empresa=Empresa.get(102)
        def tipo=TipoEmpleado.get(1)
        assertEquals tipo.descripcion,"DENOMINACIONAL"
        assertEquals empresa.nombre,"CENTRAL"
        def empleados=empleadoServiceInt.getEmpleadosByEmpresaAndTipo(empresa,tipo)
        for(Empleado empleado in empleados){            
            assertEquals 1,empleado.empleadoLaborales.tipo.id
            assertEquals 102,empleado.empresa.id
        }
        assertEquals 432,empleados.size()  
    }
    @Test
    void debieraTraerCeroEmpleadosByEmpresaAndTipo(){
        log.debug "debieraTraerEmpleadosByEmpresaAndTipo"
        //def empresaId=102
        //def tipoId=1
        def empresa=Empresa.get(121)
        def tipo=TipoEmpleado.get(1)
        assertEquals tipo.descripcion,"DENOMINACIONAL"
        assertEquals empresa.nombre,"Prueba"
        def empleados=empleadoServiceInt.getEmpleadosByEmpresaAndTipo(empresa,tipo)
        for(Empleado empleado in empleados){
            assertEquals empleado.empleadoLaborales.tipo.id,1      
            assertEquals empleado.empresa.id,121
        }
        assertEquals 0,empleados.size()
    }
       
    @Test
    void debieraTraerEmpleadosByTipo(){
        log.debug "debieraTraerEmpleadosByTipo"
        def tipo=TipoEmpleado.get(1)
        assertEquals tipo.descripcion,"DENOMINACIONAL"
        def empleados=empleadoServiceInt.getEmpleadosByTipo(tipo)
        for(Empleado empleado in empleados){
            assertEquals empleado.empleadoLaborales.tipo.id,1
        }
        assertEquals 432,empleados.size()
    }
        
    @Test
    void debieraTraerEmpleadosByEmpresa(){
        def empresa=Empresa.get(102)
        assertEquals empresa.nombre,"CENTRAL"
        def empleados=empleadoServiceInt.getEmpleadosByEmpresa(empresa)
        for(Empleado empleado in empleados){      
            assertEquals empleado.empresa.id,102
        }
        assertEquals 601,empleados.size()  
    }
    */
    /*
     *Seccion de Leer Las Perdeds del empleado
     */
    @Test
    void debieraLeerPercepcionesDeduccionesEmpleado(){
        def clave="9800052"
        def empleado=empleadoServiceInt.getEmpleado(clave)
        assertEquals 139,empleado.id
        System.out.println("==================="+empleado.perdeds)
        System.out.println("==================="+empleado.perdeds.size())
        assertNotNull empleado.perdeds
        assertEquals 8,empleado.perdeds.size()
        Map empleadoPerdeds=empleado.perdeds
        //EmpleadoPerded emperd=empleadoPerdeds
        System.out.println("=================== "+empleadoPerdeds.containsKey('1'))
        //assertNotNull emperd
        //System.out.println("=================== "+emperd.empleado.id)
        //assertEquals '%',emperd.tipoImporte
        //assertEquals 100,emperd.importe
        //assertEquals 'D,PS,BN',emperd.atributos
    }
        /*
    @Test
    void debieraGuardarPercecionesDeducciones(){
        def clave="9800052"
        def empleado=empleadoServiceInt.getEmpleado(clave)
        assertEquals 139,empleado.id
        PerDed perded=PerDed.get(1)
        assertEquals "Salario",perded.nombre
        def empleadoPerded=new EmpleadoPerded()
        empleadoPerded.importe=new BigDecimal("100")
        empleadoPerded.otorgado=false
        empleadoPerded.isEditableByNOM=false
        empleadoPerded.tipoImporte="%"
        empleadoPerded.atributos ="D,PS,BN"
        empleadoPerded.perded=perded
        empleadoPerded.empleado=empleado
        assertNull empleadoPerded.id
        empleadoPerded.save()
        assertNotNull empleadoPerded
        assertNotNull empleadoPerded.id
        System.out.println("-------------->"+empleadoPerded.id+"<--------------")
    }
    
    
    @Test
    void debieraModificarPercecionesDeducciones(){
        def clave="9800052"
        def empleado=empleadoServiceInt.getEmpleado(clave)
        assertEquals 139,empleado.id
        List percepcionesEmpleados=empleado.perdeds.toList()
        assertEquals 8,percepcionesEmpleados.size()
        for(EmpleadoPerded emperded:percepcionesEmpleados ){
            assertNotNull emperded
            assertNotNull emperded.id
            emperded.atributos="B,N"
            emperded.save()
            assertNotNull emperded
        }
        percepcionesEmpleados=null
        percepcionesEmpleados=empleado.perdeds.toList()
        assertEquals 8,percepcionesEmpleados.size()
        for(EmpleadoPerded emperded:percepcionesEmpleados ){
            assertNotNull emperded
            assertNotNull emperded.id
            assertEquals "B,N",emperded.atributos
                
        }        
    }        
    @Test
    void debieraLeerFormula(){
        def clave="9800052"
        def empleado=empleadoServiceInt.getEmpleado(clave)
        assertEquals 139,empleado.id
        List percepcionesEmpleados=empleado.perdeds.toList()
        assertEquals 8,percepcionesEmpleados.size()
        for(EmpleadoPerded emperded:percepcionesEmpleados ){
            assertNotNull emperded
            assertNotNull emperded.id
            System.out.println("------"+emperded.perded+"----")
            assertNotNull emperded.perded
            assertNotNull emperded.perded.formula
            assertEquals '-',emperded.perded.formula            
        }        
    }
    @Test
    void debieraModificarFormula(){
        def clave="9800052"
        def empleado=empleadoServiceInt.getEmpleado(clave)
        assertEquals 139,empleado.id
        List percepcionesEmpleados=empleado.perdeds.toList()
        assertEquals 8,percepcionesEmpleados.size()
        for(EmpleadoPerded emperded:percepcionesEmpleados ){
            assertNotNull emperded
            assertNotNull emperded.id
            System.out.println("------"+emperded.perded+"----")
            assertNotNull emperded.perded
            assertNotNull emperded.perded.formula
            if(emperded.perded.id==1){
                emperded.perded.formula='P1*P3'                
                emperded.perded.save()
                assertNotNull emperded.perded
            }
                
        }        
        percepcionesEmpleados=empleado.perdeds.toList()
        assertEquals 8,percepcionesEmpleados.size()
        for(EmpleadoPerded emperded:percepcionesEmpleados ){
            assertNotNull emperded
            assertNotNull emperded.id
            System.out.println("------"+emperded.perded+"----")
            assertNotNull emperded.perded
            assertNotNull emperded.perded.formula
            if(emperded.perded.id==1){
                assertEquals 'P1*P3',emperded.perded.formula
            }else{
                assertEquals '-',emperded.perded.formula                
            }
                
        }        
    }
    */
}

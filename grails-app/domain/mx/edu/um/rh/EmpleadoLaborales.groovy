package mx.edu.um.rh

class EmpleadoLaborales {
    Empleado empleado
    TipoEmpleado tipo
    String curp
    String rfc
    String cuenta
    String imms
    Integer escalafon
    Integer turno
    Date fechaAlta
    Date fechaBaja
    BigDecimal experienciaFueraUM
    String modalidad
    String ife
    String rango
    Boolean adventista
    Date fechaAntiguedadBase
    BigDecimal antiguedadBase
    BigDecimal antiguedadFiscal
    Grupo grupo
    
    
    static constraints = {
        cuenta maxSize:16
        curp maxSize:30
        escalafon blank:false
        imms maxSize:15
        rfc maxSize:15,blank:false
        modalidad maxSize:2,blank:false
        turno blank:false
        fechaAlta blank:false
        antiguedadBase blank:false
        
    }
    
    static mapping={
        table name:'empleadolaborales',schema:'aron'
        experienciaFueraUM column:'experiencia_fuera_um'
        tipo column:'id_tipoempleado'
        grupo column:'id_grupo'
        adventista type:'yes_no'
        id generator:'foreign',params:[property:'empleado']
    }
}

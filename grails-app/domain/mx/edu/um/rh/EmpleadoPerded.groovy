package mx.edu.um.rh

class EmpleadoPerded {
    PerDed perded
    Empleado empleado
    BigDecimal importe
    String tipoImporte
    String atributos
    Boolean otorgado
    Boolean isEditableByNOM
    static belongsTo=[Empleado,PerDed]
    static constraints = {
        tipoImporte maxSize:1
    }

    static mapping={
        table name:'empleado_perdeds',schema:'aron'
        //table name:'empleado_perdeds_test',schema:'aron'
        isEditableByNOM type:'yes_no'
        otorgado type:'yes_no'
        id generator:'native'
        perded column:'perded_id'
        //sort "id"
    }
}

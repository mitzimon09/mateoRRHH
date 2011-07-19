<%@ page import="mx.edu.um.rh.EmpleadoLaborales" %>



<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'cuenta', 'error')} ">
	<label for="cuenta">
		<g:message code="empleadoLaborales.cuenta.label" default="Cuenta" />
		
	</label>
	<g:textField name="cuenta" maxlength="16" value="${empleadoLaboralesInstance?.cuenta}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'curp', 'error')} ">
	<label for="curp">
		<g:message code="empleadoLaborales.curp.label" default="Curp" />
		
	</label>
	<g:textField name="curp" maxlength="30" value="${empleadoLaboralesInstance?.curp}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'escalafon', 'error')} required">
	<label for="escalafon">
		<g:message code="empleadoLaborales.escalafon.label" default="Escalafon" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="escalafon" required="" value="${fieldValue(bean: empleadoLaboralesInstance, field: 'escalafon')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'imms', 'error')} ">
	<label for="imms">
		<g:message code="empleadoLaborales.imms.label" default="Imms" />
		
	</label>
	<g:textField name="imms" maxlength="15" value="${empleadoLaboralesInstance?.imms}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'rfc', 'error')} required">
	<label for="rfc">
		<g:message code="empleadoLaborales.rfc.label" default="Rfc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rfc" maxlength="15" required="" value="${empleadoLaboralesInstance?.rfc}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'modalidad', 'error')} required">
	<label for="modalidad">
		<g:message code="empleadoLaborales.modalidad.label" default="Modalidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modalidad" maxlength="2" required="" value="${empleadoLaboralesInstance?.modalidad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'turno', 'error')} required">
	<label for="turno">
		<g:message code="empleadoLaborales.turno.label" default="Turno" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="turno" required="" value="${fieldValue(bean: empleadoLaboralesInstance, field: 'turno')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'fechaAlta', 'error')} required">
	<label for="fechaAlta">
		<g:message code="empleadoLaborales.fechaAlta.label" default="Fecha Alta" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaAlta" precision="day" value="${empleadoLaboralesInstance?.fechaAlta}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'antiguedadBase', 'error')} required">
	<label for="antiguedadBase">
		<g:message code="empleadoLaborales.antiguedadBase.label" default="Antiguedad Base" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="antiguedadBase" required="" value="${fieldValue(bean: empleadoLaboralesInstance, field: 'antiguedadBase')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'adventista', 'error')} ">
	<label for="adventista">
		<g:message code="empleadoLaborales.adventista.label" default="Adventista" />
		
	</label>
	<g:checkBox name="adventista" value="${empleadoLaboralesInstance?.adventista}" />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'antiguedadFiscal', 'error')} required">
	<label for="antiguedadFiscal">
		<g:message code="empleadoLaborales.antiguedadFiscal.label" default="Antiguedad Fiscal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="antiguedadFiscal" required="" value="${fieldValue(bean: empleadoLaboralesInstance, field: 'antiguedadFiscal')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'empleado', 'error')} required">
	<label for="empleado">
		<g:message code="empleadoLaborales.empleado.label" default="Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empleado" name="empleado.id" from="${mx.edu.um.rh.Empleado.list()}" optionKey="id" required="" value="${empleadoLaboralesInstance?.empleado?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'experienciaFueraUM', 'error')} required">
	<label for="experienciaFueraUM">
		<g:message code="empleadoLaborales.experienciaFueraUM.label" default="Experiencia Fuera UM" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="experienciaFueraUM" required="" value="${fieldValue(bean: empleadoLaboralesInstance, field: 'experienciaFueraUM')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'fechaAntiguedadBase', 'error')} required">
	<label for="fechaAntiguedadBase">
		<g:message code="empleadoLaborales.fechaAntiguedadBase.label" default="Fecha Antiguedad Base" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaAntiguedadBase" precision="day" value="${empleadoLaboralesInstance?.fechaAntiguedadBase}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'fechaBaja', 'error')} required">
	<label for="fechaBaja">
		<g:message code="empleadoLaborales.fechaBaja.label" default="Fecha Baja" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaBaja" precision="day" value="${empleadoLaboralesInstance?.fechaBaja}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'ife', 'error')} ">
	<label for="ife">
		<g:message code="empleadoLaborales.ife.label" default="Ife" />
		
	</label>
	<g:textField name="ife" value="${empleadoLaboralesInstance?.ife}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoLaboralesInstance, field: 'rango', 'error')} ">
	<label for="rango">
		<g:message code="empleadoLaborales.rango.label" default="Rango" />
		
	</label>
	<g:textField name="rango" value="${empleadoLaboralesInstance?.rango}"/>
</div>


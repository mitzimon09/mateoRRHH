<%@ page import="mx.edu.um.rh.EmpleadoPersonales" %>



<div class="fieldcontain ${hasErrors(bean: empleadoPersonalesInstance, field: 'estadoCivil', 'error')} required">
	<label for="estadoCivil">
		<g:message code="empleadoPersonales.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estadoCivil" maxlength="2" required="" value="${empleadoPersonalesInstance?.estadoCivil}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoPersonalesInstance, field: 'madre', 'error')} required">
	<label for="madre">
		<g:message code="empleadoPersonales.madre.label" default="Madre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="madre" maxlength="50" required="" value="${empleadoPersonalesInstance?.madre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoPersonalesInstance, field: 'padre', 'error')} required">
	<label for="padre">
		<g:message code="empleadoPersonales.padre.label" default="Padre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="padre" maxlength="50" required="" value="${empleadoPersonalesInstance?.padre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoPersonalesInstance, field: 'conyuge', 'error')} ">
	<label for="conyuge">
		<g:message code="empleadoPersonales.conyuge.label" default="Conyuge" />
		
	</label>
	<g:textField name="conyuge" maxlength="50" value="${empleadoPersonalesInstance?.conyuge}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoPersonalesInstance, field: 'empleado', 'error')} required">
	<label for="empleado">
		<g:message code="empleadoPersonales.empleado.label" default="Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empleado" name="empleado.id" from="${mx.edu.um.rh.Empleado.list()}" optionKey="id" required="" value="${empleadoPersonalesInstance?.empleado?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoPersonalesInstance, field: 'fechaMatrimonio', 'error')} required">
	<label for="fechaMatrimonio">
		<g:message code="empleadoPersonales.fechaMatrimonio.label" default="Fecha Matrimonio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaMatrimonio" precision="day" value="${empleadoPersonalesInstance?.fechaMatrimonio}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoPersonalesInstance, field: 'finadoMadre', 'error')} required">
	<label for="finadoMadre">
		<g:message code="empleadoPersonales.finadoMadre.label" default="Finado Madre" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="finadoMadre" required="" value="${fieldValue(bean: empleadoPersonalesInstance, field: 'finadoMadre')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoPersonalesInstance, field: 'finadoPadre', 'error')} required">
	<label for="finadoPadre">
		<g:message code="empleadoPersonales.finadoPadre.label" default="Finado Padre" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="finadoPadre" required="" value="${fieldValue(bean: empleadoPersonalesInstance, field: 'finadoPadre')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoPersonalesInstance, field: 'iglesia', 'error')} ">
	<label for="iglesia">
		<g:message code="empleadoPersonales.iglesia.label" default="Iglesia" />
		
	</label>
	<g:textField name="iglesia" value="${empleadoPersonalesInstance?.iglesia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoPersonalesInstance, field: 'responsabilidad', 'error')} ">
	<label for="responsabilidad">
		<g:message code="empleadoPersonales.responsabilidad.label" default="Responsabilidad" />
		
	</label>
	<g:textField name="responsabilidad" value="${empleadoPersonalesInstance?.responsabilidad}"/>
</div>


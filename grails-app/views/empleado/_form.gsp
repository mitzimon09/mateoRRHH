<%@ page import="mx.edu.um.rh.Empleado" %>



<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'clave', 'error')} required">
	<label for="clave">
		<g:message code="empleado.clave.label" default="Clave" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clave" maxlength="7" required="" value="${empleadoInstance?.clave}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="empleado.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${empleadoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'apPaterno', 'error')} required">
	<label for="apPaterno">
		<g:message code="empleado.apPaterno.label" default="Ap Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apPaterno" maxlength="30" required="" value="${empleadoInstance?.apPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'apMaterno', 'error')} required">
	<label for="apMaterno">
		<g:message code="empleado.apMaterno.label" default="Ap Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apMaterno" maxlength="30" required="" value="${empleadoInstance?.apMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="empleado.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" precision="day" value="${empleadoInstance?.fechaNacimiento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="empleado.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" maxlength="100" required="" value="${empleadoInstance?.direccion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'genero', 'error')} required">
	<label for="genero">
		<g:message code="empleado.genero.label" default="Genero" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="genero" maxlength="2" required="" value="${empleadoInstance?.genero}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="empleado.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" maxlength="2" required="" value="${empleadoInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="empleado.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empresa" name="empresa.id" from="${general.Empresa.list()}" optionKey="id" required="" value="${empleadoInstance?.empresa?.id}" class="many-to-one"/>
</div>


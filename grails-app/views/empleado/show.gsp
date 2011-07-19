
<%@ page import="mx.edu.um.rh.Empleado" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-empleado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-empleado" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list empleado">
			
				<g:if test="${empleadoInstance?.clave}">
				<li class="fieldcontain">
					<span id="clave-label" class="property-label"><g:message code="empleado.clave.label" default="Clave" /></span>
					
						<span class="property-value" aria-labelledby="clave-label"><g:fieldValue bean="${empleadoInstance}" field="clave"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="empleado.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${empleadoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.apPaterno}">
				<li class="fieldcontain">
					<span id="apPaterno-label" class="property-label"><g:message code="empleado.apPaterno.label" default="Ap Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apPaterno-label"><g:fieldValue bean="${empleadoInstance}" field="apPaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.apMaterno}">
				<li class="fieldcontain">
					<span id="apMaterno-label" class="property-label"><g:message code="empleado.apMaterno.label" default="Ap Materno" /></span>
					
						<span class="property-value" aria-labelledby="apMaterno-label"><g:fieldValue bean="${empleadoInstance}" field="apMaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.fechaNacimiento}">
				<li class="fieldcontain">
					<span id="fechaNacimiento-label" class="property-label"><g:message code="empleado.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate date="${empleadoInstance?.fechaNacimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="empleado.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${empleadoInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.genero}">
				<li class="fieldcontain">
					<span id="genero-label" class="property-label"><g:message code="empleado.genero.label" default="Genero" /></span>
					
						<span class="property-value" aria-labelledby="genero-label"><g:fieldValue bean="${empleadoInstance}" field="genero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="empleado.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${empleadoInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.empresa}">
				<li class="fieldcontain">
					<span id="empresa-label" class="property-label"><g:message code="empleado.empresa.label" default="Empresa" /></span>
					
						<span class="property-value" aria-labelledby="empresa-label"><g:link controller="empresa" action="show" id="${empleadoInstance?.empresa?.id}">${empleadoInstance?.empresa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${empleadoInstance?.id}" />
					<g:link class="edit" action="edit" id="${empleadoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

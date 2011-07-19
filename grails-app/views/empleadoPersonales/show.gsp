
<%@ page import="mx.edu.um.rh.EmpleadoPersonales" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleadoPersonales.label', default: 'EmpleadoPersonales')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-empleadoPersonales" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-empleadoPersonales" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list empleadoPersonales">
			
				<g:if test="${empleadoPersonalesInstance?.estadoCivil}">
				<li class="fieldcontain">
					<span id="estadoCivil-label" class="property-label"><g:message code="empleadoPersonales.estadoCivil.label" default="Estado Civil" /></span>
					
						<span class="property-value" aria-labelledby="estadoCivil-label"><g:fieldValue bean="${empleadoPersonalesInstance}" field="estadoCivil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoPersonalesInstance?.madre}">
				<li class="fieldcontain">
					<span id="madre-label" class="property-label"><g:message code="empleadoPersonales.madre.label" default="Madre" /></span>
					
						<span class="property-value" aria-labelledby="madre-label"><g:fieldValue bean="${empleadoPersonalesInstance}" field="madre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoPersonalesInstance?.padre}">
				<li class="fieldcontain">
					<span id="padre-label" class="property-label"><g:message code="empleadoPersonales.padre.label" default="Padre" /></span>
					
						<span class="property-value" aria-labelledby="padre-label"><g:fieldValue bean="${empleadoPersonalesInstance}" field="padre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoPersonalesInstance?.conyuge}">
				<li class="fieldcontain">
					<span id="conyuge-label" class="property-label"><g:message code="empleadoPersonales.conyuge.label" default="Conyuge" /></span>
					
						<span class="property-value" aria-labelledby="conyuge-label"><g:fieldValue bean="${empleadoPersonalesInstance}" field="conyuge"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoPersonalesInstance?.empleado}">
				<li class="fieldcontain">
					<span id="empleado-label" class="property-label"><g:message code="empleadoPersonales.empleado.label" default="Empleado" /></span>
					
						<span class="property-value" aria-labelledby="empleado-label"><g:link controller="empleado" action="show" id="${empleadoPersonalesInstance?.empleado?.id}">${empleadoPersonalesInstance?.empleado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoPersonalesInstance?.fechaMatrimonio}">
				<li class="fieldcontain">
					<span id="fechaMatrimonio-label" class="property-label"><g:message code="empleadoPersonales.fechaMatrimonio.label" default="Fecha Matrimonio" /></span>
					
						<span class="property-value" aria-labelledby="fechaMatrimonio-label"><g:formatDate date="${empleadoPersonalesInstance?.fechaMatrimonio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoPersonalesInstance?.finadoMadre}">
				<li class="fieldcontain">
					<span id="finadoMadre-label" class="property-label"><g:message code="empleadoPersonales.finadoMadre.label" default="Finado Madre" /></span>
					
						<span class="property-value" aria-labelledby="finadoMadre-label"><g:fieldValue bean="${empleadoPersonalesInstance}" field="finadoMadre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoPersonalesInstance?.finadoPadre}">
				<li class="fieldcontain">
					<span id="finadoPadre-label" class="property-label"><g:message code="empleadoPersonales.finadoPadre.label" default="Finado Padre" /></span>
					
						<span class="property-value" aria-labelledby="finadoPadre-label"><g:fieldValue bean="${empleadoPersonalesInstance}" field="finadoPadre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoPersonalesInstance?.iglesia}">
				<li class="fieldcontain">
					<span id="iglesia-label" class="property-label"><g:message code="empleadoPersonales.iglesia.label" default="Iglesia" /></span>
					
						<span class="property-value" aria-labelledby="iglesia-label"><g:fieldValue bean="${empleadoPersonalesInstance}" field="iglesia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoPersonalesInstance?.responsabilidad}">
				<li class="fieldcontain">
					<span id="responsabilidad-label" class="property-label"><g:message code="empleadoPersonales.responsabilidad.label" default="Responsabilidad" /></span>
					
						<span class="property-value" aria-labelledby="responsabilidad-label"><g:fieldValue bean="${empleadoPersonalesInstance}" field="responsabilidad"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${empleadoPersonalesInstance?.id}" />
					<g:link class="edit" action="edit" id="${empleadoPersonalesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

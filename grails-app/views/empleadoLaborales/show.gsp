
<%@ page import="mx.edu.um.rh.EmpleadoLaborales" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleadoLaborales.label', default: 'EmpleadoLaborales')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-empleadoLaborales" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-empleadoLaborales" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list empleadoLaborales">
			
				<g:if test="${empleadoLaboralesInstance?.cuenta}">
				<li class="fieldcontain">
					<span id="cuenta-label" class="property-label"><g:message code="empleadoLaborales.cuenta.label" default="Cuenta" /></span>
					
						<span class="property-value" aria-labelledby="cuenta-label"><g:fieldValue bean="${empleadoLaboralesInstance}" field="cuenta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.curp}">
				<li class="fieldcontain">
					<span id="curp-label" class="property-label"><g:message code="empleadoLaborales.curp.label" default="Curp" /></span>
					
						<span class="property-value" aria-labelledby="curp-label"><g:fieldValue bean="${empleadoLaboralesInstance}" field="curp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.escalafon}">
				<li class="fieldcontain">
					<span id="escalafon-label" class="property-label"><g:message code="empleadoLaborales.escalafon.label" default="Escalafon" /></span>
					
						<span class="property-value" aria-labelledby="escalafon-label"><g:fieldValue bean="${empleadoLaboralesInstance}" field="escalafon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.imms}">
				<li class="fieldcontain">
					<span id="imms-label" class="property-label"><g:message code="empleadoLaborales.imms.label" default="Imms" /></span>
					
						<span class="property-value" aria-labelledby="imms-label"><g:fieldValue bean="${empleadoLaboralesInstance}" field="imms"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.rfc}">
				<li class="fieldcontain">
					<span id="rfc-label" class="property-label"><g:message code="empleadoLaborales.rfc.label" default="Rfc" /></span>
					
						<span class="property-value" aria-labelledby="rfc-label"><g:fieldValue bean="${empleadoLaboralesInstance}" field="rfc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.modalidad}">
				<li class="fieldcontain">
					<span id="modalidad-label" class="property-label"><g:message code="empleadoLaborales.modalidad.label" default="Modalidad" /></span>
					
						<span class="property-value" aria-labelledby="modalidad-label"><g:fieldValue bean="${empleadoLaboralesInstance}" field="modalidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.turno}">
				<li class="fieldcontain">
					<span id="turno-label" class="property-label"><g:message code="empleadoLaborales.turno.label" default="Turno" /></span>
					
						<span class="property-value" aria-labelledby="turno-label"><g:fieldValue bean="${empleadoLaboralesInstance}" field="turno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.fechaAlta}">
				<li class="fieldcontain">
					<span id="fechaAlta-label" class="property-label"><g:message code="empleadoLaborales.fechaAlta.label" default="Fecha Alta" /></span>
					
						<span class="property-value" aria-labelledby="fechaAlta-label"><g:formatDate date="${empleadoLaboralesInstance?.fechaAlta}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.antiguedadBase}">
				<li class="fieldcontain">
					<span id="antiguedadBase-label" class="property-label"><g:message code="empleadoLaborales.antiguedadBase.label" default="Antiguedad Base" /></span>
					
						<span class="property-value" aria-labelledby="antiguedadBase-label"><g:fieldValue bean="${empleadoLaboralesInstance}" field="antiguedadBase"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.adventista}">
				<li class="fieldcontain">
					<span id="adventista-label" class="property-label"><g:message code="empleadoLaborales.adventista.label" default="Adventista" /></span>
					
						<span class="property-value" aria-labelledby="adventista-label"><g:formatBoolean boolean="${empleadoLaboralesInstance?.adventista}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.antiguedadFiscal}">
				<li class="fieldcontain">
					<span id="antiguedadFiscal-label" class="property-label"><g:message code="empleadoLaborales.antiguedadFiscal.label" default="Antiguedad Fiscal" /></span>
					
						<span class="property-value" aria-labelledby="antiguedadFiscal-label"><g:fieldValue bean="${empleadoLaboralesInstance}" field="antiguedadFiscal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.empleado}">
				<li class="fieldcontain">
					<span id="empleado-label" class="property-label"><g:message code="empleadoLaborales.empleado.label" default="Empleado" /></span>
					
						<span class="property-value" aria-labelledby="empleado-label"><g:link controller="empleado" action="show" id="${empleadoLaboralesInstance?.empleado?.id}">${empleadoLaboralesInstance?.empleado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.experienciaFueraUM}">
				<li class="fieldcontain">
					<span id="experienciaFueraUM-label" class="property-label"><g:message code="empleadoLaborales.experienciaFueraUM.label" default="Experiencia Fuera UM" /></span>
					
						<span class="property-value" aria-labelledby="experienciaFueraUM-label"><g:fieldValue bean="${empleadoLaboralesInstance}" field="experienciaFueraUM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.fechaAntiguedadBase}">
				<li class="fieldcontain">
					<span id="fechaAntiguedadBase-label" class="property-label"><g:message code="empleadoLaborales.fechaAntiguedadBase.label" default="Fecha Antiguedad Base" /></span>
					
						<span class="property-value" aria-labelledby="fechaAntiguedadBase-label"><g:formatDate date="${empleadoLaboralesInstance?.fechaAntiguedadBase}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.fechaBaja}">
				<li class="fieldcontain">
					<span id="fechaBaja-label" class="property-label"><g:message code="empleadoLaborales.fechaBaja.label" default="Fecha Baja" /></span>
					
						<span class="property-value" aria-labelledby="fechaBaja-label"><g:formatDate date="${empleadoLaboralesInstance?.fechaBaja}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.ife}">
				<li class="fieldcontain">
					<span id="ife-label" class="property-label"><g:message code="empleadoLaborales.ife.label" default="Ife" /></span>
					
						<span class="property-value" aria-labelledby="ife-label"><g:fieldValue bean="${empleadoLaboralesInstance}" field="ife"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoLaboralesInstance?.rango}">
				<li class="fieldcontain">
					<span id="rango-label" class="property-label"><g:message code="empleadoLaborales.rango.label" default="Rango" /></span>
					
						<span class="property-value" aria-labelledby="rango-label"><g:fieldValue bean="${empleadoLaboralesInstance}" field="rango"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${empleadoLaboralesInstance?.id}" />
					<g:link class="edit" action="edit" id="${empleadoLaboralesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

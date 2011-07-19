
<%@ page import="mx.edu.um.rh.EmpleadoLaborales" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleadoLaborales.label', default: 'EmpleadoLaborales')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-empleadoLaborales" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-empleadoLaborales" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="cuenta" title="${message(code: 'empleadoLaborales.cuenta.label', default: 'Cuenta')}" />
					
						<g:sortableColumn property="curp" title="${message(code: 'empleadoLaborales.curp.label', default: 'Curp')}" />
					
						<g:sortableColumn property="escalafon" title="${message(code: 'empleadoLaborales.escalafon.label', default: 'Escalafon')}" />
					
						<g:sortableColumn property="imms" title="${message(code: 'empleadoLaborales.imms.label', default: 'Imms')}" />
					
						<g:sortableColumn property="rfc" title="${message(code: 'empleadoLaborales.rfc.label', default: 'Rfc')}" />
					
						<g:sortableColumn property="modalidad" title="${message(code: 'empleadoLaborales.modalidad.label', default: 'Modalidad')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${empleadoLaboralesInstanceList}" status="i" var="empleadoLaboralesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empleadoLaboralesInstance.id}">${fieldValue(bean: empleadoLaboralesInstance, field: "cuenta")}</g:link></td>
					
						<td>${fieldValue(bean: empleadoLaboralesInstance, field: "curp")}</td>
					
						<td>${fieldValue(bean: empleadoLaboralesInstance, field: "escalafon")}</td>
					
						<td>${fieldValue(bean: empleadoLaboralesInstance, field: "imms")}</td>
					
						<td>${fieldValue(bean: empleadoLaboralesInstance, field: "rfc")}</td>
					
						<td>${fieldValue(bean: empleadoLaboralesInstance, field: "modalidad")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empleadoLaboralesInstanceTotal}" />
			</div>
		</div>
	</body>
</html>


<%@ page import="mx.edu.um.rh.Empleado" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-empleado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-empleado" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="clave" title="${message(code: 'empleado.clave.label', default: 'Clave')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'empleado.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apPaterno" title="${message(code: 'empleado.apPaterno.label', default: 'Ap Paterno')}" />
					
						<g:sortableColumn property="apMaterno" title="${message(code: 'empleado.apMaterno.label', default: 'Ap Materno')}" />
					
						<g:sortableColumn property="fechaNacimiento" title="${message(code: 'empleado.fechaNacimiento.label', default: 'Fecha Nacimiento')}" />
					
						<g:sortableColumn property="direccion" title="${message(code: 'empleado.direccion.label', default: 'Direccion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${empleadoInstanceList}" status="i" var="empleadoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empleadoInstance.id}">${fieldValue(bean: empleadoInstance, field: "clave")}</g:link></td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "apPaterno")}</td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "apMaterno")}</td>
					
						<td><g:formatDate date="${empleadoInstance.fechaNacimiento}" /></td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "direccion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empleadoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

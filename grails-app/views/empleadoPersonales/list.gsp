
<%@ page import="mx.edu.um.rh.EmpleadoPersonales" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleadoPersonales.label', default: 'EmpleadoPersonales')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-empleadoPersonales" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-empleadoPersonales" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="estadoCivil" title="${message(code: 'empleadoPersonales.estadoCivil.label', default: 'Estado Civil')}" />
					
						<g:sortableColumn property="madre" title="${message(code: 'empleadoPersonales.madre.label', default: 'Madre')}" />
					
						<g:sortableColumn property="padre" title="${message(code: 'empleadoPersonales.padre.label', default: 'Padre')}" />
					
						<g:sortableColumn property="conyuge" title="${message(code: 'empleadoPersonales.conyuge.label', default: 'Conyuge')}" />
					
						<th><g:message code="empleadoPersonales.empleado.label" default="Empleado" /></th>
					
						<g:sortableColumn property="fechaMatrimonio" title="${message(code: 'empleadoPersonales.fechaMatrimonio.label', default: 'Fecha Matrimonio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${empleadoPersonalesInstanceList}" status="i" var="empleadoPersonalesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empleadoPersonalesInstance.id}">${fieldValue(bean: empleadoPersonalesInstance, field: "estadoCivil")}</g:link></td>
					
						<td>${fieldValue(bean: empleadoPersonalesInstance, field: "madre")}</td>
					
						<td>${fieldValue(bean: empleadoPersonalesInstance, field: "padre")}</td>
					
						<td>${fieldValue(bean: empleadoPersonalesInstance, field: "conyuge")}</td>
					
						<td>${fieldValue(bean: empleadoPersonalesInstance, field: "empleado")}</td>
					
						<td><g:formatDate date="${empleadoPersonalesInstance.fechaMatrimonio}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empleadoPersonalesInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

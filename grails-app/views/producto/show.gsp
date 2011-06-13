
<%@ page import="inventario.Producto" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-producto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list producto">
			
				<g:if test="${productoInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="producto.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${productoInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="producto.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${productoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="producto.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${productoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.marca}">
				<li class="fieldcontain">
					<span id="marca-label" class="property-label"><g:message code="producto.marca.label" default="Marca" /></span>
					
						<span class="property-value" aria-labelledby="marca-label"><g:fieldValue bean="${productoInstance}" field="marca"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.modelo}">
				<li class="fieldcontain">
					<span id="modelo-label" class="property-label"><g:message code="producto.modelo.label" default="Modelo" /></span>
					
						<span class="property-value" aria-labelledby="modelo-label"><g:fieldValue bean="${productoInstance}" field="modelo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.precioUnitario}">
				<li class="fieldcontain">
					<span id="precioUnitario-label" class="property-label"><g:message code="producto.precioUnitario.label" default="Precio Unitario" /></span>
					
						<span class="property-value" aria-labelledby="precioUnitario-label"><g:fieldValue bean="${productoInstance}" field="precioUnitario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.existencia}">
				<li class="fieldcontain">
					<span id="existencia-label" class="property-label"><g:message code="producto.existencia.label" default="Existencia" /></span>
					
						<span class="property-value" aria-labelledby="existencia-label"><g:fieldValue bean="${productoInstance}" field="existencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.unidadMedida}">
				<li class="fieldcontain">
					<span id="unidadMedida-label" class="property-label"><g:message code="producto.unidadMedida.label" default="Unidad Medida" /></span>
					
						<span class="property-value" aria-labelledby="unidadMedida-label"><g:fieldValue bean="${productoInstance}" field="unidadMedida"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.iva}">
				<li class="fieldcontain">
					<span id="iva-label" class="property-label"><g:message code="producto.iva.label" default="Iva" /></span>
					
						<span class="property-value" aria-labelledby="iva-label"><g:fieldValue bean="${productoInstance}" field="iva"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.almacen}">
				<li class="fieldcontain">
					<span id="almacen-label" class="property-label"><g:message code="producto.almacen.label" default="Almacen" /></span>
					
						<span class="property-value" aria-labelledby="almacen-label"><g:link controller="almacen" action="show" id="${productoInstance?.almacen?.id}">${productoInstance?.almacen?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="producto.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${productoInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.entradaId}">
				<li class="fieldcontain">
					<span id="entradaId-label" class="property-label"><g:message code="producto.entradaId.label" default="Entrada Id" /></span>
					
						<span class="property-value" aria-labelledby="entradaId-label"><g:fieldValue bean="${productoInstance}" field="entradaId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.fraccion}">
				<li class="fieldcontain">
					<span id="fraccion-label" class="property-label"><g:message code="producto.fraccion.label" default="Fraccion" /></span>
					
						<span class="property-value" aria-labelledby="fraccion-label"><g:formatBoolean boolean="${productoInstance?.fraccion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.imagenes}">
				<li class="fieldcontain">
					<span id="imagenes-label" class="property-label"><g:message code="producto.imagenes.label" default="Imagenes" /></span>
					
						<g:each in="${productoInstance.imagenes}" var="i">
						<span class="property-value" aria-labelledby="imagenes-label"><g:link controller="imagen" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="producto.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${productoInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.lotesEntrada}">
				<li class="fieldcontain">
					<span id="lotesEntrada-label" class="property-label"><g:message code="producto.lotesEntrada.label" default="Lotes Entrada" /></span>
					
						<g:each in="${productoInstance.lotesEntrada}" var="l">
						<span class="property-value" aria-labelledby="lotesEntrada-label"><g:link controller="loteEntrada" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.lotesSalida}">
				<li class="fieldcontain">
					<span id="lotesSalida-label" class="property-label"><g:message code="producto.lotesSalida.label" default="Lotes Salida" /></span>
					
						<g:each in="${productoInstance.lotesSalida}" var="l">
						<span class="property-value" aria-labelledby="lotesSalida-label"><g:link controller="loteSalida" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.salidaId}">
				<li class="fieldcontain">
					<span id="salidaId-label" class="property-label"><g:message code="producto.salidaId.label" default="Salida Id" /></span>
					
						<span class="property-value" aria-labelledby="salidaId-label"><g:fieldValue bean="${productoInstance}" field="salidaId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.tiempoEntrega}">
				<li class="fieldcontain">
					<span id="tiempoEntrega-label" class="property-label"><g:message code="producto.tiempoEntrega.label" default="Tiempo Entrega" /></span>
					
						<span class="property-value" aria-labelledby="tiempoEntrega-label"><g:fieldValue bean="${productoInstance}" field="tiempoEntrega"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.tipoProducto}">
				<li class="fieldcontain">
					<span id="tipoProducto-label" class="property-label"><g:message code="producto.tipoProducto.label" default="Tipo Producto" /></span>
					
						<span class="property-value" aria-labelledby="tipoProducto-label"><g:link controller="tipoProducto" action="show" id="${productoInstance?.tipoProducto?.id}">${productoInstance?.tipoProducto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.ultimoPrecio}">
				<li class="fieldcontain">
					<span id="ultimoPrecio-label" class="property-label"><g:message code="producto.ultimoPrecio.label" default="Ultimo Precio" /></span>
					
						<span class="property-value" aria-labelledby="ultimoPrecio-label"><g:fieldValue bean="${productoInstance}" field="ultimoPrecio"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${productoInstance?.id}" />
					<g:link class="edit" action="edit" id="${productoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

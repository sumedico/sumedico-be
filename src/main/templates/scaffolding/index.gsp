<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="cerulean" />
        <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <!--a href="#list-${propertyName}" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a-->
        <div class="well well-sm" role="navigation">
            <ul class="nav nav-pills">
                <li><a class="home" href="\${createLink(uri: '/')}"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
                <li class="active"><g:link class="list" action="index"><span class="glyphicon glyphicon-list" aria-hidden="true"></span> <g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-${propertyName}" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="\${flash.message}">
                <div class="message" role="status">\${flash.message}</div>
            </g:if>
            <f:table collection="\${${propertyName}List}" />

            <div class="pagination">
                <g:paginate total="\${${propertyName}Count ?: 0}" />
            </div>
        </div>
    </body>
</html>
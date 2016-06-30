<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="cerulean" />
        <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <!--a href="#show-${propertyName}" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div-->

        <div class="nav" role="navigation">
            <ul class="nav nav-pills">
                <li class="active"><a class="home" href="\${createLink(uri: '/')}"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><span class="glyphicon glyphicon-list" aria-hidden="true"></span> <g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>

        <div id="show-${propertyName}" class="content scaffold-show list-group" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="\${flash.message}">
            <div class="message" role="status">\${flash.message}</div>
            </g:if>
            <f:display bean="${propertyName}" templates="cerulean" />

            <g:form resource="\${this.${propertyName}}" method="DELETE">
                <fieldset class="well well-sm">
                    <ul class="nav nav-pills">
                        <li><g:link class="" action="edit" resource="\${this.${propertyName}}"><span class="glyphicon glyphicon-pencil"></span> <g:message code="default.button.edit.label" default="Edit" /></g:link></li>
                        <li><a onclick="document.getElementById('btnDelete').click()"><span class="glyphicon glyphicon-remove"></span> <g:message code="default.button.delete.label" default="Delete" /></a></li>
                    </ul>
                    <button id="btnDelete" class="" style="display:none;" type="submit" value="\${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
                        <span class="glyphicon glyphicon-remove"></span> <g:message code="default.button.delete.label" default="Delete" />
                    </button>

                    <!--
                    <g:link class="edit" action="edit" resource="\${this.${propertyName}}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="\${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    -->
                </fieldset>
            </g:form>
        </div>
    </body>
</html>

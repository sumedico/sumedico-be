<div class="row list-group ${domainClass.propertyName}">
    <g:each in="${domainClass.persistentProperties}" var="p">
        <div class="fieldcontain col-lg-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <span id="${p.name}-label" class="property-label"><h4><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></h4></span>
                </div>
                <div class="panel-body">
                    <div class="property-value" aria-labelledby="${p.name}-label">${body(p)}</div>
                </div>
            </div>
        </div>
    </g:each>
</div>
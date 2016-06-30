<!doctype html>
<html>
<head>
    <meta name="layout" content="cerulean"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>

    <asset:image src="logo-SUMedico.jpg" alt="SUMedico"/>

    <p class="lead">Sistema integral de reserva de turnos de hospitales públicos.</p>
    <p>Usted se encuentra navegando la interfaz administrativa para su uso por profesionales de la salud y personal administrativo del sistema de salud pública. Si usted es un paciente, por favor visite la <a href="http://localhost/">web de pacientes</a>.</p>

    <div id="controllers" role="navigation">
        <h2>Herramientas administrativas disponibles:</h2>
        <ul>
            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                <li class="controller">
                    <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                </li>
            </g:each>
        </ul>
    </div>


</body>
</html>

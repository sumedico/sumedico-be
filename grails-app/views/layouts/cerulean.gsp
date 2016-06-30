<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="SuMedico"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="cerulean.css"/>

    <g:layoutHead/>
</head>
<body>
<!-- Wrap all page content here -->
<div id="wrap">

    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">SUMedico</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class=""><a href="/">Inicio</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reportes <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Ocupación por especialidad y zona</a></li>
                            <li><a href="#">Estado de la infraestructura</a></li>
                            <li><a href="#">Reporte de calificaciones y quejas</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Herramientas médicas <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Atender pacientes</a></li>
                            <li><a href="#">Mis turnos del dia</a></li>
                            <li><a href="#">Mis calificaciones y quejas</a></li>
                        </ul>
                    </li>

                    <!--li><a href="#contact">Recetas</a></li>
                    <li><a href="#contact">Certificados</a></li>
                    <li><a href="#contact">Quejas</a></li-->

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administración<b class="caret"></b></a>
                        <ul class="dropdown-menu">

                            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                                <li class="controller">
                                    <g:link controller="${c.logicalPropertyName}">${c.name}</g:link>
                                </li>
                            </g:each>
                        <!--li class="divider"></li>
              <li class="dropdown-header">Nav header</li>
              <li><a href="#">Separated link</a></li>
              <li><a href="#">One more separated link</a></li-->
                        </ul>
                    </li>

                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>

    <!-- Begin page content -->
    <div class="container" style="margin-top: 75px">

    <!--div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/#">
                    <i class="fa grails-icon">
                        <asset:image src="grails-cupsonly-logo-white.svg"/>
                    </i> Grails
                </a>
            </div>
            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
                <ul class="nav navbar-nav navbar-right">
                    <g:pageProperty name="page.nav" />
                </ul>
            </div>
        </div>
    </div-->

    <g:layoutBody/>

    </div>
</div>

<div id="footer">
    <div class="container">
        <p class="text-muted credit">Desarrollado por <a href="#">Germán Bobr</a>,  <a href="#">Sebastian del Guercio</a>, <a href="#">Federico Zeballos</a>.</p>
    </div>
</div>

    <!--div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div-->

    <asset:javascript src="application.js"/>

</body>
</html>

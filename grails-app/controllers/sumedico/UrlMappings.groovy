package sumedico

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        /*"/rest/$controllerRest/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }*/

        "/unidadHospitalaria/$action?/$id?(.$format)?"(controller:"hospital")
        "/especialidadMedica/$action?/$id?(.$format)?"(controller:"especialidad")

        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}

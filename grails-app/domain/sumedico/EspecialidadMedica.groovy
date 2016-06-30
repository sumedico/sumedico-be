package sumedico

import grails.web.Controller

/*import grails.rest.*
@Resource(uri='/rest/especialidad', formats=['json', 'xml'])*/
class EspecialidadMedica {

    String nombre;

    static constraints = {
    }

    @Override
    String toString() {
        return nombre;
    }
}

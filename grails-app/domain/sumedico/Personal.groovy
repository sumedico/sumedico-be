package sumedico

/*import grails.rest.*
@Resource(uri='/rest/personal',formats=['json', 'xml'])*/
class Personal {

    String nombre;
    Long dni;
    Long cuil;

    @Override
    String toString() {
        return nombre;
    }
    static constraints = {
        dni(unique: true)
        cuil(unique: true)
    }
}

package sumedico

/*import grails.rest.*
@Resource(uri='/rest/hospital', formats=['json', 'xml'])*/
class UnidadHospitalaria {

    String nombre;
    UbicacionGeografica ubicacion;


    //static embedded = ['ubicacion']

    static constraints = {
        nombre (blank:false)
        ubicacion (blank:false)
    }

    static hasMany = [medicos:Medico]

    @Override
    String toString() {
        return nombre;
    }
}

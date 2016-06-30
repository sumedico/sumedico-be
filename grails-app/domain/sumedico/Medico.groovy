package sumedico

/*import grails.rest.*
@Resource(uri='/rest/medico', formats=['json', 'xml'])*/
class Medico extends Personal {

    Long matricula;

    static constraints = {
        matricula (unique:true, blank: false)
        nombre (blank: false)
        dni (unique:true, blank: false)
        cuil (unique:true, blank: false)
    }

    static hasMany = [especialidades:EspecialidadMedica];


}

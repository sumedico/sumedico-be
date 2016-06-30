package sumedico

class Receta {

    Date fecha
    Medico expedidaPor
    Paciente paciente
    String detalle

    static constraints = {
        fecha (blank:false)
        expedidaPor (blank:false)
        detalle (blank: false)
        paciente (blank:false)
    }
}

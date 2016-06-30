package sumedico

class Turno {
    Long nroTurno;
    Date fecha;
    Medico especialista;
    Paciente paciente;
    UnidadHospitalaria hospital;
    EspecialidadMedica especialidad;

    static constraints = {
        nroTurno (unique: true,blank:false)
        fecha(blank:false)
        especialista(blank:false)
        especialidad(blank: false)
    }
}

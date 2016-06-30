package sumedico

class Paciente {
    Long dni
    Long cuil
    String nombre

    static constraints = {
        dni (blank:false)
        nombre(blank: false)
        cuil (blank:false)
    }

    @Override
    String toString() {
        return nombre;
    }
}

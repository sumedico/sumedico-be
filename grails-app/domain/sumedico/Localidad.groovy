package sumedico

class Localidad {
    String nombre
    String codigoPostal
    Provincia provincia

    static constraints = {
    }

    @Override
    String toString() {
        return nombre + "("+ codigoPostal +")"
    }
}

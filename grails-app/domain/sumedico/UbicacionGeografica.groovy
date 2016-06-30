package sumedico

class UbicacionGeografica {

    String direccion;
    Localidad localidad
    String latitud;
    String longitud;

    static constraints = {
    }

    @Override
    String toString() {
        return direccion;
    }
}

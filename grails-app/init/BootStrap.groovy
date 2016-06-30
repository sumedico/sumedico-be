import sumedico.EspecialidadMedica
import sumedico.Localidad
import sumedico.Medico
import sumedico.Paciente
import sumedico.Provincia
import sumedico.Receta
import sumedico.Turno
import sumedico.UbicacionGeografica
import sumedico.UnidadHospitalaria

class BootStrap {

    def init = { servletContext ->


        def cardiologia = new EspecialidadMedica(nombre: "Cardiología").save();
        def pediatria = new EspecialidadMedica(nombre: "Pediatría").save();
        def clinica= new EspecialidadMedica(nombre: "Clínica Médica").save();
        def alergia = new EspecialidadMedica(nombre: "Alergia").save();
        def oftalmologia=new EspecialidadMedica(nombre: "Oftalmología").save();
        def odontologia=new EspecialidadMedica(nombre: "Odontología").save();
        def ginecologia=new EspecialidadMedica(nombre: "Ginecología").save();
        def urologia=new EspecialidadMedica(nombre: "Urología").save();

        def juan = new Medico(nombre: "Juan Curetta",especialidades: [clinica],dni: 1111111,cuil: 2011111110,matricula: 7364823).save();
        def alberto = new Medico(nombre: "Alberto Carlos Bustos",especialidades: [ginecologia],dni: 1111112,cuil: 2011111120,matricula: 7364824).save();
        def adriana = new Medico(nombre: "Adriana Achís", especialidades: [alergia],dni: 1111113,cuil: 2011111130,matricula: 7364825).save();
        def benito = new Medico(nombre: "Benito Cámela", especialidades: [urologia,ginecologia],dni: 1114113,cuil: 2014111130,matricula: 7384825).save();
        def casimiro = new Medico(nombre: "Casimiro Buenavista", especialidades: [oftalmologia],dni: 1144113,cuil: 2024111130,matricula: 8384825).save();
        def lugar = new UbicacionGeografica(direccion: "Calle falsa 123",latitud: "12315423515",longitud: "512515251",localidad: new Localidad(nombre: "La matanza",provincia: new Provincia(nombre: "Buenos Aires").save(),codigoPostal: "1754").save()).save();
        def hospi = new UnidadHospitalaria(nombre: "Hospital general de agudos bla",medicos: [juan,alberto,adriana,benito,casimiro],ubicacion: lugar).save();

        def carlos=new Paciente(nombre:"Carlos Benitez",dni: 48648486,cuil: 20486484860).save();
        def mara=new Paciente(nombre:"Mara Fernandez",dni: 45682486,cuil: 20456824862).save();

        new Turno(paciente: carlos,fecha: new Date(),especialista: benito,hospital: hospi,nroTurno: 21,especialidad: urologia).save()
        new Receta(paciente: mara,fecha: new Date(),detalle: "Lentes de contacto semiblandas, L02.6 R01.4.",expedidaPor:casimiro).save()

    }
    def destroy = {
    }
}

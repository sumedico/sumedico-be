package sumedico

import grails.rest.RestfulController

import grails.transaction.Transactional

//@Transactional(readOnly = true)
class EspecialidadController {
    static scaffold = EspecialidadMedica;
}

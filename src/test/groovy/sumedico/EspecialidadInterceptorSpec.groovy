package sumedico


import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(EspecialidadInterceptor)
class EspecialidadInterceptorSpec extends Specification {

    def setup() {
    }

    def cleanup() {

    }

    void "Test especialidad interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"especialidad")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}

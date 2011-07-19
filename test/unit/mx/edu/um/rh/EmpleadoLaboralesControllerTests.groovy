package mx.edu.um.rh



import org.junit.*
import grails.test.mixin.*


@TestFor(EmpleadoLaboralesController)
@Mock(EmpleadoLaborales)
class EmpleadoLaboralesControllerTests {


    @Test
    void testIndex() {
        controller.index()
        assert "/empleadoLaborales/list" == response.redirectedUrl
    }

    @Test
    void testList() {

        def model = controller.list()

        assert model.empleadoLaboralesInstanceList.size() == 0
        assert model.empleadoLaboralesInstanceTotal == 0

    }

    @Test
    void testCreate() {
       def model = controller.create()

       assert model.empleadoLaboralesInstance != null


    }

    @Test
    void testSave() {
        controller.save()

        assert model.empleadoLaboralesInstance != null
        assert view == '/empleadoLaborales/create'

        // TODO: Populate valid properties

        controller.save()

        assert response.redirectedUrl == '/empleadoLaborales/show/1'
        assert controller.flash.message != null
        assert EmpleadoLaborales.count() == 1
    }


    @Test
    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/empleadoLaborales/list'


        def empleadoLaborales = new EmpleadoLaborales()

        // TODO: populate domain properties

        assert empleadoLaborales.save() != null

        params.id = empleadoLaborales.id

        def model = controller.show()

        assert model.empleadoLaboralesInstance == empleadoLaborales
    }

    @Test
    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/empleadoLaborales/list'


        def empleadoLaborales = new EmpleadoLaborales()

        // TODO: populate valid domain properties

        assert empleadoLaborales.save() != null

        params.id = empleadoLaborales.id

        def model = controller.edit()

        assert model.empleadoLaboralesInstance == empleadoLaborales
    }

    @Test
    void testUpdate() {

        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/empleadoLaborales/list'

        response.reset()


        def empleadoLaborales = new EmpleadoLaborales()

        // TODO: populate valid domain properties

        assert empleadoLaborales.save() != null

        // test invalid parameters in update
        params.id = empleadoLaborales.id

        controller.update()

        assert view == "/empleadoLaborales/edit"
        assert model.empleadoLaboralesInstance != null

        empleadoLaborales.clearErrors()

        // TODO: populate valid domain form parameter
        controller.update()

        assert response.redirectedUrl == "/empleadoLaborales/show/$empleadoLaborales.id"
        assert flash.message != null
    }

    @Test
    void testDelete() {
        controller.delete()

        assert flash.message != null
        assert response.redirectedUrl == '/empleadoLaborales/list'

        response.reset()

        def empleadoLaborales = new EmpleadoLaborales()

        // TODO: populate valid domain properties
        assert empleadoLaborales.save() != null
        assert EmpleadoLaborales.count() == 1

        params.id = empleadoLaborales.id

        controller.delete()

        assert EmpleadoLaborales.count() == 0
        assert EmpleadoLaborales.get(empleadoLaborales.id) == null
        assert response.redirectedUrl == '/empleadoLaborales/list'


    }


}
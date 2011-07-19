package mx.edu.um.rh



import org.junit.*
import grails.test.mixin.*


@TestFor(EmpleadoPersonalesController)
@Mock(EmpleadoPersonales)
class EmpleadoPersonalesControllerTests {


    @Test
    void testIndex() {
        controller.index()
        assert "/empleadoPersonales/list" == response.redirectedUrl
    }

    @Test
    void testList() {

        def model = controller.list()

        assert model.empleadoPersonalesInstanceList.size() == 0
        assert model.empleadoPersonalesInstanceTotal == 0

    }

    @Test
    void testCreate() {
       def model = controller.create()

       assert model.empleadoPersonalesInstance != null


    }

    @Test
    void testSave() {
        controller.save()

        assert model.empleadoPersonalesInstance != null
        assert view == '/empleadoPersonales/create'

        // TODO: Populate valid properties

        controller.save()

        assert response.redirectedUrl == '/empleadoPersonales/show/1'
        assert controller.flash.message != null
        assert EmpleadoPersonales.count() == 1
    }


    @Test
    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/empleadoPersonales/list'


        def empleadoPersonales = new EmpleadoPersonales()

        // TODO: populate domain properties

        assert empleadoPersonales.save() != null

        params.id = empleadoPersonales.id

        def model = controller.show()

        assert model.empleadoPersonalesInstance == empleadoPersonales
    }

    @Test
    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/empleadoPersonales/list'


        def empleadoPersonales = new EmpleadoPersonales()

        // TODO: populate valid domain properties

        assert empleadoPersonales.save() != null

        params.id = empleadoPersonales.id

        def model = controller.edit()

        assert model.empleadoPersonalesInstance == empleadoPersonales
    }

    @Test
    void testUpdate() {

        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/empleadoPersonales/list'

        response.reset()


        def empleadoPersonales = new EmpleadoPersonales()

        // TODO: populate valid domain properties

        assert empleadoPersonales.save() != null

        // test invalid parameters in update
        params.id = empleadoPersonales.id

        controller.update()

        assert view == "/empleadoPersonales/edit"
        assert model.empleadoPersonalesInstance != null

        empleadoPersonales.clearErrors()

        // TODO: populate valid domain form parameter
        controller.update()

        assert response.redirectedUrl == "/empleadoPersonales/show/$empleadoPersonales.id"
        assert flash.message != null
    }

    @Test
    void testDelete() {
        controller.delete()

        assert flash.message != null
        assert response.redirectedUrl == '/empleadoPersonales/list'

        response.reset()

        def empleadoPersonales = new EmpleadoPersonales()

        // TODO: populate valid domain properties
        assert empleadoPersonales.save() != null
        assert EmpleadoPersonales.count() == 1

        params.id = empleadoPersonales.id

        controller.delete()

        assert EmpleadoPersonales.count() == 0
        assert EmpleadoPersonales.get(empleadoPersonales.id) == null
        assert response.redirectedUrl == '/empleadoPersonales/list'


    }


}
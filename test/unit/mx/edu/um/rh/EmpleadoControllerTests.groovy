package mx.edu.um.rh



import org.junit.*
import grails.test.mixin.*


@TestFor(EmpleadoController)
@Mock(Empleado)
class EmpleadoControllerTests {


    @Test
    void testIndex() {
        controller.index()
        assert "/empleado/list" == response.redirectedUrl
    }

    @Test
    void testList() {

        def model = controller.list()

        assert model.empleadoInstanceList.size() == 0
        assert model.empleadoInstanceTotal == 0

    }

    @Test
    void testCreate() {
       def model = controller.create()

       assert model.empleadoInstance != null


    }

    @Test
    void testSave() {
        controller.save()

        assert model.empleadoInstance != null
        assert view == '/empleado/create'

        // TODO: Populate valid properties

        controller.save()

        assert response.redirectedUrl == '/empleado/show/1'
        assert controller.flash.message != null
        assert Empleado.count() == 1
    }


    @Test
    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/empleado/list'


        def empleado = new Empleado()

        // TODO: populate domain properties

        assert empleado.save() != null

        params.id = empleado.id

        def model = controller.show()

        assert model.empleadoInstance == empleado
    }

    @Test
    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/empleado/list'


        def empleado = new Empleado()

        // TODO: populate valid domain properties

        assert empleado.save() != null

        params.id = empleado.id

        def model = controller.edit()

        assert model.empleadoInstance == empleado
    }

    @Test
    void testUpdate() {

        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/empleado/list'

        response.reset()


        def empleado = new Empleado()

        // TODO: populate valid domain properties

        assert empleado.save() != null

        // test invalid parameters in update
        params.id = empleado.id

        controller.update()

        assert view == "/empleado/edit"
        assert model.empleadoInstance != null

        empleado.clearErrors()

        // TODO: populate valid domain form parameter
        controller.update()

        assert response.redirectedUrl == "/empleado/show/$empleado.id"
        assert flash.message != null
    }

    @Test
    void testDelete() {
        controller.delete()

        assert flash.message != null
        assert response.redirectedUrl == '/empleado/list'

        response.reset()

        def empleado = new Empleado()

        // TODO: populate valid domain properties
        assert empleado.save() != null
        assert Empleado.count() == 1

        params.id = empleado.id

        controller.delete()

        assert Empleado.count() == 0
        assert Empleado.get(empleado.id) == null
        assert response.redirectedUrl == '/empleado/list'


    }


}
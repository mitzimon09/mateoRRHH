package mx.edu.um.rh

import grails.converters.JSON

class EmpleadoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

	def list = {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[empleadoInstanceList: Empleado.list(params), empleadoInstanceTotal: Empleado.count()]
	}

    def create = {
        def empleadoInstance = new Empleado()
        empleadoInstance.properties = params
        return [empleadoInstance: empleadoInstance]
    }

    def save = {
        def empleadoInstance = new Empleado(params)
        if (empleadoInstance.save(flush: true)) {
            flash.message = message(code: 'default.created.message', args: [message(code: 'empleado.label', default: 'Empleado'), empleadoInstance.id])
            redirect(action: "show", id: empleadoInstance.id)
        }
        else {
            render(view: "create", model: [empleadoInstance: empleadoInstance])
        }
    }

    def show = {
        def empleadoInstance = Empleado.get(params.id)
        log.debug empleadoInstance.empleadoPersonales
        if (!empleadoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleado.label', default: 'Empleado'), params.id])
            redirect(action: "list")
        }
        else {
            [empleadoInstance: empleadoInstance]
        }
    }

    def edit = {
        def empleadoInstance = Empleado.get(params.id)
        if (!empleadoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleado.label', default: 'Empleado'), params.id])
            redirect(action: "list")
        }
        else {
            return [empleadoInstance: empleadoInstance]
        }
    }

    def update = {
        def empleadoInstance = Empleado.get(params.id)
        if (empleadoInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (empleadoInstance.version > version) {
                    
                    empleadoInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'empleado.label', default: 'Empleado')] as Object[], "Another user has updated this Empleado while you were editing")
                    render(view: "edit", model: [empleadoInstance: empleadoInstance])
                    return
                }
            }
            empleadoInstance.properties = params
            if (!empleadoInstance.hasErrors() && empleadoInstance.save(flush: true)) {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'empleado.label', default: 'Empleado'), empleadoInstance.id])
                redirect(action: "show", id: empleadoInstance.id)
            }
            else {
                render(view: "edit", model: [empleadoInstance: empleadoInstance])
            }
        }
        else {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleado.label', default: 'Empleado'), params.id])
            redirect(action: "list")
        }
    }

    def delete = {
        def empleadoInstance = Empleado.get(params.id)
        if (empleadoInstance) {
            try {
                empleadoInstance.delete(flush: true)
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'empleado.label', default: 'Empleado'), params.id])
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'empleado.label', default: 'Empleado'), params.id])
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleado.label', default: 'Empleado'), params.id])
            redirect(action: "list")
        }
    }
}

package mx.edu.um.rh

import grails.converters.JSON

class EmpleadoPersonalesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

	def list = {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[empleadoPersonalesInstanceList: EmpleadoPersonales.list(params), empleadoPersonalesInstanceTotal: EmpleadoPersonales.count()]
	}

    def create = {
        def empleadoPersonalesInstance = new EmpleadoPersonales()
        empleadoPersonalesInstance.properties = params
        return [empleadoPersonalesInstance: empleadoPersonalesInstance]
    }

    def save = {
        def empleadoPersonalesInstance = new EmpleadoPersonales(params)
        if (empleadoPersonalesInstance.save(flush: true)) {
            flash.message = message(code: 'default.created.message', args: [message(code: 'empleadoPersonales.label', default: 'EmpleadoPersonales'), empleadoPersonalesInstance.id])
            redirect(action: "show", id: empleadoPersonalesInstance.id)
        }
        else {
            render(view: "create", model: [empleadoPersonalesInstance: empleadoPersonalesInstance])
        }
    }

    def show = {
        def empleadoPersonalesInstance = EmpleadoPersonales.get(params.id)
        if (!empleadoPersonalesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleadoPersonales.label', default: 'EmpleadoPersonales'), params.id])
            redirect(action: "list")
        }
        else {
            [empleadoPersonalesInstance: empleadoPersonalesInstance]
        }
    }

    def edit = {
        def empleadoPersonalesInstance = EmpleadoPersonales.get(params.id)
        if (!empleadoPersonalesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleadoPersonales.label', default: 'EmpleadoPersonales'), params.id])
            redirect(action: "list")
        }
        else {
            return [empleadoPersonalesInstance: empleadoPersonalesInstance]
        }
    }

    def update = {
        def empleadoPersonalesInstance = EmpleadoPersonales.get(params.id)
        if (empleadoPersonalesInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (empleadoPersonalesInstance.version > version) {
                    
                    empleadoPersonalesInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'empleadoPersonales.label', default: 'EmpleadoPersonales')] as Object[], "Another user has updated this EmpleadoPersonales while you were editing")
                    render(view: "edit", model: [empleadoPersonalesInstance: empleadoPersonalesInstance])
                    return
                }
            }
            empleadoPersonalesInstance.properties = params
            if (!empleadoPersonalesInstance.hasErrors() && empleadoPersonalesInstance.save(flush: true)) {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'empleadoPersonales.label', default: 'EmpleadoPersonales'), empleadoPersonalesInstance.id])
                redirect(action: "show", id: empleadoPersonalesInstance.id)
            }
            else {
                render(view: "edit", model: [empleadoPersonalesInstance: empleadoPersonalesInstance])
            }
        }
        else {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleadoPersonales.label', default: 'EmpleadoPersonales'), params.id])
            redirect(action: "list")
        }
    }

    def delete = {
        def empleadoPersonalesInstance = EmpleadoPersonales.get(params.id)
        if (empleadoPersonalesInstance) {
            try {
                empleadoPersonalesInstance.delete(flush: true)
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'empleadoPersonales.label', default: 'EmpleadoPersonales'), params.id])
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'empleadoPersonales.label', default: 'EmpleadoPersonales'), params.id])
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleadoPersonales.label', default: 'EmpleadoPersonales'), params.id])
            redirect(action: "list")
        }
    }
}

package mx.edu.um.rh

import grails.converters.JSON

class EmpleadoLaboralesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

	def list = {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[empleadoLaboralesInstanceList: EmpleadoLaborales.list(params), empleadoLaboralesInstanceTotal: EmpleadoLaborales.count()]
	}

    def create = {
        def empleadoLaboralesInstance = new EmpleadoLaborales()
        empleadoLaboralesInstance.properties = params
        return [empleadoLaboralesInstance: empleadoLaboralesInstance]
    }

    def save = {
        def empleadoLaboralesInstance = new EmpleadoLaborales(params)
        if (empleadoLaboralesInstance.save(flush: true)) {
            flash.message = message(code: 'default.created.message', args: [message(code: 'empleadoLaborales.label', default: 'EmpleadoLaborales'), empleadoLaboralesInstance.id])
            redirect(action: "show", id: empleadoLaboralesInstance.id)
        }
        else {
            render(view: "create", model: [empleadoLaboralesInstance: empleadoLaboralesInstance])
        }
    }

    def show = {
        def empleadoLaboralesInstance = EmpleadoLaborales.get(params.id)
        if (!empleadoLaboralesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleadoLaborales.label', default: 'EmpleadoLaborales'), params.id])
            redirect(action: "list")
        }
        else {
            [empleadoLaboralesInstance: empleadoLaboralesInstance]
        }
    }

    def edit = {
        def empleadoLaboralesInstance = EmpleadoLaborales.get(params.id)
        if (!empleadoLaboralesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleadoLaborales.label', default: 'EmpleadoLaborales'), params.id])
            redirect(action: "list")
        }
        else {
            return [empleadoLaboralesInstance: empleadoLaboralesInstance]
        }
    }

    def update = {
        def empleadoLaboralesInstance = EmpleadoLaborales.get(params.id)
        if (empleadoLaboralesInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (empleadoLaboralesInstance.version > version) {
                    
                    empleadoLaboralesInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'empleadoLaborales.label', default: 'EmpleadoLaborales')] as Object[], "Another user has updated this EmpleadoLaborales while you were editing")
                    render(view: "edit", model: [empleadoLaboralesInstance: empleadoLaboralesInstance])
                    return
                }
            }
            empleadoLaboralesInstance.properties = params
            if (!empleadoLaboralesInstance.hasErrors() && empleadoLaboralesInstance.save(flush: true)) {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'empleadoLaborales.label', default: 'EmpleadoLaborales'), empleadoLaboralesInstance.id])
                redirect(action: "show", id: empleadoLaboralesInstance.id)
            }
            else {
                render(view: "edit", model: [empleadoLaboralesInstance: empleadoLaboralesInstance])
            }
        }
        else {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleadoLaborales.label', default: 'EmpleadoLaborales'), params.id])
            redirect(action: "list")
        }
    }

    def delete = {
        def empleadoLaboralesInstance = EmpleadoLaborales.get(params.id)
        if (empleadoLaboralesInstance) {
            try {
                empleadoLaboralesInstance.delete(flush: true)
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'empleadoLaborales.label', default: 'EmpleadoLaborales'), params.id])
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'empleadoLaborales.label', default: 'EmpleadoLaborales'), params.id])
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'empleadoLaborales.label', default: 'EmpleadoLaborales'), params.id])
            redirect(action: "list")
        }
    }
}

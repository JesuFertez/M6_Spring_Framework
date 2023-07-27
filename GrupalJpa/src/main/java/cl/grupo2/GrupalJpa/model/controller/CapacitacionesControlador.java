package cl.grupo2.GrupalJpa.model.controller;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.grupo2.GrupalJpa.model.entity.Capacitacion;
import cl.grupo2.GrupalJpa.model.service.CapacitacionesServicio;


@Controller
public class CapacitacionesControlador {
	
	@Autowired
	private CapacitacionesServicio cap;
	
	@RequestMapping(value ="/ListarCapacitaciones",method = RequestMethod.GET)
	public ModelAndView listarCapacitaciones() {
		ArrayList<Capacitacion> listaCapacitacion = new ArrayList<>();
		listaCapacitacion = cap.obtenerCapacitaciones();
		
		return new ModelAndView ("listar-capacitaciones","listaCapacitacion",listaCapacitacion);
	}
}

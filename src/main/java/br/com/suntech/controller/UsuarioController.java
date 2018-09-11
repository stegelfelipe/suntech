package br.com.suntech.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.suntech.model.Usuario;
import br.com.suntech.service.UsuarioService;

@Controller
public class UsuarioController {

	private static final Logger logger = Logger.getLogger(UsuarioController.class);

	public UsuarioController() {
		System.out.println("UsuarioController()");
	}

	@Autowired
	private UsuarioService usuarioService;

	@RequestMapping(value = "/")
	public ModelAndView listarUsuarios(ModelAndView model) throws IOException {
		List<Usuario> usuarios = usuarioService.getAllUsuarios();
		model.addObject("usuarios", usuarios);
		model.setViewName("home");
		return model;
	}

	@RequestMapping(value = "/novoUsuario", method = RequestMethod.GET)
	public ModelAndView novoUsuario(ModelAndView model) {
		Usuario usuario = new Usuario();
		model.addObject("usuario", usuario);
		model.setViewName("UsuarioForm");
		return model;
	}

	@RequestMapping(value = "/filtrarUsuario")
	public ModelAndView filtrarUsuario(HttpServletRequest request, HttpServletResponse response) throws Exception  {
		List<Usuario> usuarios = new ArrayList<Usuario>();
		String nome = request.getParameter("name");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		
		if(nome != null){
			nome.trim();
		}else{
			nome = "";
		}
		
		if(username != null){
			username.trim();
		}else{
			username = "";
		}
		
		if(email != null){
			email.trim();
		}else{
			email = "";
		}
		
		usuarios = usuarioService.getUsuariosByFiltro(nome, username, email);
		ModelAndView model = new ModelAndView();
		model.addObject("usuarios", usuarios);
		model.setViewName("home");
		return model;
	}

	@RequestMapping(value = "/salvarUsuario", method = RequestMethod.POST)
	public ModelAndView salvarUsuario(@ModelAttribute Usuario usuario) {
		
		if (usuario.getId() == 0) {
			usuarioService.addUsuario(usuario);
		} else {
			usuarioService.updateUsuario(usuario);
		}
		
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/deleteUsuario", method = RequestMethod.GET)
	public ModelAndView deleteUsuario(HttpServletRequest request) {
		int usuarioId = Integer.parseInt(request.getParameter("id"));
		usuarioService.deleteUsuario(usuarioId);
		return new ModelAndView("redirect:/");
	}

	@RequestMapping(value = "/editarUsuario", method = RequestMethod.GET)
	public ModelAndView editarUsuario(HttpServletRequest request) {
		int usuarioId = Integer.parseInt(request.getParameter("id"));
		Usuario usuario = usuarioService.getUsuario(usuarioId);
		ModelAndView model = new ModelAndView("UsuarioForm");
		model.addObject("usuario", usuario);
		return model;
	}

}
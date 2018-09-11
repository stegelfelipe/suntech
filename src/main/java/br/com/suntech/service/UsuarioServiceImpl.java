package br.com.suntech.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.suntech.dao.UsuarioDAO;
import br.com.suntech.model.Usuario;

@Service
@Transactional
public class UsuarioServiceImpl implements UsuarioService {

	@Autowired
	private UsuarioDAO usuarioDAO;

	@Override
	@Transactional
	public void addUsuario(Usuario usuario) {
		usuarioDAO.addUsuario(usuario);
	}

	@Override
	@Transactional
	public List<Usuario> getAllUsuarios() {
		return usuarioDAO.getAllUsuarios();
	}

	@Override
	@Transactional
	public void deleteUsuario(Integer usuarioId) {
		usuarioDAO.deleteUsuario(usuarioId);
	}

	public Usuario getUsuario(int id) {
		return usuarioDAO.getUsuario(id);
	}

	public Usuario updateUsuario(Usuario usuario) {
		return usuarioDAO.updateUsuario(usuario);
	}

	public void setUsuarioDAO(UsuarioDAO usuarioDAO) {
		this.usuarioDAO = usuarioDAO;
	}

	@Override
	public List<Usuario> getUsuariosByFiltro(String nome, String username, String email) {
		return usuarioDAO.getUsuariosByFiltro(nome, username, email);
	}

}

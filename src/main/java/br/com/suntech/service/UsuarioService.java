package br.com.suntech.service;

import java.util.List;

import br.com.suntech.model.Usuario;

public interface UsuarioService {
	
	public void addUsuario(Usuario usuario);

	public List<Usuario> getAllUsuarios();
	
	public List<Usuario> getUsuariosByFiltro(String nome, String username, String email);

	public void deleteUsuario(Integer usuarioId);

	public Usuario getUsuario(int usuarioid);

	public Usuario updateUsuario(Usuario usuario);
}

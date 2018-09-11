package br.com.suntech.dao;

import java.util.List;

import br.com.suntech.model.Usuario;

public interface UsuarioDAO {

	public void addUsuario(Usuario usuario);

	public List<Usuario> getAllUsuarios();

	public void deleteUsuario(Integer usuarioId);

	public Usuario updateUsuario(Usuario usuario);

	public Usuario getUsuario(int id);

	public List<Usuario> getUsuariosByFiltro(String nome, String username, String email);
}

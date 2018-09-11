package br.com.suntech.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.suntech.model.Usuario;

@Repository
public class UsuarioDAOImpl implements UsuarioDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void addUsuario(Usuario usuario) {
		sessionFactory.getCurrentSession().save(usuario);

	}

	@SuppressWarnings("unchecked")
	public List<Usuario> getAllUsuarios() {

		return sessionFactory.getCurrentSession().createQuery("from Usuario")
				.list();
	}

	@Override
	public void deleteUsuario(Integer Id) {
		Usuario usuario = (Usuario) sessionFactory.getCurrentSession().load(
				Usuario.class, Id);
		if (null != usuario) {
			this.sessionFactory.getCurrentSession().delete(usuario);
		}

	}

	public Usuario getUsuario(int id) {
		return (Usuario) sessionFactory.getCurrentSession().get(
				Usuario.class, id);
	}

	@Override
	public Usuario updateUsuario(Usuario usuario) {
		sessionFactory.getCurrentSession().update(usuario);
		return usuario;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Usuario> getUsuariosByFiltro(String nome, String username, String email) {
		
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Usuario.class);
		 
		if(!nome.equals("")) {
		  criteria.add(Restrictions.eq("name", nome));
		}
		 
		if(!username.equals("")){
		  criteria.add(Restrictions.eq("username", username));
		}
		
		if(!email.equals("")){
			  criteria.add(Restrictions.eq("email", email));
			}
		 return criteria.list();
	}

}
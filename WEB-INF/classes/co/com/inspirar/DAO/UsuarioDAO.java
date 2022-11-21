package co.com.inspirar.DAO;

import java.util.List;

import co.com.inspirar.modelo.Usuario;

public interface UsuarioDAO {
    public List<Usuario> mostrarUsuario() throws Exception;

    public void crearUsuario() throws Exception;

    public void editarUsuario() throws Exception;
}

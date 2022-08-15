package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conexion.ConexionDB;
import model.Usuario;

public class UsuarioDAO {
	
	public Boolean Login(Integer dni, String contrasenia) {

		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String();

			sql = "SELECT * from usuario where dni=" + dni + " and " + "password='" + contrasenia + "';";

			ResultSet resultSet = statement.executeQuery(sql);
			if (resultSet.next()) {

				return true;
			}

			return false;

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	public Boolean crearUsuario(Usuario usuario) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String();

			sql = "INSERT INTO `usuario`(`nombre`, `apellido`,`dni`, `telefono`,`mail`, `direccion`,`edad`, `password` ) "
					+ "VALUES ( " + "'" + usuario.getNombre() + "'," + "'" + usuario.getApellido() + "'," + "'"
					+ usuario.getDni() + "'," + "'" + usuario.getTelefono() + "'," + "'" + usuario.getMail() + "',"
					+ "'" + usuario.getDireccion() + "'," + "'" + usuario.getEdad() + "'," + "'"
					+ usuario.getContrasenia() + "');";

			statement.executeUpdate(sql);

			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	
    public List<Usuario> datosUsuario(int dni) {
        try {
            ConexionDB conexionDB = new ConexionDB();
            Connection connection = conexionDB.establecerConexion();
            Statement statement = connection.createStatement();

            String sql = new String("SELECT * FROM usuario where dni=" + dni + ";");

            ResultSet resultSet = statement.executeQuery(sql);
            System.out.println(resultSet);

            List<Usuario> datosUsuario = new ArrayList<Usuario>();
            while (resultSet.next()) {
                Usuario usu = new Usuario(
                		resultSet.getInt("id"),
                        resultSet.getString("nombre"),
                        resultSet.getString("apellido"),
                        resultSet.getInt("dni"),
                        resultSet.getInt("telefono"),
                        resultSet.getString("mail"),
                        resultSet.getString("direccion"),
                        resultSet.getInt("edad"),
                        resultSet.getString("password"));

                datosUsuario.add(usu);
            }

            return datosUsuario;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
	public void actualizarUsuario(String campo, String valor, int id ) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String();

			sql = "UPDATE usuario SET " + campo + " = '" + valor + "' WHERE id = " + id +";";
			
			statement.executeUpdate(sql);

		} catch (Exception e) {
			e.printStackTrace();

		}

	}

}

package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conexion.ConexionDB;
import model.Turnos;

public class TurnosDAO {

	public List<Turnos> ListarTurnos() {

		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();
			

			String sql = new String();

			sql = "SELECT * from turnos where id_U IS NULL;";

			ResultSet resultSet = statement.executeQuery(sql);
			System.out.println(resultSet);
			
			List<Turnos> turnosDisponibles = new ArrayList<Turnos>();
			while (resultSet.next()) {
				Turnos usu = new Turnos(
						resultSet.getInt("id"),
						resultSet.getString("especialidad"),
						resultSet.getString("Nom_prof"),
						resultSet.getString("fecha"),
						resultSet.getString("hora"),
						resultSet.getInt("consultorio"),
						resultSet.getInt("id_U"));
			
				
				turnosDisponibles.add(usu);
			}
			
			return turnosDisponibles;

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

	}
	
	public void ActualizarTurno(Integer id_U, Integer id) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String();

			sql = "UPDATE turnos SET id_U = " + id_U + " WHERE id = " + id +";";
			
			statement.executeUpdate(sql);

		} catch (Exception e) {
			e.printStackTrace();

		}

	}
	
	public List<Turnos> ListarTurnosTomados(Integer id_U) {

		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();
			

			String sql = new String();

			sql = "SELECT * from turnos where id_U = '" + id_U + "';";

			ResultSet resultSet = statement.executeQuery(sql);
			System.out.println(resultSet);
			
			List<Turnos> turnosAsignados = new ArrayList<Turnos>();
			while (resultSet.next()) {
				Turnos usu = new Turnos(
						resultSet.getInt("id"),
						resultSet.getString("especialidad"),
						resultSet.getString("Nom_prof"),
						resultSet.getString("fecha"),
						resultSet.getString("hora"),
						resultSet.getInt("consultorio"),
						resultSet.getInt("id_U"));
			
				
				turnosAsignados.add(usu);
			}
			
			return turnosAsignados;

		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

	}
	
	public void QuitarTurnoTomado(Integer id) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String();

			sql = "UPDATE turnos SET id_U = null  WHERE id = " + id +";";
			
			statement.executeUpdate(sql);

		} catch (Exception e) {
			e.printStackTrace();

		}

	}
	
}

package model;

public class Turnos {

	private Integer id;
	private String especialidad;
	private String nom_prof;
	private String fecha;
	private String hora;
	private Integer consultorio;
	private Integer id_U;
	
	public Turnos(Integer id ,String especialidad, String nom_prof, String fecha,String hora, Integer consultorio, Integer id_U) {
		super();
		this.especialidad = especialidad;
		this.nom_prof = nom_prof;
		this.fecha = fecha;
		this.hora = hora;
		this.consultorio = consultorio;
		this.id_U = id_U;
		this.id = id;
		
	}
	
	public Integer getId_U() {
		return id_U;
	}

	public void setId_U(Integer id_U) {
		this.id_U = id_U;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEspecialidad() {
		return especialidad;
	}
	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}
	public String getNom_prof() {
		return nom_prof;
	}
	public void setNom_prof(String nom_prof) {
		this.nom_prof = nom_prof;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}

	public Integer getConsultorio() {
		return consultorio;
	}
	public void setConsultorio(Integer consultorio) {
		this.consultorio = consultorio;
	}
}

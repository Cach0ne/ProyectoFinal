package model;

public class Usuario {

	private Integer id;
	private String nombre;
	private String apellido;
	private Integer dni;
	private Integer telefono;
	private String mail;
	private String direccion;
	private Integer edad;
	private String contrasenia;

	public Usuario(Integer id,String nombre, String apellido, Integer dni, Integer telefono, String mail, String direccion,
			Integer edad, String contrasenia) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.dni = dni;
		this.telefono = telefono;
		this.mail = mail;
		this.direccion = direccion;
		this.edad = edad;
		this.contrasenia = contrasenia;

	}

	public Usuario(String nombre, String apellido, Integer dni, Integer telefono, String mail, String direccion,
			Integer edad, String contrasenia) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.dni = dni;
		this.telefono = telefono;
		this.mail = mail;
		this.direccion = direccion;
		this.edad = edad;
		this.contrasenia = contrasenia;
	}
	
	public Integer getId() {
		return id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Integer getDni() {
		return dni;
	}

	public void setDni(Integer dni) {
		this.dni = dni;
	}

	public Integer getTelefono() {
		return telefono;
	}

	public void setTelefono(Integer telefono) {
		this.telefono = telefono;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public Integer getEdad() {
		return edad;
	}

	public void setEdad(Integer edad) {
		this.edad = edad;
	}

	public String getContrasenia() {
		return contrasenia;
	}

	public void setContrasenia(String contraseña) {
		this.contrasenia = contraseña;
	}

}

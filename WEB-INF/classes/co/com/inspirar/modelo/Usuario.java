package co.com.inspirar.modelo;

/**
 * Usuario
 */
public class Usuario {
    private int idRol = 0;
    private String identificacion = "";
    private String telefono = "";
    private String nombres = "";
    private String apellidos = "";
    private String login = "";
    private String password = "";
    private String correo = "";
    private String tarjetaProf = "";
    private String reTHUS = "";

    public Usuario() {

    }

    public Usuario(int idRol, String identificacion, String telefono, String nombres, String apellidos,
            String login, String password, String correo, String tarjetaProf, String reTHUS) {

        this.idRol = idRol;
        this.identificacion = identificacion;
        this.telefono = telefono;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.login = login;
        this.password = password;
        this.correo = correo;
        this.tarjetaProf = tarjetaProf;
        this.reTHUS = reTHUS;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public String getTelefono() {
        return telefono;
    }

    public String getNombres() {
        return nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public String getLogin() {
        return login;
    }

    public String getPassword() {
        return password;
    }

    public String getCorreo() {
        return correo;
    }

    public String getTarjetaProf() {
        return tarjetaProf;
    }

    public String getReTHUS() {
        return reTHUS;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void setTarjetaProf(String tarjetaProf) {
        this.tarjetaProf = tarjetaProf;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public void setReTHUS(String reTHUS) {
        this.reTHUS = reTHUS;
    }

}

package practica1;
// Generated 29/02/2016 11:11:47 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Usuarios generated by hbm2java
 */
public class Usuarios  implements java.io.Serializable {


     private int id;
     private String nombre;
     private String apellidos;
     private Date fechainicio;
     private Cuentas cuentas;

    public Usuarios() {
    }

	
    public Usuarios(int id) {
        this.id = id;
    }
    public Usuarios(int id, String nombre, String apellidos, Date fechainicio, Cuentas cuentas) {
       this.id = id;
       this.nombre = nombre;
       this.apellidos = apellidos;
       this.fechainicio = fechainicio;
       this.cuentas = cuentas;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApellidos() {
        return this.apellidos;
    }
    
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }
    public Date getFechainicio() {
        return this.fechainicio;
    }
    
    public void setFechainicio(Date fechainicio) {
        this.fechainicio = fechainicio;
    }
    public Cuentas getCuentas() {
        return this.cuentas;
    }
    
    public void setCuentas(Cuentas cuentas) {
        this.cuentas = cuentas;
    }




}



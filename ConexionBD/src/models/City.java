/*Clase Ciudad*/
package models;

/**
 * Autor: Justin Steven Sandigo
 * @author WINTERBOX400
 */
public class City {
    //Variables de Instancia
    private int id;
    private String nombre;
    private boolean Estado;

    //Constructor Vacio
    public City() {
    }
    //Constructor Lleno
    public City(int id, String nombre, boolean Estado) {
        this.id = id;
        this.nombre = nombre;
        this.Estado = Estado;
    }

    //Metodo Getter and Setter
    public boolean isEstado() {
        return Estado;
    }

    public void setEstado(boolean Estado) {
        this.Estado = Estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    //Metodo ToString para mostrar datos
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("City{id=").append(id);
        sb.append(", nombre=").append(nombre);
        sb.append(", Estado=").append(Estado);
        sb.append('}');
        return sb.toString();
    }
    
    
    
    
}

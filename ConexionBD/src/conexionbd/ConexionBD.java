/*MainClass*/
package conexionbd;

import controllers.Conexion;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 * Autor: Justin Steven Detrinidad Sandigo
 * @author WINTERBOX400
 */
public class ConexionBD {

    public static void main(String[] args) {


        try {
            Conexion conexion = new Conexion();
            Connection conn = conexion.obtenerConexion();
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM ciudades");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                System.out.println("Conexion");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

}

package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Consultas extends Conexion{
    
    //1
    public boolean autenticarAdministrador(String usuario, String password){
    
        PreparedStatement pst =null;
        ResultSet rs = null;
        
        try {
            String consulta ="SELECT * FROM Administrador WHERE usuario=? AND contraseña=md5(?)"; //Codigo SQL Query
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, password);
            rs = pst.executeQuery();
            
            if (rs.absolute(1)) {
                return true;
            }

        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
        
        return false;
    }
    //2
    public String obtenerNombreUsuarioAdministrador(String usuario){
    PreparedStatement pst =null;
        ResultSet rs = null;
        
        try {
            String consulta ="SELECT usuario FROM Administrador WHERE usuario=?"; //Codigo SQL Query
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            rs = pst.executeQuery();

                while (rs.next()) {                    
                    String resultado = rs.getString("nombre");
                    return resultado;
                }


        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
        
        return "vacio";
    }
    //3
    public String obtenerDireccionDetallada(String cedula){
     PreparedStatement pst =null;
        ResultSet rs = null;
        
        try {
            String consulta ="SELECT DetalleDireccion,Ciudad.NombreCiudad \n" +
"from Usuario\n" +
"inner join DirCaja on DirCaja.idDircaja = Usuario.idDircaja\n" +
"inner join Caja on Caja.idCaja = DirCaja.idCaja\n" +
"inner join Direccion on Caja.idDireccion = Direccion.idDireccion\n" +
"inner join Ciudad on Direccion.idCiudad = Ciudad.idCiudad\n" +
"where Usuario.cedula = ?;"; //Codigo SQL Query
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, cedula);
            rs = pst.executeQuery();
                
            String resultado = "";
            String resultadoFinal = "";
            
                while (rs.next()) {                    
                    resultado = rs.getString("NombreCiudad")+" "+rs.getString("DetalleDireccion");
                }
                
               /* String[] resultado2 = resultado.split(" ");
                for (int i = resultado2.length-1; i >= 0; i--) {
                    resultadoFinal = resultado2[i] +" "+ resultadoFinal;
                
            } */

            //return resultadoFinal; 
            return resultado; 
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
        
        return "vacio";
        
    
    }
    //4
    public boolean actualizarDireccion(float latitud, float longitud, String detalleDireccion, String nombreCiudad){
    
        PreparedStatement pst=null;
        
        try {
            String consulta = "UPDATE Direccion\n" +
"set Latitud =?, longitud=?\n" +
"where DetalleDireccion = ? and idCiudad = (SELECT idCiudad from Ciudad where NombreCiudad =?);"; //Codigo SQL Query
            pst = getConexion().prepareStatement(consulta);
            pst.setFloat(1, latitud);
            pst.setFloat(2, longitud);
            pst.setString(3, detalleDireccion);
            pst.setString(4, nombreCiudad);
            
            if (pst.executeUpdate() == 1) {
                return true;
            }
            
        } catch (Exception e) {
        }
        
        return false;
    }
     
}



package cl.duoc.socketcero.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    private Connection cone;

    public Conexion() {
        try {
            String url = "jdbc:mysql://localhost:3306/socketcero";
            String user = "root";
            String pass = "";
            cone = DriverManager.getConnection(url, user, pass);
        } catch (Exception ex) {
            System.err.println( ex.getMessage() );
        }
    }

    public Connection getCone() { return cone; }
}

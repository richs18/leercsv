/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package leer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author RICHD18
 */
public class conecxion {
     public Connection conectarbd(){
    Connection cn = null;
    String url= "jdbc:postgresql://localhost:5432/sistema_distribuido";
    String user= "postgres";
    String password= "1234";        
  try{
     Class.forName("org.postgresql.Driver");
     cn = DriverManager.getConnection(url,user,password);
     System.out.println("CONEXIÓN ESTABLECIDA");
  }

catch(ClassNotFoundException | SQLException e) 
  {
      System.out.println("Error de conexión"+e.getMessage());
  }  
         return cn;
    }
    
}

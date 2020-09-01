/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package leer;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 *
 * @author RICHD18
 */
public class main {
    /**
     * @param args the command line arguments
     */
    
    private static final  int chunk_size =100;
    private static ExecutorService pool;
    
    
    public static void main(String[] args) {
        int cantidadhilos =50;
        pool = Executors.newFixedThreadPool(cantidadhilos);
        // en esta clase creo la variabale static para el chunk y defino el tamaño
        //tambien divido el arraylist con el tamano del chunk  con un for y le envio 
        //las partes del chunk al metodo insertardatos o ala clase 
       Leer le= new Leer();
       
      ArrayList<String> datos = le.leerTxt("C:\\Users\\RICHD18\\Documents\\NetBeansProjects\\leer/datos.txt");
//      int block []= Arrays.copyOfRange(datos, chunk_size, chunk_size);
//String[] datos = datoslista.toArray(new String[datoslista.size()]);

//este esta bien sin añadir el tread
// conecxion cone = new conecxion();
// Connection co = cone.conectarbd();
// insertDatos in = new insertDatos(co,datos);
// in.insertarDdatos(datos);
 
 
 conecxion cone = new conecxion();
 Connection co = cone.conectarbd();
int chunks = (int) Math.floor(datos.size()/ chunk_size);
        System.out.println("este es el chunks"+chunks);
int m=0;
String nombre="proceso";
        for (int i = 0; i < chunks; i++) {
            ArrayList<String> dat = new ArrayList<>();
            for (int j = 0; j < chunk_size; j++) {
                 dat.add(datos.get(m));
                m+=1;
                
                System.out.println("estos son los datos de dat"+dat.get(j));
            }
       insertDatos in = new insertDatos(co,dat,(nombre+i));
      
       Thread hilos = new Thread(in);
       pool.submit(hilos);
        System.out.println("aqui se limpio el arraylist");
        dat.clear();
            
        }
         pool.shutdown();
    }
    
                
    }
    


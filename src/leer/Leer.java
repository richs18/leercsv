/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package leer;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/**
 *
 * @author RICHD18
 */
public class Leer {
//   public int mmultipli(int a){
//       
//     int b =  a*a;
//     return b;
//    }
    
    
   
    public ArrayList<String> leerTxt(String direccion){// recibe direccion del archivo a leer
    
        String[] texto =null;
        String separador=",";
        ArrayList<String> dat = new ArrayList<>();
  
        try {
            BufferedReader bf = new BufferedReader(new FileReader(direccion));
           
            String temp ="";
            String bfRead;
            while((bfRead =bf.readLine())!= null){
                
                System.out.println("estos son los datos de bf read "+bfRead);
                temp =  Arrays.toString(bfRead.split(separador));
                dat.add(temp);
                //texto[] =  Arrays.toString(bfRead.split(separador));
                //System.out.println("estos son los datos de temp"+ temp);
                //texto[contador] = temp;
            }
            
            //texto[0]="hola si salgo al otro lado";
           // dat.add(temp);
            
            
            
            
        } catch (IOException e) {
            System.out.println("no se encontro el archivo");
        }
         
        
        
        return dat;
    
}
    
    
}

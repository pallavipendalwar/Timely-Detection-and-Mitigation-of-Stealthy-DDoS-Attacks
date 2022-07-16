/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package attack_prevention;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author IBN33
 */

public class xss {
    
    public boolean checkXss(String value){      
     
     boolean st=true;

       // String string = "ashzxcvbnmasdfghjklopiuytrewqASHWINI00675>";
       Pattern pattern = Pattern.compile( "[^a-zA-Z0-9*]" );
        Matcher matcher = pattern.matcher( value );
        if(matcher.find()){
            st=false;
        }
        return st;
    }   
        
        
        
   
    
//    public static void main(String args[]){
//        String a="asadf";
//       System.out.println("value: "+new xss().checkXss(a));
//    }
    
}

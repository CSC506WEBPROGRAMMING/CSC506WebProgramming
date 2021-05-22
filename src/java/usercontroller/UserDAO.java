
package usercontroller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Mazzy
 */
public class UserDAO {
    
      static Connection currentCon = null;
      static ResultSet rs = null;  
	
	
	
      public static UserBean login(UserBean bean) {
	
         //preparing some objects for connection 
         Statement stmt = null;    
	
         String username = bean.getUsername();    
         String password = bean.getPassword();   
	    
         String searchQuery =
               "select * from register where username='"
                        + username
                        + "' AND password='"
                        + password
                        + "'";
	    
      // "System.out.println" prints in the console; Normally used to trace the process
      System.out.println("Your user name is " + username);          
      System.out.println("Your password is " + password);
      System.out.println("Query: "+searchQuery);
	    
      try 
      {
         //connect to DB 
         currentCon = DBconnection.getConnection();
         stmt=currentCon.createStatement();
         rs = stmt.executeQuery(searchQuery);	        
         boolean more = rs.next();
	       
         // if user does not exist set the isValid variable to false
         if (!more) 
         {  
            String errorMessage = "Invalid username";
            System.out.println("Sorry, you are not a registered user! Please sign up first" + errorMessage);
            bean.setErrorMessage(errorMessage);
            bean.setValid(false);
         } 
	        
         //if user exists set the isValid variable to true
         else if (more) 
         {
            String userName = rs.getString("UserName");
           
	     	
            System.out.println("Welcome " + userName);
            bean.setUserName(userName);
       
            bean.setValid(true);
         }
      } 

      catch (Exception ex) 
      {
         System.out.println("Log In failed: An Exception has occurred! " + ex);
      } 
	    
      //some exception handling
      finally 
      {
         if (rs != null)	{
            try {
               rs.close();
            } catch (Exception e) {}
               rs = null;
            }
	
         if (stmt != null) {
            try {
               stmt.close();
            } catch (Exception e) {}
               stmt = null;
            }
	
         if (currentCon != null) {
            try {
               currentCon.close();
            } catch (Exception e) {
            }

            currentCon = null;
         }
      }

return bean;
	
      }	
}

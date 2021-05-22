

package usercontroller;

public class UserBean {
      
      private String username;
      private String password;
      private String errorMessage;
 
      public boolean valid;

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }
	
	
			

      public String getPassword() {
         return password;
	}

      public void setPassword(String newPassword) {
         password = newPassword;
	}
	
			
      public String getUsername() {
         return username;
			}

      public void setUserName(String newUsername) {
         username = newUsername;
			}

				
      public boolean isValid() {
         return valid;
	}

      public void setValid(boolean newValid) {
         valid = newValid;
	}	
    
}



package usercontroller;

public class UserBean {

      private String username;
      private String password;
      private String name;

      private String phone;
      private String address;

      private String errorMessage;

      public boolean valid;


       public String getErrorMessage() {
	          return errorMessage;
	      }

	      public String getName() {
	          return name;
	      }

	      public void setName(String name) {
	          this.name = name;
	      }

	      public String getPhone() {
	          return phone;
	      }

	      public void setPhone(String phone) {
	          this.phone = phone;
	      }

	      public String getAddress() {
	          return address;
	      }

	      public void setAddress(String address) {
	          this.address = address;
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

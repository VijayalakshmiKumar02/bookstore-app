/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.*;
/*
 *
 * @author Chirag
 */
public class DB_Conn {

    //private String database=System.getenv("MYSQL_DATABASE");
     //private String username = System.getenv("MYSQL_USER");
    //private String password = System.getenv("MYSQL_PASSWORD");
    // private String host = System.getenv('MYSQL_SERVICE_HOST');
   // private String port = System.getenv('MYSQL_SERVICE_PORT');
    private String database="saikiranenterprises", username = "user", password = "password";
 private Connection con;
    
    public Connection getConnection() throws SQLException, ClassNotFoundException  {
        Class.forName("com.mysql.jdbc.Driver"); 
        con=DriverManager.getConnection("jdbc:mysql://mysql:3306/"+database+"",""+username+"",""+password+""); 
       // stm=con.createStatement(); 
       // System.out.println(username);
        return con;
    }

    public String getDatabase() {
        return database;
    }

    public void setDatabase(String database) {
        this.database = database;
    }
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

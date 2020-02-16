
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.naming.Context;
import javax.naming.InitialContext;

public class DBContext {

    InitialContext initCxt;
    Context evirCxt;
    String serverName;
    int port;
    String dbName;
    //boolean db;
    String imgFolder;
    String password;
    String username;

    public DBContext() throws Exception {
        initCxt = new InitialContext();
        evirCxt = (Context) initCxt.lookup("java:/comp/env");
        serverName = (String) evirCxt.lookup("serverName");
        port = (int) evirCxt.lookup("port");
        dbName = (String) evirCxt.lookup("dbName");
        //db = (boolean) evirCxt.lookup("db");
        imgFolder = (String) evirCxt.lookup("imgFolder");
        username = (String) evirCxt.lookup("username");
        password = (String) evirCxt.lookup("password");
    }

    public Connection getConnection() throws Exception {
        
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection("jdbc:sqlserver://" + serverName + ":" + port + ";databaseName=" + dbName, username, password);
        
//        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//        return DriverManager.getConnection("jdbc:sqlserver://" + serverName + ":" 
//                + port + ";databaseName= " + dbName + ";integratedSecurity=" + db);
    }

    public String getResource() throws Exception {
        return "image/";
    }

}

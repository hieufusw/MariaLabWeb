
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CloseConnection {

    public void close(Connection conn, PreparedStatement ps, ResultSet rs) throws SQLException {
        if (rs != null && rs.isClosed()) {
            rs.close();
        }
        if (ps != null && ps.isClosed()) {
            ps.close();
        }
        if (conn != null && conn.isClosed()) {
            conn.close();
        }
    }
}

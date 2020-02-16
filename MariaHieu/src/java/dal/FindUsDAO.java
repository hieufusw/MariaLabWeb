
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.FindUsModel;

public class FindUsDAO {
    
    private final DBContext db;
    
    public FindUsDAO() throws Exception {
        db = new DBContext();
    }

    public FindUsModel getInfoPage() throws Exception {
        String query = "select * from FindUs";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        //ArrayList<FindUsModel> output = new ArrayList<>();

        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {
                FindUsModel infomation = new FindUsModel(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        db.getResource() + rs.getString(8)
                );
                return infomation;
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            new CloseConnection().close(conn, ps, rs);
        }
        return null;
    }

}


package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.MenuModel;

public class MenuDAO {
    
    private final DBContext db;
    
    public MenuDAO() throws Exception {
        db = new DBContext();
    }
    
    public List<MenuModel> getMenusFromTo(int page, int pageSize) throws SQLException, Exception {
        int from = page * pageSize - (pageSize - 1);
        int to = page * pageSize;
        List<MenuModel> menus = new ArrayList<>();
        String query = "select * from ("
                + "select *, ROW_NUMBER() over (order by id) as rownumber from Menu"
                + ") as menus "
                + "where menus.rownumber >= ? and menus.rownumber <=?";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, from);
            ps.setInt(2, to);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String title = rs.getString(2);
                String content = rs.getString(3);
                Date updateTime = rs.getDate(4);
                float price = rs.getFloat(5);
                String photoPath = db.getResource() + rs.getString(6);
                menus.add(new MenuModel(id, title, content, updateTime, price, photoPath));
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            new CloseConnection().close(conn, ps, rs);
        }
        return menus;
    }
    
    public int getTotalRows() throws Exception {
        int rows = 0;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "select count(*) from Menu";

        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                rows = rs.getInt(1);
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            new CloseConnection().close(conn, ps, rs);
        }
        return rows;
    }
    
    public MenuModel getDetailsPost(int id) throws Exception {
        String query = "select * from Menu where id = ?";
        MenuModel menus = new MenuModel();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                menus.setId(rs.getInt(1));
                menus.setTitle(rs.getString(2));
                menus.setContent(rs.getString(3));
                menus.setUpdateTime(rs.getDate(4));
                menus.setPrice(rs.getFloat(5));
                menus.setPhotoPath(db.getResource() + rs.getString(6));
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            new CloseConnection().close(conn, ps, rs);
        }
        return menus;
    }
    
}

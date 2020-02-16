package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.MenuModel;

public class HomeDAO {

    private final DBContext db;

    public HomeDAO() throws Exception {
        db = new DBContext();
    }

//    public MenuModel getOne(int id) throws Exception {
//        String query = "SELECT * FROM Menu WHERE Id = ?;";
//        try (Connection con = db.getConnection();
//                PreparedStatement ps = con.prepareStatement(query)) {
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                MenuModel cake = new MenuModel(
//                        rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        db.getResource()+ rs.getString(4)
//                );
//                return cake;
//            }
//        } catch (Exception e) {
//            throw e;
//        }
//        return null;
//    }
    public MenuModel getOne(int id) throws Exception {
        String query = "SELECT * FROM Menu WHERE Id = ?";
        MenuModel cake = new MenuModel();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                cake.setId(rs.getInt(1));
                cake.setTitle(rs.getString(2));
                cake.setContent(rs.getString(3));
                cake.setUpdateTime(rs.getDate(4));
                cake.setPrice(rs.getFloat(5));
                cake.setPhotoPath(db.getResource() + rs.getString(6));
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            new CloseConnection().close(conn, ps, rs);
        }
        return cake;
    }

//    public ArrayList<MenuModel> getMost2Update() throws Exception {
//        String query = "SELECT TOP 2 * FROM Menu;";
//        ArrayList<MenuModel> listCake = new ArrayList<>();
//        try (Connection con = db.getConnection();
//                PreparedStatement ps = con.prepareStatement(query);
//                ResultSet rs = ps.executeQuery()) {
//            while (rs.next()) {
//                MenuModel menu = new MenuModel(
//                        rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        db.getResource() + rs.getString(4)
//                );
//                listCake.add(menu);
//            }
//        } catch (Exception e) {
//            throw e;
//        }
//        return listCake;
//    }
    public List<MenuModel> getMost2Update() throws Exception {
        String query = "SELECT TOP 2 * FROM Menu order by updateTime desc";
        List<MenuModel> listCake = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = db.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String title = rs.getString(2);
                String content = rs.getString(3);
                Date updateTime = rs.getDate(4);
                float price = rs.getFloat(5);
                String photoPath = db.getResource() + rs.getString(6);
                listCake.add(new MenuModel(id, title, content, updateTime, price, photoPath));
            }
        } catch (Exception ex) {
            throw ex;
        } finally {
            new CloseConnection().close(conn, ps, rs);
        }
        return listCake;
    }
}

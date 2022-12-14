package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.BlogModel;
import vn.edu.hcmuaf.fit.service.BlogService;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class BlogDAO extends AbstractDAO {


    public List<BlogModel> findAll() {
        LinkedList<BlogModel> list = new LinkedList<BlogModel>();

        String sql = "select blog.id, title, briefContent, blog.avatar,users.name, create_date " +
                "from blog join users on blog.id_user_create = users.id";

        conn = getConnection();

        if (conn != null)
            try {
                ps = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new BlogModel(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getDate(6)
                    ));
                }
                return list;
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (conn != null) conn.close();
                    if (ps != null) ps.close();
                    if (rs != null) rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        else {
            System.out.println("Connect database error");
        }
        return null;
    }

    public List<BlogModel> newBlog() {
        LinkedList<BlogModel> list = new LinkedList<BlogModel>();

        String sql = "select blog.id, title, briefContent,blog.avatar, users.name, create_date " +
                "from blog join users on blog.id_user_create = users.id " +
                "order by id desc limit 3";

        conn = getConnection();

        if (conn != null)
            try {
                ps = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                rs = ps.executeQuery();
                while (rs.next()) {
                    list.add(new BlogModel(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getDate(6)
                    ));
                }
                return list;
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (conn != null) conn.close();
                    if (ps != null) ps.close();
                    if (rs != null) rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        else {
            System.out.println("Connect database error");
        }
        return null;
    }

    public BlogModel getDetailBlogForId(String idBlogPram) {

        String sql = "select blog.id, title, briefContent, detail_content, status, blog.avatar, type_blog.name_type_blog, create_date, users.name " +
                "from blog join users on blog.id_user_create = users.id " +
                "join type_blog on blog.id_type_blog = type_blog.id " +
                "where blog.id=?";

        conn = getConnection();

        if (conn != null)
            try {
                ps = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                ps.setString(1, idBlogPram);
                rs = ps.executeQuery();
                while (rs.next()) {
                    return new BlogModel(rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getInt(5),
                            rs.getString(6),
                            rs.getString(7),
                            rs.getDate(8),
                            rs.getString(9)
                    );
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (conn != null) conn.close();
                    if (ps != null) ps.close();
                    if (rs != null) rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        else {
            System.out.println("Connect database error");
        }
        return null;
    }

    public static void main(String[] args) {
        System.out.println(new BlogDAO().findAll());
    }
}
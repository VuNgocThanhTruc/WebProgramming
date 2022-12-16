package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.ConnectToDatabase;
import vn.edu.hcmuaf.fit.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class UserDAO implements ObjectDAO {
    public static Map<String, User> mapUser = loadUsername();


    public UserDAO() {
    }

    private static Map<String, User> loadUsername() {
        Map<String, User> mapTemp = new HashMap<>();
        try {
            ResultSet rs = new ConnectToDatabase().selectData("select * from users");
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String username = rs.getString(3);
                String email = rs.getString(4);
                String password = rs.getString(5);
                String avatar = rs.getString(6);
                String tel = rs.getString(7);
                int id_type_user = rs.getInt(8);
                String dob = rs.getString(9);
                int sex = rs.getInt(10);
                String address = rs.getString(11);
                User user = new User(id, name, username, email, password, avatar, tel, id_type_user,
                        dob, sex, address);
                mapTemp.put(user.getUsername(), user);


            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return mapTemp;
    }

    private static Map<String, User> loadName() {
        Map<String, User> mapTemp = new HashMap<>();
        try {
            ResultSet rs = new ConnectToDatabase().selectData("select * from users");
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String username = rs.getString(3);
                String email = rs.getString(4);
                String password = rs.getString(5);
                String avatar = rs.getString(6);
                String tel = rs.getString(7);
                int id_type_user = rs.getInt(8);
                String dob = rs.getString(9);
                int sex = rs.getInt(10);
                String address = rs.getString(11);
                User user = new User(id, name, username, email, password, avatar, tel, id_type_user,
                        dob, sex, address);
                mapTemp.put(user.getUsername(), user);


            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return mapTemp;
    }

    public int checkLogin(String username, String pass) {
        User user = mapUser.get(username);
        if (user != null) {
            int id = user.getId_type_user();
            if (user.getPassword().equals(pass) && id == 1) {
                return 1;
            } else if (user.getPassword().equals(pass) && id == 2) {
                return 2;
            } else {
                return 0;
            }

        }
        return 0;
    }

    public void signup(String name, String username, String password) {
        String sql = "insert into users(id,name,username,email,password,avatar,tel,id_type_user,dob,sex,address) values (?,?,?,?,?,?,?,?,?,?,?)";
        Connection connect = ConnectToDatabase.getConnect();
        try {
            PreparedStatement ppstm = connect.prepareStatement(sql);
            ppstm.setString(1, null);
            ppstm.setString(2, name);
            ppstm.setString(3, username);
            ppstm.setString(4, "test@test");
            ppstm.setString(5, password);
            ppstm.setString(6, null);
            ppstm.setString(7, null);
            ppstm.setInt(8, 1);
            ppstm.setString(9, null);
            ppstm.setInt(10, 1);

            ppstm.setString(11, null);

            ppstm.executeUpdate();


        } catch (Exception e) {
            System.out.println("Error when signup custommer:" + e.getMessage());
        }
    }
    public int checksignup(String name, String username, String password) {
        User user = mapUser.get(username);
        if (name != "" || username !="" || password !="") {
            if (user != null) {
                if (!user.equals(username)) {

                    return 1;
                } else {
                    return 0;
                }
            } else {
                return 0;
            }
        } else {
            return 2;

        }

    }


    @Override
    public boolean add(Object obj) {
        return false;
    }

    @Override
    public boolean del(String id) {
        mapUser.remove(id);
        try {
            new ConnectToDatabase().executeSql("delete from users where name ='" + id + "'");
            return true;
        } catch (Exception e) {
            System.out.println("Error When delete custommer:" + e.getMessage());
        }
        return false;
    }

    @Override
    public boolean edit(String id, Object obj) {
        User user = (User) obj;
        mapUser.replace(id, user);
        String sql = "update users set id=?;name=?,email=?,password=?,avatar=?,tel=?,id_type_user=?,dob=?,sex=?,address=?";
        Connection connect = ConnectToDatabase.getConnect();
        try {
            PreparedStatement ppstm = connect.prepareStatement(sql);

            ppstm.setString(2, user.getName());
            ppstm.setString(3, user.getEmail());
            ppstm.setString(4, user.getPassword());
            ppstm.setString(6, user.getTel());
            ppstm.setInt(7, user.getId_type_user());
            ppstm.setString(8, user.getDob());
            ppstm.setInt(9, user.getSex());
            ppstm.setString(10, user.getAddress());
            ppstm.executeUpdate();
            return true;

        } catch (SQLException e) {
            System.out.println("Error when edit custommer:" + e.getMessage());
        }
        return false;
    }

<<<<<<< HEAD
    @Override
    public void read() {
    }
=======
>>>>>>> aac5cbc2c2c02f7c335327b4a32ce5b24da9d172

    public boolean changePass(String userName, String newPass) {
        User user = mapUser.get(userName);
        if (user != null) {
            user.setPassword(newPass);
            mapUser.replace(user.getName(), user);
            edit(user.getName(), user);
            return true;
        } else {
            return false;
        }
    }

    public static void main(String[] args) {
        UserDAO user = new UserDAO();
        User x = mapUser.get("minhhoang");
        System.out.println(x);
        System.out.println(user.mapUser);
        System.out.println(user.checkLogin("dangphuoc    ", "phuoc123"));
    }
}

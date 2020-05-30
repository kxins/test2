package Login;

import common.DBConnection;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UserDB implements Serializable {
    private Connection con = null;

    public UserInfo GetUserbyName(String userName) {
        System.out.println("GetUserbyName: userName=" + userName);
        UserInfo user = null;
        PreparedStatement pStmt = null;
        ResultSet rs = null;
        try {
            con = DBConnection.getConnection();
            pStmt = con.prepareStatement("SELECT * FROM t_user where VC_LOGIN_NAME=?");
            pStmt.setString(1, userName);
            rs = pStmt.executeQuery();
            if (rs.next()) {
                user = new UserInfo();
                user.setNUserId(rs.getInt("N_USER_ID"));
                user.setVcLoginName(rs.getString("VC_LOGIN_NAME"));
                user.setVcPassword(rs.getString("VC_PASSWORD"));
                rs.close();
                pStmt.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("联取指定用户信思失败: ");
        } finally {
            DBConnection.closeConnection();
            return user;
        }
    }

    public ArrayList<UserInfo> GetUser(){
        ArrayList<UserInfo> users = new ArrayList<UserInfo>();
        UserInfo user=null;
        PreparedStatement pStmt=null;
        ResultSet rs = null;
        try {
            con=DBConnection.getConnection();
            pStmt=con.prepareStatement("SELECT * FROM t_user where VC_LOGIN_NAME!='admin'");
            rs = pStmt.executeQuery();//执行SQL语句，并将结果返回给rs

            while (rs.next()){
                user = new UserInfo();
                user.setNUserId(rs.getInt("N_USER_ID"));
                user.setVcLoginName(rs.getString("VC_LOGIN_NAME"));
                user.setVcPassword(rs.getString("VC_PASSWORD"));
                users.add(user);
            }
            rs.close();
            pStmt.close();
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("获取用户信息失败！");
        }finally {
            DBConnection.closeConnection();
        }
        for(UserInfo user1: users){
            System.out.println(user1);
        }
        return users;
    }
}


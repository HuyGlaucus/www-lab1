package vn.edu.iuh.fit.repositories;

import vn.edu.iuh.fit.connectDB.ConnectDB;
import vn.edu.iuh.fit.models.GrantAccount;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GrantAccountRepository {
    public List<GrantAccount> getAllGrantAccount() throws SQLException, ClassNotFoundException {
        List<GrantAccount> lstGrantAccount = new ArrayList<>();
        Connection con;
        con = ConnectDB.getInstance().getConnection();

        try {
            String sql = "Select * from grant_account";
            Statement statement = con.createStatement();
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
                String roleId = rs.getString("role_id");
                String accountId = rs.getString("account_id");
                Boolean isGrant = rs.getBoolean("is_grant");
                String note = rs.getString("note");

                GrantAccount GrantAccount = new GrantAccount(roleId, accountId, isGrant, note);
                lstGrantAccount.add(GrantAccount);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lstGrantAccount;
    }

}

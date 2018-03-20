package com.fsoft.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.fsoft.model.Account;

public class AccountDaoImpl implements AccountDao {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public Account checkAccount(Account account) {
        String checkQuery = "SELECT * FROM dbo.Users WHERE user_name = '" + account.getUsername() + "' AND password = '"
                + account.getPassword() + "'";
        List<Account> accounts = jdbcTemplate.query(checkQuery, new AccountMapper());

        return accounts != null ? accounts.get(0) : null;
    }
}

class AccountMapper implements RowMapper<Account> {
  
    public Account mapRow(ResultSet rSet, int iValue) throws SQLException {
        Account account = new Account();
        account.setUsername(rSet.getString("users_name"));
        account.setPassword(rSet.getString("passwords"));
        return account;
    }
}

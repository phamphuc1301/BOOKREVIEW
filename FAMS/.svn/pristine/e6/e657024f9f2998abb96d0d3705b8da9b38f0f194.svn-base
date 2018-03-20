package com.fsoft.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.fsoft.dao.AccountDao;
import com.fsoft.model.Account;

public class AccountServiceImpl implements AccountService {

    @Autowired
    AccountDao accountDao;

    public Account checkAccount(Account account) {
        return accountDao.checkAccount(account);
    }

}

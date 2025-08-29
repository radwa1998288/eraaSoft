package main.ewallet907.service;

import main.ewallet907.model.Account;

public interface AccountService {

    boolean createAccount(Account account);

    Account getAccount(Account account);
    boolean deposit(Account account, double amount);
    boolean withdraw(Account account, double amount);
    boolean transfer(Account account, String userName, double amount);
    boolean changePassword(Account account,  String currentPassword,  String newPassword);
    boolean removeAccount(Account account,  String userName,  String password,String confirmation);
}

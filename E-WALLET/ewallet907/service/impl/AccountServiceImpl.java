package main.ewallet907.service.impl;

import main.ewallet907.model.Account;
import main.ewallet907.model.EWallet;
import main.ewallet907.service.AccountService;
import java.util.Optional;


// TODO pls remove duplicated code
// TODO use streaming API
public class AccountServiceImpl implements AccountService {

    private EWallet eWallet = new EWallet();

    @Override
    public boolean createAccount(Account account) {
        boolean accountExists = eWallet.getAccounts().stream()
                .anyMatch(acc -> acc.getUserName().equals(account.getUserName()));

        if (accountExists) {
            return false;
        }

        eWallet.getAccounts().add(account);
        return true;
    }

    @Override
    public Account getAccount(Account account) {
        return eWallet.getAccounts().stream()
                .filter(acc -> acc.getUserName().equals(account.getUserName()) &&
                        acc.getPassword().equals(account.getPassword()))
                .findFirst()
                .orElse(null);
    }

    @Override
    public boolean deposit(Account account, double amount) {
        Optional<Account> optionalAcc = eWallet.getAccounts().stream()
                .filter(acc -> acc.getUserName().equals(account.getUserName()))
                .findFirst();

        if (optionalAcc.isPresent()) {
            Account acc = optionalAcc.get();
            acc.setBalance(acc.getBalance() + amount);
            return true;
        }

        return false;
    }

    @Override
    public boolean withdraw(Account account, double amount) {
        Optional<Account> optionalAcc = eWallet.getAccounts().stream()
                .filter(acc -> acc.getUserName().equals(account.getUserName()))
                .findFirst();

        if (optionalAcc.isPresent()) {
            Account acc = optionalAcc.get();
            if (acc.getBalance() >= amount) {
                acc.setBalance(acc.getBalance() - amount);
                return true;
            }
        }

        return false;
    }

    @Override
    public boolean transfer(Account account, String userName, double amount) {
        Optional<Account> firstAccOpt = eWallet.getAccounts().stream()
                .filter(acc -> acc.getUserName().equals(account.getUserName()))
                .findFirst();

        Optional<Account> secondAccOpt = eWallet.getAccounts().stream()
                .filter(acc -> acc.getUserName().equals(userName))
                .findFirst();

        if (firstAccOpt.isPresent() && secondAccOpt.isPresent()) {
            Account firstAcc = firstAccOpt.get();
            Account secondAcc = secondAccOpt.get();
            if (firstAcc.getBalance() >= amount) {
                firstAcc.setBalance(firstAcc.getBalance() - amount);
                secondAcc.setBalance(secondAcc.getBalance() + amount);
                return true;
            }
        }

        return false;
    }

    @Override
    public boolean changePassword(Account account, String currentPassword, String newPassword) {
        if (account.getPassword().equals(currentPassword)) {
            account.setPassword(newPassword);
            return true;
        }
        return false;
    }

    @Override
    public boolean removeAccount(Account account, String userName, String password, String confirmation) {
        if (account.getUserName().equals(userName) &&
                account.getPassword().equals(password) &&
                confirmation.equals("SURE")) {
            eWallet.getAccounts().remove(account);
            return true;
        }
        return false;
    }

}
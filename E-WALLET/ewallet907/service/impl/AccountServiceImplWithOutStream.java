//package main.ewallet907.service.impl;
//
//import main.ewallet907.model.Account;
//import main.ewallet907.model.EWallet;
//import main.ewallet907.service.AccountService;
//
//// TODO pls remove duplicated code
//// TODO use streaming API
//public class AccountServiceImplWithOutStream implements AccountService {
//
//    private EWallet eWallet = new EWallet();
//
//
//    @Override
//    public boolean createAccount(Account account) {
//
//        for (Account acc: eWallet.getAccounts()) {
//            if (acc.getUserName().equals(account.getUserName())) {
//                return false;
//            }
//        }
//
//        eWallet.getAccounts().add(account);
//        return true;
//    }
//
//    @Override
//    public Account getAccount(Account account) {
//        for (Account acc: eWallet.getAccounts()) {
//            if (acc.getUserName().equals(account.getUserName()) &&
//                acc.getPassword().equals(account.getPassword())) {
//                return acc;
//            }
//        }
//
//        return null;
//    }
//
//    @Override
//    public boolean deposit(Account account, double amount) { // 50        30
//        for (Account acc: eWallet.getAccounts()) {
//            if (acc.getUserName().equals(account.getUserName())) {
//                double oldBalance = acc.getBalance();
//                acc.setBalance(oldBalance + amount);
//                return true;
//            }
//        }
//
//        return false;
//    }
//
//    @Override
//    public boolean withdraw(Account account, double amount) {
//        /**
//         * TODO check account exist
//         * TODO check balance on account is greater than or equal amount
//         * if account exist and balance on account is greater than or equal mount  *cut mount from account  *return true
//         * else return false
//         */
//        for (Account acc: eWallet.getAccounts()) {
//            if (acc.getUserName().equals(account.getUserName())) {
//                if(acc.getBalance() >= amount) {
//                    double oldBalance = acc.getBalance();
//                    acc.setBalance(oldBalance - amount);
//                    return true;
//                }
//            }
//        }
//
//        return false;
//    }
//
//
//
//    @Override
//    public boolean transfer(Account account, String userName, double amount) {
//        /**
//         * TODO check account exist
//         * TODO check userName exist
//         * TODO check balance on account is greater than or equal mount
//         * if All condition true cut amount from account and add to this account userName amount return true
//         * else return false
//         */
//        double firstAccBalance=0.0;
//        double secondAccBalance=0.0;
//        Account firstAcc = new Account();
//        Account secondAcc = new Account();
//
//        // Check for existing accounts
//        for (Account acc : eWallet.getAccounts()) {
//            if (acc.getUserName().equals(account.getUserName())) {
//                firstAcc = acc;
//                firstAccBalance = firstAcc.getBalance();
//            }
//            if (acc.getUserName().equals(userName)) {
//                secondAcc = acc;
//                secondAccBalance = secondAcc.getBalance();
//            }
//        }
//
//        // Both accounts must exist
//        if (firstAcc != null && secondAcc != null) {
//            // Check if sufficient balance
//            if (firstAccBalance >= amount) {
//                firstAcc.setBalance(firstAccBalance - amount);
//                secondAcc.setBalance(secondAccBalance + amount);
//                return true;
//            }
//        }
//        return false;
//    }
//
//   public boolean changePasssword(Account account, String currentPassword, String newPassword){
//        if(account.getPassword().equals(currentPassword)){
//
//            account.setPassword(newPassword);
//            return true;
//        }
//        return false;
//    }
//
//    public boolean removeAccount(Account account,String userName,String password,String confirmation){
//
//        if(account.getUserName().equals(userName) && account.getPassword().equals(password) &&confirmation.equals("SURE")){
//            eWallet.getAccounts().remove(account);
//            return true;
//        }
//        return false;
//    }
//}

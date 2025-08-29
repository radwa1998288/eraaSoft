package main.ewallet907.service.impl;

import main.ewallet907.model.Account;
import main.ewallet907.service.AccountService;
import main.ewallet907.service.ApplicationService;
import main.ewallet907.service.ValidationService;

import java.util.Objects;
import java.util.Scanner;

// TODO pls remove duplicated code
public class ApplicationServiceImpl implements ApplicationService {

    private AccountService accountService = new AccountServiceImpl();
    private ValidationService validationService = new ValidationServiceImpl();

    @Override
    public void startApp() {
        System.out.println("---------- hello sir -------------");

        int counter = 0;
        while (true) {
            boolean isExit = false;

            System.out.println("pls enter what you need to do?!");
            System.out.println("1.login              2.signup            3.Exit");
            Scanner scanner = new Scanner(System.in);
            int res = scanner.nextInt();

            switch (res) {
                case 1:
                    login();
                    break;
                case 2:
                    signup();
                    break;
                case 3:
                    System.out.println("have a nice day :)");
                    isExit = true;
                    break;
                default:
                    System.out.println("Invalid input :(");
                    counter++;
            }

            if(isExit){
                break;
            }

            if(counter == 4){
                System.out.println("pls try on last time :(");
                break;
            }
        }
    }

    private void signup() {
        Scanner scanner = new Scanner(System.in);

        // TODO apply do while on all attr
        boolean res = false;
        String userName = null;
        String password = null;
        String phoneNumber = null;
        Integer age = null;
        do {
            System.out.println("pls enter userName");
            System.out.println("must be greatear than 7 characters and starts with uppercase");
            userName = scanner.nextLine();
            res = !validationService.isUserNameValid(userName);
            if(res){
                System.out.println("invalid user name");
            }
        } while (res);

        do {
            System.out.println("pls enter password");
            System.out.println("must be greatear than 7 characters and have uppercase, lowercase, number and specialChar");
             password = scanner.nextLine();
            res =!validationService.isPasswordValid(password);
            if(res){System.out.println("invalid password");}
        } while(res);

        do {
            System.out.println("pls enter phoneNumber");
            System.out.println("must equal 12 numbers and starts with 20 ");
            phoneNumber = scanner.nextLine();
            res = !validationService.isPhoneNumberValid(phoneNumber);
            if (res) {
                System.out.println("invalid phoneNumber");
            }
        } while (res);

        do {
            System.out.println("pls enter age");
            System.out.println("must be greater than or equals 20 ");
             age = scanner.nextInt();
            res = !validationService.isAgeValid(age);
            if (res) {
                System.out.println("invalid age");
            }
        } while (res);

        Account account = new Account(userName, password, phoneNumber, age);

        boolean isAccountCreated = accountService.createAccount(account);
        if(isAccountCreated){
            System.out.println("account created success :)");
        } else {
            System.out.println("there exist account with same user name :(");
        }
    }

    private void login(){
        Scanner scanner = new Scanner(System.in);
        System.out.println("pls enter userName");
        String userName = scanner.nextLine();
        System.out.println("pls enter password");
        String password = scanner.nextLine();

        Account account = new Account(userName, password);

        account = accountService.getAccount(account);

        if (Objects.nonNull(account)){
            System.out.println("Login success :)");
            mainPage(account);
        } else {
            System.out.println("invalid username or password :)");
        }
    }

    private void mainPage(Account account){
        while (true) {
            boolean isExit = false;
            Scanner scanner = new Scanner(System.in);
            // TODO pls apply withdraw, transfer, change password and remove account features
            System.out.println("1.deposit  2.withdraw  3.transfer  4.show account details  5.change password  6.remove account  7.logout");
            int res = scanner.nextInt();
            switch (res) {
                case 1:
                    deposit(account);
                    break;
                case 2:
                     withdrow(account);
                    break;
                case 3:
                     transfer(account);
                    break;
                case 4:
                    showAccountDetails(account);
                    break;
                case 5:
                     changePassword(account);
                    break;
                case 6:
                    if(removeAccount(account))
                    {
                        isExit = true;
                        System.out.println("have a nice day :)");
                    }
                    break;
                case 7:
                    isExit = true;
                    System.out.println("have a nice day :)");
                    break;
                default:

            }

            if (isExit) {
                break;
            }
        }
    }

    private void showAccountDetails(Account account) {
        account = accountService.getAccount(account);

        if (Objects.nonNull(account)){
            System.out.println("1.username: " + account.getUserName());
            System.out.println("2.Password: " + account.getPassword());
            System.out.println("3.Balance: " + account.getBalance());
            System.out.println("4.PhoneNumber: " + account.getPhoneNumber());
            System.out.println("5.Age: " + account.getAge());
        } else {
            System.out.println("invalid username or password :)");
        }
    }

    private void deposit(Account account) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("pls enter amount");
        double amount = scanner.nextInt();

        boolean isDepositSuccess = accountService.deposit(account, amount);
        if(isDepositSuccess){
            System.out.println("Deposit Success :)");
        } else {
            System.out.println("account not exist");
        }
    }

    private void withdrow(Account account) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("pls enter amount");
        double amount = scanner.nextInt();

        boolean isWithdrawSuccess = accountService.withdraw(account, amount);
        if(isWithdrawSuccess){
            System.out.println("Withdraw Success :)");
        } else {
            System.out.println("account not exist or donn't have enough balance");
        }
    }

    private void transfer(Account account) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("pls enter userName you want to transfer to :");
        String userName = scanner.nextLine();

        System.out.println("pls enter amount");
        double amount = scanner.nextInt();

        boolean isTransferSuccess = accountService.transfer(account, userName,amount);
        if(isTransferSuccess){
            System.out.println("transfer Success :)");
        } else {
            System.out.println("account not exist or donn't have enough balance");
        }
    }

    private void changePassword(Account account) {
        boolean isPasswordChanedSuccess = false;
        boolean res = false;
        Scanner scanner = new Scanner(System.in);
        System.out.println("pls enter your current password  :");
        String currentPassword = scanner.nextLine();
        do {
        System.out.println("pls enter the new password :");
        System.out.println("must be diffarent from the current one , greatear than 7 characters and have uppercase, lowercase, number and specialChar");
        String newPassword = scanner.nextLine();
        if(!newPassword.equals(currentPassword)){
            res=( !validationService.isPasswordValid(newPassword));
            if (!res) {
                isPasswordChanedSuccess = accountService.changePassword(account, currentPassword, newPassword);
            } else {
                System.out.println("ivalid password");

            }

        }
        else{System.out.println("ivalid password");
            res=true;}
        }while (res);


        if(isPasswordChanedSuccess){
            System.out.println("password changed successfully :)");
        } else {
            System.out.println("password is not correct");
        }
    }

    private Boolean removeAccount(Account account) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("pls enter your userName :");
        String userName = scanner.nextLine();

        System.out.println("pls enter your password :");
        String password = scanner.nextLine();

        System.out.println("are you sure you want to remove your account ? if yes please write 'SURE' ");
        String confirmation = scanner.nextLine();

        boolean isRemoveaccountSuccess = accountService.removeAccount(account, userName,password,confirmation);
        if(isRemoveaccountSuccess){
            System.out.println("account removed successfully :)");
            return true;

        } else {
            System.out.println("confirmation failed");
            return false;
        }
    }
}

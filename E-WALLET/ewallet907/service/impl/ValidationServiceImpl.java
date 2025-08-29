package main.ewallet907.service.impl;

import main.ewallet907.service.ValidationService;

public class ValidationServiceImpl implements ValidationService {
    @Override
    public boolean isUserNameValid(String userName) {
        /*
        * TODO validate username
        * TODO must start with uppercase
        * TODO size must be greater than or equal 7
        * TODO return true else return false
        */

        if (userName.length() >= 7 && Character.isUpperCase(userName.charAt(0)))
        {
            return true;
        }
        return false;
    }

    @Override
    public boolean isPasswordValid(String password) {
        /*
         * TODO validate password
         * TODO password must contain uppercase, lowercase, number , specialChar
         * TODO size must be greater than or equal 7
         * TODO return true else return false
         */
        boolean hasUppercase = password.matches(".*[A-Z].*");
        boolean hasLowercase = password.matches(".*[a-z].*");
        boolean hasSpecialCharacter = password.matches(".*[\\p{L}].*");
        boolean hasNumber = password.matches(".*\\d+.*");
        if(password.length() >=  7  && hasSpecialCharacter && hasUppercase && hasLowercase && hasNumber){
           return true;
        }

        return false;
    }

    @Override
    public boolean isAgeValid(Integer age) {
        /*
         * TODO validate age
         * TODO age must be greater than or equal 20
         * TODO return true else return false
         */
        if(age >= 20)
        {return true;}
        return false;
    }

    @Override
    public boolean isPhoneNumberValid(String phoneNumber) {
        /* 201113903660
         * TODO validate phoneNumber
         * TODO phoneNumber must be start with 20
         * TODO size must equal 12
         * TODO return true else return false
         */
        if(phoneNumber.length() ==12 && phoneNumber.startsWith("20")){
            return true;
        }
        return false;
    }
}

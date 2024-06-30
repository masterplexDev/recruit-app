package kr.co.sist.security;

import java.security.SecureRandom;
import org.apache.commons.lang3.RandomStringUtils;

public class TempPasswordGenerator {
    private static final String CHARACTERS =
            "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+";
    private static final int PASSWORD_LENGTH = 16; // 비밀번호 길이

    public static String generateRandomPassword() {
        SecureRandom random = new SecureRandom();
        return RandomStringUtils.random(PASSWORD_LENGTH, 0, CHARACTERS.length(), true, true,
                CHARACTERS.toCharArray(), random);
    }
}

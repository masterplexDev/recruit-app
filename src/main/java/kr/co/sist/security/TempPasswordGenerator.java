package kr.co.sist.security;

import java.security.SecureRandom;
import org.apache.commons.lang3.RandomStringUtils;

public class TempPasswordGenerator {
    private static final String LOWERCASE = "abcdefghijklmnopqrstuvwxyz";
    private static final String UPPERCASE = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static final String NUMBERS = "0123456789";
    private static final String SPECIAL_CHARS = "!@#$%^&*()-_=+";
    private static final int PASSWORD_LENGTH = 16; // 비밀번호 길이

    public static String generateRandomPassword() {
        SecureRandom random = new SecureRandom();

        // StringBuilder를 사용하여 문자열 연결 및 셔플링 수행
        StringBuilder password =
                new StringBuilder().append(RandomStringUtils.random(1, LOWERCASE.toCharArray()))
                        .append(RandomStringUtils.random(1, UPPERCASE.toCharArray()))
                        .append(RandomStringUtils.random(1, NUMBERS.toCharArray()))
                        .append(RandomStringUtils.random(1, SPECIAL_CHARS.toCharArray()))
                        .append(RandomStringUtils.random(PASSWORD_LENGTH - 4,
                                (LOWERCASE + UPPERCASE + NUMBERS + SPECIAL_CHARS).toCharArray()));

        shufflePassword(password);

        return password.toString();
    }

    private static void shufflePassword(StringBuilder password) {
        SecureRandom random = new SecureRandom();
        for (int i = password.length() - 1; i > 0; i--) {
            int j = random.nextInt(i + 1);
            char temp = password.charAt(i);
            password.setCharAt(i, password.charAt(j));
            password.setCharAt(j, temp);
        }
    }
}

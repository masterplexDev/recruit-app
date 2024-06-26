package kr.co.sist.security;

import javax.crypto.SecretKey;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;

public class JwtSecretKeyGenerator {
    private static final byte[] SECRET_KEY =
            Keys.secretKeyFor(SignatureAlgorithm.HS256).getEncoded();

    public static SecretKey getSecretKey() {
        return Keys.hmacShaKeyFor(SECRET_KEY);
    }
}

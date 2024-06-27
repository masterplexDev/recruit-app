package kr.co.sist.security;

import java.time.Instant;
import java.util.Date;
import javax.crypto.SecretKey;
import org.springframework.stereotype.Component;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import kr.co.sist.user.domain.basic.LoginDomain;

@Component
public class JwtLoginProvider {
    private final SecretKey secretKey;

    public JwtLoginProvider() {
        this.secretKey = JwtSecretKeyGenerator.getSecretKey();
    }

    // JWT 생성 및 서명
    public String generateJwt(LoginDomain loginDomain) {
        return Jwts.builder().setSubject(loginDomain.getUserId()).claim("loginData", loginDomain)
                .setExpiration(Date.from(Instant.now().plusSeconds(3600))) // 1시간 유효
                .signWith(secretKey, SignatureAlgorithm.HS256).compact();
    }

    // JWT 검증 및 사용자 정보 추출
    public LoginDomain validateJwtAndExtractUserData(String jwt) {
        try {
            Jws<Claims> claimsJws =
                    Jwts.parserBuilder().setSigningKey(secretKey).build().parseClaimsJws(jwt);

            Claims claims = claimsJws.getBody();
            ObjectMapper objectMapper = new ObjectMapper();

            return objectMapper.convertValue(claims.get("loginData"), LoginDomain.class);
        } catch (ExpiredJwtException e) {
            // 유효 기간 만료 예외 처리
            e.printStackTrace();
            return null;
        } catch (JwtException e) {
            // 기타 JWT 예외 처리
            e.printStackTrace();
            return null;
        }
    }

}

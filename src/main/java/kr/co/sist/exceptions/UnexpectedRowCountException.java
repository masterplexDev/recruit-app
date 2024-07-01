package kr.co.sist.exceptions;

public class UnexpectedRowCountException extends Exception {
    private int expectedCount;
    private int actualCount;

    public UnexpectedRowCountException(int expectedCount, int actualCount) {
        super(String.format("예상된 행의 수 : %d / 실제로 %d개 행 변화 감지", expectedCount, actualCount));
        this.expectedCount = expectedCount;
        this.actualCount = actualCount;
    }

    public int getExpectedCount() {
        return expectedCount;
    }

    public int getActualCount() {
        return actualCount;
    }
}

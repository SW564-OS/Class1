package sec01.exam01;

public class ForExam {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int sum = 0;
		
		sum = sum + 1;
		sum = sum + 2;
		sum = sum + 3;
		sum = sum + 4;
		sum = sum + 5;
		System.out.println(sum);
		
		// 1. 반복되는 것 찾기
		// 2. 반복 되지 않는 것 찾기
		// 3. 시작 조건
		// 4. 종료 조건
		
		// for (조기화식 ; 조건식 ; 증감식 ) { 실행문 }
		// 1. 초기화식 사용
		// 2. 조건식을 확인하여 조건에 부합되면(== true일 경우)
		// 3. 실행문 실행
		// 4. 증감식을 거쳐 다시 조건식으로 이동
		
		int sum2 = 0;
		for( int e = 1 ; e <= 5 ; e++ ) {
			sum2 += e;
		} System.out.println(sum2);
		
		int sum3 = 0;
		for( int e = 1 ; e <= 5 ; e++ ) {
			System.out.println(e);
			sum3 += e;
			System.out.println(sum3);
		} System.out.println(sum3);
		
		for ( int i = 1 ; i <= 10 ; i++) {
			System.out.println(i);
		}
		
		int sum4 = 0;
		for ( int e = 1 ; e <= 100 ; e++) {
			System.out.println(e);
			sum4 += e;
			System.out.println(sum4);
		} System.out.println("1 ~ 100까지의 합은 " + sum4);
		
		for ( int i = 10 ; i >= 1 ; i--) {
			System.out.println(i);
		}
		
	}
}

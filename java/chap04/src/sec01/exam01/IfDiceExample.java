;package sec01.exam01;

import java.util.Scanner;

public class IfDiceExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// Math.random() 사용법
		// 0 <= random < 1
		
		double ran = Math.random();
		System.out.println(ran);
		
		
		// 쉽게 주사위 굴리기
		
		int rand = (int) (Math.random() * 60);
		
		// 가위바위보 게임
		
		System.out.println("가위바위보를 기입하세요.");
		
		Scanner scan = new Scanner(System.in);
		String num = scan.nextLine();
		
		// 변수를 미리 지정하고 조건문에 맞춰 지정된 변수에 넣음
		int num1 = 0;
		if ( num.equals("가위") ) {
			num1 = 1;
		} else if ( num.equals("바위") ) {
			num1 = 2;
		} else {
			num1 = 3;
		}
		
		// System.out.println(num1);
		
		int pc = (int) (Math.random() * 3) + 1;
		if ( pc == 1 ) {
			System.out.println("가위");
		} else if ( pc == 2 ) {
			System.out.println("바위");
		} else {
			System.out.println("보");
		}
		
		if ( num1 == pc ) {
			System.out.println("비겼습니다.");
		} else if ( (num1 == 1 && pc == 3) || (num1 == 2 && pc == 1) || (num1 == 3 && pc == 2)) {
			System.out.println("사람이 이겼습니다.");
		} else {
			System.out.println("PC가 이겼습니다.");
		}
		
		
		// double, flaot, long, boolean은 switch에서 사용할 수 없음
		// string읜 경우 equals를 쓰지 않아도 자동으로 switch문이 사용해줌
		int numm = 2;
		switch (numm) {
		case 1:
			System.out.println("1입니다.");
			break;
		case 2:
			System.out.println("2입니다.");
			break;
		default:
			System.out.println("나머지 코드입니다.");
			break;
		}
		
		// 변수에 통장잔액이 10000원 있다
		// 이걸 출금할껀데 입력 받아서 10000원보다 높은 금액을 적으면 잔액이 부족합니다. 
		// 얼마 출금했고 얼마 남았습니다.
		// 음수일 경우 정확히 입력해주세요
		
		System.out.println("출금 희망 금액을 적어주세요");
		
		Scanner scan6 = new Scanner(System.in);
		short want = scan.nextShort();
		int pk = 10000;
		// int 써서 21억까지 받나 short 써서 30000까지 제한하나 차이는 없다
		
		int mi = (pk - want);
		int mi2 = (pk - want) / 1000;
		
		if ( 0 > want ) {
			System.out.println("금액을 정확히 기입해주세요.");
		} else if ( pk - want > 0) {
			System.out.println(mi + "원의 잔액이 남았습니다.");
		} else if ( 0 > pk - want ) {
			System.out.println("출금금액이 잔액보다 많습니다.");
		} else if ( 0 > want ) {
			System.out.println("출금희망 금액이 정확하지 않습니다.");
		} else if ( mi == 0 ) {
			System.out.println("잔액이 0원입니다.");
		} else {
			System.out.println("오류");
		}
		
		switch (mi2) {
		case -1:
		case -2:
		case -3:
		case -4:
		case -5:
		case -6:
		case -7:
		case -8:
		case -9:
		case -10:
		case -20:
		case -30:
			System.out.println("잔액이 부족합니다.");
			 break;
		case 0:
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
			System.out.println(want + "를 출금했고," + mi + "가 남았습니다.");
			break;
		default:
			System.out.println("정확히 입력해주세");
			break;
		}
		
	}

}

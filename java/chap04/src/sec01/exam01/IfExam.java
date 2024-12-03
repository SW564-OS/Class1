package sec01.exam01;

import java.util.Scanner;

public class IfExam {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int score = 89;

		// Scanner scan = new Scanner(System.in);

		// int score = scan.nextInt();

//		{if(score >= 90) {
//			
//			System.out.println("이게 나오면 큰 거겠지");
//			
//		} 
//		if(score < 90)
//
//			System.out.println("이게 나오면 작은거겠지");
//			System.out.println("이건 무조건 나올껄?");
//		}

//		if(score >= 90) {
//			System.out.println("이게 나오면 큰 거겠지");
//		} else if (score < 90 && score >= 80){
//			System.out.println("이게 나오면 큰 것보다 조금 작겠지");
//			
//		} else if (score < 80 && score >= 70){
//			System.out.println("이게 나오면 조금 작겠지");
//			
//		} else {
//			System.out.println("이건 가장 작은 거겠지");
//			
//		}

		// 문제 1
		// z1이 x1과 y1사이에 있는지 확인

		int x1 = 15;
		int y1 = 20;
		int z1 = 17;

		if (!(x1 >= z1 && z1 >= y1) || !(y1 >= z1 && z1 >= x1)) {
			System.out.println("z1은 x1과 y1 사이에 있습니다.");
		} else {
			System.out.println("z1은 x1과 y1 사이에 없습니다.");
		}

		int x2 = 3;
		if (x2 % 2 == 0) {
			System.out.println(x2 + "는 짝수");
		} else {
			System.out.println(x2 + "는 홀수");
		}

		// 문제 2
		// 오늘 온도가 영하인지 영상인지, 만약 영하라면 온도를 출력

		int yt = -3; // 어제 온도
		int t = 5; // 오늘 온도

		// math 함수를 사용한 사례
		if (t > 0) {
			System.out.println("오늘 온도는 영상" + t + "입니다.");
			if (yt > t) {
				System.out.println("어제보다 온다가 낮습니다.");
			} else {
				System.out.println("어제보다 온도가 높습니다.");
			}
		} else {
			System.out.println("오늘 온도는 영하" + t + "입니다.");
			if (yt > t) {
				System.out.println("어제보다 온다가 낮습니다.");
			} else {
				System.out.println("어제보다 온도가 높습니다.");
			}
		}
		System.out.println("어제보다 온도가" + Math.abs(t - yt) + ((t - yt) > 0 ? "높습니다." : "낮습니다."));
		
		// 3항 연산자를 사용할 사례
		if (t > 0) {
			System.out.println("오늘 온도는 영상" + t + "입니다.");
			if (yt > t) {
				System.out.println("어제보다 온다가 낮습니다.");
			} else {
				System.out.println("어제보다 온도가 높습니다.");
			}
		} else {
			System.out.println("오늘 온도는 영하" + t + "입니다.");
			if (yt > t) {
				System.out.println("어제보다 온다가 낮습니다.");
			} else {
				System.out.println("어제보다 온도가 높습니다.");
			}
		}
		System.out.println("어제보다 온도가" + ((t - yt > 0) ? (t - yt) : (yt - t)) + ((t - yt) > 0 ? "높습니다." : "낮습니다."));

		// 문제 3
		// "입력한 수는 100보다 큰/작은 수이며,
		// 양수이고 홀수입니다.

		System.out.println("숫자를 기입해주세요.");

		Scanner scan1 = new Scanner(System.in);
		int num = scan1.nextInt();

		if (num > 100) {
			System.out.println("입력한 수는 100보다 큰 수입니다.");
			System.out.println("양수입니다.");
		} else {
			System.out.println("입력한 수는 100보다 작은 수입니다.");
			if (num > 0) {
				System.out.println("양수입니다.");
			} else {
				System.out.println("음수입니다.");
			}
		}
		if (num % 2 == 0) {
			System.out.println("짝수입니다.");
		} else {
			System.out.println("홀수입니다.");
		}

		// 문제 4
		// a와 b 두 수가 있을 때 둘 중에 큰 값 출력

		System.out.println("a값을 기입해주세요.");

		Scanner scan2 = new Scanner(System.in);
		int a = scan2.nextInt();

		System.out.println("b값을 기입해주세요.");

		int b = scan2.nextInt();

		if (a > b) {
			System.out.println("a가 큰 값으로" + a + "입니다.");
		} else {
			System.out.println("b가 큰 값으로" + b + "입니다.");
		}

		// 문제 5
		// 숫자가 1일 때 2일 때 3일 때 다른 수일 때 그외로 출력

		System.out.println("숫자를 기입해주세요.");

		Scanner scan3 = new Scanner(System.in);
		int num1 = scan3.nextInt();

		if (num1 == 1) {
			System.out.println("기입된 값은 1입니다.");
		} else if (num1 == 2) {
			System.out.println("기입된 값은 2입니다.");
		} else if (num1 == 3) {
			System.out.println("기입된 값은 3입니다.");
		} else {
			System.out.println("기입된 값은 그외입니다.");
		}

		// 문제 6
		// 월을 입력 받고 월에 따라서 4계절을 출력

		System.out.println("월을 기입해주세요.");

		Scanner scan4 = new Scanner(System.in);
		int mon = scan4.nextInt();

		if (5 >= mon && mon >= 3) {
			System.out.println("지금은 봄입니다.");
		} else if (8 >= mon && mon >= 6) {
			System.out.println("지금은 여름입니다.");
		} else if (11 >= mon && mon >= 9) {
			System.out.println("지금은 가을입니다.");
		} else {
			System.out.println("지금은 겨울입니다.");
		}

		// 어려운 문제
		// 두 자리 정수가 10의 자리와 1의 자리가 같은지 판단해보세요

		System.out.println("2자리 정수를 기입해주세요.");

		Scanner scan5 = new Scanner(System.in);
		int na = scan5.nextInt();
		int na1 = (na / 10) * 10;
		int na2 = na - na1;
		int na3 = (na1 / 10);

		if (na >= 100 || 10 > na) {
			System.out.println("2자리 정수 뜻 모르냐?");
		} else if (na3 == na2) {
			System.out.println("10과 1의 자리는 동일한 숫자입니다.");
		} else {
			System.out.println("10과 1의 자리는 다른 숫자입니다.");
		}

		// 어려운 문제 2
		// 사각형의 한쪽 모서리: (10, 20)
		// 다른쪽 모서리: (90, 100)
		// 새로운 점 xc와 yc가 사각형에 포함되는가?
		
		System.out.println("xc의 값을 기입하세요");
		
		Scanner scan6 = new Scanner(System.in);
		int xc = scan6.nextInt();
		
		System.out.println("xy의 값을 기입하세요");

		int yc = scan6.nextInt();
		
		if ( (90 >= xc && xc >= 10) && (100 >= yc && yc >= 20)) {
			System.out.println("범위 내 포함됩니다.");
		} else {
			System.out.println("xc는 범위 밖입니다.");
		}
		

		
	}
}

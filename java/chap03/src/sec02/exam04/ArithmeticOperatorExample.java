package sec02.exam04;

public class ArithmeticOperatorExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		boolean a = false;
		System.out.println("a: " + a);
		
		a = !a;
		System.out.println("a: " + a);

		double b = 7.0;
		System.out.println(b / 3);
		//System.out.println(b / 0); // double을 0으로 나누면 무한대가 나옴
		//System.out.println(3 / 0); // int를 0으로 나누면 오류 발생
		
		int c = 7777777;
		int d = 5;
		System.out.println("몫: " + (c / d));
		System.out.println("나머지: " + (c % d));
		
		// surprise quize
		// 1만원으로 4500원짜리 커피를 몇 잔 마실 수 있는가?
		
		int m = 10000;
		int co = 4500;
		
		System.out.println("구매가능 잔: " + m / co);
		System.out.println("거스름돈: " + m % co);
		
		// 조금 어려울 문제
		// 올리브영에서 전품목 15% 세일
		// 1. 꿀홍차 5000원을 샀을 때 얼마를 내야하는가?
		// 2. 꿀홍차와 립스틱 30000원을 샀을 때 얼마를 내야하는가?
		
		int kara = 5000;
		int lip = 30000;
		double sale = 0.15;
		
		double karasale = kara * (1 - sale);
		double total = (kara + lip) * (1 - sale);
		
		System.out.println(karasale);
		System.out.println(total);
		
		// 7234원이 있다.
		// 5000원짜리, 1000원짜리, 100원짜리, 50원짜리, 10원짜리, 1원짜리
		// 각각 최대 몇 개씩 줄 수 있는지?
		
		int mo = 7234;
		int ft = 5000;
		int ot = 1000;
		int fh = 500;
		int oh = 100;
		int fif = 50;
		int ten = 10;
		int one = 1;
		
		int ftc = mo / ft;
		int otc = (mo - (ftc * ft)) / ot;
		int fhc = (mo - (ftc * ft)-(otc * ot)) / fh;
		int ohc = (mo - (ftc * ft)-(fhc * fh) - (otc * ot)) / oh;
		int fifc = (mo - (ftc * ft)-(fhc * fh)-(otc * ot) - (ohc * oh)) / fif;
		int tenc = (mo - (ftc * ft)-(fhc * fh)-(otc * ot) - (ohc * oh) - (fifc * fif)) / ten;
		int onec = (mo - (ftc * ft)-(fhc * fh)-(otc * ot) - (ohc * oh) - (fifc * fif) - (tenc * ten)) / one;
		
		System.out.println("5000원은" + ftc + ",\n" + "1000원은" + otc +
				",\n" + "500원은" + fhc + ",\n" + "100원은" + ohc + ",\n" + "50원은" + fifc + ",\n" +
				"10원은" + tenc + ",\n" + "1원은" + onec);
	
		int indian = 48000;
		int count = 3;
		int pay = indian / count;
		
		System.out.println(pay);
		
		char c1 = 'A';
		c1 = (char)(c1 + 1);
		int c2 = c1 + 1;
		
		System.out.println(c1);
		System.out.println(c2);
		
		System.out.println(""+3+3.0);
		
		String c3 = "100";
		int c4 = Integer.parseInt(c3);
		
		System.out.println(c4);
		
		boolean bool = 3 > 5;
		boolean bool2 = !bool;
		
		System.out.println(bool2);
		
		System.out.println('C' < 'J');
		//System.out.println("ab" < "ac"); //String은 비교 대상이 안됨
		
		System.out.println("소수점");
		
		String ss = "최수완";
		String sss = "최수완";
		System.out.println(ss == sss);// 글씨 비교는 == 사용금지
		
		System.out.println(ss.equals(sss));// 문자는 equals를 통해 비교해야함
		System.out.println("최수완".equals(sss));
		System.out.println(!ss.equals(sss));
		
		int i1 = 87;
		System.out.println(i1 +"은 B학점인가?");
		System.out.println( i1 >= 80 && i1 < 90);
		
		System.out.println(10|1);
		
		int k1 = 7;
		int k2 = 15;
		int k3 = 17;
		
		System.out.println( k3 > k1 && k3 > k2);

		int m1 = 5;
		m1 += 2;
		
		System.out.println(m1);
		
		int n1 = 10;
		n1 += 1;
		n1++;
		
		System.out.println(n1);
		
		int n2 = 10;
		
		System.out.println("n2: " + (n2++)); // ++가 뒤에 오면 +1은 다음 단계에서 작용
		System.out.println("n2: " + (++n2));
		System.out.println("n2: " + n2);
		
		int z = 1;
		System.out.println(z++ + ++z);
		
		int z1 = z++;
		int z2 = 1 + z;
		System.out.println("z: " + z);
		
		int score = 95;
		char grade = (score > 90) ? 'A' : 'B';
		
		System.out.println(grade);
		
		//int var1 = 5;
		//int var2 = 2;
		//double var3 = var1 / var2; //계산할 때 int로 치환되기에 (double)을 붙여서
		//int var4 = (int) (var3 * var2);
		//System.out.println(var4);
		
		int var1 = 5;
		int var2 = 2;
		double var3 = (double) var1 / var2; //계산할 때 int로 치환되기에 (double)을 붙여서
		int var4 = (int) (var3 * var2);
		System.out.println(var4);
		
		int value = 356;
		System.out.println((value / 100) * 100);
		
		//깜짝퀴즈
		// v1 / v2의 값을 소수점 3번째 자리까지 출력
		double v1 = 3200;
		int v2 = 457;
		double v3 = v1 / v2;
		int v4 = (int) (v3 * 1000);
		
		System.out.println((double) v4 / 1000);
		
	}

}

package sec01.exam02;

public class VarTypeExam {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		byte b = 127;
		//b = 128;
		
		//byte b1 = 100;
		//byte b2 = 80;
		//b = b1+b2;
		
		// java에서 숫자는 기본적으로 int로 인식하여 기입
		// 만약 int의 최대치인 21억을 넘어가는 숫자를 넣을 경우 끝에 L을 넣어 LONG타입으로 인식시켜줘야 함
		long l1 = 10;
		long l2 = 20l;
		//long l3 = 10000000000;
		long l4 = 10000000000l;
		
		char c1 = 'A';
		System.out.println("c1 : " + c1);
		
		char c2 = 67;
		System.out.println("c2 : " + c2);
		
		System.out.println("c2-c1 : " + (c2-c1));
		
		char c3 = 'a';
		System.out.println("c3-c1 : " + (c3-c1));
		
		char c4 = '\"';
		//System.out.println("c2 + c3-c1 : " + (c2+(c3-c1)));
		System.out.println(c4);
		
		String s1 = "최수완";
		System.out.println("s1 : " + s1);
				
		String s2 = "\"역슬래쉬 뒤의 문자는 특수기호가 아니라 또다른 기능을 의미\"";
		System.out.println("s2 : " + s2);
		
		String s3 = "번호\t이름";
		String s4 = "번호2\t이름";
		
		System.out.println("s3 : " + s3);
		System.out.println("s4 : " + s4);
		
		System.out.print(1);
		System.out.print(2);
		System.out.println(3);
		
		//double은 소수점 16번째 자리까지 정확함
		double d = 0.123456789123456789;
		System.out.println("d : " + d);
		
		//float은 소수점 7번째 자리까지 정확함
		float f = 0.123456789123456789f;
		System.out.println("f : " + f);
	}
}
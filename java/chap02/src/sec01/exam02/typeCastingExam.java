package sec01.exam02;

public class typeCastingExam {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int a = 10 + (2 * 3); // 우선선위 연산자 ()
		long b = (long)a; // 형변환 연산자 ()
		
		long c = a;
		
		long d = 300000000l;
		int e = (int)d;
		System.out.println(e);
		
		int g = 3;
		long h = 4l;
		long i = (long)g + h;
		
		long i2 = g + h;
				
		double j = 3.3;
		double k = (double)g + j;
		double k2 = g + j;
		System.out.println("(double)g : " + (double)g);
		
		System.out.println("j : " + (int)j);
		int jj = (int) j;
		System.out.println("jj : " + jj);
		
		double total = 4.3;
		int pe = 4;
		double div = total/pe;
		System.out.println("1인당 지불 가격: " + (int)div);
		
		int price = (int)div;
		System.out.println("1인당 지불 가격: " + price);
		
		int o = 407;
		int p = 30;
		
		System.out.println("o :" + o);
		System.out.println("p :" + p);
		
		//int q = o;
		//o = p;
		//p = q;
				
		//System.out.println("o :" + o);
		//System.out.println("p :" + p);
		
		double oo = o / p;
		double op = o % p;
		double pp = p % o;
		double pc = (double) o / p;
		
		o = (int) (oo + op);
		p = (int) (pp * pc);
		
		System.out.println("o :" + o);
		System.out.println("p :" + p);
		
		String w = "수박";
		String bw = "볼링공";
		
		System.out.println("w :" + w);
		System.out.println("bw :" + bw);
		
		String ts = w;
		w = bw;
		bw = ts;
		
		System.out.println("w :" + w);
		System.out.println("bw :" + bw);
		
		short s = 1000;
		short sh = 35;
		
		double sho = s / sh;
		double shor = (double) s / sh; //short에 타입이 저장되었으나 계산될 때 다시 int로 변환
		
		System.out.println(sho);
		System.out.println(shor);
		
		double ip = 4.3;
		double ipp = 2;
		
		double ipipp = ipp / ip;
		
		System.out.println(ipipp);
	}

}

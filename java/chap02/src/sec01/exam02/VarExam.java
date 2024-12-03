package sec01.exam02;

public class VarExam {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int hour = 3;
		int minute = 5;
		System.out.println(hour + "시간" + minute + "분");
		
		int totalMinute = (hour * 60) + minute;
		System.out.println(totalMinute);
		
		int totalSecon = totalMinute * 60;
		System.out.println(totalSecon);
		
		int x = 10;
		int y = 20;
		System.out.println("x의 값은:"+x);
		System.out.println("x+y의 값은:"+(x+y));
		
		//System.out.println("j의 값은:"+j);
		int j = 1;
		System.out.println("j의 값은:"+j);
		{
			System.out.println("j의 값은:"+j);	
		}
		{
			int i = 0;
			System.out.println("i의 값은:"+i);
		}
		//System.out.println("i의 값은:"+i);
	}

}

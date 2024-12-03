package sec01.exam01;

import java.util.Scanner;

public class Question {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
//		// 1 ~ 20까지 짝수만 출력하세요
//		
//		for ( int i = 2 ; 20 >= i ; i = i + 2 ) {
//			System.out.println("i의 짝수는 " + i);
//		}
//		
//		// 1 ~ 20까지 3의 배수만 출력하싱오
//		
//		for ( int i = 3 ; 20 >= i ; i += 3 ) {
//			System.out.println("i의 3배수는 " + i);
//		}
//		
//		// 1 ~ 5까지 모두 출력하면서 옆에 홀수인지 짝수인지 같이 출력하세요
//		
//		for ( int i = 1 ; 5 >= i ; i++) {
//			System.out.println( i + ":" + (( i % 2 ) == 0 ? ("짝수") : ("홀수")) );
//		}
//		
//		// 1 ~ 20까지 만들어 놓은 홀수의 합을 구하시오
//		
//		int i2 = 0;
//		for ( int i3 = 1 ; 20 >= i3 ; i3 += 2 ) {
//			System.out.println("홀수는 " + i3);
//			i2 += i3;
//		} System.out.println("20내의 홀수의 합은 " + i2);
//		
//		// 1 ~ 20까지 홀수의 개수를 구하시오
//		
//		int n = 0;
//		for ( int p = 1 ; 20 >= p ; p += 2 ) {
//			n += 1;
//		} System.out.println("1 ~ 20까지의 수중 홀수의 개수는 " + n);
//		
//		// 1 ~ 10까지 옆으로 3개씩 출력
//		
//		for ( int o = 1 ; 10 >= o ; o++ ) {
//			if ( o % 3 == 0 ) {
//				System.out.println(o);
//			} else System.out.print(o + " ");
//		}
//		
//		System.out.println("");
//		
//		// 구구단 2단 출력
//		
//		for ( int j = 2 ; 9 >= j ; j++ ) {
//			for ( int i = 1 ; 10 > i ; i++ ) {
//				System.out.println(j + "x" + i + "=" + (j*i));
//			} System.out.println();
//		}
//		
//		// 369에 * 표시
//		
//		for ( int k = 1 ; 99 >= k ; k++ ) {
//			  int k1 = 0;
//			  int k2 = 0;
//			
//			if ( k > 9 ) {
//				k2 = ((k / 10) * 10) / 10;
//				k1 = k % 10;
//			}
//				
//			if ( ( k2 == k1 ) && ( (k2 == 3 || k2 == 6 || k2 == 9) || (k1 == 3 || k1 == 6 || k1 == 9) ) ) {
//				System.out.println(k + "**");
//			} else if ( (k == 3 || k == 6 || k ==9 ) || (k2 == 3 || k2 == 6 || k2 == 9) || (k1 == 3 || k1 == 6 || k1 == 9)) {
//				System.out.println(k + "*");
//			} else { System.out.println(k);
//			}
//		}
//		
//		int i6 = 0;
//		int i5 = 0;
//		for ( i5 = 1; 10 >= i5 ; i5++) {
//			i6 = i5 + 1;
//			i5 += 1;
//		} System.out.println(i5);
//		
//		// 1 ~ n까지 짝수의 합을 수하세요
//		
//		Scanner sc = new Scanner(System.in);
//		int nn = sc.nextInt();
//		
//		int sm = 0;
//		for ( int i = 1 ; nn >= i ; i++ ) {
//			if ( i % 2 == 0 ) {
//				sm += i;
//			} 
//		} System.out.println(sm);
//		
//		sc.close();
//		
//		for ( int j = 2 ; 10 > j ; j++ ) {
//			for ( int i = 1 ; 9 >= i ; i++ ) {
//				if ( i == 9 ) {
//					System.out.println(j + "x" + i + "=" + ( j * i ) + " ");
//				} else { System.out.print(j + "x" + i + "=" + ( j * i ) + " ");
//			}
//		} 
//	}
//		System.out.println();
//		
//		for ( int j = 1 ; 9 >= j ; j++ ) {
//			for ( int i = 2 ; 10 > i ; i++ ) {
//				if ( i == 9 ) {
//					System.out.println(i + "x" + j + "=" + ( j * i ) + " ");
//				} else { System.out.print(i + "x" + j + "=" + ( j * i ) + " ");
//			}
//		} 
//	}
//		System.out.println();
//		
//		for ( int j = 1 ; 9 >= j ; j++ ) {
//			for ( int i = 2 ; 4 > i; i++ ) {
//				if ( i % 2 == 1 ) {
//					System.out.println(i + "x" + j + "=" + ( j * i ) + " ");
//				} else { System.out.print(i + "x" + j + "=" + ( j * i ) + " ");
//			}
//		} 
//	}
//		for ( int j = 1 ; 9 >= j ; j++ ) {
//			for ( int i = 2 ; 6 > i; i++ ) {
//				if ( ( ( i % 2 == 1 ) && ( i > 3 ) ) ) {
//					System.out.println(i + "x" + j + "=" + ( j * i ) + " ");
//				} else if ( ( ( i % 2 == 0 ) && ( i > 3 ) ) ) { System.out.print(i + "x" + j + "=" + ( j * i ) + " ");
//			}
//		} 
//	}  for ( int j = 1 ; 9 >= j ; j++ ) {
//		for ( int i = 2 ; 8 > i; i++ ) {
//			if ( ( ( i % 2 == 1 ) && ( i > 5 ) ) ) {
//				System.out.println(i + "x" + j + "=" + ( j * i ) + " ");
//			} else if ( ( ( i % 2 == 0 ) && ( i > 5 ) ) ) { System.out.print(i + "x" + j + "=" + ( j * i ) + " ");
//		}
//	} 
//}	   for ( int j = 1 ; 9 >= j ; j++ ) {
//	for ( int i = 2 ; 10 > i; i++ ) {
//		if ( ( ( i % 2 == 1 ) && ( i > 7 ) ) ) {
//			System.out.println(i + "x" + j + "=" + ( j * i ) + " ");
//		} else if ( ( ( i % 2 == 0 ) && ( i > 7 ) ) ) { System.out.print(i + "x" + j + "=" + ( j * i ) + " ");
//	}
//} 
//}
//System.out.println();
//
//		for ( int j = 2 ; 9 > j ; j += 2 ) {
//			for ( int i = 1 ; 9 >= i; i++ ) {
//				System.out.print(j + "x" + i + "=" + (j*i) + " ");
//				System.out.println(( j + 1 ) + "x" + i + "=" + ((j+1)*i));
//			}
//		}
//			
//System.out.println("--규칙성 적용--");
//		for ( int k = 4 ; 10 >= k ; k += 2) {
//			for ( int j = 1 ; 9 >= j ; j += 1 ) {
//				for ( int i = k-2 ; k > i && i > k-4 ; i++ ) {
//					if ( (i % 2 == 1) ) {
//						System.out.println(i + "x" + j + "=" + ( j * i ) + " ");
//					} else { 
//						System.out.print(i + "x" + j + "=" + ( j * i ) + " ");
//					}	
//				}	 
//			} System.out.println();
//		}
		
		// Q.1
		String st = "+";
		for (int i = 0 ; i <= 5 ; i++) {
		    System.out.println(st);
		}
		
		System.out.println("절취선");
		
		// Q.4
		String st1 = "+";
		String st2 = "";
		for ( int i = 1 ; 5 >= i ; i++ ) {
			st2 += st1;
			System.out.println(st2);
		}
		
		// Q.5
		String st3 = "+";
		String st4 = "";
		String st5 = "_";
		for ( int i = 1 ; 5 >= i ; i++ ) {
			st4 += st3;
			System.out.print(st4);
			for ( int e = 5 - i ; 5 >= e && e > 0; e-- ) {
				System.out.print(st5);
			} System.out.println();
		}
		
		// Q.6
		
		String st6 = "*";
		String st7 = "_";
		
		for ( int i = 5 ; 5 >= i && i > 0; i-- ) {
			int e = i - 1;
			for ( int e1 = e ; e >= e1 && e1 > 0 ; e1-- ) {
				System.out.print(st7);
			}
			for ( int f = 1 ;  5 - e >= f ; f++) {
				System.out.print(st6);
			} System.out.println();
		} 
		
		System.out.println("트리만들기");
		
		// Q.9

		String chris = "*";
		String mas = "_";
		int e = 0;
		
		Scanner check = new Scanner(System.in);
		int che = check.nextInt();
		
		for ( int i = che ; i > 0 ; i--) {
			for ( int e1 = ( i - 1 ) ; e1 > 0 ; e1--) {
				System.out.print(mas);
			}
			for ( int f = 1 + ( e * 1 ) + e ; f > 0 ; f-- ) {
				System.out.print(chris);
			}
			e += 1;
			System.out.println();
		}
	

	}
}


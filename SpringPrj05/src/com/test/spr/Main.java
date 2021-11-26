/*==========================================
   Main.java
   - main() 메소드가 포함된 테스트 클래스
 ==========================================*/

package com.test.spr;

public class Main
{
	public static void main(String[] args)
	{
		// 주 업무 실행을 할 수 있는 객체 준비
		// 인터페이스 변수 = new 인터페이스구현클래스();
		// List list = new ArrayList();
		Calculator cal = new CalculatorImpl();
		
		// 주 업무 실행에 대한 테스트
		int add = cal.add(10, 20);
		System.out.println(add);
		
		int sub = cal.sub(10, 20);
		System.out.println(sub);
		
		int multi = cal.multi(10, 20);
		System.out.println(multi);
		
		int div = cal.div(10, 20);
		System.out.println(div);
		
		//@ 콘솔창의 빨간색 글씨, 보조 업무고
		//@ 콘솔창의 까만 글씨, 주 업무임
	}

}

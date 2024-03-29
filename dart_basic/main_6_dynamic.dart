/*
var VS dynamic
- var 와 dynamic 모두 유연한 타입시스템 제공. 그러나 중요한 차이 있음
- var
1) 컴파일러가 변수 타입을 추론하는 키워드. 변수 선언 시 초기화되는 값의 타입에 따라 변수 타입이 결정됨
2) 추론된 타입은 컴파일 타임에 결정되므로 실행 중(runtime) 에 타입이 변경되지 않음
3) 컴파일러가 추론 불가한 경우 컴파일러 오류가 발생

- dynamic
1) 모든 타입의 가질 수 있는 특별한 Dart 타입
2) 컴파일러가 변수의 타입을 체크하지 않고 모든 타입의 값을 허용함
3) 동적으로 타입이 결정되므로 변수에 어떤 종류의 값이든 할당 가능하며
4) 실행 중(runtime) 에 타입이 변경될 수 있음

- 차이점
1) 타입 추론 vs 동적 타이핑
  - var 는 컴파일러가 변수의 타입을 추론하고 해당 타입으로 강제함
  - dynamic 은 변수가 모든 타입의 값을 가질 수 있으며 runtime 에 동적으로 타입 결정 및 변경 가능
2) 타입 안정성
  - var 는 컴파일러가 변수를 추론하므로 초기화 값의 타입에 따라 타입이 정적으로(static) 결정됨
  - dynamic 은 컴파일러가 타입을 검사하지 않으므로 타입 안정성이 없음
3) 컴파일 타임 오류
  - var 는 추론할 수 없는 경우 컴파일러 에러를 일으킴
  - dynamic 은 모든 것을 허용하므로 컴퍼일러 에러를 발생시키지 않음

- 정리 
1) 대부분의 경우, 코드를 명시적이고 안정적으로 작성하기 위해 var 키워드 보다는 명시적 타입을 사용하는 것이 좋음
2) 일부 상황에서 dynamic 키워드를 사용해야 할 경우가 있음(동적으로 타입이 결정돼야 하는 경우 or 타입이 확실히 알려지지 않은 경우)
*/

void main() {
  var num = 1;
  //num = '1'; // type 변경 불가능

  dynamic num2 = 3;
  num2 = '3'; // type 변경 가능
  print(num2);

  num2 = 4; // 다시 int 타입으로 변경
  print(num2);

  num2 = [1, 2, 3, 4]; // List 타입으로 변경
  print(num2);
}

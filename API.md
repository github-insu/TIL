# API(Application Programming Interface)  
- **응용 프로그래밍 인터페이스**을 의미합니다.

> 좀 더 쉽게 풀어서 설명해보자면
> 어플리케이션의 내부 동작을 전부 알지는 못하더라도 지정된 형식으로 요청과 응답을 할 수 있도록 연결하는 것을 의미합니다.
> 예를 들면 TV의 내부 동작을 알진 못하더라도 리모컨의 어떤 버튼을 누르면 어떤 동작을 수행하는지 알고 있는 것으로 이해하시면 편할거 같습니다.


# REST(Representational State Transfer)
- **자원의 표현에 의한 상태 전달**을 의미합니다.

> 자원(resource)란 해당 소프트웨어가 관리하는 모든 것을 의미합니다. : 문서, 그림, 데이터 등등  
> 자원의 표현이란 자원을 표현하기 위한 이름입니다. : DB의 상품 정보가 자원일 때, 'product'가 자원의 표현이 됩니다.  
> 상태(정보)전달은 데이터 요청시 자원의 상태를 전달하는 것을 의미합니다. 주로 JSON, XML형식으로 전달합니다.

- REST는 네트워크 상에서 Client와 Server 사이의 통신 방식 중 하나라고 이해하시면 편합니다.

- REST의 구성 요소
  - 자원(Resource) : 자원은 Server에 존재하며 Client는 URI를 이용하여 자원의 조작을 Server에 요청합니다.
  - 행위(Verbe) : HTTP 프로토콜 Method를 사용합니다.
  - 표현(Representation of Resource) : Client가 자원의 조작을 요청하면 Server는 이에 적절한 응답(Representation)을 보냅니다. 이때 Representation은 JSON,XML,TEXT,RSS등의 자원으로 표현될 수 있습니다.

# REST API 설계의 규칙
1. URL에는 명사만 사용합니다. (동사는 사용하지 않습니다.)  
2. 관계방식으로 URL을 설계합니다.  
```python
# 영화 A에 나오는 배우들에 대한 정보를 받고 싶다면?
good : https://.../movies/A/actors
bad  : https://.../actors?movie=A
```  
3. 필터링은 Query Parameter를 사용합니다.
```python
# 영화 A에 나오는 배우들 중에서 30세인 배우들에 대해서만 알고 싶다면?
good : https://.../movies/A/actors?age=30
bad  : https://.../movies/A/actors/age=30
```  
4. CRUD에 맞춰서 HTTP Method를 활용합니다.
> C(Create) : 생성 ⇒ POST  
> R(Read)   : 조회 ⇒ GET  
> U(Update) : 수정 ⇒ PATCH or PUT  
> D(Delete) : 삭제 ⇒ DELETE  

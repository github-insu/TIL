# REST_API

## REST API를 제대로 이해하기 위한 논문
https://www.ics.uci.edu/~fielding/pubs/dissertation/top.htm  

---  

## 용어 정의  
1. REST(Representational State Transfer)  
: **자원의 표현에 의한 상태 전달**을 의미합니다.  
  - 1-1. 자원 : 해당 소프트웨어가 관리하는 모든 것을 의미합니다.  
    > 자원은 개념적 요소라는 느낌으로 이해했습니다.  
  - 1-2. 표현 : 일련의 바이트와 해당 바이트를 설명하는 표현 메타데이터입니다.  
    > 자원을 Client에게 어떤 형식 & 방식으로 보여줄것 인가와 관련된 데이터의 느낌으로 이해했습니다.  
    > 자원이라는 추상적 개념을 구체화 시킨 느낌으로 이해했습니다.  
  - 1-3. 상태(정보) 전달 : 데이터가 요청되어지는 시점에서 자원의 상태(정보)를 전달하는 것을 의미합니다.  
    > 자원(전달하고싶은개념)의 표현(형식으로 구체화)에 의한 정보를 전송하는 개념으로 이해했습니다.  

2. API(Application Programming Interface)
: **응용프로그래밍 인터페이스**를 의미합니다.
> 서로 다른 응용프로그램간에 소통이 필요합니다. 이때 서로 다른 말을 사용한다면 소통이 이루어지기 힘들겠죠? 이때 apple=사과 라는 공통된 약속이 있다면 이해를 할 수 있습니다. "apple=사과" 이것이 API라고 볼 수 있습니다.  

> TV로 예시를 들어보겠습니다.
> TV를 보려고 할 때 TV의 내부 작동 원리까지 알 필요가 없습니다. **리모컨의 전원버튼 누름 -> TV의 작동**이 이루어집니다. 이때 
> *리모컨의 전원버튼 누름 -> TV의 작동*이 API입니다. 물론 한글로 안쓰여있고 코드로 표현이 되어있을 겁니다.

3. REST API(REST + API)  
: **REST API는 REST 아키텍처 스타일에 부합하는 API**를 의미합니다.  
> REST는 어떠한 조건들을 일컫는 말이고 그 조건들을 만족시키는 API라고 이해했습니다.

4. RESTful API  
: **REST의 설계 규칙을 잘 지켜서 설계된 API**를 의미합니다.  
> REST API는 원칙적으로 REST를 만족시키는 API이지만 현실적으로 REST한 조건들을 모두 충족시키지 못해도 REST API라고 불리고 있습니다. 그렇기에 REST의 기본원칙을 성실히 지킨 아키텍처 스타일의 API를 RESTful API라고 이해했습니다.  
> REST API 보다 더 REST한 조건(성질)들을 지킨 API = RESTful API  

---

## REST 스타일을 구성하는 특정 제약 조건
1. Starting with the Null Style  
- null스타일은 구성 요소 간에 구별되는 경계가 없는 시스템을 의미합니다.  
2. Client-Server  
- 클라이언트&서버(관심사 분리) 제약조건을 의미합니다.  
3. Stateless  
- 클라이언트&서버(상호작용) 제약조건을 의미합니다.  
4. Cache  
- 네트워크 효율성을 향상시키 위한 캐시 제약조건을 의미합니다.  
5. Uniform Interface  
- 구성 요소간의 균일한 인터페이스에 대한 강조를 의미합니다.  
    - identification of resources  
    - manipulation of resources throught representations  
    - self-descriptive messages  
    - HATEOAS(hypermedia as the engine of application state)  
6. Layered System  
- 인터넷 규모 요구 사항에 대한 동작을 더욱 개선하기 위해 계층화된 시스템 제약 조건을 의미합니다.  
7. Code-On-Demand  
- applets 또는 scipt형식으로 코드를 다운로드 또는 실행하여 Client의 기능을 확장할 수 있음을 의미합니다.  

---

## REST API를 위한 일반적 규칙  
1. **명사**를 사용합니다.(동사x)  
    - 명사로 표현을 하고 기능적인 측면은 **HTTP METHOD**를 사용합니다.  
2. 계층관계 표현은 **'/'(슬래시)기호**를 사용합니다. cf)마지막 문자로 '/'는 사용하지 않습니다.
3. **'_'(언더스코어)기호** (x) - 일부 화면에서 가려질 수 있기 때문에 혼란을 줄 수 있습니다.
4. **'-'(하이픈)기호** (o) - 가독성을 위해 하이픈을 사용합니다.
5. Schem과 HOST를 제외한 영역에서는 **대소문자가 구별**되기 때문에 **소문자를 사용**합니다.
6. 필터 표현은 **쿼리 파라미터**를 사용합니다.  
    예시 ```python  
    http://api.example.com/toy/product?age=10
    ```  
7. 마지막에 **확장자명**을 사용하지 않습니다.
  ```python
  http://api.example.com/index.html (x)
  http://api.example.com/index      (o)
  ```

---

## HTTP 상태 코드  

> 100 : Continue  
> 이 임시적인 응답은 지금까지의 상태가 괜찮으며 Client가 계속해서 요청을 하거나 이미 요청을 완료한 경우에는 무시해도 괜찮음을 알려줍니다.  


> 200 : OK  
> 요청이 성공적으로 완료되었습니다.  
> 201 : Created  
> Client의 요청(POST, PUT)이 성공적으로 완료되었으며 그 결과 새로운 리소스가 생성되었음을 알려줍니다.  


> 301 : Moved Permanently  
> Client가 요청한 리소스의 URI가 변경되었음을 알려줍니다.  


> 400 : Bad Request  
> Client의 요청이 잘못된 문법으로 인하여 서버가 요청을 이해할 수 없음을 의미합니다.  
> 401 : Unauthorized  
> 예를 들면 Client가 로그인을 하지 않은 상태에서 로그인 된 정보를 요청한 경우 발생합니다. Client는 요청한 응답을 받기 위해서 반드시 스스로 인증해야합니다.  
> 403 : Forbidden  
> Client는 콘텐츠에 접근할 구너리를 가지고 있지 않습니다. 401 http_code와는 다르게 Client가 누구인지 알고 있습니다.  
> 404 : Not Found  
> 서버는 요청받은 리소스를 찾을 수 없음을 의미합니다. 브라우저에서는 알려지지 않은 URL을 의미합니다.  


> 500 : Internal Server Error  
> 서버가 처리 방법을 모르는 상황이 발생했음을 의미합니다.  

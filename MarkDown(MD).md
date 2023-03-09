# **MARK DOWN file**
- 마크 다운 문서 파일로 사용되는 텍스트 파일입니다.


### **MarkUp vs MarkDown vs 프로그래밍 언어**
1. MarkUp  
: 마크업 언어(Markup Language)는 태그 등을 이용하여 "문서가 화면에 표시되는 형식을 나타내거나 데이터의 논리적인 구조를 명시하기 위한 규칙들을 정의한 언어"의 일종입니다. 데이터를 기술한 언어라는 점에서 프로그래밍 언어와는 차이가 있습니다.  
-> 문서가 화면에 표시되는 형식/논리적 구조를 명시!가 포인트 입니다.  

2. 프로그래밍 언어 : "시스템을 구동"하기 위한 "소프트웨어"를 만드는 언어입니다.  

3. MarkDown  
: 마크 다운(Mark Down)은 일반 텍스트 기반의 경량 마크업 언어입니다. 일반 텍스트로 서식이 있는 문서를 작성하는데 사용되며, 일반 마크업 언어에 비해 문법이 쉽고 간단한 것이 특징입니다.


### **MarkDown 문법** 
MarkDown에서 사용하는 문법은 아래와 같습니다.
```python
헤더(header)
강조 / 인용상자(Blockquotes) / 인라인 코드 / 코드블록 / 목록(List) / 체크박스 / 테이블
하이퍼링크 / 이미지 / 배지(badge) / 이모지(EMOJI)-아이콘 /
문단구분 / 수평선
```  



# **그럼 지금부터 MarkDown의 문법에 대해 좀 더 자세히 알아보겠습니다.**

### **헤더**
```python
헤더 크기 조절  
# 헤더 크기 (h1)  
## 헤더 크기 (h2)  
### 헤더 크기 (h3)  
#### 헤더 크기 (h4)  
##### 헤더 크기 (h5)  
###### 헤더 크기 (h6)  
```

# 헤더 크기 (h1)  
## 헤더 크기 (h2)  
### 헤더 크기 (h3)  
#### 헤더 크기 (h4)  
##### 헤더 크기 (h5)  
###### 헤더 크기 (h6)  

---

### **강조**
```python
강조하고 싶은 앞,뒤에 '*','_','**','__'을 이용하여 강조
*안녕* _안녕1_ **안녕2** __안녕3__
```
*안녕* _안녕1_ **안녕2** __안녕3__

---

### **인용상자**
```python
문장 앞에 '>' 기호를 사용하면 인용상자가 적용
```
> 인용상자

---

### **인라인 코드**
```python
문단 중간에 `Code`를 넣을 수 있습니다.
```
예를 들어 `printf("hello world!");` 이런 식으로 들어갑니다.

---

### **코드블록**
> 해당 프로그래밍 언어의 구별 표시를 적용한 코드를 볼수 있습니다.
> ```python
> print('hello world!')
> ```
```python
print('hello world!')
```

---

### **목록(List)**
```python
* Item1
* Item2
    * Item2a
    * Item2b

Ordered
1. Item1
1. Item2
1. Item3
    1. Item3a
    1. Item3b
```
* Item1
* Item2
    * Item2a
    * Item2b

Ordered
1. Item1
1. Item2
1. Item3
    1. Item3a
    1. Item3b

---

### **체크박스**
```python
- [] 완료되지 않은 항목
- [x] 완료된 항목
- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> suppored
- [] 체크박스 문법은 목록형태의 지원이 필요합니다.
```
- [] 완료되지 않은 항목
- [x] 완료된 항목
- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> suppored
- [] 체크박스 문법은 목록형태의 지원이 필요

---

### **테이블**
```python
First Header | Second Header
------------ | --------------
Content 1 | Content 2
Content 3 | Content 4
```
First Header | Second Header
------------ | --------------
Content 1 | Content 2
Content 3 | Content 4

---

### **하이퍼링크**
```python
[MarkDown](https://github.com/github-insu/TIL/edit/main/MarkDown(MD).md)
```
[MarkDown](https://github.com/github-insu/TIL/edit/main/MarkDown(MD).md)

---

### **이미지**
```python
글자-url 이미지 연동
[Imgur](https://cdn.pixabay.com/photo/2023/01/22/16/45/nature-7736939_960_720.jpg)

url 이미지 임베드
![Imgur](https://cdn.pixabay.com/photo/2023/01/22/16/45/nature-7736939_960_720.jpg)

글자 - 내부용 이미지 연동
Format: [alt Text](./images/hamburg.jpg)

내부용 이미지 임베드
Format: ![alt Text](./images/hamburg.jpg)
```
글자-url 이미지 연동
[Imgur](https://cdn.pixabay.com/photo/2023/01/22/16/45/nature-7736939_960_720.jpg)

url 이미지 임베드
![Imgur](https://cdn.pixabay.com/photo/2023/01/22/16/45/nature-7736939_960_720.jpg)

글자 - 내부용 이미지 연동
Format: [alt Text](./images/hamburg.jpg)

내부용 이미지 임베드
Format: ![alt Text](./images/hamburg.jpg)

---

### **뱃지**
```python
[shields.io](https://shields.io/)에서 뱃지를 만들수 있습니다.
format1 : [글](https://img.shields.io/badge/<LABEL>-<MESSAGE>-<COLOR>)
format2 : [글](https://img.shields.io/static/v1?label=<LABEL>&message=<MESSAGE>&color=<COLOR>)

![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
```
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

---

### **이모지(EMOJI)-아이콘**
```python
:+1:      :(이모지이름):형태로 작성합니다.
```
:+1:

---

### **문단구분**
```python
문단을 구별하려면 한 개 이상의 빈 줄을 문단 사이에 삽입하거나, 줄의 마지막에 [Space Bar]를 두 번 이상 눌러 띄어쓰기를 해야 합니다.
```

---

### **수평선**
```python
---
***
___
```

---
***
___

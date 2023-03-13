# **open함수**  
- open(filename, [mode])는 **파일 객체**를 return 합니다.  

### 파일 생성하기  

1.  
```python
변수명 = open('파일이름.확장자', 'mode')  
변수명.close  
```  

2.  
```python
변수명 = open('경로', 'mode')  
변수명.close  
``` 

> **경로 표시 방법**
> 1. '/'슬래시  
> 2. '\\'역슬래시 2개 -> \n처럼 이스케이프 문자로 해석의 우려가 있습니다.  
> 3. r'경로\...' -> r(Raw String)을 사용합니다.  

> **mode**  
> w : 쓰기 모드 - 파일에 내용을 쓸 때 사용합니다. 
> a : 추가 모드 - 파일의 마지막에 새로운 내용을 추가 시킬 때 사용합니다.  
> r : 읽기 모드 - 파일을 읽기만 할 때 사용합니다.  
> b : 바이너리 모드로 파일을 열 때 사용합니다.  
> cf. b는 w,r,a와 함께 사용합니다. -> rb, wb, ab  

---  

### w모드  

```python
f = open('filename', 'w', encoding='utf-8')  
for i in range(1, 11):  
  data = "%d 번째 줄입니다. \n' %i  
  f.write(data)  
f.close()
```  

---

### a모드  
```python
f = open('filename', 'a', encoding='utf-8')  
for i in range(11, 20):  
  data = "%d 번째 줄입니다. \n' %i  
  f.write(data)  
f.close()
```  
- 기존의 내용에 추가하여 내용을 작성합니다.  

---  

### r 모드  
1. **readline함수** - 파일의 한 줄 씩 return합니다.  
```python
f = open('filename', 'r', encoding='utf-8')  
line = f.readline()  
print(line)  
f.close()  
```  

- 모든 줄 읽어오기  
```python
f = open('filename', 'r', encoding='utf-8')  
while True:  
    line = f.readline()  
    if not line:  
        break  
    print(line)  
f.close()  
```  

2. **readlines함수** - 파일의 모든 줄을 읽어서 각각의 줄을 요소로 갖는 리스트를 return합니다.  
```python
f = open('filename', 'r', encoding='utf-8')  
lines = f.readlines()  
for line in lines :  
  print(line)  
f.close()  
```  

3. **read함수** - 파일 내용 전체를 문자열로 return합니다.  
```python
f = open('filename', 'r', encoding='utf-8')  
data = f.read()  
print(data)  
f.close()  
```  

4. **파일 객체** - 파일 객체를 for문과 사용하여 내용을 return 합니다.  
```python
f = open('filename', 'r', encoding='utf-8')  
for line in f :  
  print(line)  
f.close()  
```  

```python
f = open('filename', 'r', encoding = 'utf-8')  
print(f)  
f.close()  
```  
return :  **<_io.TextIOWrapper name='filename' mode='r' encoding='utf-8'>**  

- 여기에서 encoding을 안써도 괜찮을까요?  
  -> 영어로 작성시 encoding='utf-8'을 작성안해도 정상 출력이 됬는데 **한글로 작성**하려고 하면 encoding='utf-8'이 필요했습니다.  

  ---

# **With문 사용**
```python
with open('filename', 'w', encodign = 'utf-8') as f:
  f.write('python is so simple \n')
```  
with문을 사용하면 close를 사용하지 않아도 with문(블록 영역)을 벗어나면 열려있는 객체가 **자동으로 close를 실행**시켜줍니다.
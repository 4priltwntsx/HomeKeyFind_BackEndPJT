# 🏡[ 홈키파 ]🏡 - DB & Backend project
## 🚩 프로젝트 소개

### ✔️ **프로젝트 명**

🏡 **홈키파 (HomeKey파)** 

 - Home을 Keyword로 파인드(FIND)!!

### ✔️ **프로젝트 목표**

📌 Web Front-End 기술 HTML / CSS / JavaScript의 이해와 활용.

📌 jQuery 와 Bootstrap 등 Library 활용, 더욱 향상된 디자인 및 기능을 구현.

📌이미지, Map, Form 등을 활용해, 사용자의 입장에서 편리하고 개성 있는 디자인 설계.

📌MVC 기반의 웹 프로젝트를 설계하고 구현.

📌DataBase를 구축하여 필요한 데이터를 관리.

### ✔️ **프로젝트 일정**

2022-09-27 ~ 2022-09-28

### ✔️ **팀원**

- [손민혁](https://github.com/sonmh79)
- [김지희](https://github.com/4priltwntsx)

### ✔️ **프로젝트 요구사항**

📌 아파트/다세대주택 별, 매매/전,월세 별 거래 내역 정보와 주택 정보 파일을 이용.

📌 실시간 실거래가 정보를 원하는 조회 정보에 따라 조회 결과 데이터 제공.

📌 관심지역의 주변 환경 정보를 제공할 수 있도록 구현.

### [USECASE DIAGRAM]
<img src="/uploads/99d243c2f9c57e8807fe7f2abeda6db1/Untitled__1_.png" width="500" height="400"/>

### [CLASS DIAGRAM]
<img src="/uploads/5b7f6cd8ff5f86f4ac292abe0f55c9bc/class_diagram.png" width="500" height="400"/>

## [기본 기능]

### ✔️ 주택 실거래가 정보 수집

- 데이터 가공 후 DB 저장


<img src="/uploads/c34b821f0dd63a3af26cdd61da3e906c/Image_Pasted_at_2022-9-28_15-31.png" width="500" height="400"/>

### 📚**[DB TABLE 명세]**

💡**HOUSEINFO**

- 주택의 지역, 건축, 등 세부사항 정보를 저장한 테이블

💡**HOUSEDEAL** 

- 주택 거래 정보 내용을 저장한 테이블

💡**DONGCODE** 

- 지역 정보에 대한 코드와 이름을 저장한 테이블

💡**UESRINFO** 

- 사용자 정보( ID, PASSWORD, NAME, ADDRESS )를 저장한 테이블

💡**UATTENTION** 

- 사용자가 관심을 가진 아파트 정보를 관리하기 위한 테이블

### ✔️ 메인 페이지
#### 로그인 정보가 없으면 기본 지도 맵이 보여지고 검색 창이 보여진다.

<img src="/uploads/16b45573854119078f38de2caf42f713/image.png" width="500" height="400"/>
<a href="[https://www.flaticon.com/kr/free-icons/](https://www.flaticon.com/kr/free-icons/)" title="채점자 아이콘">채점자 아이콘 제작자: Pixel perfect - Flaticon</a>


#### 로그인 정보가 있을 시, 사용자의 주소 정보에 따라 지도에 마크 표시
![image](/uploads/598806554a2b2da1be4c4563105de21a/image.png)

### ✔️ 회원 관리

#### - 회원 정보 가입
##### JOIN 기능
![image](/uploads/aeee95b84c9853dc49c4aa4bc8429fea/image.png)

##### 정보 기입 시 주소API를 이용해 주소 정보를 받아온다.
![image](/uploads/c81bd9e8239db852e8ce0b003d776fa5/image.png)

#### - 회원 정보 조회
![image](/uploads/fcb60a4d528b36357537938480396c29/image.png)

#### - 회원 정보 수정
##### 회원 정보 수정 전 사용자 비밀번호 확인
![image](/uploads/d1069e60d88d9ae0d1900503c77caadd/image.png)
##### 비밀번호 확인 후 회원 정보 수정 가능
![image](/uploads/554e3f2ff3b6772554221ae636095b3b/image.png)

##### 비밀번호가 틀렸을 시 회원 정보 수정 불가.
![image](/uploads/9f99a52f38dfcd8bcd2bd9664d8eb947/image.png)

### ✔️ 로그인 관리

#### - 로그인 화면
![image](/uploads/5cf93375624d4eed7b011b3590cdf3d9/image.png)

#### - 로그인 성공 / 실패 시 alert 창으로 알림

![Image_Pasted_at_2022-9-28_15-52](/uploads/e3e0f7c02bd1c39d91123f8d737c3ab2/Image_Pasted_at_2022-9-28_15-52.png)

![Image_Pasted_at_2022-9-28_15-49](/uploads/3919b3007af9eb9b82ea547b99d3dd6e/Image_Pasted_at_2022-9-28_15-49.png)

#### - 로그인 성공 시 메인 화면으로 이동하여 검색 기능을 사용할 수 있다
![image](/uploads/aae50e9360950916afbe4bf1ec126c9d/image.png)

#### - 로그아웃
##### 로그아웃 클릭 시 로그아웃 alert창으로 알림.

![image](/uploads/4cefe2e7e686192674f4c4640daafa3d/image.png)


### ✔️ 주택 실거래가 검색

#### - 주택 실거래가 정보를 원하는 검색 정보에 따라 검색 결과 데이터 제공
![image](/uploads/f390932948b3ada04c4503cc2db00150/image.png)
##### 검색 결과가 지도에 표시된다.


### ✔️ 주택 정보 관리

#### - 주택 거래에 대한 상세 정보 조회
##### 왼쪽 또는 지도의 pin 클릭 시 거래 정보 조회 가능
![image](/uploads/1e6255bc3974a791e4c23e9cf8aad208/image.png)

##### 거래 세부 정보
![image](/uploads/0889cd26cf5c4abae2e14ae078e39bb1/image.png)


### ✔️ 관심 정보 관리
#### 관심있는 매물은 "찜하기"가 가능
![image](/uploads/c9e99f3b01ca93278c8b26ba19617643/image.png)

#### - 관심 정보를 저장하여 마이페이지에서 조회
![image](/uploads/6c272c06c0e831cc3a01b40b0ce6bc27/image.png)

#### - 검색 목록에서 또한 찜하기가 되어 있는 매물은 별 아이콘 표시가 나타난다.
![image](/uploads/78d2fe2b152bdd449aeaa595b1581b5c/image.png)

## [추가 기능]

### ✔️ 주변 탐방 정보 수집
#### 거래 정보 조회 후, 오른쪽 검색기능을 이용해 주변 지역 인프라 정보를 확인할 수 있다.
![image](/uploads/942e58a94e5a3423e6cf1b63b995812c/image.png)
- 선택 지역 주변 인프라 검색 기능
![image](/uploads/21c6b26096b793a5b52af93d4f014ace/image.png)

## 📌기술 스택

##### - HTML , CSS, JAVASCRIPT
##### - JAVA / Eclipse
##### - MySQL / MySQL Workbench

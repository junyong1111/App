# Flutter


<details>
<summary> 1장 플러터란? </summary>
<div markdown="1">

### 플러터란 ?

고성능,고품질의 iOS, Android앱과 web을 단일 코드베이스로 개발할 수 있는 구글의 모바일 UI프레임 워크이며 구글이 제공하는 **무료 오픈소스**이며 **네이티브 수준**의 성능을 자랑한다.

#UI : user interface → 쉽게 생각하면 화면(그림)

- 기본 코드베이스 - dart언어

iOS → swift필요

Android → Java 필요

하지만 플러더를 사용하면 안번에 해결가능

### Skia 엔진 → 네이티브 수준의 성능을 낼 수 있는 이유

구글이 인수한 2D 그래픽 라이브러리(엔진)이며 다음과 같은 특징이 있다.

- 리액트 네이티드(브릿지) 방식과 다르게 Skia엔진에 바로 원하는 그림을 그릴 수 있다.

→ IOS만든 그림을 Android에도 그릴 수있다.

- **AOT(프로덕션) 실제 서비스 환경**

Ahead of time을 지원한다. Dart언어로 개발할 때 핸드폰에 빌드하기 전 사전 컴파일하여 코드를 빌드할 수 있다.

<img width="1038" alt="스크린샷 2022-08-19 오후 10 45 46" src="https://user-images.githubusercontent.com/79856225/185748647-169359b6-955b-4f37-b208-7b2c9a4685d8.png">


- **JIT(개발모드)**

Just in time을 지원한다.  Dart코드로 개발하고  →Dart가상머신이 이해하는  중간언어로 번환 후 실행한다.

이후 핸드폰에 환경에 맞게 실행하며 부분 컴파일로 빠른 실행이 가능하다.

<img width="870" alt="스크린샷 2022-08-19 오후 10 48 08" src="https://user-images.githubusercontent.com/79856225/185748658-d96b17a2-1fbd-42a2-b38c-84544b24d1d0.png">


</div>
</details>


<details>
<summary> 2장 플러터 설치 </summary>
<div markdown="1">


<details>
<summary> 1.플러터 설치  </summary>
<div markdown="1">

### Mac을 기준으로 설치

[플러터 다운로드페이지](https://docs.flutter.dev/get-started/install/macos)

위 링크에서 자신의 mac에 맞는 zip 파일 다운로드

1. 플러터를 설치할 경로에 develope 폴더 생성
2. 생성한 폴더에 다운받은 플러터를 압축해제
3. 환경변수 설정

```bash
cd 
vi .zshrc
```

vi 텍스트 편집기가 열리면 아래 코드를 붙혀놓고 저장

```bash
export PATH="$HOME/development/flutter/bin:$PATH"
#-- export PATH="$HOME/"자신이 생성한 폴더 경로"/flutter/bin:$PATH"
```

4. 설치 확인

다음 명령어로 플러터 설치 확인

```bash
flutter doctor 
```

<img width="1005" alt="스크린샷 2022-08-19 오후 11 15 14" src="https://user-images.githubusercontent.com/79856225/185748771-c2af76fd-f51f-4a9a-887e-855cb286c6ac.png">

위와 같이 나온다면 설치 완료.

</div>
</details>


<details>
<summary>2. IOS 개발을 위한 Xcode 설치 </summary>
<div markdown="1">

1. app store → Xcode 설치(설치 시간이 조금 걸린다)
2. Xcode를 한번 실행 한 후 터미널 실행
3. 다음 코드 입력

```bash
sudo gem install cocoapods
pod setup
```

1. 설치 확인

```bash
flutter doctor
```

<img width="676" alt="스크린샷 2022-08-19 오후 11 47 08" src="https://user-images.githubusercontent.com/79856225/185748835-bece37c7-56fc-40d4-9ca4-4c53a25b043d.png">


Xcode가 잘 설치되었으면 성공적으로 설치완료!

</div>
</details>



<details>
<summary> 3. Android 개발을 위한 Android Studio 설치 </summary>
<div markdown="1">

1. Java 설치
2. 해당 링크에서 안드로이드 스튜디오 설치
[안드로이드 스튜디오 설치](https://developer.android.com/studio)

<img width="894" alt="스크린샷 2022-08-19 오후 11 49 49" src="https://user-images.githubusercontent.com/79856225/185748879-32bb4d48-4807-4f6e-8f5c-88929da93d2f.png">

3. 다운받은 dmg파일 실행 후 안드로이드 스튜디오 실행

<img width="564" alt="스크린샷 2022-08-19 오후 11 52 31" src="https://user-images.githubusercontent.com/79856225/185748914-b9082607-990c-40f2-b68f-4f4f1b6d5879.png">
<img width="565" alt="스크린샷 2022-08-19 오후 11 53 23" src="https://user-images.githubusercontent.com/79856225/185748917-7c681c2f-d76b-4226-a1b3-7e4bf08f1439.png">
<img width="563" alt="스크린샷 2022-08-19 오후 11 53 31" src="https://user-images.githubusercontent.com/79856225/185748920-8af5d8f9-0be9-4bb2-81c3-3f3f8da22209.png">

이후 계속 Next를 눌러서 설치를 완료한다.  

  
이후  Dart 플러그인 설치

<img width="599" alt="스크린샷 2022-08-19 오후 11 56 03" src="https://user-images.githubusercontent.com/79856225/185748952-4a5cb236-240e-4394-8c21-756ba63ff88d.png">

Flutter 플러그인 설치

<img width="742" alt="스크린샷 2022-08-19 오후 11 56 45" src="https://user-images.githubusercontent.com/79856225/185748955-83651bcd-5944-4af8-bddb-af8962ca1d0e.png">

4. 설치된 안드로이드 스튜디오 확인

```bash
flutter doctor
```

### 만약 오류가 난다면 다음 과정을 따라한다.

1. 화면 왼쪽 상단의 **Android Studio**를 클릭하고 **Preferences**를 클릭

<img width="288" alt="스크린샷 2022-08-20 오전 12 03 40" src="https://user-images.githubusercontent.com/79856225/185749046-69913700-ebb2-4673-aa88-538d76f00d83.png">

2. **Appearance & Behavior > System Settings > Android SDK**

<img width="745" alt="스크린샷 2022-08-20 오전 12 04 38" src="https://user-images.githubusercontent.com/79856225/185749050-276d755e-7417-4bbf-842c-8ee456c04cc4.png">

3.  **Hide Obsolete Pacakges** 체크를 해제한 후 

SDK Tools 탭에서 아래 의 세 가지를 찾아 체크된 상태로 만든 후 OK

- **Android SDK Command-line Tools (latest)**
- **Android SDK Platform-Tools**
- **Android SDK Tools (Obsolete)**

없는 체크항목은 넘어가도 된다.

<img width="742" alt="스크린샷 2022-08-20 오전 12 06 08" src="https://user-images.githubusercontent.com/79856225/185749054-ae3dc5a9-1ee7-4413-918a-97657dd4932a.png">

4. 이후 터미널 실행 후 다음 명령어 실행

```bash
flutter doctor --android-licenses
```

무언가 묻는 창이 나오면 계속 **y**를 입력하고 엔터

5. 설치 확인

```bash
flutter doctor
```

<img width="574" alt="스크린샷 2022-08-20 오전 12 07 34" src="https://user-images.githubusercontent.com/79856225/185749055-990102a4-a818-428b-b1bc-89a376fa4a07.png">

위 처럼 나온다면 설치 완료!

</div>
</details>

</div>
</details>




<!--
<details>
<summary>  </summary>
<div markdown="1">

</div>
</details>
----------------------
-->
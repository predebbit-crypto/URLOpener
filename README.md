# POE2 Launcher 🎮

클릭하면 Microsoft Edge로 Path of Exile 2 다음 게임 사이트를 여는 초간단 프로그램입니다.

## 🌐 대상 URL

```
https://pathofexile2.game.daum.net/main
```

## 🚀 빠른 시작 (추천)

### 방법 1: EXE 파일 만들기 (Windows, 가장 깔끔함)

#### C# 버전 (추천 - .NET만 있으면 됨)

1. **`build_exe.bat`** 파일을 더블클릭
2. 생성된 **`POE2_Launcher.exe`** 파일을 더블클릭하면 Edge로 사이트가 열립니다!

**장점:**
- 별도 설치 불필요 (Windows에 .NET이 기본 내장)
- 파일 크기 작음 (~10KB)
- 빌드 속도 빠름

---

#### Python + PyInstaller 버전 (Python이 설치되어 있다면)

1. **`build_exe_python.bat`** 파일을 더블클릭
2. `dist` 폴더에 생성된 **`POE2_Launcher.exe`** 파일 사용

**사전 요구사항:**
- Python 3.x 설치 필요

**장점:**
- 크로스 플랫폼 빌드 가능
- 완전한 단일 실행 파일

---

### 방법 2: 설치 없이 바로 사용

#### 배치 파일 (가장 간단)
**`open_poe2.bat`** 더블클릭 → 즉시 실행!

#### HTML 파일 (예쁜 UI)
**`open_poe2.html`** 더블클릭 → 브라우저 열림 → 버튼 클릭

---

## 📦 파일 설명

### EXE 빌드용
| 파일 | 설명 |
|------|------|
| `POE2_Launcher.cs` | C# 소스 코드 |
| `build_exe.bat` | C# → EXE 컴파일 스크립트 (추천) |
| `poe2_launcher.py` | Python 소스 코드 |
| `build_exe_python.bat` | Python → EXE 컴파일 스크립트 |

### 바로 실행 가능
| 파일 | 설명 |
|------|------|
| `open_poe2.bat` | Windows 배치 파일 (빠른 실행) |
| `open_poe2.html` | HTML 버전 (UI 포함) |
| `open_poe2.py` | Python 스크립트 (크로스 플랫폼) |

---

## 🎯 추천 사용 방법

### Windows 사용자
1. **가장 추천**: `build_exe.bat` 실행 → `POE2_Launcher.exe` 사용
2. **간단하게**: `open_poe2.bat` 더블클릭

### macOS/Linux 사용자
1. Python이 있다면: `python open_poe2.py`
2. 또는: `open_poe2.html` 사용

---

## 🔧 바탕화면 바로가기 만들기

1. `POE2_Launcher.exe` (또는 `.bat`, `.html`) 파일 우클릭
2. "바로가기 만들기" 선택
3. 바로가기를 바탕화면으로 이동
4. (선택) 우클릭 → 속성 → 아이콘 변경

---

## 💡 자주 묻는 질문

**Q: EXE 파일이 안 만들어져요!**
- C# 버전: Windows에 .NET Framework가 설치되어 있는지 확인
- Python 버전: Python이 설치되어 있는지 확인 (`python --version`)

**Q: Edge 대신 다른 브라우저로 열려요**
- Edge가 설치되어 있는지 확인하세요
- 프로그램은 자동으로 Edge를 찾고, 없으면 기본 브라우저를 사용합니다

**Q: 파일 크기가 왜 이렇게 달라요?**
- C# 버전: ~10KB (작음)
- Python + PyInstaller 버전: ~10MB (Python 런타임 포함)

---

## 🛠️ 수동 빌드 (개발자용)

### C# 컴파일
```cmd
csc /target:winexe /out:POE2_Launcher.exe POE2_Launcher.cs
```

### Python 컴파일
```cmd
pip install pyinstaller
pyinstaller --onefile --windowed --name POE2_Launcher poe2_launcher.py
```

---

**Made for POE2 Players** 🎮⚔️

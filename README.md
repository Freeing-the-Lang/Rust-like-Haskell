# 🦀 Rust-like-Haskell

Rust의 구조적 문법과 Haskell의 함수형 타입 시스템을 결합한 실험 언어 프로젝트입니다.  
`.hs` 기반이지만 Rust 느낌의 Enum·Match 스타일을 유지합니다.

---

## ✨ 특징

### ✔ Rust 느낌
- 명확한 블록 구조  
- Enum 기반 AST  
- Match 기반 패턴 처리  
- Result/Option 스타일 표현 가능  

### ✔ Haskell 느낌
- 순수 함수형 설계  
- ADT 기반 타입 정의  
- 패턴매칭 중심 평가  
- λ(Lambda) + 함수 적용 + Let 바인딩  

---

## 📁 프로젝트 구조




src/
├─ Main.hs
├─ Core/
│    ├─ Types.hs
│    ├─ Eval.hs
│    └─ Prelude.hs
└─ Runtime/
└─ Print.hs



---

## 🔧 빌드 방법 (GHC)




ghc src/Main.hs -o out
./out



---

## 🧪 예제 코드 (Main.hs)

```haskell
let expr = Add (Int 10) (Mul (Int 2) (Int 3))
let result = eval expr
printValue result




🛠 GitHub Actions (3OS Build + ProofLedger)


이 리포는 자동으로 다음을 수행합니다:




Ubuntu / macOS / Windows 전체 빌드


모든 .hs 모듈 자동 컴파일


OS별 실행파일 생성


SHA256 포함 ProofLedger 생성


Build 아티팩트 자동 업로드





📜 ProofLedger


빌드 시 아래 정보가 자동으로 기록됩니다:




Commit SHA


OS


Timestamp


SHA256 체크섬





🎯 목표


Rust의 “안전함”과

Haskell의 “순수 함수형”을

한 언어로 자연스럽게 융합하는 실험적 환경을 만드는 것이 목표입니다.



📌 라이센스


MIT License

언어 실험·연구·교육·툴링 개발에 자유롭게 사용 가능합니다.



---

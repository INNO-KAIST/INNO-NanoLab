# INNO NanoLab

나노입자 합성 계획(Core·Shell)·합성 카드·lot 기록·ICP 분석(Peak 추천·샘플 준비·결과 가져오기)을 하는 단일 HTML 앱. 빌드가 3종이다.

## 폴더 지도
```
INNO NanoLab/
├─ INNO NanoLab (유원정).html   ← 개인 연구 데이터가 들어 있는 본인용 빌드 (**공개 금지**)
├─ INNO NanoLab (설정용).html   ← 연구실 구성원 초기 설정용 빌드
├─ INNO NanoLab (배포용).html   ← 데이터 없는 공개 빌드 = GitHub Pages index.html
├─ INNO NanoLab (setup).html    ← 위 빌드를 고르는 시작 화면
├─ INNO NanoLab (setup).bat     ← 로컬 서버(python -m http.server 8765)로 setup 화면 열기 (Google 로그인 팝업용)
├─ LICENSE.txt · favicon.ico · apple-touch-icon.png   ← 배포 대상(manifest)
├─ README.md
├─ data/
│   └─ ICP interference DB.xlsx ← ICP 간섭 DB 원본(앱에 내장된 표의 출처)
├─ docs/
│   ├─ 사용 가이드.md · 설정 가이드.md
│   └─ HISTORY.md
└─ _drive_backup/
```

## 쓰는 법 · 고치는 법 · 배포
- HTML 자체가 원본(3개 빌드가 같은 코드 + 다른 내장 데이터). 코드 수정은 3개 빌드에 똑같이 적용해야 한다.
- 배포: `python "../INNO Deploy/inno_deploy.py" push nanolab` → (배포용).html 만 https://inno-kaist.github.io/INNO-NanoLab/ 로 올라간다.

- 사용법: `docs/` 의 가이드 · 작업 이력과 교훈: `docs/HISTORY.md`
- 백업(Google Drive): `_drive_backup/백업 만들기.bat` 실행 → `_drive_backup` 폴더를 Drive 에 올림. 복구는 `_drive_backup/RESTORE.md`.

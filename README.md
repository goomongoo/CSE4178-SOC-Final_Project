# 서강대학교 기초SOC설계 최종 프로젝트

## 프로젝트 구조
```
.
├── matmul_vitis/       # Vitis 소프트웨어 프로젝트
│   ├── matmul/             # C 애플리케이션 소스 코드
│   │   └── src/
│   │       ├── helloworld.c  # 메인 제어 로직
│   │       └── ...
│   └── matmul_platform/    # Vitis 하드웨어 플랫폼
│
└── matmul_vivado/      # Vivado 하드웨어 프로젝트
    ├── matmul_vivado.xpr   # Vivado 프로젝트 파일
    ├── matmul_vivado.srcs/
    │   ├── constrs_1/      # 제약 조건 파일 (XDC)
    │   ├── sources_1/
    │   │   ├── bd/design_1/  # 메인 블록 디자인
    │   │   │   └── design_1.bd
    │   │   ├── new/
    │   │   │   ├── matmul.v  # 행렬 곱셈 로직 (Verilog)
    │   │   │   ├── FND_Encoder.v # 7-Segment 엔코더
    │   │   │   └── ovf2seg.v     # 7-Segment 표시 로직
    │   │   └── imports/template_IP/
    │   │       └── top_axi_lite_template.v # AXI-Lite 인터페이스
    │   └── sim_1/
    │       └── new/
    │           └── matmul_tb.v # 행렬 곱셈 테스트벤치
    └── design_1_wrapper.xsa  # Vitis로 보낼 하드웨어 디자인
```

## 하드웨어 설계 (PL - Vivado)

Zynq UltraScale+ MPSoC의 PS(Processing System)와 PL(Programmable Logic) 연동 설계.

* **Zynq UltraScale+ MPSoC PS:** ARM Cortex-A53 프로세서를 포함하는 메인 시스템.
* **matmul (커스텀 IP):**
    * `matmul.v`에 구현된 3x3 행렬 곱셈 핵심 로직.
    * `top_axi_lite_template.v` 기반 AXI-Lite 슬레이브 인터페이스 구현. PS가 메모리 맵 주소로 IP 제어.
    * PS로부터 18개 입력(행렬 A, B)을 받아 9개 출력(행렬 C)을 반환.
* **FND\_Encoder (커스텀 IP):**
    * `FND_Encoder.v` 및 `ovf2seg.v`에 구현.
    * PS로부터 데이터를 받아 7-Segment 디스플레이에 숫자 표시.
* **AXI Infrastructure:**
    * `AXI Interconnect`를 통해 PS Master 포트와 `matmul`, `FND_Encoder` IP의 Slave 포트 연결.
    * `Processor System Reset` 모듈로 시스템 리셋 관리.

## 소프트웨어 설계 (PS - Vitis)

Vitis IDE (`matmul/src/helloworld.c`)에서 PS 제어 로직 구현.

1.  **초기화:**
    * `platform.h`를 통해 플랫폼 초기화 및 드라이버 설정.
    * `matmul` IP와 `FND_Encoder` IP의 AXI-Lite 레지스터 주소를 포인터에 매핑.
2.  **데이터 준비:**
    * PS 메모리에 입력 행렬 A, B 정의.
3.  **하드웨어 제어 (행렬 곱셈):**
    * AXI-Lite를 통해 입력 행렬 A, B의 각 원소를 `matmul` IP의 입력 레지스터에 쓰기.
    * `matmul` IP 제어 레지스터에 'start' 신호를 보내 하드웨어 연산 트리거.
    * 연산 완료 시까지 `matmul` IP의 'done' 상태 레지스터 폴링(polling).
4.  **결과 수신 및 출력:**
    * 연산 완료 후, AXI-Lite를 통해 `matmul` IP의 출력 레지스터에서 결과 행렬 C 읽기.
    * `Xil_Printf` (UART)를 사용하여 터미널 콘솔에 입력/결과 행렬 출력.
    * (선택) `FND_Encoder` IP 레지스터에 값을 써서 7-Segment에 결과 표시.

## 빌드 및 실행 방법

1.  **Vivado (하드웨어):**
    1.  `matmul_vivado/matmul_vivado.xpr` 프로젝트 열기.
    2.  `Flow Navigator`에서 `Run Synthesis` 및 `Run Implementation` 실행.
    3.  `Generate Bitstream` 실행.
    4.  `File -> Export -> Export Hardware...` 선택, `Include bitstream` 체크 후 `design_1_wrapper.xsa` 파일 생성.
2.  **Vitis (소프트웨어):**
    1.  `matmul_vitis/` 워크스페이스로 Vitis 실행.
    2.  `matmul_platform` 우클릭 -> `Update Hardware Specification` 선택, 새로 생성한 `.xsa` 파일로 업데이트.
    3.  `matmul` 애플리케이션 프로젝트 `Build Project` 실행.
    4.  타겟 보드를 UART로 PC에 연결.
    5.  `Run As -> Launch Hardware (Single Application Debug)` 선택하여 프로그램 다운로드 및 실행.
    6.  시리얼 터미널(예: Tera Term, `115200`-8-N-1)로 결과 확인.

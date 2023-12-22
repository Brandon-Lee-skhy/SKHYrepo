@echo off
Title .NET Framework 3.5 오프라인 설치

for %%I in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do if exist "%%I:\\sources\install.wim" set setupdrv=%%I

if defined setupdrv (
	echo.
	echo 드라이브 %setupdrv%를 찾았습니다.
	echo.
	echo .NET Framework 3.5 설치중...
	echo.

	Dism /online /enable-feature /featurename:NetFX3 /All /Source:%setupdrv%:\sources\sxs /LimitAccess

	echo.
	echo.
	echo.
	echo .NET Framework 3.5가 설치되었습니다.
	echo.
	echo.
	echo 윈도우 설치용 DVD 또는 USB를 제거해주세요.
	echo.
	echo 또는 파일 탐색기 → 마운트된 드라이브 → 마우스 오른쪽 메뉴 → [꺼내기]를 실행해주세요.
	echo.
	echo.
) else (
	echo.
	echo.
	echo 설치 미디어를 찾을 수 없습니다!
	echo.
	echo.
	echo 윈도우 설치용 DVD 또는 USB를 넣거나
	echo.
	echo 또는 윈도우 10 ISO 파일 → 마우스 오른쪽 메뉴 → [열기...] → [파일 탐색기]를 선택하고 다시 실행하세요.
	echo.
	echo.
)

pause
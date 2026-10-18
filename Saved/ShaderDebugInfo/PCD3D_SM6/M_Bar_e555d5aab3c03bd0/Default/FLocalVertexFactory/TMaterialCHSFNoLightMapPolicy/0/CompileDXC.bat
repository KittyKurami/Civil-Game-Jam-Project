@ECHO OFF
SET DXC="C:\Program Files\Epic Games\UE_5.8\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "C:\Program Files\Epic Games\UE_5.8\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2021 -Zpr -O3 -auto-binding-space 0 -exports MaterialCHS -enable-16bit-types -Wno-parentheses-equality -Wno-for-redefinition -Wno-ignored-attributes -disable-lifetime-markers -T lib_6_6 -Fc RayTracingMaterialHitShaders.d3dasm -Fo RayTracingMaterialHitShaders.dxil RayTracingMaterialHitShaders.usf
:END
PAUSE

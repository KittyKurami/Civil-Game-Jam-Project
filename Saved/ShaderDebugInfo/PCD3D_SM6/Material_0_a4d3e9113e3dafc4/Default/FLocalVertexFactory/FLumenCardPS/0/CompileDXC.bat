@ECHO OFF
SET DXC="C:\Program Files\Epic Games\UE_5.8\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "C:\Program Files\Epic Games\UE_5.8\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2018 -Zpr -O3 -auto-binding-space 0 -Wno-parentheses-equality -Wno-for-redefinition -disable-lifetime-markers -T ps_6_6 -E Main -Fc LumenCardPixelShader.d3dasm -Fo LumenCardPixelShader.dxil LumenCardPixelShader.usf
:END
PAUSE

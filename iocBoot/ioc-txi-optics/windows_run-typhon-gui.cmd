@echo off
echo Starting Typhon...
echo on

"C:/Program Files/Docker/Docker/resources/bin/docker.exe" run ^
        -v "c:\Repos\ads-deploy\tools\:/ads-deploy/tools" ^
        -v "C:\Users\sheppard\Documents\Visual Studio 2013\Projects\lcls-plc-txi-optics\:/reg/g/pcds/epics/ioc/lcls-plc-txi-optics" ^
	-e DISPLAY=host.docker.internal:0.0 ^
	-i pcdshub/ads-deploy:latest ^
	"cd '/reg/g/pcds/epics/ioc/lcls-plc-txi-optics/iocBoot/ioc-txi-optics' && pytmc stcmd --template-path /ads-deploy/tools/templates --template typhon_display.py --only-motor """/reg/g/pcds/epics/ioc/lcls-plc-txi-optics/lcls-plc-txi-optics/lcls-plc-txi-optics.tsproj""" > /tmp/display.py && echo 'Running Typhon...' && python /tmp/display.py; sleep 1"

IF EXIST assets (
  RMDIR /S /Q assets
)

IF EXIST index.html (
  DEL /Q index.html
)

CD ..\asia-warden-web

CALL build.cmd || PAUSE

CD ..\asia-warden-web-preview

XCOPY ..\asia-warden-web\dist dist /E /I /Y
COPY ..\asia-warden-web\index.html index.html
IF EXIST assets (
  RMDIR /S /Q assets
)

IF EXIST index.html (
  DEL /Q index.html
)

CD ..\asia-warden-web

SET BASE_URL=/asia-warden-web-preview
CALL build.cmd || PAUSE

CD ..\asia-warden-web-preview

XCOPY ..\asia-warden-web\dist\assets assets /E /I /Y
COPY ..\asia-warden-web\dist\index.html index.html
   call runcrud.bat
   ping 192.0.2.2 -n 1 -w 10000 > nul
   explorer "http://localhost:8080/crud/v1/task/getTasks"
   if "%ERRORLEVEL%" == "0" goto rename
   echo.
   echo firefox has errors - breaking work
   goto fail

   :fail
   echo.
   echo There were errors

   :end
   echo.
   echo Work is finished.
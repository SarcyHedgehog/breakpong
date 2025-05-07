@echo off
echo Cleaning up project directory: %CD%
echo.

REM Safety check - only run if we are in a directory that seems to have index.html
IF NOT EXIST "index.html" (
    echo ERROR: index.html not found in current directory.
    echo Please run this script from your project root (C:\msq_test).
    pause
    goto :eof
)

echo Deleting node_modules directory...
IF EXIST "node_modules\" (
    echo   Found node_modules. Attempting to delete...
    RMDIR /S /Q "node_modules"
    IF ERRORLEVEL 1 (
        echo   ERROR deleting node_modules. It might be in use or permissions issue.
    ) ELSE (
        echo   node_modules deleted.
    )
) ELSE (
    echo   node_modules not found.
)
echo.

echo Deleting public directory...
IF EXIST "public\" (
    echo   Found public. Attempting to delete...
    RMDIR /S /Q "public"
    IF ERRORLEVEL 1 (
        echo   ERROR deleting public. It might be in use or permissions issue.
    ) ELSE (
        echo   public directory deleted.
    )
) ELSE (
    echo   public directory not found.
)
echo.

echo Deleting package-lock.json...
IF EXIST "package-lock.json" (
    echo   Found package-lock.json. Attempting to delete...
    DEL /F /Q "package-lock.json"
    IF ERRORLEVEL 1 (
        echo   ERROR deleting package-lock.json.
    ) ELSE (
        echo   package-lock.json deleted.
    )
) ELSE (
    echo   package-lock.json not found.
)
echo.

echo Deleting package.json...
IF EXIST "package.json" (
    echo   Found package.json. Attempting to delete...
    DEL /F /Q "package.json"
    IF ERRORLEVEL 1 (
        echo   ERROR deleting package.json.
    ) ELSE (
        echo   package.json deleted.
    )
) ELSE (
    echo   package.json not found.
)
echo.

echo Deleting dir.txt (if it exists)...
IF EXIST "dir.txt" (
    echo   Found dir.txt. Attempting to delete...
    DEL /F /Q "dir.txt"
    IF ERRORLEVEL 1 (
        echo   ERROR deleting dir.txt.
    ) ELSE (
        echo   dir.txt deleted.
    )
) ELSE (
    echo   dir.txt not found.
)
echo.

echo Cleanup complete.
echo Your .git directory and index.html should remain.
pause
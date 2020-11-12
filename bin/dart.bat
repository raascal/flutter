@ECHO off
REM Copyright 2014 The Flutter Authors. All rights reserved.
REM Use of this source code is governed by a BSD-style license that can be
REM found in the LICENSE file.

REM ---------------------------------- NOTE ----------------------------------
REM
REM Please keep the logic in this file consistent with the logic in the
REM `dart` script in the same directory to ensure that Flutter & Dart continue to
REM work across all platforms!
REM
REM --------------------------------------------------------------------------

SETLOCAL ENABLEDELAYEDEXPANSION

FOR %%i IN ("%~dp0..") DO SET FLUTTER_ROOT=%%~fi

REM Include shared scripts in shared.bat
SET shared_bin=%FLUTTER_ROOT%/bin/internal/shared.bat
CALL "%shared_bin%"

SET cache_dir=%FLUTTER_ROOT%\bin\cache
SET dart_sdk_path=%cache_dir%\dart-sdk
SET dart=%dart_sdk_path%\bin\dart.exe

"%dart%" %* & exit /B !ERRORLEVEL!

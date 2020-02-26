@echo off
setlocal enabledelayedexpansion 

echo ========================================================
echo This script will pre-check for shardingsphere release: 
echo 1. Download src/jdbc/proxy/ui package and asc files
echo 2. Extract packages, check DISCLAIMER/LICENSE/NOTICE
echo 3. Execute gpg verify packages
echo ========================================================

REM this script need wget&tar, you should install from:
REM tar  - http://gnuwin32.sourceforge.net/packages/gtar.htm
REM wget - http://gnuwin32.sourceforge.net/packages/wget.htm
REM 
REM gpg need installed from: https://gpg4win.org/
REM 
REM maybe https://github.com/apache/incubator-shardingsphere
REM set RepoUrl=https://gitee.com/kimmking/incubator-shardingsphere

rem set DistUrl=http://127.0.0.1:8080/
set DistUrl=https://dist.apache.org/repos/dist/dev/incubator/shardingsphere/
set ReleaseVersion=4.0.1
rem set WgetQuit=-q may hidden download progress, WgetQuit= will show details
set WgetQuit=

echo remove old files...
if exist dist (
	rd dist /s /q
) 

mkdir dist
cd dist

echo ========================================================
echo ====================download+check======================




:down1
echo ==
echo ==
echo ==
echo ==
echo ========================================================
set Binary=apache-shardingsphere-incubating-4.0.1-src
echo ==================== %Binary%
echo ====================
echo wget %DistUrl%/%ReleaseVersion%/%Binary%.zip.asc...
wget %WgetQuit% %DistUrl%/%ReleaseVersion%/%Binary%.zip.asc

if not exist %Binary%.zip.asc (
   echo %Binary%.zip.asc doesn't exist! ============== ::download failed.
   goto cend
) 

echo ==== %DistUrl%/%ReleaseVersion%/%Binary%.zip.asc ======= ::download success!

echo %DistUrl%/%ReleaseVersion%/%Binary%.zip...
wget %WgetQuit% %DistUrl%/%ReleaseVersion%/%Binary%.zip

if not exist %Binary%.zip (
   echo %Binary%.zip doesn't exist! ============== ::download failed.
   goto cend
) 

echo ==== %DistUrl%/%ReleaseVersion%/%Binary%.zip ======= ::download success!

echo tar -xf %Binary%.zip...
tar -xf %Binary%.zip

echo check DISCLAIMER/LICENSE/NOTICE files...
for %%f in (DISCLAIMER LICENSE NOTICE) do (
 if not exist %Binary%-release\%%f (
   echo %Binary%\%%f doesn't exist! ======= ::check failed.
   goto cend
 ) 
)

echo ==== DISCLAIMER LICENSE NOTICE files exist ======= ::check success!

echo gpg --verify %Binary%.zip.asc %Binary%.zip...
gpg --verify %Binary%.zip.asc %Binary%.zip

echo ==== gpg --verify %Binary%.zip ======= ::check success!




:down2
echo ==
echo ==
echo ==
echo ==
echo ========================================================
set Binary=apache-shardingsphere-incubating-%ReleaseVersion%-sharding-jdbc-bin
echo ==================== %Binary%
echo ====================

echo wget %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz.asc...
wget %WgetQuit% %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz.asc

if not exist %Binary%.tar.gz.asc (
   echo %Binary%.tar.gz.asc doesn't exist! ===================== ::download failed.
   goto cend
) 

echo ==1== %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz.asc ======= ::download success!

echo wget %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz...
wget %WgetQuit% %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz

if not exist %Binary%.tar.gz (
   echo %Binary%.tar.gz doesn't exist! ============== ::download failed.
   goto cend
) 

echo ==2== %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz ======= ::download success!

echo tar -xf %Binary%.tar.gz...
tar -xf %Binary%.tar.gz

echo check DISCLAIMER/LICENSE/NOTICE files...
for %%f in (DISCLAIMER LICENSE NOTICE) do (
 set File=%%f
 if not exist %Binary%\%%f (
   echo %Binary%\%%f doesn't exist! ============== ::check failed.
   goto cend
 ) 
)

echo ==3== DISCLAIMER LICENSE NOTICE files exist ======= ::check success!

echo gpg --verify %Binary%.tar.gz.asc %Binary%.tar.gz...
gpg --verify %Binary%.tar.gz.asc %Binary%.tar.gz

echo ==4== gpg --verify %Binary%.tar.gz ======= ::check success!



:down3
echo ==
echo ==
echo ==
echo ==
echo ========================================================
set Binary=apache-shardingsphere-incubating-%ReleaseVersion%-sharding-proxy-bin
echo ==================== %Binary%
echo ====================

echo wget %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz.asc...
wget %WgetQuit% %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz.asc

if not exist %Binary%.tar.gz.asc (
   echo %Binary%.tar.gz.asc doesn't exist! ===================== ::download failed.
   goto cend
) 

echo ==1== %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz.asc ======= ::download success!

echo wget %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz...
wget %WgetQuit% %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz

if not exist %Binary%.tar.gz (
   echo %Binary%.tar.gz doesn't exist! ============== ::download failed.
   goto cend
) 

echo ==2== %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz ======= ::download success!

echo tar -xf %Binary%.tar.gz...
tar -xf %Binary%.tar.gz

echo check DISCLAIMER/LICENSE/NOTICE files...
for %%f in (DISCLAIMER LICENSE NOTICE) do (
 set File=%%f
 if not exist %Binary%\%%f (
   echo %Binary%\%%f doesn't exist! ============== ::check failed.
   goto cend
 ) 
)

echo ==3== DISCLAIMER LICENSE NOTICE files exist ======= ::check success!

echo gpg --verify %Binary%.tar.gz.asc %Binary%.tar.gz...
gpg --verify %Binary%.tar.gz.asc %Binary%.tar.gz

echo ==4== gpg --verify %Binary%.tar.gz ======= ::check success!



:down4
echo ==
echo ==
echo ==
echo ==
echo ========================================================
set Binary=apache-shardingsphere-incubating-%ReleaseVersion%-sharding-ui-bin
echo ==================== %Binary%
echo ====================

echo wget %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz.asc...
wget %WgetQuit% %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz.asc

if not exist %Binary%.tar.gz.asc (
   echo %Binary%.tar.gz.asc doesn't exist! ===================== ::download failed.
   goto cend
) 

echo ==1== %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz.asc ======= ::download success!

echo wget %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz...
wget %WgetQuit% %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz

if not exist %Binary%.tar.gz (
   echo %Binary%.tar.gz doesn't exist! ============== ::download failed.
   goto cend
) 

echo ==2== %DistUrl%/%ReleaseVersion%/%Binary%.tar.gz ======= ::download success!

echo tar -xf %Binary%.tar.gz...
tar -xf %Binary%.tar.gz

echo check DISCLAIMER/LICENSE/NOTICE files...
for %%f in (DISCLAIMER LICENSE NOTICE) do (
 set File=%%f
 if not exist %Binary%\%%f (
   echo %Binary%\%%f doesn't exist! ============== ::check failed.
   goto cend
 ) 
)

echo ==3== DISCLAIMER LICENSE NOTICE files exist ======= ::check success!

echo gpg --verify %Binary%.tar.gz.asc %Binary%.tar.gz...
gpg --verify %Binary%.tar.gz.asc %Binary%.tar.gz

echo ==4== gpg --verify %Binary%.tar.gz ======= ::check success!


rem git clone https://github.com/apache/incubator-shardingsphere --depth=1
rem cd incubator-shardingsphere
rem git checkout -b %ReleaseVersion% origin/%ReleaseVersion%




:cend

cd ..
echo ==
echo ==
echo ==
echo ==
echo ========================================================
echo ===========================done=========================
echo ========================================================
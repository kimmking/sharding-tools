## release tools
1. `precheck.bat`：Precheck tool for new release version. 

### Features
The precheck script will pre-check for shardingsphere release: 
 1. Download src/jdbc/proxy/ui package and asc files
 2. Extract packages, check DISCLAIMER/LICENSE/NOTICE
 3. Execute gpg verify packages

### Prerequisites
The precheck script need wget&tar, you should install from:
1. tar  - http://gnuwin32.sourceforge.net/packages/gtar.htm
2. wget - http://gnuwin32.sourceforge.net/packages/wget.htm
3. gpg  - https://gpg4win.org/

pgp should import KEYS and trust this releaser's key, also see [Check gpg Signature](https://shardingsphere.apache.org/community/en/contribute/release/):

```
curl https://dist.apache.org/repos/dist/dev/incubator/shardingsphere/KEYS >> KEYS
gpg --import KEYS
gpg --edit-key "${GPG username of releaser}"
  > trust

Please decide how far you trust this user to correctly verify other users' keys
(by looking at passports, checking fingerprints from different sources, etc.)

  1 = I don't know or won't say
  2 = I do NOT trust
  3 = I trust marginally
  4 = I trust fully
  5 = I trust ultimately
  m = back to the main menu

Your decision? 5

  > save
```

if "can't find file" shown in console, you should turn on NTFSlongpath feature: https://www.zhihu.com/pin/1216043691736969216

### Configurations
1. set DistUrl=https://dist.apache.org/repos/dist/dev/incubator/shardingsphere/
2. set ReleaseVersion=4.0.1
3. set WgetQuit=-q

### Output Example

```shell
$ D:\git\sharding-tools\release>precheck.bat
========================================================
This script will pre-check for shardingsphere release:
1. Download src/jdbc/proxy/ui package and asc files
2. Extract packages, check DISCLAIMER/LICENSE/NOTICE
3. Execute gpg verify packages
========================================================
remove old files...
========================================================
====================download+check======================
==
==
==
==
========================================================
==================== apache-shardingsphere-incubating-4.0.1-src
====================
wget https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-src.zip.asc...
--2020-02-26 18:24:22--  https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-src.zip.asc
Connecting to 127.0.0.1:8080... connected.
HTTP request sent, awaiting response... 200 OK
Length: 819 [application/octet-stream]
Saving to: 'apache-shardingsphere-incubating-4.0.1-src.zip.asc'

apache-shardingsphere-incubating-4.0.1-src. 100%[========================================================================================>]     819  --.-KB/s    in 0s

2020-02-26 18:24:22 (35.0 MB/s) - 'apache-shardingsphere-incubating-4.0.1-src.zip.asc' saved [819/819]

==== https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-src.zip.asc ======= ::download success
https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-src.zip...
--2020-02-26 18:24:22--  https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-src.zip
Connecting to 127.0.0.1:8080... connected.
HTTP request sent, awaiting response... 200 OK
Length: 5691734 (5.4M) [application/octet-stream]
Saving to: 'apache-shardingsphere-incubating-4.0.1-src.zip'

apache-shardingsphere-incubating-4.0.1-src. 100%[========================================================================================>]   5.43M  --.-KB/s    in 0.03s

2020-02-26 18:24:22 (203 MB/s) - 'apache-shardingsphere-incubating-4.0.1-src.zip' saved [5691734/5691734]

==== https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-src.zip ======= ::download success
tar -xf apache-shardingsphere-incubating-4.0.1-src.zip...
check DISCLAIMER/LICENSE/NOTICE files...
==== DISCLAIMER LICENSE NOTICE files exist ======= ::check success
gpg --verify apache-shardingsphere-incubating-4.0.1-src.zip.asc apache-shardingsphere-incubating-4.0.1-src.zip...
gpg: Signature made 02/25/20 18:47:00 中国标准时间
gpg:                using RSA key B1BC6A94073855D1
gpg: Good signature from "zhaojun (zhaojun's mac) <zhaojun@apache.org>" [ultimate]
==== gpg --verify apache-shardingsphere-incubating-4.0.1-src.zip ======= ::check success
==
==
==
==
========================================================
==================== apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin
====================
wget https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin.tar.gz.asc...
--2020-02-26 18:24:25--  https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin.tar.gz.asc
Connecting to 127.0.0.1:8080... connected.
HTTP request sent, awaiting response... 200 OK
Length: 819 [application/octet-stream]
Saving to: 'apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin.tar.gz.asc'

apache-shardingsphere-incubating-4.0.1-shar 100%[========================================================================================>]     819  --.-KB/s    in 0s

2020-02-26 18:24:25 (15.6 MB/s) - 'apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin.tar.gz.asc' saved [819/819]

==1== https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin.tar.gz.asc ======= ::download success
wget https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin.tar.gz...
--2020-02-26 18:24:25--  https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin.tar.gz
Connecting to 127.0.0.1:8080... connected.
HTTP request sent, awaiting response... 200 OK
Length: 2858792 (2.7M) [application/octet-stream]
Saving to: 'apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin.tar.gz'

apache-shardingsphere-incubating-4.0.1-shar 100%[========================================================================================>]   2.73M  --.-KB/s    in 0.02s

2020-02-26 18:24:25 (149 MB/s) - 'apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin.tar.gz' saved [2858792/2858792]

==2== https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin.tar.gz ======= ::download success
tar -xf apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin.tar.gz...
check DISCLAIMER/LICENSE/NOTICE files...
==3== DISCLAIMER LICENSE NOTICE files exist ======= ::check success
gpg --verify apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin.tar.gz.asc apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin.tar.gz...
gpg: Signature made 02/25/20 18:47:04 中国标准时间
gpg:                using RSA key B1BC6A94073855D1
gpg: Good signature from "zhaojun (zhaojun's mac) <zhaojun@apache.org>" [ultimate]
==4== gpg --verify apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin.tar.gz ======= ::check success
==
==
==
==
========================================================
==================== apache-shardingsphere-incubating-4.0.1-sharding-jdbc-bin
====================
==================== apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin
====================
wget https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin.tar.gz.asc...
--2020-02-26 18:24:25--  https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin.tar.gz.asc
Connecting to 127.0.0.1:8080... connected.
HTTP request sent, awaiting response... 200 OK
Length: 819 [application/octet-stream]
Saving to: 'apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin.tar.gz.asc'

apache-shardingsphere-incubating-4.0.1-shar 100%[========================================================================================>]     819  --.-KB/s    in 0s

2020-02-26 18:24:26 (29.4 MB/s) - 'apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin.tar.gz.asc' saved [819/819]

==1== https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin.tar.gz.asc ======= ::download success
wget https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin.tar.gz...
--2020-02-26 18:24:26--  https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin.tar.gz
Connecting to 127.0.0.1:8080... connected.
HTTP request sent, awaiting response... 200 OK
Length: 17766859 (17M) [application/octet-stream]
Saving to: 'apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin.tar.gz'

apache-shardingsphere-incubating-4.0.1-shar 100%[========================================================================================>]  16.94M  --.-KB/s    in 0.1s

2020-02-26 18:24:26 (169 MB/s) - 'apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin.tar.gz' saved [17766859/17766859]

==2== https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin.tar.gz ======= ::download success
tar -xf apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin.tar.gz...
check DISCLAIMER/LICENSE/NOTICE files...
==3== DISCLAIMER LICENSE NOTICE files exist ======= ::check success
gpg --verify apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin.tar.gz.asc apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin.tar.gz...
gpg: Signature made 02/25/20 18:47:09 中国标准时间
gpg:                using RSA key B1BC6A94073855D1
gpg: Good signature from "zhaojun (zhaojun's mac) <zhaojun@apache.org>" [ultimate]
==4== gpg --verify apache-shardingsphere-incubating-4.0.1-sharding-proxy-bin.tar.gz ======= ::check success
==
==
==
==
========================================================
==================== apache-shardingsphere-incubating-4.0.1-sharding-ui-bin
====================
==================== apache-shardingsphere-incubating-4.0.1-sharding-ui-bin
====================
wget https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-ui-bin.tar.gz.asc...
--2020-02-26 18:24:27--  https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-ui-bin.tar.gz.asc
Connecting to 127.0.0.1:8080... connected.
HTTP request sent, awaiting response... 200 OK
Length: 819 [application/octet-stream]
Saving to: 'apache-shardingsphere-incubating-4.0.1-sharding-ui-bin.tar.gz.asc'

apache-shardingsphere-incubating-4.0.1-shar 100%[========================================================================================>]     819  --.-KB/s    in 0s

2020-02-26 18:24:27 (25.6 MB/s) - 'apache-shardingsphere-incubating-4.0.1-sharding-ui-bin.tar.gz.asc' saved [819/819]

==1== https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-ui-bin.tar.gz.asc ======= ::download success
wget https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-ui-bin.tar.gz...
--2020-02-26 18:24:27--  https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-ui-bin.tar.gz
Connecting to 127.0.0.1:8080... connected.
HTTP request sent, awaiting response... 200 OK
Length: 23555374 (22M) [application/octet-stream]
Saving to: 'apache-shardingsphere-incubating-4.0.1-sharding-ui-bin.tar.gz'

apache-shardingsphere-incubating-4.0.1-shar 100%[========================================================================================>]  22.46M  29.0MB/s    in 0.8s

2020-02-26 18:24:28 (29.0 MB/s) - 'apache-shardingsphere-incubating-4.0.1-sharding-ui-bin.tar.gz' saved [23555374/23555374]

==2== https://dist.apache.org/repos/dist/dev/incubator/shardingsphere//4.0.1/apache-shardingsphere-incubating-4.0.1-sharding-ui-bin.tar.gz ======= ::download success
tar -xf apache-shardingsphere-incubating-4.0.1-sharding-ui-bin.tar.gz...
check DISCLAIMER/LICENSE/NOTICE files...
==3== DISCLAIMER LICENSE NOTICE files exist ======= ::check success
gpg --verify apache-shardingsphere-incubating-4.0.1-sharding-ui-bin.tar.gz.asc apache-shardingsphere-incubating-4.0.1-sharding-ui-bin.tar.gz...
gpg: Signature made 02/25/20 18:47:14 中国标准时间
gpg:                using RSA key B1BC6A94073855D1
gpg: Good signature from "zhaojun (zhaojun's mac) <zhaojun@apache.org>" [ultimate]
==4== gpg --verify apache-shardingsphere-incubating-4.0.1-sharding-ui-bin.tar.gz ======= ::check success
==
==
==
==
========================================================
===========================done=========================
========================================================

```
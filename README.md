# Description

Dockerized https://github.com/mackerelio/go-check-plugins/tree/master/check-log


# Usage

```
docker build -t check-log .
docker run --rm -v /path/to/log:/var/ check-log --help
```

```
docker run --rm -v /var/log/nginx:/var/log/nginx check-log -r -p curl -f /var/log/nginx/access.log --check-first
```

```
$ docker run --rm -v /var/log/nginx:/var/log/nginx check-log -r -p curl -f /var/log/nginx/access.log --check-first
LOG CRITICAL: 1 warnings, 1 criticals for pattern /curl/.
[/var/log/nginx/access.log]
127.0.0.1 - - [16/Mar/2019:21:54:28 +0900] "GET / HTTP/1.1" 200 612 "-" "curl/7.58.0"
```

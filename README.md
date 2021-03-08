# Io language custom image
Dev environment for fantastic https://iolanguage.org/

## Details
This is an image containing the build of Io [2015.11.11](https://github.com/IoLanguage/io/tree/2015.11.11) version.

It also contains [required libraries](https://github.com/IoLanguage/io/tree/2015.11.11#requirements):
* yajl
* libevent
* pcre

It is based on debian:jessie-slim.

## How to use
Host:
```bash
docker container run -it --rm kraftdorian/iolanguage bash
```

Container:
```bash
io
```

# USAGE

## Build docker container.

```
$ docker build .
$ docker run -ti -v /mnt/cvs2git_vol:/root <IMAGE>
root@CONTAINER:~#
```

## Copy CVS repository.

```
$ cp -a ORIGINAL/CVSREPO/hoge /mnt/cvs2git_vol/cvsrepo/
```

## Convert to git repository

```
root@CONTAINER:~# cvs2git hoge
root@CONTAINER:~# ls gitrepo
hoge.git
```


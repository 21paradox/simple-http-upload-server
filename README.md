# using shell as a http upload webserver 

### this repo demos a way setting up http upload webserver (bash)


server side

```sh
sh ./server.sh -port 8888 -out "output.tgz"
```


client Side
```sh
curl --data-binary @output.tgz http://your-server-ip:port/path
```


## after upload you need to strip http headers

- using vim to delete first rows (http headers)
- sed -i '1,10d' output.tgz // remove first 10 lines



## why
debugging code in limited conditions, where no high level language pre installed.
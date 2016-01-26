# salt-api-test

Test to trigger a system event (service restart) via [Reactor/ZeroMQ](https://docs.saltstack.com/en/develop/topics/reactor/index.html) & the salt [rest_cherrypy api](https://docs.saltstack.com/en/latest/ref/netapi/all/index.html)

## setup

* See source files for the minimum salt configuration
* Start the salt-master in debug mode and check if everything when salt starts reading the config:

```
salt-master -l debug
```

## usage

Stop any system service:

```
/etc/init.d/httpd stop
```

```
curl -skv -H "Accept: application/json" -d tgt='*' -d service="httpd" -d  -k https://127.0.0.1:8080/hook/services/restart
```

Expected: httpd should be started now, http code 200, response: {"success": true}


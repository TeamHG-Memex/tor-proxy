tor-proxy: a tor socks proxy docker image
=========================================

This image is running a tor proxy inside alpine linux.
It is based on `jess/tor-proxy <https://blog.jessfraz.com/post/tor-socks-proxy-and-privoxy-containers/>`_
but has a few tweaks:

* alpine version pinned, tor installed from default package
* logging is less verbose

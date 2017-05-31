tor-proxy: a tor socks proxy docker image
=========================================

This image is running a tor proxy inside alpine linux.
It is based on `jess/tor-proxy <https://blog.jessfraz.com/post/tor-socks-proxy-and-privoxy-containers/>`_
but has a few tweaks:

* alpine version pinned, tor installed from default package
* logging is less verbose

Socks proxy is exposed on port 9050, so an example command to run is::

    docker run --rm --name torproxy -p 9050:9050 hyperiongray/tor-proxy

If you want to expose it as an http/https proxy, use
`jess/privoxy <https://github.com/jessfraz/dockerfiles/blob/master/privoxy/Dockerfile>`_
or `hyperiongray/privoxy <https://github.com/TeamHG-Memex/privoxy>`_::

    docker run --rm --name privoxy --link torproxy -p 8118:8118 hyperiongray/privoxy:0.1.0

License is MIT.

krux-kafka
==========

Import of upstream binary build of Kafka for packaging purpsoses

Packaging
---------

This is a barebones debian packaging setup, using [fpm](https://github.com/jordansissel/fpm).

To create your own package:

* Install [fpm](https://github.com/jordansissel/fpm)
* Run ./package.sh

Repository
----------

You can also add the [Krux](http://www.krux.com) Ubuntu repository to your [/etc/apt/sources.list.d](http://manpages.ubuntu.com/manpages/trusty/man5/sources.list.5.html). There is nothing [lucid](http://releases.ubuntu.com/10.04/) specific about the package, so it should work on any Ubuntu release.

```
deb http://ops.krxd.net/apt/foss lucid production
deb-src http://ops.krxd.net/apt/foss lucid production
```

Updating the source
-------------------

* Download the Kafka+Scala tarball from the [Kafka site](http://kafka.apache.org/downloads.html)
* Extract it in the root of the repository
* Repoint the [kafka](kafka) link to the extracted directory
* Run ./package.sh

Updating the debian package in the Krux repo
--------------------------------------------

Follow the steps above, and then merge your changes into the **release** branch.
Krux' jenkins server will start a build and create the package.






 

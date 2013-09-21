---
layout: post
title: "Downgrade"
tags:
  - aur
  - arch
  - linux
  - bash
---

*A special thanks to Kumyco for hosting the A.R.M.*

## Usage

The 'screenshot'

    downgrade xorg-server
    
    The following packages are available in your cache:
           1       local   xorg-server-1.7.1.901-2-x86_64.pkg.tar.gz [installed]
           2       local   xorg-server-1.7.1.901-1-x86_64.pkg.tar.gz
           3       local   xorg-server-1.7.1-1-x86_64.pkg.tar.gz
           4       local   xorg-server-1.7.0.902-1-x86_64.pkg.tar.gz
           5       local   xorg-server-1.7.0.901-1-x86_64.pkg.tar.gz
           6       local   xorg-server-1.6.3.901-1-x86_64.pkg.tar.gz
           7       local   xorg-server-1.6.3-4-x86_64.pkg.tar.gz
           8       local   xorg-server-1.6.3-3-x86_64.pkg.tar.gz
           9       local   xorg-server-1.6.3-2-x86_64.pkg.tar.gz
           10      local   xorg-server-1.6.2-1-x86_64.pkg.tar.gz
           11      local   xorg-server-1.6.1.901-3-x86_64.pkg.tar.gz
           12      local   xorg-server-1.6.1.901-1-x86_64.pkg.tar.gz

           please choose a version, type s to [s]earch A.R.M.: s

    The following packages are available from the A.R.M.:
           1       extra   xorg-server-1.7.1.901-1-x86_64.pkg.tar.gz
           2       extra   xorg-server-1.7.1-1-x86_64.pkg.tar.gz

           please choose a version, type q to [q]uit: q

The help

    usage: downgrade [ -p <command> ] [ -d <dir> ] [ -m <32|64> ] [ -a ] [ -i ] [ -- ] <pkg> ...
      options:
        -p,--pacman       set install command, default is `sudo pacman -U'
        -d,--pkgdir       set download directory (A.R.M. only), default is `~/Packages'
        -m,--arch         set search architecture (A.R.M. only), default is determined by `uname -m`
        -a,--noarm        don't search the A.R.M when nothing's available in cache
        -i,--noinstalled  don't show [installed] next to installed versions (speed up)


## Installation

Install the AUR package [here][aur].

Grab the source from my git repo [here][repo].

[aur]:  http://aur.archlinux.org/packages.php?ID=31937           "downgrade on the aur"
[repo]: http://github.com/pbrisbin/scripts/blob/master/downgrade "downgrade on github"

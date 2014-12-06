---
title: Display Manager
tags: arch, linux, bash
---

GDM, KDM, SLiM; they all serve one purpose. Accept a username/password 
and start X. The below accomplishes the same in the cleanest, simplest, 
most transparent way I know.

Simply put, if you're logging into the first tty and X isn't already 
running, start it.

Drop this at the bottom of whatever user's `~/.<shell>rc` where you want 
it to apply:

```bash 
if [[ $(tty) = /dev/tty1 ]] && [[ -z "$DISPLAY" ]]; then
  exec startx
fi
```

Make sure you to do put it at the *bottom*; I made the mistake of not 
realizing any settings after the `startx` won't be applied in the X 
environment that's started (duh).

One added benefit here is that if X dies for any reason, you aren't left 
logged in on tty1 like you might be using some other display managers. 
This is since the builtin `exec` replaces the current process with the 
one specified.

For a slightly more featureful bash-based login mechanism, be sure to 
check out [CDM](http://wiki.archlinux.org/index.php/CDM).

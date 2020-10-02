---
title: Text Editor
category: Tools
---

Currently I am using [kakoune](http://kakoune.org/). I think about kakoune as better vim:
My thoughts comparing kakoune to vim are:

1. I like it's modal editing model more
2. It's design around multiple cursors is great
3. Kakoune sticks more the the UNIX Philosophy:
   - it is easy to extend using external programs
   - it is simple (it doesn't even have a window manager)


I use kakoune with tmux as it's window manager. I would prefer to use [dvtm](https://www.brain-dump.org/projects/dvtm/)
but when I tried to implement a simple repl feature I couldn't figure dvtm out. I may try to move back at some point again.


#### [Wiki](./Personal Wiki.md)

I have added a function that follows md links and opens them appropriately using [mimi](https://github.com/BachoSeven/mimi).

### Editor wants

- **homedir management:** currently every kakoune function treates the dir it was opened in as the home dir.
  I would rather it bases commands of off the currently opened buffer.



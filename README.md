Cross-platform asynchronous I/O; Ryan Dahl (2011).

libuv is a multi-platform support library with a focus on asynchronous I/O. It
was primarily developed for use by [Node.js][], but it's also
used by [Luvit](http://luvit.io/), [Julia](http://julialang.org/),
[uvloop](https://github.com/MagicStack/uvloop), and [others](https://github.com/libuv/libuv/blob/v1.x/LINKS.md).

Visit https://github.com/libuv/libuv for API documentation and a tutorial.


## Installation

Run:
```bash
$ npm i libuv.c
```

And then include `uv.h` as follows:
```c
#include "node_modules/libuv.c/uv.h"
```

<br>
<br>


[![ORG](https://img.shields.io/badge/org-nodef-green?logo=Org)](https://nodef.github.io)
![](https://ga-beacon.deno.dev/G-RC63DPBH3P:SH3Eq-NoQ9mwgYeHWxu7cw/github.com/nodef/libuv.c)

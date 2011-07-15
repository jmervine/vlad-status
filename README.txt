= vlad-status

* http://github.com/jmervine/vlad-status

== DESCRIPTION:

Adds support to Vlad for checking app and web server status.


== FEATURES/PROBLEMS:

* Only tested with nginx and unicorn running on Ubuntu.
** Might work with others, but if not should be easy
    to modify for you server, feel free to submit 
    patches.

== SYNOPSIS:

  $ rake <env> vlad:status_web
  $ rake <env> vlad:status_app


== REQUIREMENTS:

* Vlad[http://rubyhitsquad.com/Vlad_the_Deployer.html]

== INSTALL:

    $ sudo gem install vlad-status

== VARIABLES:

* Anything required for vlad.

== LICENSE:

(The MIT License)

Copyright (c) 2011 Joshua Mervine

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

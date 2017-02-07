======================================================================
	README - knopflerfish.org website
======================================================================

o Structure
  The KF web site is built using static web pages.
  There are template pages defining the overall layout. The
  content is taken from html source files and processed to generate
  the final output using an ant build system.

  The files are located as follows
  html_src	HTML source files
  tempplates	Template pages
  css		Style sheets
  images	All images files in the website (.gif etc)

o Target
  The Knopflerfish web site is running on GitHub in the repository
  knopflerfish/knopflerfish.github.io. This then mapped via a CNAME
  to www.knopflerfish.org

o Building
  You build the website using ant,  build.xml is the build file
  and the default target build the entire website. The result
  is placed in the adjacent directory knopflerfish.github.io
  which is assumed to be checked out from GitHub so that the
  result then can be pushed to the server.


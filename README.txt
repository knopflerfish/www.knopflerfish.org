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
  install	Where the generated pages are placed  

o Building
  You build the website using ant,  build.xml is the build file
  and the default target build the entire website.


o Installing
  The Knopflerfish web site is unrring on hinken.sparud.net
  
  The KF www root is in:
  ~wistrand/knopflerfish.org/www/htdocs/
  (this will be updated in the near future, old leftover from the
  past)

o Installing, alt 1
  The Makefile in this dir contains targets to install the web site
  
  > make install_html	Installs all html pages, no images 

  > make install_all	Installs the entire site

  The target assumes you have the same uid on hinken.sparud.net
  and uses scp to copy the files

o Installing, alt 2
  Tar or zip the files in install from the install dir.
  Copy the archive to hinken.sparud.net

  Unpack the arcive in this dir.
  
  Make sure to set 664 permissions on all files so other may change
  it afterwards.



  

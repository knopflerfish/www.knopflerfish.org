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

  Version and release must be specified to build the website, e.g. 
  ant -Dversion=2.0.0 -Drelease=yes

o Installing
  Tar or zip the files in install. 
  Copy the archive to hinken.sparud.net

  The KF www root is in:
  ~wistrand/knopflerfish.org/www/htdocs/
  (this will be updated in the near future, old leftover from the
  past)

  Unpack the arcive in this dir.
  
  Make sure to set 664 permissions on all files so other may change
  it afterwards.



  

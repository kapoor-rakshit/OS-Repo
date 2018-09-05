#!/bin/bash
# NOTE : params in [....] are optional

	ls                    # list files in cur dir

	ls -l                 # -l : long listing of files in dir
	     # output : 'file_type''file_perms''no._of_alias(links)''owner''group''size(bytes)''timestamp''file_name'

	ls -a                 # -a : show hidden files

	ls -arl              # -r : reverse order 

	ls -Slr              # -S : sort acc to sizes (largest first, smallest last)  # -rS : reverse acc to size

	ls -tl               # -t : sort acc to timestamp (cur first, old last)

	ls -lh              # -h : file_size in human readable format



	touch Untitled1.cpp  # if file not exists : create 0B size file to check permissions, else modify access timestamp

	touch -m Untitled1.cpp Untitled5.cpp  # -m : multiple files touched



	cp Untitled1 Untitled5.cpp proj      # copy "src_file1" "src_file2" "dest_loc (dir)"  # last arg is destination

	cp Untitled1 Untitled1.c             # copy "src_file" "dest_file"

	cp Untitled5.cpp ../Programs         # parent dir accessed using ../<dir>/<dir>

	cp -p Untitled5.cpp proj             # -p : preserve original timestamp of copied file

	cp -rp SnackDown proj                # -r : recursive copy , to copy dir to another dir



	mv Untitled5.cpp Untitled1 OS/       # move files to another dir , no copy , preserves timestamp

	mv SnackDown Chemistry ../           # move directories , last arg is destination

	mv BTech Degree                      # if destination not found then rename "file/dir" to "destination name"



	mkdir  firstdir,seconddir          # multiple dirs created with a single mkdir command   
	                                   # NOTE : No space bw dirname and ','

        mkdir -p dir/subdir1/subdir2       # (LINUX)   
	                                   # -p : allows creation of dir/subdirs
					   
	 mkdir dir\subdir1\subdir2          # (WINDOWS)      allows creation of dir/subdirs
                                           #                NOTE : Use of '\' instead of '/' in WINDOWS



	cd                                   # home dir

	cd -                                 # - : prev dir acc to history , where user was


                                           # (WINDOWS)
	rmdir /s dir_with_subdirs           # /s : removes dir and all its NON_EMPTY subdirs , with a CONFIRMATION
	rmdir /s/q dir_with_subdirs         # /q : QUIET mode , removes dir and all its NON_EMPTY subdirs , WITHOUT CONFIRMATION
	
	                                    # (LINUX)
					    # NOTE : rmdir works only with EMPTY dirs , rm works for both file(s) and NON_EMPTY dirs
	rm -r dir_with_subdirs              # -r : removes dir and all its NON_EMPTY subdirs , with a CONFIRMATION
	rm -rf dir_with_subdirs             # -f : removes dir and all its NON_EMPTY subdirs , WITHOUT CONFIRMATION
	
	

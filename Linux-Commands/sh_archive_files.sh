#!/bin/bash

#tar : a tar file is a method of creating an archive file which contains many other files.
#      a tar file isn't compressed.

tar -cvf tarfilename.tar filename1 filename2 dirsname  # -c = create    -v = verbose o/p    -f = files

tar -tvf tarfilename.tar                   # -t = list contents of an archive   -v = verbose o/p   -f = file

tar -xvf ../tarfilename.tar                # cd to dir where wish to extract
                                           # -x = extract    -v = verbose    -f = file

tar -rvf tarfilename.tar /path/to/files      # -r : append files to existing tarfile
                                             # adding files that already exist in the tarfile would be overwritten.

tar -uvf tarfilename.tar /path/to/files       # -u : add files if they are newer than existing files

tar -xkvf tarfilename.tar                     # -k : extracting a tarfile not to overwrite files if they already exist

tar --keep-newer-files -xvf tarfilename.tar   # overwritten if the file in the tarfile is newer than the existing file

tar --remove-files -cvf tarfilename.tar /path/to/files   # remove the original file when it is added to a tarfile

tar -cvfz tarfilename.tar.gz /path/to/files        # -z : compress a tarfile as soon as it is created

tar -xvzf tarfilename.tar.gz                    # decompress the gzipfile and extract the files from the tarfile

tar -xvJf tarfilename.tar.gz                    # -J : tells tar to read or write archives using xz compressor

tar -tzf tarfilename.tar.gz                     # listing Contents of .tar.gz file


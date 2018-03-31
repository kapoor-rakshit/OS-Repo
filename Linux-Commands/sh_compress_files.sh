#!/bin/bash

# only zipped (compressed) files exist with filename.txt.gz, NO duplicate copies created


gzip testfile.txt                # zip a file

gzip -r dirname                  # -r : zip all files of dir
                                 # This doesn't create one file called dirname.gz. 
                                 # Instead, it traverses the directory structure and compresses each file in that folder structure.
                                 # If you want to compress the folder structure as one file create a tar file and then gzipping the tar file.

gzip -k filename.txt             # -k : preserve original and create zipped version also

gzip -l filename.txt.gz          # -l : list of statistics on zipped file i.e. Ratio as a percentage etc...

gzip -lr dirname                 # list of statistics on dir whose contents are zipped



gzip -d testfile.txt             # -d : unzip a file

gzip -dr dirname                 # -dr : recursive unzip dir



gunzip testfile.txt             # unzipping using gunzip command

gunzip -r dirname               # -r : recursive unzipping


DESCRIPTION

This is a reference code implementation to accompany the paper
"Document Binarization with Automatic Parameter Tuning" by Nicholas
R. Howe, to appear in the International Journal on Document Analysis
and Recognition (DOI: 10.1007/s10032-012-0192-x).  Those using this
code or work derived from it should include a citation to this paper.

The code is written in Matlab, but calls a graph cut solver mex-file
that is written in C++ by V. Kolmogorov and available under a separate
license.  The source code for this portion must be downloaded
separately from
http://pub.ist.ac.at/~vnk/software/maxflow-v3.01.src.tar.gz and
compiled via Matlab's mex command.


COMPILING

To compile, you must have a supported compiler installed on your
system.  The Mathworks web site at
http://www.mathworks.com/support/compilers lists several options.
Next you must select the desired compiler in setup.

>> mex -setup

Finally you should compile and link everything together.  Assuming all
source and header files are together in the same directory, just list
them all as arguments to the mex command.

>> mex imgcut3.cpp graph.cpp maxflow.cpp 
>> mex imgcutmulti.cpp graph.cpp maxflow.cpp


RUNNING

The file demo.m shows how to run each of the algorithms described in
the paper.

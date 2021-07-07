## Environment
- **OS**: Linux (Ubuntu is the test system)
- **Tools**:
	- m4: <code>sudo apt-get install m4</code>
	- flex: <code>sudo apt install flex</code>
	- bison: <code>sudo apt install bison</code>
- **Library**:
	- glib (>2.0.0): <code>sudo apt install libglib2.0-dev</code>
	- gmp (>4.0.0): <code>sudo apt install libgmp-dev</code>
	- ssl: <code>sudo apt install libssl-dev</code>
- **Library pbc**:
	- Download source from [http://crypto.stanford.edu/pbc/download.html](http://crypto.stanford.edu/pbc/download.html)
	- Unpack source tarball (eg., <code>tar zxvf pbc-0.5.14.tar.gz</code>)
	- Build source
		- <code>./configure</code> 
		- <code>sudo make</code> 
		- <code>sudo make install</code> 
- **Library cpabe**:
	- Download source from [http://acsc.cs.utexas.edu/cpabe/](http://acsc.cs.utexas.edu/cpabe/)
	- Install the following two software before installing cpabe:
		- <code>sudo apt-get install libssl-dev</code>
		- <code>sudo apt-get install libglib2.0-dev</code>
	- Then go to http://acsc.cs.utexas.edu/cpabe/ to download libbswabe-0.9.tar.gz and cpabe-0.11.tar.gz.
	- Then install cpabe
		- tar -xvf cpabe-0.11.tar.gz
	- Build source
		- <code>cd cpabe-0.11</code>
		- <code>./configure</code> 
		- <code>sudo make</code> 
		(An error will occur after performing this step, enter the Makefile, find the following part starting with LDFLAGS and add -lgmp at the end.)
		- <code>sudo make install</code> 

## Installation
The **MyCPABE** current supports in C.
1. Usage [MyCPABE](USAGE.md)
2. Example [Example program](EXAMPLE.md)
## Reference
- **Paper**:
1. Touati, L., Challal, Y., & Bouabdallah, A. (2014, June). C-cp-abe: Cooperative ciphertext policy attribute-based encryption for the internet of things. In 2014 International Conference on Advanced Networking Distributed Systems and Applications (pp. 64-69). IEEE.
2. Bethencourt, J., Sahai, A., & Waters, B. (2007, May). Ciphertext-policy attribute-based encryption. In 2007 IEEE symposium on security and privacy (SP'07) (pp. 321-334). IEEE.

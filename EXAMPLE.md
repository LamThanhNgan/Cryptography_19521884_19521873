# INSTALL IN C
| Linux |
## Installation

~~~make
make clean
make
sudo make install
~~~	

## Evaluation
Assume there are three users.
- Ngan: Student, Cryptography
- Nam: Student, SystemProgramming
- MyTeacher: Teacher, Cryptography

Chagne directory to example directory
~~~bash
cd MyCPABE
~~~

### Step 1. generate public key and master key
~~~bash
./setup publicKey masterKey
~~~

A public key, **publicKey** (you can change the name), and a master key, **masterKey** (you can change the name), will be generated in MyCPABE directory.

### Step 2. generate the secret keys for Ngan, Nam, and Teacher
~~~base
./keygen sk_Ngan publicKey masterKey 3 "Ngan" "Cryptography" "Student"
./keygen sk_Nam publicKey masterKey 3 "Nam" "SystemProgramming" "Student"
./keygen sk_Teacher publicKey masterKey 3 "MyTeacher" "Cryptography" "Teacher"
~~~
The secret keys, **sk_Ngan**, **sk_Nam**, and **sk_Teacher** will be generated for Ngan, Nam, and MyTeacher in MyCPABE directory.

### Step 3. Encrypt data for Student and Cryptography
According to the users' attributes, only Ngan can decrypt data.
(There is a file data with content in MyCPABE directorty.)

~~~bash
./enc publicKey data "Student and Cryptography" data.enc
./dec publicKey sk_Nam data.enc data  # failed since Nam's subject ís SystemProgramming
./dec publicKey sk_Teacher data.enc data   # failed since MyTeacher is a Teacher
./dec publicKey sk_Ngan data.enc data    # success, data.enc is decrypted to data
~~~

### Step 4. Encrypt data for Cryptography
According to the users' attributes, Ngan and Teacher can decrypt data.
(There is a file data with content in MyCPABE directorty.)

~~~bash
./enc publicKey data "Cryptography" data.enc
./dec publicKey sk_Nam data.enc data   # failed since Nam's subject is SystemProgramming
./dec publicKey sk_Ngan data.enc data    # success, data.enc is decrypred to data
./enc publicKey data "Cryptography" data.enc
./dec publicKey sk_Teacher data.enc data  # success, data.enc is decrypred to data
~~~

### Step 5. Encrypt data for Student
According to the users' attributes, Ngan and Nam can decrypt data.
(There is a file data with content in MyCPABE directorty.)

~~~bash
./enc publicKey data "Student" data.enc
./dec publicKey sk_Teacher data.enc data  # failed since MyTeacher is a teacher
./dec publicKey sk_Nam data.enc data    # success, data.enc is decrypred to data
./enc publicKey data "Student" data.enc
./dec publicKey sk_Ngan data.enc data   # success, data.enc is decrypred to data
~~~

For command usage, please refer the following section.

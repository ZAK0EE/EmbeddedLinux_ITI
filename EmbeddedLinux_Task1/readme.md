# Static Compilation
To do static compilation, you compile your library source code:

```c
gcc -c addition.c subtraction.c multiplication.c division.c modulus.c
```

Now, we create the library:
```c
ar -rcs liboperation.a *.o
```
Now, we link with main.c
```c
gcc -static main.c liboperation.a -o calculator.exe
```

Examining the output:
```
nm -C calculator.exe | grep -E 'addition|subtraction|multiplication|division|modulus'
0000000000401826 T addition
000000000040183e T division
0000000000401862 T modulus
000000000040187b T multiplication
0000000000401892 T subtraction
```
Note that in static build, all library functions are fully defined and exists in text section

# Dynamic Compilation
To do dynamic compilation, you compile your library source code:

```c
gcc -c -fPIC addition.c subtraction.c multiplication.c division.c modulus.c
```

Now, we create the library:
```c
gcc -shared -o liboperation.so *.o
```
Now, we link with main.c
```c
gcc -shared main.c liboperation.so -o calculator.exe
```

Examining the output:
```
nm -C calculator.exe | grep -E 'addition|subtraction|multiplication|division|modulus'
                 U addition
                 U division
                 U modulus
                 U multiplication
                 U subtraction

```
Note that all library functions are undefined and waiting to be linked in runtime by the system loader

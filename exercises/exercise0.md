# Exercise 0

## Requirements

None

## Goals
Everyone should ahve the same working envoironment/IDE after this exercise.

## Exercise

Do the Setup from the Readme.
Once finished go to the FpPass folder and take a look at the FpPass.cpp.
There is a run function inside the FpPass struct. Please output the following in the run function: "Hello from Module: [name of Module]". To do so, use the llvm::outs() function, which behaves like a normal cout() from C++. The Module name of Module M is acessible with getName().

## Test
You can run the FpPass by pressing F5.
This will start a debugging process, if wished you can even set break points in the code.

If everything is correct your program should print the follwoing:
```
Hello World from Module: /workspaces/fp_llvm/test/fft1.ll
```

# Exercise 3

## Requirements

Up till now you should be able to traverse a program normally and by InstVisitor. Also accessing Operands and Data Types should be known by now.

## Goals

In this exercise you will learn how to perform basic transformation and use all gained knowledge up till now to make a simple optimization pass.

## Documentation

### Links

LLVM Intermediate Representation (IR): [LangRef](https://llvm.org/docs/LangRef.html)

LLVM Programmers Manual: [Manual](https://llvm.org/docs/ProgrammersManual.html)

ExampleCode for a simple Transformation: [Code](https://github.com/banach-space/llvm-tutor/blob/main/lib/MBAAdd.cpp#L54)


## Exercise

1. Read [this](https://llvm.org/docs/ProgrammersManual.html#making-simple-changes) part of the LLVM Coders Manual. And check the Example [Code](https://github.com/banach-space/llvm-tutor/blob/main/lib/MBAAdd.cpp#L54) from the LLVMTutor Repository.

2. Find all [mul](https://llvm.org/docs/LangRef.html#mul-instruction) instructions. Mul is a part of the [Binary Operations](https://llvm.org/docs/LangRef.html#binary-operations) and can not visited directly like before. Use this instead:
```cpp
bool IsMul = MyInstruction.getOpcode() == Instruction::Mul;
```
Also make sure that the multiplication is of integer type.
```cpp
bool IsIntType = MyInstruction.isIntegerTy();
```
3. Check all [mul](https://llvm.org/docs/LangRef.html#mul-instruction) instructions, if they have a [constant](https://llvm.org/docs/ProgrammersManual.html#the-constant-class-and-subclasses) integer as operand.

4. Check the constant operand $x$ if it satisfies the following $\exists n \in \mathbb{N}.x = 2^n$. Hint: Take a look at the documentation of LLVM's arbitray precision integers [APInt](https://llvm.org/doxygen/classllvm_1_1APInt.html).



5. When the condition in 4. is true, change the [mul](https://llvm.org/docs/LangRef.html#mul-instruction) instruction by a [shl](https://llvm.org/docs/LangRef.html#shl-instruction) instruction. [Shl](https://llvm.org/docs/LangRef.html#shl-instruction) is an arithmetic left shift, since shift isntrucions are faster than multiplactions on CPUs this simple pass should speed up a program. For this you need to create the new instruction with:
```cpp
Instruction *NewInst = BinaryOperator::CreateShl(...)
```
The previously determined value has to be converted into a Constant Int through:
```cpp
auto *N = ConstantInt::get(...)
```
When the new Instruction is generated it can be replaced through the ReplaceInstWithInst() function. This will replace the old instruction and all its uses with the new instruction. Again read the [Doc](https://llvm.org/docs/ProgrammersManual.html#replacing-an-instruction-with-another-value).

## Solution

There is only one integer mul in the fft1 module "%42", which should be replaced by a shl of 1. Running your pass on fft1 with F5 will generate an out.ll in your repositorys root directory.
Before BB 40 in Line 122 of fft1.ll:
```llvm
40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %7, align 4
  br label %43
```
After BB40 in Line 122 out.ll:
```llvm
40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %43
```

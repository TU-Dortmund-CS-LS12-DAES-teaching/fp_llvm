# Exercise 3

## Requirements

Up till now you should be able to traverse a program normally and by InstVisitor. Also accessing Operands and Data Types should be known by now.

## Goals

In this exercise you will learn how to perform basic transformation and use all gained knowledge up till now to make a simple optimization pass.

## Documentation

### Links

LLVM Intermediate Representation (IR): [LangRef](https://llvm.org/docs/LangRef.html)

LLVM Programmers Manual: [Manual](https://llvm.org/docs/ProgrammersManual.html)

### Add Cool Doku

## Exercise

1. Read [this](https://llvm.org/docs/ProgrammersManual.html#making-simple-changes) part of the LLVM Coders Manual.

2. Find all [mul](https://llvm.org/docs/LangRef.html#mul-instruction) instructions. Mul is a part of the [Binary Operations](https://llvm.org/docs/LangRef.html#binary-operations) and can not visited directly like before. Use this instead:
```cpp
bool IsMul = BO.getOpcode() == Instruction::Mul;
```
3. Check all [mul](https://llvm.org/docs/LangRef.html#mul-instruction) instructions, if they have a [constant](https://llvm.org/docs/ProgrammersManual.html#the-constant-class-and-subclasses) integer as operand.

```cpp
ConstantInt *ConstInt = dyn_cast<ConstantInt>(OP)
IntegerType *CIType = ConstInt->getType();
APInt CIValue = ConstInt->getValue();
```

4. Check the constant operand $x$ if it satisfies the follwoing $x = 2^n, \exists n \in \mathbb{N}$. Tipp: Use std::floor() function.

5. When the condition in 4. is true, change the [mul](https://llvm.org/docs/LangRef.html#mul-instruction) instruction by a [shl](https://llvm.org/docs/LangRef.html#shl-instruction) instruction. [shl](https://llvm.org/docs/LangRef.html#shl-instruction) is an arithmetic left shift, since shift isntrucions are faster than multiplactions on CPUs this simple pass should speed up a program.

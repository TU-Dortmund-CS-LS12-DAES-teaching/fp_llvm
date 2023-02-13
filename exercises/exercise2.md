# Exercise 2

## Requirements

This exercise assumes a basic kopwledge of the LLVM IR and the ability to traverse all instructions with a Module Pass.

## Goals

This exercise a different way to find Values with the [InstVisitor](https://llvm.org/doxygen/classllvm_1_1InstVisitor.html). Also Operands are discussed and used for the first time during this exercise.

## Documentation

### Links

LLVM Intermediate Representation (IR): [LangRef](https://llvm.org/docs/LangRef.html)

LLVM Programmers Manual: [Manual](https://llvm.org/docs/ProgrammersManual.html)

### [InstVisitor](https://llvm.org/doxygen/classllvm_1_1InstVisitor.html)

The instruction visitor allows you to visit specific types of instructions without using many cast operations and loops for iterating over all Values. This will keep the code cleaner. The InstVisitor struct can be created in your namespace, Pass-struct or even in your function. A InsrVisitor for counting all memory allocation instructions would look like this:
```cpp
struct CountAllocaVisitor : public InstVisitor<CountAllocaVisitor> {
  unsigned Count;

  CountAllocaVisitor() : Count(0) {}

  void visitAllocaInst(AllocaInst &AI) { ++Count; }
};
```
The CountAllocaVisitor hold the Count variable and overrides the visitAllocaInst() function. This function is called on every alloc instruction, when the visitor is called as follows:

```cpp
CountAllocaVisitor CAV;
CAV.visit(M);
unsigned NumAllocas = CAV.Count;
```

And another example, to visit mutiple Instructions:
```cpp
struct MyVisitor : public InstVisitor<MyVisitor> {
  void visitCallInst(CallInst &CI) {
    outs() << "I am a Call Instruction !\n";
  }
  void visitUnaryInstruction(UnaryInstruction &UI) {
    outs() << "I am a Unary Instruction !\n";
  }
  void visitCastInst(CastInst &CI) {
    outs() << "Im a Cast Instruction !\n";
  }
  void visitMul(BinaryOperator &I) {
    outs() << "I am a multiplication Instruction !\n";
  }
};
```

When the visit() function is called on the above InstVisitor it will visit all three different Instruction types.

### Operands
Every Value has operands. The Value is definded by the left side of the "=", at least for most Instructions. All the Operators are Values that are used by the current Value and can be found on the right side of the "=".
```llvm
  %45 = add nsw i32 %44, 1
```
In the above example %45 is the current Value or Instruction visited (add). Both of its operands are on the left side. The first is %44 and the second one is a constant 1.
A Values operands can be accessed by the

## Exercise

1. Use the code snippets in the documentation in your FpPass and count all allocas for the fft1 test, which can be called by pressing F5. Also make sure to print your counted number with outs(). If implemented correctly, you should count 35 allocas in the fft1 test.

2. Visit all load instructions and print the data Type (int, bool, ...) of the Value (Loaded into) and the operator (Loaded from). The operand for a load instruction is basically the pointer that a value is loaded from.

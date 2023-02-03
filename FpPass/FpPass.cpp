//=============================================================================
// FILE:
//    FPPass.cpp
//
// DESCRIPTION:
//    Visits all functions in a module, prints their names and the number of
//    arguments via stderr. Strictly speaking, this is an analysis pass (i.e.
//    the functions are not modified). However, in order to keep things simple
//    there's no 'print' method here (every analysis pass should implement it).
//
// USAGE:
//    New PM:
//      opt -load-pass-plugin=libFPPass.dylib -passes=lru-misses `\`
//        -disable-output <input-llvm-file>
//
//
// License: MIT
//=============================================================================
#include "llvm/ADT/StringRef.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

#include <cstddef>
#include <cstdlib>
#include <utility>

//#include "../include/[...].h"

using namespace llvm;

//-----------------------------------------------------------------------------
// FPPass implementation
//-----------------------------------------------------------------------------
// No need to expose the internals of the pass to the outside world - keep
// everything in an anonymous namespace.
namespace {

// New PM implementation

struct FpPass : PassInfoMixin<FpPass> {

  PreservedAnalyses run(Module &M, ModuleAnalysisManager &MAM) {

    return PreservedAnalyses::all();
  }
};

} // namespace

//-----------------------------------------------------------------------------
// New PM Registration
//-----------------------------------------------------------------------------
llvm::PassPluginLibraryInfo getFPPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "FpPass", LLVM_VERSION_STRING,
          [](PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](StringRef Name, ModulePassManager &MPM,
                   ArrayRef<PassBuilder::PipelineElement>) {
                  if (Name == "lru-misses") {
                    MPM.addPass(FpPass());
                    return true; // only looks at CFG
                  }
                  return false; // Analysis pass.
                });
          }};
}

// This is the core interface for pass plugins. It guarantees that 'opt' will
// be able to recognize FPPass when added to the pass pipeline on
// the command line, i.e. via '-passes=lru-misses'
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return getFPPassPluginInfo();
}

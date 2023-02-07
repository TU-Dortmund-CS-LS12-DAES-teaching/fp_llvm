; ModuleID = 'src/sqrt.c'
source_filename = "src/sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @fabs(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %3, align 4
  %4 = load float, float* %3, align 4
  %5 = fcmp olt float %4, 0.000000e+00
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load float, float* %3, align 4
  %8 = fneg float %7
  store float %8, float* %2, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load float, float* %3, align 4
  store float %10, float* %2, align 4
  br label %11

11:                                               ; preds = %9, %6
  %12 = load float, float* %2, align 4
  ret float %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @sqrtfcn(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float %0, float* %2, align 4
  %9 = load float, float* %2, align 4
  %10 = fdiv float %9, 1.000000e+01
  store float %10, float* %3, align 4
  store double 1.000000e-05, double* %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load float, float* %2, align 4
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store float 0.000000e+00, float* %3, align 4
  br label %56

14:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %15

15:                                               ; preds = %52, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 20
  br i1 %17, label %18, label %55

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %18
  %22 = load float, float* %2, align 4
  %23 = load float, float* %3, align 4
  %24 = load float, float* %3, align 4
  %25 = fneg float %23
  %26 = call float @llvm.fmuladd.f32(float %25, float %24, float %22)
  %27 = fpext float %26 to double
  %28 = load float, float* %3, align 4
  %29 = fpext float %28 to double
  %30 = fmul double 2.000000e+00, %29
  %31 = fdiv double %27, %30
  %32 = fptrunc double %31 to float
  store float %32, float* %4, align 4
  %33 = load float, float* %3, align 4
  %34 = load float, float* %4, align 4
  %35 = fadd float %33, %34
  store float %35, float* %3, align 4
  %36 = load float, float* %2, align 4
  %37 = load float, float* %3, align 4
  %38 = load float, float* %3, align 4
  %39 = fneg float %37
  %40 = call float @llvm.fmuladd.f32(float %39, float %38, float %36)
  %41 = fpext float %40 to double
  store double %41, double* %5, align 8
  %42 = load double, double* %5, align 8
  %43 = fptrunc double %42 to float
  %44 = call float @fabs(float noundef %43)
  %45 = fpext float %44 to double
  %46 = load double, double* %6, align 8
  %47 = fcmp ole double %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %21
  br label %51

50:                                               ; preds = %18
  br label %51

51:                                               ; preds = %50, %49
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %15, !llvm.loop !6

55:                                               ; preds = %15
  br label %56

56:                                               ; preds = %55, %13
  %57 = load float, float* %3, align 4
  ret float %57
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}

; ModuleID = 'src/qurt.c'
source_filename = "src/qurt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local global [3 x double] zeroinitializer, align 16
@flag = dso_local global i32 0, align 4
@x1 = dso_local global [2 x double] zeroinitializer, align 16
@x2 = dso_local global [2 x double] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local double @qurt_fabs(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = fcmp oge double %4, 0.000000e+00
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load double, double* %2, align 8
  store double %7, double* %3, align 8
  br label %11

8:                                                ; preds = %1
  %9 = load double, double* %2, align 8
  %10 = fneg double %9
  store double %10, double* %3, align 8
  br label %11

11:                                               ; preds = %8, %6
  %12 = load double, double* %3, align 8
  ret double %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @qurt_sqrt(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store double %0, double* %2, align 8
  %9 = load double, double* %2, align 8
  %10 = fdiv double %9, 1.000000e+01
  store double %10, double* %3, align 8
  store double 1.000000e-05, double* %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load double, double* %2, align 8
  %12 = fcmp oeq double %11, 0.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store double 0.000000e+00, double* %3, align 8
  br label %50

14:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %15

15:                                               ; preds = %46, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 20
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %18
  %22 = load double, double* %2, align 8
  %23 = load double, double* %3, align 8
  %24 = load double, double* %3, align 8
  %25 = fneg double %23
  %26 = call double @llvm.fmuladd.f64(double %25, double %24, double %22)
  %27 = load double, double* %3, align 8
  %28 = fmul double 2.000000e+00, %27
  %29 = fdiv double %26, %28
  store double %29, double* %4, align 8
  %30 = load double, double* %3, align 8
  %31 = load double, double* %4, align 8
  %32 = fadd double %30, %31
  store double %32, double* %3, align 8
  %33 = load double, double* %2, align 8
  %34 = load double, double* %3, align 8
  %35 = load double, double* %3, align 8
  %36 = fneg double %34
  %37 = call double @llvm.fmuladd.f64(double %36, double %35, double %33)
  store double %37, double* %5, align 8
  %38 = load double, double* %5, align 8
  %39 = call double @qurt_fabs(double noundef %38)
  %40 = load double, double* %6, align 8
  %41 = fcmp ole double %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %21
  br label %45

44:                                               ; preds = %18
  br label %45

45:                                               ; preds = %44, %43
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %15, !llvm.loop !6

49:                                               ; preds = %15
  br label %50

50:                                               ; preds = %49, %13
  %51 = load double, double* %3, align 8
  ret double %51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store double 1.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 0), align 16
  store double -3.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 1), align 8
  store double 2.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 2), align 16
  %2 = call i32 @qurt()
  store double 1.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 0), align 16
  store double -2.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 1), align 8
  store double 1.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 2), align 16
  %3 = call i32 @qurt()
  store double 1.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 0), align 16
  store double -4.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 1), align 8
  store double 8.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 2), align 16
  %4 = call i32 @qurt()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @qurt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 0), align 16
  %6 = fcmp oeq double %5, 0.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 999, i32* %1, align 4
  br label %58

8:                                                ; preds = %0
  %9 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 1), align 8
  %10 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 1), align 8
  %11 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 0), align 16
  %12 = fmul double 4.000000e+00, %11
  %13 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 2), align 16
  %14 = fmul double %12, %13
  %15 = fneg double %14
  %16 = call double @llvm.fmuladd.f64(double %9, double %10, double %15)
  store double %16, double* %2, align 8
  %17 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 0), align 16
  %18 = fmul double 2.000000e+00, %17
  store double %18, double* %3, align 8
  %19 = load double, double* %2, align 8
  %20 = call double @qurt_fabs(double noundef %19)
  %21 = call double @qurt_sqrt(double noundef %20)
  store double %21, double* %4, align 8
  %22 = load double, double* %2, align 8
  %23 = fcmp ogt double %22, 0.000000e+00
  br i1 %23, label %24, label %37

24:                                               ; preds = %8
  store i32 1, i32* @flag, align 4
  %25 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 1), align 8
  %26 = fneg double %25
  %27 = load double, double* %4, align 8
  %28 = fadd double %26, %27
  %29 = load double, double* %3, align 8
  %30 = fdiv double %28, %29
  store double %30, double* getelementptr inbounds ([2 x double], [2 x double]* @x1, i64 0, i64 0), align 16
  store double 0.000000e+00, double* getelementptr inbounds ([2 x double], [2 x double]* @x1, i64 0, i64 1), align 8
  %31 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 1), align 8
  %32 = fneg double %31
  %33 = load double, double* %4, align 8
  %34 = fsub double %32, %33
  %35 = load double, double* %3, align 8
  %36 = fdiv double %34, %35
  store double %36, double* getelementptr inbounds ([2 x double], [2 x double]* @x2, i64 0, i64 0), align 16
  store double 0.000000e+00, double* getelementptr inbounds ([2 x double], [2 x double]* @x2, i64 0, i64 1), align 8
  store i32 0, i32* %1, align 4
  br label %58

37:                                               ; preds = %8
  %38 = load double, double* %2, align 8
  %39 = fcmp oeq double %38, 0.000000e+00
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  store i32 0, i32* @flag, align 4
  %41 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 1), align 8
  %42 = fneg double %41
  %43 = load double, double* %3, align 8
  %44 = fdiv double %42, %43
  store double %44, double* getelementptr inbounds ([2 x double], [2 x double]* @x1, i64 0, i64 0), align 16
  store double 0.000000e+00, double* getelementptr inbounds ([2 x double], [2 x double]* @x1, i64 0, i64 1), align 8
  %45 = load double, double* getelementptr inbounds ([2 x double], [2 x double]* @x1, i64 0, i64 0), align 16
  store double %45, double* getelementptr inbounds ([2 x double], [2 x double]* @x2, i64 0, i64 0), align 16
  store double 0.000000e+00, double* getelementptr inbounds ([2 x double], [2 x double]* @x2, i64 0, i64 1), align 8
  store i32 0, i32* %1, align 4
  br label %58

46:                                               ; preds = %37
  store i32 -1, i32* @flag, align 4
  %47 = load double, double* %3, align 8
  %48 = load double, double* %4, align 8
  %49 = fdiv double %48, %47
  store double %49, double* %4, align 8
  %50 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 1), align 8
  %51 = fneg double %50
  %52 = load double, double* %3, align 8
  %53 = fdiv double %51, %52
  store double %53, double* getelementptr inbounds ([2 x double], [2 x double]* @x1, i64 0, i64 0), align 16
  %54 = load double, double* %4, align 8
  store double %54, double* getelementptr inbounds ([2 x double], [2 x double]* @x1, i64 0, i64 1), align 8
  %55 = load double, double* getelementptr inbounds ([2 x double], [2 x double]* @x1, i64 0, i64 0), align 16
  store double %55, double* getelementptr inbounds ([2 x double], [2 x double]* @x2, i64 0, i64 0), align 16
  %56 = load double, double* %4, align 8
  %57 = fneg double %56
  store double %57, double* getelementptr inbounds ([2 x double], [2 x double]* @x2, i64 0, i64 1), align 8
  store i32 0, i32* %1, align 4
  br label %58

58:                                               ; preds = %46, %40, %24, %7
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

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

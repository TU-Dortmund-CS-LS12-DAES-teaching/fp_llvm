; ModuleID = 'src/lms.c'
source_filename = "src/lms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@mu = dso_local global float 0x3F847AE140000000, align 4
@lms_rand.next = internal global i64 1, align 8
@main.d = internal global [201 x float] zeroinitializer, align 16
@main.b = internal global [21 x float] zeroinitializer, align 16
@lms.px = internal global [51 x float] zeroinitializer, align 16
@lms.sigma = internal global float 2.000000e+00, align 4
@gaussian.ready = internal global i32 0, align 4
@gaussian.gstore = internal global float 0.000000e+00, align 4
@gaussian.rconst1 = internal global float 0x3F10000000000000, align 4
@gaussian.rconst2 = internal global float 1.638400e+04, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lms_rand() #0 {
  %1 = load i64, i64* @lms_rand.next, align 8
  %2 = mul i64 %1, 1103515245
  %3 = add i64 %2, 12345
  store i64 %3, i64* @lms_rand.next, align 8
  %4 = load i64, i64* @lms_rand.next, align 8
  %5 = udiv i64 %4, 65536
  %6 = trunc i64 %5 to i32
  %7 = urem i32 %6, 32768
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = call float @lms_sqrt(double noundef 2.000000e+00)
  store float %7, float* %2, align 4
  %8 = call float @lms_sqrt(double noundef 1.200000e+01)
  %9 = fpext float %8 to double
  %10 = fmul double 2.000000e-01, %9
  %11 = fptrunc double %10 to float
  store float %11, float* %3, align 4
  store float 0x3FD41B2F80000000, float* %4, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %30, %0
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 201
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load float, float* %2, align 4
  %17 = load float, float* %4, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sitofp i32 %18 to float
  %20 = fmul float %17, %19
  %21 = fpext float %20 to double
  %22 = call float @lms_sin(double noundef %21)
  %23 = load float, float* %3, align 4
  %24 = call float @gaussian()
  %25 = fmul float %23, %24
  %26 = call float @llvm.fmuladd.f32(float %16, float %22, float %25)
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [201 x float], [201 x float]* @main.d, i64 0, i64 %28
  store float %26, float* %29, align 4
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %12, !llvm.loop !6

33:                                               ; preds = %12
  %34 = load float, float* @mu, align 4
  %35 = fpext float %34 to double
  %36 = fmul double 2.000000e+00, %35
  %37 = fdiv double %36, 2.100000e+01
  %38 = fptrunc double %37 to float
  store float %38, float* @mu, align 4
  store float 0.000000e+00, float* %5, align 4
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %54, %33
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 201
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load float, float* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [201 x float], [201 x float]* @main.d, i64 0, i64 %45
  %47 = load float, float* %46, align 4
  %48 = load float, float* @mu, align 4
  %49 = call float @lms(float noundef %43, float noundef %47, float* noundef getelementptr inbounds ([21 x float], [21 x float]* @main.b, i64 0, i64 0), i32 noundef 20, float noundef %48, float noundef 0x3F847AE140000000)
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [201 x float], [201 x float]* @main.d, i64 0, i64 %51
  %53 = load float, float* %52, align 4
  store float %53, float* %5, align 4
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %39, !llvm.loop !8

57:                                               ; preds = %39
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal float @lms_sqrt(double noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = fptrunc double %0 to float
  store float %9, float* %2, align 4
  %10 = load float, float* %2, align 4
  %11 = fdiv float %10, 1.000000e+01
  store float %11, float* %3, align 4
  store double 1.000000e-05, double* %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load float, float* %2, align 4
  %13 = fcmp oeq float %12, 0.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store float 0.000000e+00, float* %3, align 4
  br label %57

15:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %53, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 20
  br i1 %18, label %19, label %56

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %19
  %23 = load float, float* %2, align 4
  %24 = load float, float* %3, align 4
  %25 = load float, float* %3, align 4
  %26 = fneg float %24
  %27 = call float @llvm.fmuladd.f32(float %26, float %25, float %23)
  %28 = fpext float %27 to double
  %29 = load float, float* %3, align 4
  %30 = fpext float %29 to double
  %31 = fmul double 2.000000e+00, %30
  %32 = fdiv double %28, %31
  %33 = fptrunc double %32 to float
  store float %33, float* %4, align 4
  %34 = load float, float* %3, align 4
  %35 = load float, float* %4, align 4
  %36 = fadd float %34, %35
  store float %36, float* %3, align 4
  %37 = load float, float* %2, align 4
  %38 = load float, float* %3, align 4
  %39 = load float, float* %3, align 4
  %40 = fneg float %38
  %41 = call float @llvm.fmuladd.f32(float %40, float %39, float %37)
  %42 = fpext float %41 to double
  store double %42, double* %5, align 8
  %43 = load double, double* %5, align 8
  %44 = fptrunc double %43 to float
  %45 = call float @lms_fabs(float noundef %44)
  %46 = fpext float %45 to double
  %47 = load double, double* %6, align 8
  %48 = fcmp ole double %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %22
  br label %52

51:                                               ; preds = %19
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %16, !llvm.loop !9

56:                                               ; preds = %16
  br label %57

57:                                               ; preds = %56, %14
  %58 = load float, float* %3, align 4
  ret float %58
}

; Function Attrs: noinline nounwind uwtable
define internal float @lms_sin(double noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = fptrunc double %0 to float
  store float %6, float* %2, align 4
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %11, %1
  %8 = load float, float* %2, align 4
  %9 = fpext float %8 to double
  %10 = fcmp ogt double %9, 0x401921FB54442D18
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load float, float* %2, align 4
  %13 = fpext float %12 to double
  %14 = fsub double %13, 0x401921FB54442D18
  %15 = fptrunc double %14 to float
  store float %15, float* %2, align 4
  br label %7, !llvm.loop !10

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %21, %16
  %18 = load float, float* %2, align 4
  %19 = fpext float %18 to double
  %20 = fcmp olt double %19, 0xC01921FB54442D18
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load float, float* %2, align 4
  %23 = fpext float %22 to double
  %24 = fadd double %23, 0x401921FB54442D18
  %25 = fptrunc double %24 to float
  store float %25, float* %2, align 4
  br label %17, !llvm.loop !11

26:                                               ; preds = %17
  %27 = load float, float* %2, align 4
  store float %27, float* %4, align 4
  store float %27, float* %3, align 4
  %28 = load float, float* %4, align 4
  %29 = load float, float* %2, align 4
  %30 = load float, float* %2, align 4
  %31 = fmul float %29, %30
  %32 = fneg float %31
  %33 = fmul float %28, %32
  %34 = fpext float %33 to double
  %35 = load i32, i32* %5, align 4
  %36 = sitofp i32 %35 to double
  %37 = fmul double 2.000000e+00, %36
  %38 = load i32, i32* %5, align 4
  %39 = sitofp i32 %38 to double
  %40 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %39, double 1.000000e+00)
  %41 = fmul double %37, %40
  %42 = fdiv double %34, %41
  %43 = fptrunc double %42 to float
  store float %43, float* %4, align 4
  %44 = load float, float* %3, align 4
  %45 = load float, float* %4, align 4
  %46 = fadd float %44, %45
  store float %46, float* %3, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %54, %26
  %50 = load float, float* %4, align 4
  %51 = call float @lms_fabs(float noundef %50)
  %52 = fpext float %51 to double
  %53 = fcmp oge double %52, 1.000000e-05
  br i1 %53, label %54, label %76

54:                                               ; preds = %49
  %55 = load float, float* %4, align 4
  %56 = load float, float* %2, align 4
  %57 = load float, float* %2, align 4
  %58 = fmul float %56, %57
  %59 = fneg float %58
  %60 = fmul float %55, %59
  %61 = fpext float %60 to double
  %62 = load i32, i32* %5, align 4
  %63 = sitofp i32 %62 to double
  %64 = fmul double 2.000000e+00, %63
  %65 = load i32, i32* %5, align 4
  %66 = sitofp i32 %65 to double
  %67 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %66, double 1.000000e+00)
  %68 = fmul double %64, %67
  %69 = fdiv double %61, %68
  %70 = fptrunc double %69 to float
  store float %70, float* %4, align 4
  %71 = load float, float* %3, align 4
  %72 = load float, float* %4, align 4
  %73 = fadd float %71, %72
  store float %73, float* %3, align 4
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %49, !llvm.loop !12

76:                                               ; preds = %49
  %77 = load float, float* %3, align 4
  ret float %77
}

; Function Attrs: noinline nounwind uwtable
define internal float @gaussian() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = load i32, i32* @gaussian.ready, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %68

8:                                                ; preds = %0
  %9 = call i32 @lms_rand()
  %10 = sitofp i32 %9 to float
  %11 = load float, float* @gaussian.rconst2, align 4
  %12 = fsub float %10, %11
  store float %12, float* %1, align 4
  %13 = call i32 @lms_rand()
  %14 = sitofp i32 %13 to float
  %15 = load float, float* @gaussian.rconst2, align 4
  %16 = fsub float %14, %15
  store float %16, float* %2, align 4
  %17 = load float, float* @gaussian.rconst1, align 4
  %18 = load float, float* %1, align 4
  %19 = fmul float %18, %17
  store float %19, float* %1, align 4
  %20 = load float, float* @gaussian.rconst1, align 4
  %21 = load float, float* %2, align 4
  %22 = fmul float %21, %20
  store float %22, float* %2, align 4
  %23 = load float, float* %1, align 4
  %24 = load float, float* %1, align 4
  %25 = load float, float* %2, align 4
  %26 = load float, float* %2, align 4
  %27 = fmul float %25, %26
  %28 = call float @llvm.fmuladd.f32(float %23, float %24, float %27)
  store float %28, float* %3, align 4
  br label %29

29:                                               ; preds = %32, %8
  %30 = load float, float* %3, align 4
  %31 = fcmp ogt float %30, 1.000000e+00
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = call i32 @lms_rand()
  %34 = sitofp i32 %33 to float
  %35 = load float, float* @gaussian.rconst2, align 4
  %36 = fsub float %34, %35
  store float %36, float* %1, align 4
  %37 = call i32 @lms_rand()
  %38 = sitofp i32 %37 to float
  %39 = load float, float* @gaussian.rconst2, align 4
  %40 = fsub float %38, %39
  store float %40, float* %2, align 4
  %41 = load float, float* @gaussian.rconst1, align 4
  %42 = load float, float* %1, align 4
  %43 = fmul float %42, %41
  store float %43, float* %1, align 4
  %44 = load float, float* @gaussian.rconst1, align 4
  %45 = load float, float* %2, align 4
  %46 = fmul float %45, %44
  store float %46, float* %2, align 4
  %47 = load float, float* %1, align 4
  %48 = load float, float* %1, align 4
  %49 = load float, float* %2, align 4
  %50 = load float, float* %2, align 4
  %51 = fmul float %49, %50
  %52 = call float @llvm.fmuladd.f32(float %47, float %48, float %51)
  store float %52, float* %3, align 4
  br label %29, !llvm.loop !13

53:                                               ; preds = %29
  %54 = load float, float* %3, align 4
  %55 = fpext float %54 to double
  %56 = call float @lms_log(double noundef %55)
  %57 = fmul float -2.000000e+00, %56
  %58 = load float, float* %3, align 4
  %59 = fdiv float %57, %58
  %60 = fpext float %59 to double
  %61 = call float @lms_sqrt(double noundef %60)
  store float %61, float* %4, align 4
  %62 = load float, float* %1, align 4
  %63 = load float, float* %4, align 4
  %64 = fmul float %62, %63
  store float %64, float* @gaussian.gstore, align 4
  %65 = load float, float* %2, align 4
  %66 = load float, float* %4, align 4
  %67 = fmul float %65, %66
  store float %67, float* %5, align 4
  store i32 1, i32* @gaussian.ready, align 4
  br label %70

68:                                               ; preds = %0
  store i32 0, i32* @gaussian.ready, align 4
  %69 = load float, float* @gaussian.gstore, align 4
  store float %69, float* %5, align 4
  br label %70

70:                                               ; preds = %68, %53
  %71 = load float, float* %5, align 4
  ret float %71
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind uwtable
define dso_local float @lms(float noundef %0, float noundef %1, float* noundef %2, i32 noundef %3, float noundef %4, float noundef %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %17 = load float, float* %7, align 4
  store float %17, float* getelementptr inbounds ([51 x float], [51 x float]* @lms.px, i64 0, i64 0), align 16
  %18 = load float*, float** %9, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  %20 = load float, float* %19, align 4
  %21 = load float, float* getelementptr inbounds ([51 x float], [51 x float]* @lms.px, i64 0, i64 0), align 16
  %22 = fmul float %20, %21
  store float %22, float* %16, align 4
  store i32 1, i32* %13, align 4
  br label %23

23:                                               ; preds = %39, %6
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load float, float* %16, align 4
  %29 = load float*, float** %9, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  %33 = load float, float* %32, align 4
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [51 x float], [51 x float]* @lms.px, i64 0, i64 %35
  %37 = load float, float* %36, align 4
  %38 = call float @llvm.fmuladd.f32(float %33, float %37, float %28)
  store float %38, float* %16, align 4
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %23, !llvm.loop !14

42:                                               ; preds = %23
  %43 = load float, float* %8, align 4
  %44 = load float, float* %16, align 4
  %45 = fsub float %43, %44
  store float %45, float* %14, align 4
  %46 = load float, float* %12, align 4
  %47 = load float, float* getelementptr inbounds ([51 x float], [51 x float]* @lms.px, i64 0, i64 0), align 16
  %48 = load float, float* getelementptr inbounds ([51 x float], [51 x float]* @lms.px, i64 0, i64 0), align 16
  %49 = fmul float %47, %48
  %50 = load float, float* %12, align 4
  %51 = fsub float 1.000000e+00, %50
  %52 = load float, float* @lms.sigma, align 4
  %53 = fmul float %51, %52
  %54 = call float @llvm.fmuladd.f32(float %46, float %49, float %53)
  store float %54, float* @lms.sigma, align 4
  %55 = load float, float* %11, align 4
  %56 = load float, float* %14, align 4
  %57 = fmul float %55, %56
  %58 = load float, float* @lms.sigma, align 4
  %59 = fdiv float %57, %58
  store float %59, float* %15, align 4
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %80, %42
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  %65 = load float*, float** %9, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %65, i64 %67
  %69 = load float, float* %68, align 4
  %70 = load float, float* %15, align 4
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [51 x float], [51 x float]* @lms.px, i64 0, i64 %72
  %74 = load float, float* %73, align 4
  %75 = call float @llvm.fmuladd.f32(float %70, float %74, float %69)
  %76 = load float*, float** %9, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  store float %75, float* %79, align 4
  br label %80

80:                                               ; preds = %64
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %60, !llvm.loop !15

83:                                               ; preds = %60
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %97, %83
  %86 = load i32, i32* %13, align 4
  %87 = icmp sge i32 %86, 1
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load i32, i32* %13, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [51 x float], [51 x float]* @lms.px, i64 0, i64 %91
  %93 = load float, float* %92, align 4
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [51 x float], [51 x float]* @lms.px, i64 0, i64 %95
  store float %93, float* %96, align 4
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %13, align 4
  br label %85, !llvm.loop !16

100:                                              ; preds = %85
  %101 = load float, float* %16, align 4
  ret float %101
}

; Function Attrs: noinline nounwind uwtable
define internal float @lms_fabs(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = fcmp oge float %4, 0.000000e+00
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load float, float* %2, align 4
  store float %7, float* %3, align 4
  br label %11

8:                                                ; preds = %1
  %9 = load float, float* %2, align 4
  %10 = fneg float %9
  store float %10, float* %3, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = load float, float* %3, align 4
  ret float %12
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define internal float @lms_log(double noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = fptrunc double %0 to float
  store float %3, float* %2, align 4
  ret float 4.500000e+00
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}

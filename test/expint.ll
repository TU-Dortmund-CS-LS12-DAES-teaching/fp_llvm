; ModuleID = 'src/expint.c'
source_filename = "src/expint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @main() #0 {
  %1 = call i64 @expint(i32 noundef 50, i64 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @expint(i32 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %8, align 4
  %20 = load i64, i64* %5, align 8
  %21 = icmp sgt i64 %20, 1
  br i1 %21, label %22, label %71

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  store i64 %26, i64* %10, align 8
  store i64 2000000, i64* %11, align 8
  store i64 30000000, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  store i64 %27, i64* %15, align 8
  store i32 1, i32* %6, align 4
  br label %28

28:                                               ; preds = %67, %22
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %29, 100
  br i1 %30, label %31, label %70

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 0, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  %37 = mul nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add nsw i64 %39, 2
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %12, align 8
  %43 = mul nsw i64 %41, %42
  %44 = load i64, i64* %10, align 8
  %45 = add nsw i64 %43, %44
  %46 = mul nsw i64 10, %45
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %11, align 8
  %50 = sdiv i64 %48, %49
  %51 = add nsw i64 %47, %50
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = mul nsw i64 %52, %53
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %15, align 8
  %57 = mul nsw i64 %56, %55
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp slt i64 %58, 10000
  br i1 %59, label %60, label %66

60:                                               ; preds = %31
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %5, align 8
  %63 = sub nsw i64 0, %62
  %64 = mul nsw i64 %61, %63
  store i64 %64, i64* %17, align 8
  %65 = load i64, i64* %17, align 8
  store i64 %65, i64* %3, align 8
  br label %131

66:                                               ; preds = %31
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %28, !llvm.loop !6

70:                                               ; preds = %28
  br label %129

71:                                               ; preds = %2
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 2, i32 1000
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %17, align 8
  store i64 1, i64* %14, align 8
  store i32 1, i32* %6, align 4
  br label %77

77:                                               ; preds = %125, %71
  %78 = load i32, i32* %6, align 4
  %79 = icmp sle i32 %78, 100
  br i1 %79, label %80, label %128

80:                                               ; preds = %77
  %81 = load i64, i64* %5, align 8
  %82 = sub nsw i64 0, %81
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = sdiv i64 %82, %84
  %86 = load i64, i64* %14, align 8
  %87 = mul nsw i64 %86, %85
  store i64 %87, i64* %14, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %80
  %92 = load i64, i64* %14, align 8
  %93 = sub nsw i64 0, %92
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = sdiv i64 %93, %97
  store i64 %98, i64* %13, align 8
  br label %121

99:                                               ; preds = %80
  store i64 255, i64* %16, align 8
  store i32 1, i32* %7, align 4
  br label %100

100:                                              ; preds = %111, %99
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %100
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %16, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %16, align 8
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %100, !llvm.loop !8

114:                                              ; preds = %100
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* %5, align 8
  %118 = call i64 @foo(i64 noundef %117)
  %119 = mul nsw i64 %116, %118
  %120 = add nsw i64 %115, %119
  store i64 %120, i64* %13, align 8
  br label %121

121:                                              ; preds = %114, %91
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* %17, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %17, align 8
  br label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %77, !llvm.loop !9

128:                                              ; preds = %77
  br label %129

129:                                              ; preds = %128, %70
  %130 = load i64, i64* %17, align 8
  store i64 %130, i64* %3, align 8
  br label %131

131:                                              ; preds = %129, %60
  %132 = load i64, i64* %3, align 8
  ret i64 %132
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @foo(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = mul nsw i64 %3, %4
  %6 = load i64, i64* %2, align 8
  %7 = mul nsw i64 8, %6
  %8 = add nsw i64 %5, %7
  %9 = load i64, i64* %2, align 8
  %10 = sub nsw i64 4, %9
  %11 = shl i64 %8, %10
  ret i64 %11
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

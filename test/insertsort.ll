; ModuleID = 'src/insertsort.c'
source_filename = "src/insertsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local global [11 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 0), align 16
  store i32 11, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 1), align 4
  store i32 10, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 2), align 8
  store i32 9, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 3), align 4
  store i32 8, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 4), align 16
  store i32 7, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 5), align 4
  store i32 6, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 6), align 8
  store i32 5, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 7), align 4
  store i32 4, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 8), align 16
  store i32 3, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 9), align 4
  store i32 2, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 10), align 8
  store i32 2, i32* %2, align 4
  br label %5

5:                                                ; preds = %41, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %6, 10
  br i1 %7, label %8, label %44

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %21, %8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [11 x i32], [11 x i32]* @a, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [11 x i32], [11 x i32]* @a, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %14, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %10
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [11 x i32], [11 x i32]* @a, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [11 x i32], [11 x i32]* @a, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [11 x i32], [11 x i32]* @a, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [11 x i32], [11 x i32]* @a, i64 0, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %3, align 4
  br label %10, !llvm.loop !6

41:                                               ; preds = %10
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %5, !llvm.loop !8

44:                                               ; preds = %5
  ret i32 1
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

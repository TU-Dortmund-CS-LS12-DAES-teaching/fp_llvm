; ModuleID = 'src/matmult.c'
source_filename = "src/matmult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ArrayA = dso_local global [20 x [20 x i32]] zeroinitializer, align 16
@ArrayB = dso_local global [20 x [20 x i32]] zeroinitializer, align 16
@ResultArray = dso_local global [20 x [20 x i32]] zeroinitializer, align 16
@Seed = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @main() #0 {
  call void @InitSeed()
  call void @Test([20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ArrayA, i64 0, i64 0), [20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ArrayB, i64 0, i64 0), [20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ResultArray, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitSeed() #0 {
  store i32 0, i32* @Seed, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Test([20 x i32]* noundef %0, [20 x i32]* noundef %1, [20 x i32]* noundef %2) #0 {
  %4 = alloca [20 x i32]*, align 8
  %5 = alloca [20 x i32]*, align 8
  %6 = alloca [20 x i32]*, align 8
  store [20 x i32]* %0, [20 x i32]** %4, align 8
  store [20 x i32]* %1, [20 x i32]** %5, align 8
  store [20 x i32]* %2, [20 x i32]** %6, align 8
  %7 = load [20 x i32]*, [20 x i32]** %4, align 8
  call void @Initialize([20 x i32]* noundef %7)
  %8 = load [20 x i32]*, [20 x i32]** %5, align 8
  call void @Initialize([20 x i32]* noundef %8)
  %9 = load [20 x i32]*, [20 x i32]** %4, align 8
  %10 = load [20 x i32]*, [20 x i32]** %5, align 8
  %11 = load [20 x i32]*, [20 x i32]** %6, align 8
  call void @Multiply([20 x i32]* noundef %9, [20 x i32]* noundef %10, [20 x i32]* noundef %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initialize([20 x i32]* noundef %0) #0 {
  %2 = alloca [20 x i32]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store [20 x i32]* %0, [20 x i32]** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 20
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %21, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 20
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = call i32 @RandomInteger()
  %14 = load [20 x i32]*, [20 x i32]** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 %16
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [20 x i32], [20 x i32]* %17, i64 0, i64 %19
  store i32 %13, i32* %20, align 4
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %9, !llvm.loop !6

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5, !llvm.loop !8

28:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Multiply([20 x i32]* noundef %0, [20 x i32]* noundef %1, [20 x i32]* noundef %2) #0 {
  %4 = alloca [20 x i32]*, align 8
  %5 = alloca [20 x i32]*, align 8
  %6 = alloca [20 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store [20 x i32]* %0, [20 x i32]** %4, align 8
  store [20 x i32]* %1, [20 x i32]** %5, align 8
  store [20 x i32]* %2, [20 x i32]** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %63, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 20
  br i1 %12, label %13, label %66

13:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %59, %13
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 20
  br i1 %16, label %17, label %62

17:                                               ; preds = %14
  %18 = load [20 x i32]*, [20 x i32]** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [20 x i32], [20 x i32]* %18, i64 %20
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [20 x i32], [20 x i32]* %21, i64 0, i64 %23
  store i32 0, i32* %24, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %55, %17
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 20
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = load [20 x i32]*, [20 x i32]** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [20 x i32], [20 x i32]* %29, i64 %31
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [20 x i32], [20 x i32]* %32, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load [20 x i32]*, [20 x i32]** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [20 x i32], [20 x i32]* %37, i64 %39
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [20 x i32], [20 x i32]* %40, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %36, %44
  %46 = load [20 x i32]*, [20 x i32]** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [20 x i32], [20 x i32]* %46, i64 %48
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [20 x i32], [20 x i32]* %49, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %45
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %28
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %25, !llvm.loop !9

58:                                               ; preds = %25
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %14, !llvm.loop !10

62:                                               ; preds = %14
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %10, !llvm.loop !11

66:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @RandomInteger() #0 {
  %1 = load i32, i32* @Seed, align 4
  %2 = mul nsw i32 %1, 133
  %3 = add nsw i32 %2, 81
  %4 = srem i32 %3, 8095
  store i32 %4, i32* @Seed, align 4
  %5 = load i32, i32* @Seed, align 4
  ret i32 %5
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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}

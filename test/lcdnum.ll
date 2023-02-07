; ModuleID = 'src/lcdnum.c'
source_filename = "src/lcdnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@IN = dso_local global i8 0, align 1
@OUT = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @num_to_lcd(i8 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  switch i32 %5, label %22 [
    i32 0, label %6
    i32 1, label %7
    i32 2, label %8
    i32 3, label %9
    i32 4, label %10
    i32 5, label %11
    i32 6, label %12
    i32 7, label %13
    i32 8, label %14
    i32 9, label %15
    i32 10, label %16
    i32 11, label %17
    i32 12, label %18
    i32 13, label %19
    i32 14, label %20
    i32 15, label %21
  ]

6:                                                ; preds = %1
  store i8 0, i8* %2, align 1
  br label %23

7:                                                ; preds = %1
  store i8 36, i8* %2, align 1
  br label %23

8:                                                ; preds = %1
  store i8 93, i8* %2, align 1
  br label %23

9:                                                ; preds = %1
  store i8 109, i8* %2, align 1
  br label %23

10:                                               ; preds = %1
  store i8 46, i8* %2, align 1
  br label %23

11:                                               ; preds = %1
  store i8 93, i8* %2, align 1
  br label %23

12:                                               ; preds = %1
  store i8 123, i8* %2, align 1
  br label %23

13:                                               ; preds = %1
  store i8 37, i8* %2, align 1
  br label %23

14:                                               ; preds = %1
  store i8 127, i8* %2, align 1
  br label %23

15:                                               ; preds = %1
  store i8 111, i8* %2, align 1
  br label %23

16:                                               ; preds = %1
  store i8 63, i8* %2, align 1
  br label %23

17:                                               ; preds = %1
  store i8 122, i8* %2, align 1
  br label %23

18:                                               ; preds = %1
  store i8 83, i8* %2, align 1
  br label %23

19:                                               ; preds = %1
  store i8 124, i8* %2, align 1
  br label %23

20:                                               ; preds = %1
  store i8 91, i8* %2, align 1
  br label %23

21:                                               ; preds = %1
  store i8 27, i8* %2, align 1
  br label %23

22:                                               ; preds = %1
  store i8 0, i8* %2, align 1
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %24 = load i8, i8* %2, align 1
  ret i8 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 10, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %21, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load volatile i8, i8* @IN, align 1
  store i8 %10, i8* %3, align 1
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 5
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8, i8* %3, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 15
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %3, align 1
  %18 = load i8, i8* %3, align 1
  %19 = call zeroext i8 @num_to_lcd(i8 noundef zeroext %18)
  store volatile i8 %19, i8* @OUT, align 1
  br label %20

20:                                               ; preds = %13, %9
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %5, !llvm.loop !6

24:                                               ; preds = %5
  ret i32 0
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

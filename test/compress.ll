; ModuleID = 'src/compress.c'
source_filename = "src/compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@maxbits = dso_local global i32 16, align 4
@maxmaxcode = dso_local global i64 65536, align 8
@hsize = dso_local global i64 257, align 8
@free_ent = dso_local global i64 0, align 8
@exit_stat = dso_local global i32 0, align 4
@nomagic = dso_local global i32 1, align 4
@zcat_flg = dso_local global i32 0, align 4
@quiet = dso_local global i32 1, align 4
@block_compress = dso_local global i32 128, align 4
@clear_flg = dso_local global i32 0, align 4
@ratio = dso_local global i64 0, align 8
@checkpoint = dso_local global i64 10000, align 8
@force = dso_local global i32 0, align 4
@InCnt = dso_local global i32 0, align 4
@apsim_InCnt = dso_local global i32 0, align 4
@orig_text_buffer = dso_local global [50 x i8] zeroinitializer, align 16
@InBuff = dso_local global i8* null, align 8
@comp_text_buffer = dso_local global [55 x i8] zeroinitializer, align 16
@OutBuff = dso_local global i8* null, align 8
@in_count = dso_local global i64 1, align 8
@out_count = dso_local global i64 0, align 8
@offset = internal global i32 0, align 4
@bytes_out = dso_local global i64 0, align 8
@n_bits = dso_local global i32 0, align 4
@maxcode = dso_local global i64 0, align 8
@htab = dso_local global [257 x i64] zeroinitializer, align 16
@codetab = dso_local global [257 x i16] zeroinitializer, align 16
@lmask = dso_local global [9 x i8] c"\FF\FE\FC\F8\F0\E0\C0\80\00", align 1
@rmask = dso_local global [9 x i8] c"\00\01\03\07\0F\1F?\7F\FF", align 1
@buf = dso_local global [16 x i8] zeroinitializer, align 16
@fsize = dso_local global i64 0, align 8
@ofname = dso_local global [100 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 50, i32* %2, align 4
  call void @initbuffer()
  store i32 16, i32* @maxbits, align 4
  %3 = load i32, i32* @maxbits, align 4
  %4 = shl i32 1, %3
  %5 = sext i32 %4 to i64
  store i64 %5, i64* @maxmaxcode, align 8
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* @InCnt, align 4
  store i32 53, i32* @apsim_InCnt, align 4
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @orig_text_buffer, i64 0, i64 0), i8** @InBuff, align 8
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @comp_text_buffer, i64 0, i64 0), i8** @OutBuff, align 8
  call void @compress()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initbuffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %19, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 50
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %1, align 4
  %10 = mul nsw i32 %9, 133
  %11 = add nsw i32 %10, 81
  %12 = srem i32 %11, 8095
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = srem i32 %13, 256
  %15 = trunc i32 %14 to i8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [50 x i8], [50 x i8]* @orig_text_buffer, i64 0, i64 %17
  store i8 %15, i8* %18, align 1
  br label %19

19:                                               ; preds = %7
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %4, !llvm.loop !6

22:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @compress() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  store i32 0, i32* @offset, align 4
  store i64 3, i64* @bytes_out, align 8
  store i64 0, i64* @out_count, align 8
  store i32 0, i32* @clear_flg, align 4
  store i64 0, i64* @ratio, align 8
  store i64 1, i64* @in_count, align 8
  store i64 10000, i64* @checkpoint, align 8
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  %9 = load i32, i32* @block_compress, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 257, i32 256
  %13 = sext i32 %12 to i64
  store i64 %13, i64* @free_ent, align 8
  %14 = call i32 @getbyte()
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %16 = load i64, i64* @hsize, align 8
  store i64 %16, i64* %1, align 8
  br label %17

17:                                               ; preds = %23, %0
  %18 = load i64, i64* %1, align 8
  %19 = icmp slt i64 %18, 65536
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %1, align 8
  %25 = mul nsw i64 %24, 2
  store i64 %25, i64* %1, align 8
  br label %17, !llvm.loop !8

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 8, %27
  store i32 %28, i32* %7, align 4
  %29 = load i64, i64* @hsize, align 8
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  call void @cl_hash(i64 noundef %30)
  br label %31

31:                                               ; preds = %137, %93, %56, %26
  %32 = load i32, i32* @InCnt, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %138

34:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  %35 = call i32 @getbyte()
  store i32 %35, i32* %3, align 4
  %36 = load i64, i64* @in_count, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* @in_count, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* @maxbits, align 4
  %41 = zext i32 %40 to i64
  %42 = shl i64 %39, %41
  %43 = load i64, i64* %4, align 8
  %44 = add nsw i64 %42, %43
  store i64 %44, i64* %1, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %4, align 8
  %50 = xor i64 %48, %49
  store i64 %50, i64* %2, align 8
  %51 = load i64, i64* %2, align 8
  %52 = getelementptr inbounds [257 x i64], [257 x i64]* @htab, i64 0, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %1, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %34
  %57 = load i64, i64* %2, align 8
  %58 = getelementptr inbounds [257 x i16], [257 x i16]* @codetab, i64 0, i64 %57
  %59 = load i16, i16* %58, align 2
  %60 = zext i16 %59 to i64
  store i64 %60, i64* %4, align 8
  br label %31, !llvm.loop !9

61:                                               ; preds = %34
  %62 = load i64, i64* %2, align 8
  %63 = getelementptr inbounds [257 x i64], [257 x i64]* @htab, i64 0, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %111

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %2, align 8
  %71 = sub nsw i64 %69, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %5, align 4
  %73 = load i64, i64* %2, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 1, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %68
  br label %77

77:                                               ; preds = %109, %76
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* %2, align 8
  %81 = sub nsw i64 %80, %79
  store i64 %81, i64* %2, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %2, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %2, align 8
  br label %87

87:                                               ; preds = %83, %77
  %88 = load i64, i64* %2, align 8
  %89 = getelementptr inbounds [257 x i64], [257 x i64]* @htab, i64 0, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %1, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i64, i64* %2, align 8
  %95 = getelementptr inbounds [257 x i16], [257 x i16]* @codetab, i64 0, i64 %94
  %96 = load i16, i16* %95, align 2
  %97 = zext i16 %96 to i64
  store i64 %97, i64* %4, align 8
  br label %31, !llvm.loop !9

98:                                               ; preds = %87
  %99 = load i64, i64* %2, align 8
  %100 = getelementptr inbounds [257 x i64], [257 x i64]* @htab, i64 0, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* @in_count, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %77

110:                                              ; preds = %103, %98
  br label %111

111:                                              ; preds = %110, %66
  %112 = load i64, i64* @out_count, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* @out_count, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %4, align 8
  %116 = load i64, i64* @free_ent, align 8
  %117 = load i64, i64* @maxmaxcode, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %111
  %120 = load i64, i64* @free_ent, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* @free_ent, align 8
  %122 = trunc i64 %120 to i16
  %123 = load i64, i64* %2, align 8
  %124 = getelementptr inbounds [257 x i16], [257 x i16]* @codetab, i64 0, i64 %123
  store i16 %122, i16* %124, align 2
  %125 = load i64, i64* %1, align 8
  %126 = load i64, i64* %2, align 8
  %127 = getelementptr inbounds [257 x i64], [257 x i64]* @htab, i64 0, i64 %126
  store i64 %125, i64* %127, align 8
  br label %137

128:                                              ; preds = %111
  %129 = load i64, i64* @in_count, align 8
  %130 = load i64, i64* @checkpoint, align 8
  %131 = icmp sge i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* @block_compress, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  call void @cl_block()
  br label %136

136:                                              ; preds = %135, %132, %128
  br label %137

137:                                              ; preds = %136, %119
  br label %31, !llvm.loop !9

138:                                              ; preds = %31
  %139 = load i64, i64* @bytes_out, align 8
  %140 = load i64, i64* @in_count, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 2, i32* @exit_stat, align 4
  br label %143

143:                                              ; preds = %142, %138
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getbyte() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @InCnt, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %0
  %5 = load i32, i32* @apsim_InCnt, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @apsim_InCnt, align 4
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = load i32, i32* @InCnt, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* @InCnt, align 4
  %11 = load i8*, i8** @InBuff, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** @InBuff, align 8
  %13 = load i8, i8* %11, align 1
  %14 = zext i8 %13 to i32
  store i32 %14, i32* %1, align 4
  br label %16

15:                                               ; preds = %4, %0
  store i32 -1, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %8
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cl_hash(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = getelementptr inbounds i64, i64* getelementptr inbounds ([257 x i64], [257 x i64]* @htab, i64 0, i64 0), i64 %6
  store i64* %7, i64** %3, align 8
  store i64 -1, i64* %5, align 8
  %8 = load i64, i64* %2, align 8
  %9 = sub nsw i64 %8, 16
  store i64 %9, i64* %4, align 8
  br label %10

10:                                               ; preds = %61, %1
  %11 = load i64, i64* %5, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 -16
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64*, i64** %3, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 -15
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 -14
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64*, i64** %3, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 -13
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64*, i64** %3, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 -12
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64*, i64** %3, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 -11
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64*, i64** %3, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 -10
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64*, i64** %3, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 -9
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64*, i64** %3, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 -8
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64*, i64** %3, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 -7
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64*, i64** %3, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 -6
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64*, i64** %3, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 -5
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64*, i64** %3, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 -4
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64*, i64** %3, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 -3
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64*, i64** %3, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 -2
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64*, i64** %3, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 -1
  store i64 %56, i64* %58, align 8
  %59 = load i64*, i64** %3, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 -16
  store i64* %60, i64** %3, align 8
  br label %61

61:                                               ; preds = %10
  %62 = load i64, i64* %4, align 8
  %63 = sub nsw i64 %62, 16
  store i64 %63, i64* %4, align 8
  %64 = icmp sge i64 %63, 0
  br i1 %64, label %10, label %65, !llvm.loop !10

65:                                               ; preds = %61
  %66 = load i64, i64* %4, align 8
  %67 = add nsw i64 %66, 16
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %75, %65
  %69 = load i64, i64* %4, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i64, i64* %5, align 8
  %73 = load i64*, i64** %3, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 -1
  store i64* %74, i64** %3, align 8
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %4, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %4, align 8
  br label %68, !llvm.loop !11

78:                                               ; preds = %68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cl_block() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @in_count, align 8
  %3 = add nsw i64 %2, 10000
  store i64 %3, i64* @checkpoint, align 8
  %4 = load i64, i64* @in_count, align 8
  %5 = icmp sgt i64 %4, 8388607
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  %7 = load i64, i64* @bytes_out, align 8
  %8 = ashr i64 %7, 8
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i64 2147483647, i64* %1, align 8
  br label %16

12:                                               ; preds = %6
  %13 = load i64, i64* @in_count, align 8
  %14 = load i64, i64* %1, align 8
  %15 = sdiv i64 %13, %14
  store i64 %15, i64* %1, align 8
  br label %16

16:                                               ; preds = %12, %11
  br label %22

17:                                               ; preds = %0
  %18 = load i64, i64* @in_count, align 8
  %19 = shl i64 %18, 8
  %20 = load i64, i64* @bytes_out, align 8
  %21 = sdiv i64 %19, %20
  store i64 %21, i64* %1, align 8
  br label %22

22:                                               ; preds = %17, %16
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @ratio, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* %1, align 8
  store i64 %27, i64* @ratio, align 8
  br label %30

28:                                               ; preds = %22
  store i64 0, i64* @ratio, align 8
  %29 = load i64, i64* @hsize, align 8
  call void @cl_hash(i64 noundef %29)
  store i64 257, i64* @free_ent, align 8
  store i32 1, i32* @clear_flg, align 4
  call void @output(i64 noundef 256)
  br label %30

30:                                               ; preds = %28, %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @output(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @offset, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @n_bits, align 4
  store i32 %7, i32* %4, align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i8** %5, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %136

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 3
  %13 = load i8*, i8** %5, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 7
  store i32 %17, i32* %3, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* @rmask, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %20, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = shl i64 %28, %30
  %32 = or i64 %27, %31
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [9 x i8], [9 x i8]* @lmask, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i64
  %38 = and i64 %32, %37
  %39 = trunc i64 %38 to i8
  %40 = load i8*, i8** %5, align 8
  store i8 %39, i8* %40, align 1
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %5, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sub nsw i32 8, %43
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %3, align 4
  %48 = sub nsw i32 8, %47
  %49 = load i64, i64* %2, align 8
  %50 = zext i32 %48 to i64
  %51 = ashr i64 %49, %50
  store i64 %51, i64* %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp sge i32 %52, 8
  br i1 %53, label %54, label %63

54:                                               ; preds = %10
  %55 = load i64, i64* %2, align 8
  %56 = trunc i64 %55 to i8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  store i8 %56, i8* %57, align 1
  %59 = load i64, i64* %2, align 8
  %60 = ashr i64 %59, 8
  store i64 %60, i64* %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sub nsw i32 %61, 8
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %54, %10
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i64, i64* %2, align 8
  %68 = trunc i64 %67 to i8
  %69 = load i8*, i8** %5, align 8
  store i8 %68, i8* %69, align 1
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* @n_bits, align 4
  %72 = load i32, i32* @offset, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* @offset, align 4
  %74 = load i32, i32* @offset, align 4
  %75 = load i32, i32* @n_bits, align 4
  %76 = shl i32 %75, 3
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %100

78:                                               ; preds = %70
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i8** %5, align 8
  %79 = load i32, i32* @n_bits, align 4
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* @bytes_out, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* @bytes_out, align 8
  br label %84

84:                                               ; preds = %97, %78
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %5, align 8
  %87 = load i8, i8* %85, align 1
  call void @putbyte(i8 noundef signext %87)
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i8*, i8** %5, align 8
  %94 = ptrtoint i8* %93 to i64
  %95 = sub i64 %94, ptrtoint ([16 x i8]* @buf to i64)
  %96 = icmp slt i64 %95, 16
  br label %97

97:                                               ; preds = %92, %88
  %98 = phi i1 [ false, %88 ], [ %96, %92 ]
  br i1 %98, label %84, label %99, !llvm.loop !12

99:                                               ; preds = %97
  store i32 0, i32* @offset, align 4
  br label %100

100:                                              ; preds = %99, %70
  %101 = load i64, i64* @free_ent, align 8
  %102 = load i64, i64* @maxcode, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @clear_flg, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %104, %100
  %108 = load i32, i32* @offset, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i32, i32* @n_bits, align 4
  call void @writebytes(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i32 noundef %111)
  %112 = load i32, i32* @n_bits, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* @bytes_out, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* @bytes_out, align 8
  br label %116

116:                                              ; preds = %110, %107
  store i32 0, i32* @offset, align 4
  %117 = load i32, i32* @clear_flg, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 9, i32* @n_bits, align 4
  store i64 511, i64* @maxcode, align 8
  store i32 0, i32* @clear_flg, align 4
  br label %134

120:                                              ; preds = %116
  %121 = load i32, i32* @n_bits, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @n_bits, align 4
  %123 = load i32, i32* @n_bits, align 4
  %124 = load i32, i32* @maxbits, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i64, i64* @maxmaxcode, align 8
  store i64 %127, i64* @maxcode, align 8
  br label %133

128:                                              ; preds = %120
  %129 = load i32, i32* @n_bits, align 4
  %130 = shl i32 1, %129
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  store i64 %132, i64* @maxcode, align 8
  br label %133

133:                                              ; preds = %128, %126
  br label %134

134:                                              ; preds = %133, %119
  br label %135

135:                                              ; preds = %134, %104
  br label %150

136:                                              ; preds = %1
  %137 = load i32, i32* @offset, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* @offset, align 4
  %141 = add nsw i32 %140, 7
  %142 = sdiv i32 %141, 8
  call void @writebytes(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), i32 noundef %142)
  br label %143

143:                                              ; preds = %139, %136
  %144 = load i32, i32* @offset, align 4
  %145 = add nsw i32 %144, 7
  %146 = sdiv i32 %145, 8
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* @bytes_out, align 8
  %149 = add nsw i64 %148, %147
  store i64 %149, i64* @bytes_out, align 8
  store i32 0, i32* @offset, align 4
  br label %150

150:                                              ; preds = %143, %135
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @putbyte(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = load i8*, i8** @OutBuff, align 8
  %5 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %5, i8** @OutBuff, align 8
  store i8 %3, i8* %4, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @writebytes(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %23, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 16
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i1 [ false, %6 ], [ %12, %10 ]
  br i1 %14, label %15, label %26

15:                                               ; preds = %13
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** @OutBuff, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** @OutBuff, align 8
  store i8 %20, i8* %21, align 1
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %6, !llvm.loop !13

26:                                               ; preds = %13
  ret void
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
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}

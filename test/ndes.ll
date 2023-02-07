; ModuleID = 'src/ndes.c'
source_filename = "src/ndes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GREAT = type { i64, i64, i64 }
%struct.IMMENSE = type { i64, i64 }

@des.ip = internal global [65 x i8] c"\00:2*\22\1A\12\0A\02<4,$\1C\14\0C\04>6.&\1E\16\0E\06@80( \18\10\0891)!\19\11\09\01;3+#\1B\13\0B\03=5-%\1D\15\0D\05?7/'\1F\17\0F\07", align 16
@des.ipm = internal global [65 x i8] c"\00(\080\108\18@ '\07/\0F7\17?\1F&\06.\0E6\16>\1E%\05-\0D5\15=\1D$\04,\0C4\14<\1C#\03+\0B3\13;\1B\22\02*\0A2\12:\1A!\01)\091\119\19", align 16
@des.kns = internal global [17 x %struct.GREAT] zeroinitializer, align 16
@des.initflag = internal global i32 1, align 4
@bit = dso_local global [33 x i64] zeroinitializer, align 16
@icd = internal global %struct.IMMENSE zeroinitializer, align 8
@ipc1 = internal global [57 x i8] c"\0091)!\19\11\09\01:2*\22\1A\12\0A\02;3+#\1B\13\0B\03<4,$?7/'\1F\17\0F\07>6.&\1E\16\0E\06=5-%\1D\15\0D\05\1C\14\0C\04", align 16
@ipc2 = internal global [49 x i8] c"\00\0E\11\0B\18\01\05\03\1C\0F\06\15\0A\17\13\0C\04\1A\08\10\07\1B\14\0D\02)4\1F%/7\1E(3-!0,1'8\225.*2$\1D ", align 16
@cyfun.iet = internal global [49 x i32] [i32 0, i32 32, i32 1, i32 2, i32 3, i32 4, i32 5, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 28, i32 29, i32 30, i32 31, i32 32, i32 1], align 16
@cyfun.ipp = internal global [33 x i32] [i32 0, i32 16, i32 7, i32 20, i32 21, i32 29, i32 12, i32 28, i32 17, i32 1, i32 15, i32 23, i32 26, i32 5, i32 18, i32 31, i32 10, i32 2, i32 8, i32 24, i32 14, i32 32, i32 27, i32 3, i32 9, i32 19, i32 13, i32 30, i32 6, i32 22, i32 11, i32 4, i32 25], align 16
@cyfun.is = internal global [16 x [4 x [9 x i8]]] [[4 x [9 x i8]] [[9 x i8] c"\00\0E\0F\0A\07\02\0C\04\0D", [9 x i8] c"\00\00\03\0D\0D\0E\0A\0D\01", [9 x i8] c"\00\04\00\0D\0A\04\09\01\07", [9 x i8] c"\00\0F\0D\01\03\0B\04\06\02"], [4 x [9 x i8]] [[9 x i8] c"\00\04\01\00\0D\0C\01\0B\02", [9 x i8] c"\00\0F\0D\07\08\0B\0F\00\0F", [9 x i8] c"\00\01\0E\06\06\02\0E\04\0B", [9 x i8] c"\00\0C\08\0A\0F\08\03\0B\01"], [4 x [9 x i8]] [[9 x i8] c"\00\0D\08\09\0E\04\0A\02\08", [9 x i8] c"\00\07\04\00\0B\02\04\0B\0D", [9 x i8] c"\00\0E\07\04\09\01\0F\0B\04", [9 x i8] c"\00\08\0A\0D\00\0C\02\0D\0E"], [4 x [9 x i8]] [[9 x i8] c"\00\01\0E\0E\03\01\0F\0E\04", [9 x i8] c"\00\04\07\09\05\0C\02\07\08", [9 x i8] c"\00\08\0B\09\00\0B\05\0D\01", [9 x i8] c"\00\02\01\00\06\07\0C\08\07"], [4 x [9 x i8]] [[9 x i8] c"\00\02\06\06\00\07\09\0F\06", [9 x i8] c"\00\0E\0F\03\06\04\07\04\0A", [9 x i8] c"\00\0D\0A\08\0C\0A\02\0C\09", [9 x i8] c"\00\04\03\06\0A\01\09\01\04"], [4 x [9 x i8]] [[9 x i8] c"\00\0F\0B\03\06\0A\02\00\0F", [9 x i8] c"\00\02\02\04\0F\07\0C\09\03", [9 x i8] c"\00\06\04\0F\0B\0D\08\03\0C", [9 x i8] c"\00\09\0F\09\01\0E\05\04\0A"], [4 x [9 x i8]] [[9 x i8] c"\00\0B\03\0F\09\0B\06\08\0B", [9 x i8] c"\00\0D\08\06\00\0D\09\01\07", [9 x i8] c"\00\02\0D\03\07\07\0C\07\0E", [9 x i8] c"\00\01\04\08\0D\02\0F\0A\08"], [4 x [9 x i8]] [[9 x i8] c"\00\08\04\05\0A\06\08\0D\01", [9 x i8] c"\00\01\0E\0A\03\01\05\0A\04", [9 x i8] c"\00\0B\01\00\0D\08\03\0E\02", [9 x i8] c"\00\07\02\07\08\0D\0A\07\0D"], [4 x [9 x i8]] [[9 x i8] c"\00\03\09\01\01\08\00\03\0A", [9 x i8] c"\00\0A\0C\02\04\05\06\0E\0C", [9 x i8] c"\00\0F\05\0B\0F\0F\07\0A\00", [9 x i8] c"\00\05\0B\04\09\06\0B\09\0F"], [4 x [9 x i8]] [[9 x i8] c"\00\0A\07\0D\02\05\0D\0C\09", [9 x i8] c"\00\06\00\08\07\00\01\03\05", [9 x i8] c"\00\0C\08\01\01\09\00\0F\06", [9 x i8] c"\00\0B\06\0F\04\0F\0E\05\0C"], [4 x [9 x i8]] [[9 x i8] c"\00\06\02\0C\08\03\03\09\03", [9 x i8] c"\00\0C\01\05\02\0F\0D\05\06", [9 x i8] c"\00\09\0C\02\03\0C\04\06\0A", [9 x i8] c"\00\03\07\0E\05\00\01\00\09"], [4 x [9 x i8]] [[9 x i8] c"\00\0C\0D\07\05\0F\04\07\0E", [9 x i8] c"\00\0B\0A\0E\0C\0A\0E\0C\0B", [9 x i8] c"\00\07\06\0C\0E\05\0A\08\0D", [9 x i8] c"\00\0E\0C\03\0B\09\07\0F\00"], [4 x [9 x i8]] [[9 x i8] c"\00\05\0C\0B\0B\0D\0E\05\05", [9 x i8] c"\00\09\06\0C\01\03\00\02\00", [9 x i8] c"\00\03\09\05\05\06\01\00\0F", [9 x i8] c"\00\0A\00\0B\0C\0A\06\0E\03"], [4 x [9 x i8]] [[9 x i8] c"\00\09\00\04\0C\00\07\0A\00", [9 x i8] c"\00\05\09\0B\0A\09\0B\0F\0E", [9 x i8] c"\00\0A\03\0A\02\03\0D\05\03", [9 x i8] c"\00\00\05\05\07\04\00\02\05"], [4 x [9 x i8]] [[9 x i8] c"\00\00\05\02\04\0E\05\06\0C", [9 x i8] c"\00\03\0B\0F\0E\08\03\08\09", [9 x i8] c"\00\05\02\0E\08\00\0B\09\05", [9 x i8] c"\00\06\0E\02\02\05\08\03\06"], [4 x [9 x i8]] [[9 x i8] c"\00\07\0A\08\0F\09\0B\01\07", [9 x i8] c"\00\08\05\01\09\06\08\06\02", [9 x i8] c"\00\00\0F\07\04\0E\06\02\08", [9 x i8] c"\00\0D\09\0C\0E\03\0D\0C\0B"]], align 16
@cyfun.ibin = internal global [16 x i8] c"\00\08\04\0C\02\0A\06\0E\01\09\05\0D\03\0B\07\0F", align 16
@value = dso_local global i32 1, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @des(i64 %0, i64 %1, i64 %2, i64 %3, i32* noundef %4, i32 noundef %5, %struct.IMMENSE* noundef %6) #0 {
  %8 = alloca %struct.IMMENSE, align 8
  %9 = alloca %struct.IMMENSE, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.IMMENSE*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.IMMENSE, align 8
  %20 = alloca %struct.GREAT, align 8
  %21 = bitcast %struct.IMMENSE* %8 to { i64, i64 }*
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  store i64 %0, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  store i64 %1, i64* %23, align 8
  %24 = bitcast %struct.IMMENSE* %9 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  store i64 %2, i64* %25, align 8
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  store i64 %3, i64* %26, align 8
  store i32* %4, i32** %10, align 8
  store i32 %5, i32* %11, align 4
  store %struct.IMMENSE* %6, %struct.IMMENSE** %12, align 8
  %27 = load i32, i32* @des.initflag, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %7
  store i32 0, i32* @des.initflag, align 4
  store i64 1, i64* %18, align 8
  store i64 1, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @bit, i64 0, i64 1), align 8
  store i32 2, i32* %15, align 4
  br label %30

30:                                               ; preds = %39, %29
  %31 = load i32, i32* %15, align 4
  %32 = icmp sle i32 %31, 32
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i64, i64* %18, align 8
  %35 = shl i64 %34, 1
  store i64 %35, i64* %18, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %37
  store i64 %35, i64* %38, align 8
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %15, align 4
  br label %30, !llvm.loop !6

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %7
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %106

47:                                               ; preds = %43
  %48 = load i32*, i32** %10, align 8
  store i32 0, i32* %48, align 4
  store i64 0, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 1), align 8
  store i32 28, i32* %15, align 4
  store i32 56, i32* %16, align 4
  br label %49

49:                                               ; preds = %81, %47
  %50 = load i32, i32* %15, align 4
  %51 = icmp sge i32 %50, 1
  br i1 %51, label %52, label %86

52:                                               ; preds = %49
  %53 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 1), align 8
  %54 = shl i64 %53, 1
  store i64 %54, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 1), align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [57 x i8], [57 x i8]* @ipc1, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = bitcast %struct.IMMENSE* %9 to { i64, i64 }*
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @getbit(i64 %62, i64 %64, i32 noundef %59, i32 noundef 32)
  %66 = or i64 %54, %65
  store i64 %66, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 1), align 8
  %67 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 0), align 8
  %68 = shl i64 %67, 1
  store i64 %68, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 0), align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [57 x i8], [57 x i8]* @ipc1, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = bitcast %struct.IMMENSE* %9 to { i64, i64 }*
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @getbit(i64 %76, i64 %78, i32 noundef %73, i32 noundef 32)
  %80 = or i64 %68, %79
  store i64 %80, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 0), align 8
  br label %81

81:                                               ; preds = %52
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %16, align 4
  br label %49, !llvm.loop !8

86:                                               ; preds = %49
  store i32 1, i32* %14, align 4
  br label %87

87:                                               ; preds = %102, %86
  %88 = load i32, i32* %14, align 4
  %89 = icmp sle i32 %88, 16
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [17 x %struct.GREAT], [17 x %struct.GREAT]* @des.kns, i64 0, i64 %92
  %94 = bitcast %struct.GREAT* %20 to i8*
  %95 = bitcast %struct.GREAT* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 24, i1 false)
  %96 = load i32, i32* %14, align 4
  call void @ks(i32 noundef %96, %struct.GREAT* noundef %20)
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [17 x %struct.GREAT], [17 x %struct.GREAT]* @des.kns, i64 0, i64 %98
  %100 = bitcast %struct.GREAT* %99 to i8*
  %101 = bitcast %struct.GREAT* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 24, i1 false)
  br label %102

102:                                              ; preds = %90
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %87, !llvm.loop !9

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %105, %43
  %107 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 1
  store i64 0, i64* %108, align 8
  store i32 32, i32* %15, align 4
  store i32 64, i32* %16, align 4
  br label %109

109:                                              ; preds = %145, %106
  %110 = load i32, i32* %15, align 4
  %111 = icmp sge i32 %110, 1
  br i1 %111, label %112, label %150

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = shl i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [65 x i8], [65 x i8]* @des.ip, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = bitcast %struct.IMMENSE* %8 to { i64, i64 }*
  %122 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %121, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @getbit(i64 %123, i64 %125, i32 noundef %120, i32 noundef 32)
  %127 = or i64 %115, %126
  %128 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 1
  store i64 %127, i64* %128, align 8
  %129 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = shl i64 %130, 1
  store i64 %131, i64* %129, align 8
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [65 x i8], [65 x i8]* @des.ip, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = bitcast %struct.IMMENSE* %8 to { i64, i64 }*
  %138 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %137, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @getbit(i64 %139, i64 %141, i32 noundef %136, i32 noundef 32)
  %143 = or i64 %131, %142
  %144 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 0
  store i64 %143, i64* %144, align 8
  br label %145

145:                                              ; preds = %112
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %16, align 4
  br label %109, !llvm.loop !10

150:                                              ; preds = %109
  store i32 1, i32* %14, align 4
  br label %151

151:                                              ; preds = %178, %150
  %152 = load i32, i32* %14, align 4
  %153 = icmp sle i32 %152, 16
  br i1 %153, label %154, label %181

154:                                              ; preds = %151
  %155 = load i32, i32* %11, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* %14, align 4
  %159 = sub nsw i32 17, %158
  br label %162

160:                                              ; preds = %154
  %161 = load i32, i32* %14, align 4
  br label %162

162:                                              ; preds = %160, %157
  %163 = phi i32 [ %159, %157 ], [ %161, %160 ]
  store i32 %163, i32* %13, align 4
  %164 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [17 x %struct.GREAT], [17 x %struct.GREAT]* @des.kns, i64 0, i64 %167
  call void @cyfun(i64 noundef %165, %struct.GREAT* noundef byval(%struct.GREAT) align 8 %168, i64* noundef %17)
  %169 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %17, align 8
  %172 = xor i64 %171, %170
  store i64 %172, i64* %17, align 8
  %173 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 1
  store i64 %174, i64* %175, align 8
  %176 = load i64, i64* %17, align 8
  %177 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 0
  store i64 %176, i64* %177, align 8
  br label %178

178:                                              ; preds = %162
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %151, !llvm.loop !11

181:                                              ; preds = %151
  %182 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %17, align 8
  %184 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 1
  store i64 %185, i64* %186, align 8
  %187 = load i64, i64* %17, align 8
  %188 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %19, i32 0, i32 0
  store i64 %187, i64* %188, align 8
  %189 = load %struct.IMMENSE*, %struct.IMMENSE** %12, align 8
  %190 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %189, i32 0, i32 0
  store i64 0, i64* %190, align 8
  %191 = load %struct.IMMENSE*, %struct.IMMENSE** %12, align 8
  %192 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %191, i32 0, i32 1
  store i64 0, i64* %192, align 8
  store i32 32, i32* %15, align 4
  store i32 64, i32* %16, align 4
  br label %193

193:                                              ; preds = %233, %181
  %194 = load i32, i32* %15, align 4
  %195 = icmp sge i32 %194, 1
  br i1 %195, label %196, label %238

196:                                              ; preds = %193
  %197 = load %struct.IMMENSE*, %struct.IMMENSE** %12, align 8
  %198 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = shl i64 %199, 1
  store i64 %200, i64* %198, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [65 x i8], [65 x i8]* @des.ipm, i64 0, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = bitcast %struct.IMMENSE* %19 to { i64, i64 }*
  %207 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %206, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @getbit(i64 %208, i64 %210, i32 noundef %205, i32 noundef 32)
  %212 = or i64 %200, %211
  %213 = load %struct.IMMENSE*, %struct.IMMENSE** %12, align 8
  %214 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %213, i32 0, i32 1
  store i64 %212, i64* %214, align 8
  %215 = load %struct.IMMENSE*, %struct.IMMENSE** %12, align 8
  %216 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = shl i64 %217, 1
  store i64 %218, i64* %216, align 8
  %219 = load i32, i32* %16, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [65 x i8], [65 x i8]* @des.ipm, i64 0, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = bitcast %struct.IMMENSE* %19 to { i64, i64 }*
  %225 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %224, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = call i64 @getbit(i64 %226, i64 %228, i32 noundef %223, i32 noundef 32)
  %230 = or i64 %218, %229
  %231 = load %struct.IMMENSE*, %struct.IMMENSE** %12, align 8
  %232 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  br label %233

233:                                              ; preds = %196
  %234 = load i32, i32* %15, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %15, align 4
  %236 = load i32, i32* %16, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %16, align 4
  br label %193, !llvm.loop !12

238:                                              ; preds = %193
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getbit(i64 %0, i64 %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.IMMENSE, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.IMMENSE* %6 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %6, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %19, %21
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i64 1, i64 0
  store i64 %25, i64* %5, align 8
  br label %39

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %32, %34
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i64 1, i64 0
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %26, %15
  %40 = load i64, i64* %5, align 8
  ret i64 %40
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ks(i32 noundef %0, %struct.GREAT* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.GREAT*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.GREAT* %1, %struct.GREAT** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 9
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %20, label %33

20:                                               ; preds = %17, %14, %11, %2
  %21 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 1), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 1), align 8
  %23 = and i64 %22, 1
  %24 = shl i64 %23, 28
  %25 = or i64 %21, %24
  %26 = lshr i64 %25, 1
  store i64 %26, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 1), align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 0), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 0), align 8
  %29 = and i64 %28, 1
  %30 = shl i64 %29, 28
  %31 = or i64 %27, %30
  %32 = lshr i64 %31, 1
  store i64 %32, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 0), align 8
  br label %54

33:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp sle i32 %35, 2
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 1), align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 1), align 8
  %40 = and i64 %39, 1
  %41 = shl i64 %40, 28
  %42 = or i64 %38, %41
  %43 = lshr i64 %42, 1
  store i64 %43, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 1), align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 0), align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 0), align 8
  %46 = and i64 %45, 1
  %47 = shl i64 %46, 28
  %48 = or i64 %44, %47
  %49 = lshr i64 %48, 1
  store i64 %49, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i32 0, i32 0), align 8
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %34, !llvm.loop !13

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %20
  %55 = load %struct.GREAT*, %struct.GREAT** %4, align 8
  %56 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.GREAT*, %struct.GREAT** %4, align 8
  %58 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.GREAT*, %struct.GREAT** %4, align 8
  %60 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  store i32 16, i32* %6, align 4
  store i32 32, i32* %7, align 4
  store i32 48, i32* %8, align 4
  br label %61

61:                                               ; preds = %116, %54
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %62, 1
  br i1 %63, label %64, label %123

64:                                               ; preds = %61
  %65 = load %struct.GREAT*, %struct.GREAT** %4, align 8
  %66 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = shl i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [49 x i8], [49 x i8]* @ipc2, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.IMMENSE* @icd to { i64, i64 }*), i32 0, i32 0), align 8
  %75 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.IMMENSE* @icd to { i64, i64 }*), i32 0, i32 1), align 8
  %76 = call i64 @getbit(i64 %74, i64 %75, i32 noundef %73, i32 noundef 28)
  %77 = trunc i64 %76 to i16
  %78 = zext i16 %77 to i64
  %79 = or i64 %68, %78
  %80 = load %struct.GREAT*, %struct.GREAT** %4, align 8
  %81 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.GREAT*, %struct.GREAT** %4, align 8
  %83 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = shl i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [49 x i8], [49 x i8]* @ipc2, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.IMMENSE* @icd to { i64, i64 }*), i32 0, i32 0), align 8
  %92 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.IMMENSE* @icd to { i64, i64 }*), i32 0, i32 1), align 8
  %93 = call i64 @getbit(i64 %91, i64 %92, i32 noundef %90, i32 noundef 28)
  %94 = trunc i64 %93 to i16
  %95 = zext i16 %94 to i64
  %96 = or i64 %85, %95
  %97 = load %struct.GREAT*, %struct.GREAT** %4, align 8
  %98 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.GREAT*, %struct.GREAT** %4, align 8
  %100 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = shl i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [49 x i8], [49 x i8]* @ipc2, i64 0, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.IMMENSE* @icd to { i64, i64 }*), i32 0, i32 0), align 8
  %109 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.IMMENSE* @icd to { i64, i64 }*), i32 0, i32 1), align 8
  %110 = call i64 @getbit(i64 %108, i64 %109, i32 noundef %107, i32 noundef 28)
  %111 = trunc i64 %110 to i16
  %112 = zext i16 %111 to i64
  %113 = or i64 %102, %112
  %114 = load %struct.GREAT*, %struct.GREAT** %4, align 8
  %115 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %64
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %8, align 4
  br label %61, !llvm.loop !14

123:                                              ; preds = %61
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @cyfun(i64 noundef %0, %struct.GREAT* noundef byval(%struct.GREAT) align 8 %1, i64* noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.GREAT, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [9 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store i64* %2, i64** %5, align 8
  store i64* getelementptr inbounds ([33 x i64], [33 x i64]* @bit, i64 0, i64 0), i64** %18, align 8
  %19 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 2
  store i64 0, i64* %21, align 8
  store i32 16, i32* %15, align 4
  store i32 32, i32* %16, align 4
  store i32 48, i32* %17, align 4
  br label %22

22:                                               ; preds = %83, %3
  %23 = load i32, i32* %15, align 4
  %24 = icmp sge i32 %23, 1
  br i1 %24, label %25, label %90

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = shl i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load i64*, i64** %18, align 8
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [49 x i32], [49 x i32]* @cyfun.iet, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %29, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = sext i32 %41 to i64
  %43 = or i64 %28, %42
  %44 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 2
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = shl i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load i64*, i64** %18, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [49 x i32], [49 x i32]* @cyfun.iet, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %48, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %4, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = sext i32 %60 to i64
  %62 = or i64 %47, %61
  %63 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 1
  store i64 %62, i64* %63, align 8
  %64 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = shl i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load i64*, i64** %18, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [49 x i32], [49 x i32]* @cyfun.iet, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %67, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %4, align 8
  %76 = and i64 %74, %75
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = sext i32 %79 to i64
  %81 = or i64 %66, %80
  %82 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 0
  store i64 %81, i64* %82, align 8
  br label %83

83:                                               ; preds = %25
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %17, align 4
  br label %22, !llvm.loop !15

90:                                               ; preds = %22
  %91 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %1, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = xor i64 %94, %92
  store i64 %95, i64* %93, align 8
  %96 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %1, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = xor i64 %99, %97
  store i64 %100, i64* %98, align 8
  %101 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %1, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = xor i64 %104, %102
  store i64 %105, i64* %103, align 8
  %106 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = shl i64 %107, 16
  %109 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %108, %110
  store i64 %111, i64* %8, align 8
  %112 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = shl i64 %113, 8
  %115 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %6, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = lshr i64 %116, 8
  %118 = add i64 %114, %117
  store i64 %118, i64* %9, align 8
  store i32 1, i32* %15, align 4
  store i32 5, i32* %17, align 4
  br label %119

119:                                              ; preds = %139, %90
  %120 = load i32, i32* %15, align 4
  %121 = icmp sle i32 %120, 4
  br i1 %121, label %122, label %144

122:                                              ; preds = %119
  %123 = load i64, i64* %8, align 8
  %124 = and i64 %123, 63
  %125 = trunc i64 %124 to i8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 %127
  store i8 %125, i8* %128, align 1
  %129 = load i64, i64* %9, align 8
  %130 = and i64 %129, 63
  %131 = trunc i64 %130 to i8
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 %133
  store i8 %131, i8* %134, align 1
  %135 = load i64, i64* %8, align 8
  %136 = lshr i64 %135, 6
  store i64 %136, i64* %8, align 8
  %137 = load i64, i64* %9, align 8
  %138 = lshr i64 %137, 6
  store i64 %138, i64* %9, align 8
  br label %139

139:                                              ; preds = %122
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %17, align 4
  br label %119, !llvm.loop !16

144:                                              ; preds = %119
  store i64 0, i64* %7, align 8
  store i32 8, i32* %11, align 4
  br label %145

145:                                              ; preds = %194, %144
  %146 = load i32, i32* %11, align 4
  %147 = icmp sge i32 %146, 1
  br i1 %147, label %148, label %197

148:                                              ; preds = %145
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = and i32 %154, 1
  %156 = shl i32 %155, 1
  %157 = load i32, i32* %15, align 4
  %158 = and i32 %157, 32
  %159 = ashr i32 %158, 5
  %160 = add nsw i32 %156, %159
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %15, align 4
  %162 = and i32 %161, 2
  %163 = shl i32 %162, 2
  %164 = load i32, i32* %15, align 4
  %165 = and i32 %164, 4
  %166 = add nsw i32 %163, %165
  %167 = load i32, i32* %15, align 4
  %168 = and i32 %167, 8
  %169 = ashr i32 %168, 2
  %170 = add nsw i32 %166, %169
  %171 = load i32, i32* %15, align 4
  %172 = and i32 %171, 16
  %173 = ashr i32 %172, 4
  %174 = add nsw i32 %170, %173
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [16 x [4 x [9 x i8]]], [16 x [4 x [9 x i8]]]* @cyfun.is, i64 0, i64 %176
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [4 x [9 x i8]], [4 x [9 x i8]]* %177, i64 0, i64 %179
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [9 x i8], [9 x i8]* %180, i64 0, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  store i32 %185, i32* %14, align 4
  %186 = load i64, i64* %7, align 8
  %187 = shl i64 %186, 4
  store i64 %187, i64* %7, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [16 x i8], [16 x i8]* @cyfun.ibin, i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i64
  %193 = or i64 %187, %192
  store i64 %193, i64* %7, align 8
  br label %194

194:                                              ; preds = %148
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %11, align 4
  br label %145, !llvm.loop !17

197:                                              ; preds = %145
  %198 = load i64*, i64** %5, align 8
  store i64 0, i64* %198, align 8
  store i64* getelementptr inbounds ([33 x i64], [33 x i64]* @bit, i64 0, i64 0), i64** %18, align 8
  store i32 32, i32* %15, align 4
  br label %199

199:                                              ; preds = %222, %197
  %200 = load i32, i32* %15, align 4
  %201 = icmp sge i32 %200, 1
  br i1 %201, label %202, label %225

202:                                              ; preds = %199
  %203 = load i64*, i64** %5, align 8
  %204 = load i64, i64* %203, align 8
  %205 = shl i64 %204, 1
  store i64 %205, i64* %203, align 8
  %206 = load i64*, i64** %18, align 8
  %207 = load i32, i32* %15, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [33 x i32], [33 x i32]* @cyfun.ipp, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %206, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %7, align 8
  %215 = and i64 %213, %214
  %216 = icmp ne i64 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 1, i32 0
  %219 = sext i32 %218 to i64
  %220 = or i64 %205, %219
  %221 = load i64*, i64** %5, align 8
  store i64 %220, i64* %221, align 8
  br label %222

222:                                              ; preds = %202
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %15, align 4
  br label %199, !llvm.loop !18

225:                                              ; preds = %199
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.IMMENSE, align 8
  %3 = alloca %struct.IMMENSE, align 8
  %4 = alloca %struct.IMMENSE, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %2, i32 0, i32 0
  store i64 35, i64* %7, align 8
  %8 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %2, i32 0, i32 1
  store i64 26, i64* %8, align 8
  %9 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %3, i32 0, i32 0
  store i64 2, i64* %9, align 8
  %10 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %3, i32 0, i32 1
  store i64 16, i64* %10, align 8
  %11 = load i32, i32* @value, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @value, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = bitcast %struct.IMMENSE* %2 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = bitcast %struct.IMMENSE* %3 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  call void @des(i64 %16, i64 %18, i64 %21, i64 %23, i32* noundef %5, i32 noundef %13, %struct.IMMENSE* noundef %4)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

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
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}

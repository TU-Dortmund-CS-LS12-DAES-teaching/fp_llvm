; ModuleID = 'src/minver.c'
source_filename = "src/minver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = internal global [3 x [3 x double]] [[3 x double] [double 3.000000e+00, double -6.000000e+00, double 7.000000e+00], [3 x double] [double 9.000000e+00, double 0.000000e+00, double -5.000000e+00], [3 x double] [double 5.000000e+00, double -8.000000e+00, double 6.000000e+00]], align 16
@aa = dso_local global [3 x [3 x double]] zeroinitializer, align 16
@a_i = dso_local global [3 x [3 x double]] zeroinitializer, align 16
@b = dso_local global [3 x [3 x double]] zeroinitializer, align 16
@c = dso_local global [3 x [3 x double]] zeroinitializer, align 16
@det = dso_local global double 0.000000e+00, align 8
@e = dso_local global [3 x [3 x double]] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local double @minver_fabs(double noundef %0) #0 {
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
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store double 0x3EB0C6F7A0B5ED8D, double* %4, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %30, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %26, %8
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %14
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0, i64 %17
  %19 = load double, double* %18, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @aa, i64 0, i64 %21
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 %24
  store double %19, double* %25, align 8
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %9, !llvm.loop !6

29:                                               ; preds = %9
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %5, !llvm.loop !8

33:                                               ; preds = %5
  %34 = load double, double* %4, align 8
  %35 = call i32 @minver(i32 noundef 3, i32 noundef 3, double noundef %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %61, %33
  %37 = load i32, i32* %2, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %45
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x double], [3 x double]* %46, i64 0, i64 %48
  %50 = load double, double* %49, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a_i, i64 0, i64 %52
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [3 x double], [3 x double]* %53, i64 0, i64 %55
  store double %50, double* %56, align 8
  br label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %40, !llvm.loop !9

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %2, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %2, align 4
  br label %36, !llvm.loop !10

64:                                               ; preds = %36
  %65 = call i32 @mmul(i32 noundef 3, i32 noundef 3, i32 noundef 3, i32 noundef 3)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @minver(i32 noundef %0, i32 noundef %1, double noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca [500 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %31, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 500
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load double, double* %7, align 8
  %30 = fcmp ole double %29, 0.000000e+00
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %3
  store i32 999, i32* %4, align 4
  br label %347

32:                                               ; preds = %28
  store double 1.000000e+00, double* %22, align 8
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %42, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 %40
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %33, !llvm.loop !11

45:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %262, %45
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %265

50:                                               ; preds = %46
  store double 0.000000e+00, double* %19, align 8
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %72, %50
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %58
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [3 x double], [3 x double]* %59, i64 0, i64 %61
  %63 = load double, double* %62, align 8
  %64 = call double @minver_fabs(double noundef %63)
  store double %64, double* %18, align 8
  %65 = load double, double* %18, align 8
  %66 = load double, double* %19, align 8
  %67 = fcmp ogt double %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load double, double* %18, align 8
  store double %69, double* %19, align 8
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %68, %56
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %52, !llvm.loop !12

75:                                               ; preds = %52
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %77
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x double], [3 x double]* %78, i64 0, i64 %80
  %82 = load double, double* %81, align 8
  store double %82, double* %20, align 8
  %83 = load double, double* %20, align 8
  %84 = call double @minver_fabs(double noundef %83)
  store double %84, double* %21, align 8
  %85 = load double, double* %21, align 8
  %86 = load double, double* %7, align 8
  %87 = fcmp ole double %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %75
  %89 = load double, double* %22, align 8
  store double %89, double* @det, align 8
  store i32 1, i32* %4, align 4
  br label %347

90:                                               ; preds = %75
  %91 = load double, double* %20, align 8
  %92 = load double, double* %22, align 8
  %93 = fmul double %92, %91
  store double %93, double* %22, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %6, align 4
  %96 = mul nsw i32 %94, %95
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %6, align 4
  %99 = mul nsw i32 %97, %98
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %163

103:                                              ; preds = %90
  %104 = load double, double* %18, align 8
  %105 = fneg double %104
  store double %105, double* %22, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 %115
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 %119
  store i32 %117, i32* %120, align 4
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %159, %103
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %162

125:                                              ; preds = %121
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %129, %130
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %133
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [3 x double], [3 x double]* %134, i64 0, i64 %136
  %138 = load double, double* %137, align 8
  store double %138, double* %18, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %140
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [3 x double], [3 x double]* %141, i64 0, i64 %143
  %145 = load double, double* %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %147
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [3 x double], [3 x double]* %148, i64 0, i64 %150
  store double %145, double* %151, align 8
  %152 = load double, double* %18, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %154
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [3 x double], [3 x double]* %155, i64 0, i64 %157
  store double %152, double* %158, align 8
  br label %159

159:                                              ; preds = %125
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %121, !llvm.loop !13

162:                                              ; preds = %121
  br label %163

163:                                              ; preds = %162, %90
  store i32 0, i32* %9, align 4
  br label %164

164:                                              ; preds = %178, %163
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %164
  %169 = load double, double* %20, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %171
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [3 x double], [3 x double]* %172, i64 0, i64 %174
  %176 = load double, double* %175, align 8
  %177 = fdiv double %176, %169
  store double %177, double* %175, align 8
  br label %178

178:                                              ; preds = %168
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %164, !llvm.loop !14

181:                                              ; preds = %164
  store i32 0, i32* %9, align 4
  br label %182

182:                                              ; preds = %250, %181
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %5, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %253

186:                                              ; preds = %182
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %249

190:                                              ; preds = %186
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %6, align 4
  %193 = mul nsw i32 %191, %192
  store i32 %193, i32* %17, align 4
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %194, %195
  store i32 %196, i32* %14, align 4
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %198
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [3 x double], [3 x double]* %199, i64 0, i64 %201
  %203 = load double, double* %202, align 8
  store double %203, double* %18, align 8
  %204 = load double, double* %18, align 8
  %205 = fcmp une double %204, 0.000000e+00
  br i1 %205, label %206, label %248

206:                                              ; preds = %190
  store i32 0, i32* %10, align 4
  br label %207

207:                                              ; preds = %234, %206
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %5, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %237

211:                                              ; preds = %207
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %11, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %233

215:                                              ; preds = %211
  %216 = load double, double* %18, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %218
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [3 x double], [3 x double]* %219, i64 0, i64 %221
  %223 = load double, double* %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %225
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [3 x double], [3 x double]* %226, i64 0, i64 %228
  %230 = load double, double* %229, align 8
  %231 = fneg double %216
  %232 = call double @llvm.fmuladd.f64(double %231, double %223, double %230)
  store double %232, double* %229, align 8
  br label %233

233:                                              ; preds = %215, %211
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %10, align 4
  br label %207, !llvm.loop !15

237:                                              ; preds = %207
  %238 = load double, double* %18, align 8
  %239 = fneg double %238
  %240 = load double, double* %20, align 8
  %241 = fdiv double %239, %240
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %243
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [3 x double], [3 x double]* %244, i64 0, i64 %246
  store double %241, double* %247, align 8
  br label %248

248:                                              ; preds = %237, %190
  br label %249

249:                                              ; preds = %248, %186
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %9, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %9, align 4
  br label %182, !llvm.loop !16

253:                                              ; preds = %182
  %254 = load double, double* %20, align 8
  %255 = fdiv double 1.000000e+00, %254
  %256 = load i32, i32* %11, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %257
  %259 = load i32, i32* %11, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [3 x double], [3 x double]* %258, i64 0, i64 %260
  store double %255, double* %261, align 8
  br label %262

262:                                              ; preds = %253
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %11, align 4
  br label %46, !llvm.loop !17

265:                                              ; preds = %46
  store i32 0, i32* %9, align 4
  br label %266

266:                                              ; preds = %342, %265
  %267 = load i32, i32* %9, align 4
  %268 = load i32, i32* %5, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %345

270:                                              ; preds = %266
  br label %271

271:                                              ; preds = %270, %340
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %11, align 4
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* %9, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %271
  br label %341

280:                                              ; preds = %271
  %281 = load i32, i32* %11, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 %282
  %284 = load i32, i32* %283, align 4
  store i32 %284, i32* %13, align 4
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 %290
  store i32 %288, i32* %291, align 4
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* %9, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 %294
  store i32 %292, i32* %295, align 4
  store i32 0, i32* %10, align 4
  br label %296

296:                                              ; preds = %337, %280
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* %5, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %340

300:                                              ; preds = %296
  %301 = load i32, i32* %10, align 4
  %302 = load i32, i32* %6, align 4
  %303 = mul nsw i32 %301, %302
  store i32 %303, i32* %16, align 4
  %304 = load i32, i32* %16, align 4
  %305 = load i32, i32* %9, align 4
  %306 = add nsw i32 %304, %305
  store i32 %306, i32* %14, align 4
  %307 = load i32, i32* %16, align 4
  %308 = load i32, i32* %11, align 4
  %309 = add nsw i32 %307, %308
  store i32 %309, i32* %15, align 4
  %310 = load i32, i32* %11, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %311
  %313 = load i32, i32* %9, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [3 x double], [3 x double]* %312, i64 0, i64 %314
  %316 = load double, double* %315, align 8
  store double %316, double* %18, align 8
  %317 = load i32, i32* %11, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %318
  %320 = load i32, i32* %11, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [3 x double], [3 x double]* %319, i64 0, i64 %321
  %323 = load double, double* %322, align 8
  %324 = load i32, i32* %11, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %325
  %327 = load i32, i32* %9, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [3 x double], [3 x double]* %326, i64 0, i64 %328
  store double %323, double* %329, align 8
  %330 = load double, double* %18, align 8
  %331 = load i32, i32* %11, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %332
  %334 = load i32, i32* %11, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [3 x double], [3 x double]* %333, i64 0, i64 %335
  store double %330, double* %336, align 8
  br label %337

337:                                              ; preds = %300
  %338 = load i32, i32* %10, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %10, align 4
  br label %296, !llvm.loop !18

340:                                              ; preds = %296
  br label %271

341:                                              ; preds = %279
  br label %342

342:                                              ; preds = %341
  %343 = load i32, i32* %9, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %9, align 4
  br label %266, !llvm.loop !19

345:                                              ; preds = %266
  %346 = load double, double* %22, align 8
  store double %346, double* @det, align 8
  store i32 0, i32* %4, align 4
  br label %347

347:                                              ; preds = %345, %88, %31
  %348 = load i32, i32* %4, align 4
  ret i32 %348
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mmul(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %30, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23, %20, %4
  store i32 999, i32* %5, align 4
  br label %82

31:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %78, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %81

36:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %74, %36
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %37
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %63, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %48
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x double], [3 x double]* %49, i64 0, i64 %51
  %53 = load double, double* %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @b, i64 0, i64 %55
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x double], [3 x double]* %56, i64 0, i64 %58
  %60 = load double, double* %59, align 8
  %61 = load double, double* %15, align 8
  %62 = call double @llvm.fmuladd.f64(double %53, double %60, double %61)
  store double %62, double* %15, align 8
  br label %63

63:                                               ; preds = %46
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %42, !llvm.loop !20

66:                                               ; preds = %42
  %67 = load double, double* %15, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @c, i64 0, i64 %69
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x double], [3 x double]* %70, i64 0, i64 %72
  store double %67, double* %73, align 8
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %37, !llvm.loop !21

77:                                               ; preds = %37
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %32, !llvm.loop !22

81:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %30
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

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
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}

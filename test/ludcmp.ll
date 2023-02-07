; ModuleID = 'src/ludcmp.c'
source_filename = "src/ludcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local global [50 x [50 x double]] zeroinitializer, align 16
@b = dso_local global [50 x double] zeroinitializer, align 16
@x = dso_local global [50 x double] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32 0, i32* %1, align 4
  store i32 5, i32* %4, align 4
  store double 0x3EB0C6F7A0B5ED8D, double* %6, align 8
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %60, %0
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %63

12:                                               ; preds = %8
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %52, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  %22 = add nsw i32 %19, %21
  %23 = sitofp i32 %22 to double
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %25
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [50 x double], [50 x double]* %26, i64 0, i64 %28
  store double %23, double* %29, align 8
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %17
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %35
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [50 x double], [50 x double]* %36, i64 0, i64 %38
  %40 = load double, double* %39, align 8
  %41 = fmul double %40, 1.000000e+01
  store double %41, double* %39, align 8
  br label %42

42:                                               ; preds = %33, %17
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %44
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [50 x double], [50 x double]* %45, i64 0, i64 %47
  %49 = load double, double* %48, align 8
  %50 = load double, double* %7, align 8
  %51 = fadd double %50, %49
  store double %51, double* %7, align 8
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %13, !llvm.loop !6

55:                                               ; preds = %13
  %56 = load double, double* %7, align 8
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [50 x double], [50 x double]* @b, i64 0, i64 %58
  store double %56, double* %59, align 8
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %2, align 4
  br label %8, !llvm.loop !8

63:                                               ; preds = %8
  %64 = load i32, i32* %4, align 4
  %65 = load double, double* %6, align 8
  %66 = call i32 @ludcmp(i32 noundef %64, double noundef %65)
  store i32 %66, i32* %5, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ludcmp(i32 noundef %0, double noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca [100 x double], align 16
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 99
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load double, double* %5, align 8
  %15 = fcmp ole double %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 999, i32* %3, align 4
  br label %264

17:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %152, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %155

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %24
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [50 x double], [50 x double]* %25, i64 0, i64 %27
  %29 = load double, double* %28, align 8
  %30 = call double @fabs(double noundef %29)
  %31 = load double, double* %5, align 8
  %32 = fcmp ole double %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %264

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %94, %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %97

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %43
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [50 x double], [50 x double]* %44, i64 0, i64 %46
  %48 = load double, double* %47, align 8
  store double %48, double* %9, align 8
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %74, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %58
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [50 x double], [50 x double]* %59, i64 0, i64 %61
  %63 = load double, double* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %65
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [50 x double], [50 x double]* %66, i64 0, i64 %68
  %70 = load double, double* %69, align 8
  %71 = load double, double* %9, align 8
  %72 = fneg double %63
  %73 = call double @llvm.fmuladd.f64(double %72, double %70, double %71)
  store double %73, double* %9, align 8
  br label %74

74:                                               ; preds = %56
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %52, !llvm.loop !9

77:                                               ; preds = %52
  br label %78

78:                                               ; preds = %77, %41
  %79 = load double, double* %9, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %81
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [50 x double], [50 x double]* %82, i64 0, i64 %84
  %86 = load double, double* %85, align 8
  %87 = fdiv double %79, %86
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %89
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [50 x double], [50 x double]* %90, i64 0, i64 %92
  store double %87, double* %93, align 8
  br label %94

94:                                               ; preds = %78
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %37, !llvm.loop !10

97:                                               ; preds = %37
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %148, %97
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %151

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %107
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [50 x double], [50 x double]* %108, i64 0, i64 %110
  %112 = load double, double* %111, align 8
  store double %112, double* %9, align 8
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %136, %104
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %113
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %120
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [50 x double], [50 x double]* %121, i64 0, i64 %123
  %125 = load double, double* %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %127
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [50 x double], [50 x double]* %128, i64 0, i64 %130
  %132 = load double, double* %131, align 8
  %133 = load double, double* %9, align 8
  %134 = fneg double %125
  %135 = call double @llvm.fmuladd.f64(double %134, double %132, double %133)
  store double %135, double* %9, align 8
  br label %136

136:                                              ; preds = %117
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %113, !llvm.loop !11

139:                                              ; preds = %113
  %140 = load double, double* %9, align 8
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %143
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [50 x double], [50 x double]* %144, i64 0, i64 %146
  store double %140, double* %147, align 8
  br label %148

148:                                              ; preds = %139
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %100, !llvm.loop !12

151:                                              ; preds = %100
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %18, !llvm.loop !13

155:                                              ; preds = %18
  %156 = load double, double* getelementptr inbounds ([50 x double], [50 x double]* @b, i64 0, i64 0), align 16
  %157 = getelementptr inbounds [100 x double], [100 x double]* %10, i64 0, i64 0
  store double %156, double* %157, align 16
  store i32 1, i32* %6, align 4
  br label %158

158:                                              ; preds = %194, %155
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp sle i32 %159, %160
  br i1 %161, label %162, label %197

162:                                              ; preds = %158
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [50 x double], [50 x double]* @b, i64 0, i64 %164
  %166 = load double, double* %165, align 8
  store double %166, double* %9, align 8
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %186, %162
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %189

171:                                              ; preds = %167
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %173
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [50 x double], [50 x double]* %174, i64 0, i64 %176
  %178 = load double, double* %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [100 x double], [100 x double]* %10, i64 0, i64 %180
  %182 = load double, double* %181, align 8
  %183 = load double, double* %9, align 8
  %184 = fneg double %178
  %185 = call double @llvm.fmuladd.f64(double %184, double %182, double %183)
  store double %185, double* %9, align 8
  br label %186

186:                                              ; preds = %171
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %167, !llvm.loop !14

189:                                              ; preds = %167
  %190 = load double, double* %9, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [100 x double], [100 x double]* %10, i64 0, i64 %192
  store double %190, double* %193, align 8
  br label %194

194:                                              ; preds = %189
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %6, align 4
  br label %158, !llvm.loop !15

197:                                              ; preds = %158
  %198 = load i32, i32* %4, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [100 x double], [100 x double]* %10, i64 0, i64 %199
  %201 = load double, double* %200, align 8
  %202 = load i32, i32* %4, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %203
  %205 = load i32, i32* %4, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [50 x double], [50 x double]* %204, i64 0, i64 %206
  %208 = load double, double* %207, align 8
  %209 = fdiv double %201, %208
  %210 = load i32, i32* %4, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %211
  store double %209, double* %212, align 8
  %213 = load i32, i32* %4, align 4
  %214 = sub nsw i32 %213, 1
  store i32 %214, i32* %6, align 4
  br label %215

215:                                              ; preds = %260, %197
  %216 = load i32, i32* %6, align 4
  %217 = icmp sge i32 %216, 0
  br i1 %217, label %218, label %263

218:                                              ; preds = %215
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [100 x double], [100 x double]* %10, i64 0, i64 %220
  %222 = load double, double* %221, align 8
  store double %222, double* %9, align 8
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %7, align 4
  br label %225

225:                                              ; preds = %244, %218
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* %4, align 4
  %228 = icmp sle i32 %226, %227
  br i1 %228, label %229, label %247

229:                                              ; preds = %225
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %231
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [50 x double], [50 x double]* %232, i64 0, i64 %234
  %236 = load double, double* %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %238
  %240 = load double, double* %239, align 8
  %241 = load double, double* %9, align 8
  %242 = fneg double %236
  %243 = call double @llvm.fmuladd.f64(double %242, double %240, double %241)
  store double %243, double* %9, align 8
  br label %244

244:                                              ; preds = %229
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %7, align 4
  br label %225, !llvm.loop !16

247:                                              ; preds = %225
  %248 = load double, double* %9, align 8
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %250
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [50 x double], [50 x double]* %251, i64 0, i64 %253
  %255 = load double, double* %254, align 8
  %256 = fdiv double %248, %255
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %258
  store double %256, double* %259, align 8
  br label %260

260:                                              ; preds = %247
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %261, -1
  store i32 %262, i32* %6, align 4
  br label %215, !llvm.loop !17

263:                                              ; preds = %215
  store i32 0, i32* %3, align 4
  br label %264

264:                                              ; preds = %263, %33, %16
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

; Function Attrs: noinline nounwind uwtable
define internal double @fabs(double noundef %0) #0 {
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

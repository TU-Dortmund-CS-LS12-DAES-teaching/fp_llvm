; ModuleID = 'src/whet.c'
source_filename = "src/whet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@t = dso_local global double 0.000000e+00, align 8
@t1 = dso_local global double 0.000000e+00, align 8
@t2 = dso_local global double 0.000000e+00, align 8
@n1 = dso_local global i32 0, align 4
@n2 = dso_local global i32 0, align 4
@n3 = dso_local global i32 0, align 4
@n4 = dso_local global i32 0, align 4
@n6 = dso_local global i32 0, align 4
@n7 = dso_local global i32 0, align 4
@n8 = dso_local global i32 0, align 4
@n9 = dso_local global i32 0, align 4
@n10 = dso_local global i32 0, align 4
@n11 = dso_local global i32 0, align 4
@x1 = dso_local global double 0.000000e+00, align 8
@x4 = dso_local global double 0.000000e+00, align 8
@x3 = dso_local global double 0.000000e+00, align 8
@x2 = dso_local global double 0.000000e+00, align 8
@i = dso_local global i32 0, align 4
@e1 = dso_local global [4 x double] zeroinitializer, align 16
@j = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@l = dso_local global i32 0, align 4
@y = dso_local global double 0.000000e+00, align 8
@x = dso_local global double 0.000000e+00, align 8
@z = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store double 4.999750e-01, double* @t, align 8
  store double 5.002500e-01, double* @t1, align 8
  store double 2.000000e+00, double* @t2, align 8
  store i32 0, i32* @n1, align 4
  store i32 120, i32* @n2, align 4
  store i32 140, i32* @n3, align 4
  store i32 3450, i32* @n4, align 4
  store i32 2100, i32* @n6, align 4
  store i32 320, i32* @n7, align 4
  store i32 8990, i32* @n8, align 4
  store i32 6160, i32* @n9, align 4
  store i32 0, i32* @n10, align 4
  store i32 930, i32* @n11, align 4
  store double 1.000000e+00, double* @x1, align 8
  store double -1.000000e+00, double* @x4, align 8
  store double -1.000000e+00, double* @x3, align 8
  store double -1.000000e+00, double* @x2, align 8
  store i32 1, i32* @i, align 4
  br label %2

2:                                                ; preds = %44, %0
  %3 = load i32, i32* @i, align 4
  %4 = load i32, i32* @n1, align 4
  %5 = icmp sle i32 %3, %4
  br i1 %5, label %6, label %47

6:                                                ; preds = %2
  %7 = load double, double* @x1, align 8
  %8 = load double, double* @x2, align 8
  %9 = fadd double %7, %8
  %10 = load double, double* @x3, align 8
  %11 = fadd double %9, %10
  %12 = load double, double* @x4, align 8
  %13 = fsub double %11, %12
  %14 = load double, double* @t, align 8
  %15 = fmul double %13, %14
  store double %15, double* @x1, align 8
  %16 = load double, double* @x1, align 8
  %17 = load double, double* @x2, align 8
  %18 = fadd double %16, %17
  %19 = load double, double* @x3, align 8
  %20 = fsub double %18, %19
  %21 = load double, double* @x4, align 8
  %22 = fsub double %20, %21
  %23 = load double, double* @t, align 8
  %24 = fmul double %22, %23
  store double %24, double* @x2, align 8
  %25 = load double, double* @x1, align 8
  %26 = load double, double* @x2, align 8
  %27 = fsub double %25, %26
  %28 = load double, double* @x3, align 8
  %29 = fadd double %27, %28
  %30 = load double, double* @x4, align 8
  %31 = fadd double %29, %30
  %32 = load double, double* @t, align 8
  %33 = fmul double %31, %32
  store double %33, double* @x3, align 8
  %34 = load double, double* @x1, align 8
  %35 = fneg double %34
  %36 = load double, double* @x2, align 8
  %37 = fadd double %35, %36
  %38 = load double, double* @x3, align 8
  %39 = fadd double %37, %38
  %40 = load double, double* @x4, align 8
  %41 = fadd double %39, %40
  %42 = load double, double* @t, align 8
  %43 = fmul double %41, %42
  store double %43, double* @x4, align 8
  br label %44

44:                                               ; preds = %6
  %45 = load i32, i32* @i, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @i, align 4
  br label %2, !llvm.loop !6

47:                                               ; preds = %2
  store double 1.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 0), align 16
  store double -1.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 3), align 8
  store double -1.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 2), align 16
  store double -1.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 1), align 8
  store i32 1, i32* @i, align 4
  br label %48

48:                                               ; preds = %90, %47
  %49 = load i32, i32* @i, align 4
  %50 = load i32, i32* @n2, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %48
  %53 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 0), align 16
  %54 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 1), align 8
  %55 = fadd double %53, %54
  %56 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 2), align 16
  %57 = fadd double %55, %56
  %58 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 3), align 8
  %59 = fsub double %57, %58
  %60 = load double, double* @t, align 8
  %61 = fmul double %59, %60
  store double %61, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 0), align 16
  %62 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 0), align 16
  %63 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 1), align 8
  %64 = fadd double %62, %63
  %65 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 2), align 16
  %66 = fsub double %64, %65
  %67 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 3), align 8
  %68 = fadd double %66, %67
  %69 = load double, double* @t, align 8
  %70 = fmul double %68, %69
  store double %70, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 1), align 8
  %71 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 0), align 16
  %72 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 1), align 8
  %73 = fsub double %71, %72
  %74 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 2), align 16
  %75 = fadd double %73, %74
  %76 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 3), align 8
  %77 = fadd double %75, %76
  %78 = load double, double* @t, align 8
  %79 = fmul double %77, %78
  store double %79, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 2), align 16
  %80 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 0), align 16
  %81 = fneg double %80
  %82 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 1), align 8
  %83 = fadd double %81, %82
  %84 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 2), align 16
  %85 = fadd double %83, %84
  %86 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 3), align 8
  %87 = fadd double %85, %86
  %88 = load double, double* @t, align 8
  %89 = fmul double %87, %88
  store double %89, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 3), align 8
  br label %90

90:                                               ; preds = %52
  %91 = load i32, i32* @i, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @i, align 4
  br label %48, !llvm.loop !8

93:                                               ; preds = %48
  store i32 1, i32* @i, align 4
  br label %94

94:                                               ; preds = %100, %93
  %95 = load i32, i32* @i, align 4
  %96 = load i32, i32* @n3, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = call i32 @pa(double* noundef getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98
  %101 = load i32, i32* @i, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* @i, align 4
  br label %94, !llvm.loop !9

103:                                              ; preds = %94
  store i32 1, i32* @j, align 4
  store i32 1, i32* @i, align 4
  br label %104

104:                                              ; preds = %124, %103
  %105 = load i32, i32* @i, align 4
  %106 = load i32, i32* @n4, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load i32, i32* @j, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 2, i32* @j, align 4
  br label %113

112:                                              ; preds = %108
  store i32 3, i32* @j, align 4
  br label %113

113:                                              ; preds = %112, %111
  %114 = load i32, i32* @j, align 4
  %115 = icmp sgt i32 %114, 2
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 0, i32* @j, align 4
  br label %118

117:                                              ; preds = %113
  store i32 1, i32* @j, align 4
  br label %118

118:                                              ; preds = %117, %116
  %119 = load i32, i32* @j, align 4
  %120 = icmp slt i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 1, i32* @j, align 4
  br label %123

122:                                              ; preds = %118
  store i32 0, i32* @j, align 4
  br label %123

123:                                              ; preds = %122, %121
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* @i, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* @i, align 4
  br label %104, !llvm.loop !10

127:                                              ; preds = %104
  store i32 1, i32* @j, align 4
  store i32 2, i32* @k, align 4
  store i32 3, i32* @l, align 4
  store i32 1, i32* @i, align 4
  br label %128

128:                                              ; preds = %178, %127
  %129 = load i32, i32* @i, align 4
  %130 = load i32, i32* @n6, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %181

132:                                              ; preds = %128
  %133 = load i32, i32* @j, align 4
  %134 = load i32, i32* @k, align 4
  %135 = load i32, i32* @j, align 4
  %136 = sub nsw i32 %134, %135
  %137 = mul nsw i32 %133, %136
  %138 = load i32, i32* @l, align 4
  %139 = load i32, i32* @k, align 4
  %140 = sub nsw i32 %138, %139
  %141 = mul nsw i32 %137, %140
  store i32 %141, i32* @j, align 4
  %142 = load i32, i32* @l, align 4
  %143 = load i32, i32* @k, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* @l, align 4
  %146 = load i32, i32* @j, align 4
  %147 = sub nsw i32 %145, %146
  %148 = load i32, i32* @k, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sub nsw i32 %144, %149
  store i32 %150, i32* @k, align 4
  %151 = load i32, i32* @l, align 4
  %152 = load i32, i32* @k, align 4
  %153 = sub nsw i32 %151, %152
  %154 = load i32, i32* @k, align 4
  %155 = load i32, i32* @j, align 4
  %156 = add nsw i32 %154, %155
  %157 = mul nsw i32 %153, %156
  store i32 %157, i32* @l, align 4
  %158 = load i32, i32* @j, align 4
  %159 = load i32, i32* @k, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32, i32* @l, align 4
  %162 = add nsw i32 %160, %161
  %163 = sitofp i32 %162 to double
  %164 = load i32, i32* @l, align 4
  %165 = sub nsw i32 %164, 2
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [4 x double], [4 x double]* @e1, i64 0, i64 %166
  store double %163, double* %167, align 8
  %168 = load i32, i32* @j, align 4
  %169 = load i32, i32* @k, align 4
  %170 = mul nsw i32 %168, %169
  %171 = load i32, i32* @l, align 4
  %172 = mul nsw i32 %170, %171
  %173 = sitofp i32 %172 to double
  %174 = load i32, i32* @k, align 4
  %175 = sub nsw i32 %174, 2
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x double], [4 x double]* @e1, i64 0, i64 %176
  store double %173, double* %177, align 8
  br label %178

178:                                              ; preds = %132
  %179 = load i32, i32* @i, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* @i, align 4
  br label %128, !llvm.loop !11

181:                                              ; preds = %128
  store double 5.000000e-01, double* @y, align 8
  store double 5.000000e-01, double* @x, align 8
  store i32 1, i32* @i, align 4
  br label %182

182:                                              ; preds = %229, %181
  %183 = load i32, i32* @i, align 4
  %184 = load i32, i32* @n7, align 4
  %185 = icmp sle i32 %183, %184
  br i1 %185, label %186, label %232

186:                                              ; preds = %182
  %187 = load double, double* @t, align 8
  %188 = load double, double* @t2, align 8
  %189 = load double, double* @x, align 8
  %190 = call double @sin(double noundef %189) #2
  %191 = fmul double %188, %190
  %192 = load double, double* @x, align 8
  %193 = call double @cos(double noundef %192) #2
  %194 = fmul double %191, %193
  %195 = load double, double* @x, align 8
  %196 = load double, double* @y, align 8
  %197 = fadd double %195, %196
  %198 = call double @cos(double noundef %197) #2
  %199 = load double, double* @x, align 8
  %200 = load double, double* @y, align 8
  %201 = fsub double %199, %200
  %202 = call double @cos(double noundef %201) #2
  %203 = fadd double %198, %202
  %204 = fsub double %203, 1.000000e+00
  %205 = fdiv double %194, %204
  %206 = call double @atan(double noundef %205) #2
  %207 = fmul double %187, %206
  store double %207, double* @x, align 8
  %208 = load double, double* @t, align 8
  %209 = load double, double* @t2, align 8
  %210 = load double, double* @y, align 8
  %211 = call double @sin(double noundef %210) #2
  %212 = fmul double %209, %211
  %213 = load double, double* @y, align 8
  %214 = call double @cos(double noundef %213) #2
  %215 = fmul double %212, %214
  %216 = load double, double* @x, align 8
  %217 = load double, double* @y, align 8
  %218 = fadd double %216, %217
  %219 = call double @cos(double noundef %218) #2
  %220 = load double, double* @x, align 8
  %221 = load double, double* @y, align 8
  %222 = fsub double %220, %221
  %223 = call double @cos(double noundef %222) #2
  %224 = fadd double %219, %223
  %225 = fsub double %224, 1.000000e+00
  %226 = fdiv double %215, %225
  %227 = call double @atan(double noundef %226) #2
  %228 = fmul double %208, %227
  store double %228, double* @y, align 8
  br label %229

229:                                              ; preds = %186
  %230 = load i32, i32* @i, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* @i, align 4
  br label %182, !llvm.loop !12

232:                                              ; preds = %182
  store double 1.000000e+00, double* @z, align 8
  store double 1.000000e+00, double* @y, align 8
  store double 1.000000e+00, double* @x, align 8
  store i32 1, i32* @i, align 4
  br label %233

233:                                              ; preds = %241, %232
  %234 = load i32, i32* @i, align 4
  %235 = load i32, i32* @n8, align 4
  %236 = icmp sle i32 %234, %235
  br i1 %236, label %237, label %244

237:                                              ; preds = %233
  %238 = load double, double* @x, align 8
  %239 = load double, double* @y, align 8
  %240 = call i32 @p3(double noundef %238, double noundef %239, double* noundef @z)
  br label %241

241:                                              ; preds = %237
  %242 = load i32, i32* @i, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* @i, align 4
  br label %233, !llvm.loop !13

244:                                              ; preds = %233
  store i32 1, i32* @j, align 4
  store i32 2, i32* @k, align 4
  store i32 3, i32* @l, align 4
  store double 1.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 0), align 16
  store double 2.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 1), align 8
  store double 3.000000e+00, double* getelementptr inbounds ([4 x double], [4 x double]* @e1, i64 0, i64 2), align 16
  store i32 1, i32* @i, align 4
  br label %245

245:                                              ; preds = %251, %244
  %246 = load i32, i32* @i, align 4
  %247 = load i32, i32* @n9, align 4
  %248 = icmp sle i32 %246, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %245
  %250 = call i32 @p0()
  br label %251

251:                                              ; preds = %249
  %252 = load i32, i32* @i, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* @i, align 4
  br label %245, !llvm.loop !14

254:                                              ; preds = %245
  store i32 2, i32* @j, align 4
  store i32 3, i32* @k, align 4
  store i32 1, i32* @i, align 4
  br label %255

255:                                              ; preds = %274, %254
  %256 = load i32, i32* @i, align 4
  %257 = load i32, i32* @n10, align 4
  %258 = icmp sle i32 %256, %257
  br i1 %258, label %259, label %277

259:                                              ; preds = %255
  %260 = load i32, i32* @j, align 4
  %261 = load i32, i32* @k, align 4
  %262 = add nsw i32 %260, %261
  store i32 %262, i32* @j, align 4
  %263 = load i32, i32* @j, align 4
  %264 = load i32, i32* @k, align 4
  %265 = add nsw i32 %263, %264
  store i32 %265, i32* @k, align 4
  %266 = load i32, i32* @k, align 4
  %267 = load i32, i32* @j, align 4
  %268 = sub nsw i32 %266, %267
  store i32 %268, i32* @j, align 4
  %269 = load i32, i32* @k, align 4
  %270 = load i32, i32* @j, align 4
  %271 = sub nsw i32 %269, %270
  %272 = load i32, i32* @j, align 4
  %273 = sub nsw i32 %271, %272
  store i32 %273, i32* @k, align 4
  br label %274

274:                                              ; preds = %259
  %275 = load i32, i32* @i, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* @i, align 4
  br label %255, !llvm.loop !15

277:                                              ; preds = %255
  store double 7.500000e-01, double* @x, align 8
  store i32 1, i32* @i, align 4
  br label %278

278:                                              ; preds = %289, %277
  %279 = load i32, i32* @i, align 4
  %280 = load i32, i32* @n11, align 4
  %281 = icmp sle i32 %279, %280
  br i1 %281, label %282, label %292

282:                                              ; preds = %278
  %283 = load double, double* @x, align 8
  %284 = call double @log(double noundef %283) #2
  %285 = load double, double* @t1, align 8
  %286 = fdiv double %284, %285
  %287 = call double @exp(double noundef %286) #2
  %288 = call double @sqrt(double noundef %287) #2
  store double %288, double* @x, align 8
  br label %289

289:                                              ; preds = %282
  %290 = load i32, i32* @i, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* @i, align 4
  br label %278, !llvm.loop !16

292:                                              ; preds = %278
  %293 = load i32, i32* %1, align 4
  ret i32 %293
}

; Function Attrs: nounwind
declare double @atan(double noundef) #1

; Function Attrs: nounwind
declare double @sin(double noundef) #1

; Function Attrs: nounwind
declare double @cos(double noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #1

; Function Attrs: nounwind
declare double @exp(double noundef) #1

; Function Attrs: nounwind
declare double @log(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pa(double* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  store double* %0, double** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %87, %1
  %6 = load double*, double** %3, align 8
  %7 = getelementptr inbounds double, double* %6, i64 0
  %8 = load double, double* %7, align 8
  %9 = load double*, double** %3, align 8
  %10 = getelementptr inbounds double, double* %9, i64 1
  %11 = load double, double* %10, align 8
  %12 = fadd double %8, %11
  %13 = load double*, double** %3, align 8
  %14 = getelementptr inbounds double, double* %13, i64 2
  %15 = load double, double* %14, align 8
  %16 = fadd double %12, %15
  %17 = load double*, double** %3, align 8
  %18 = getelementptr inbounds double, double* %17, i64 3
  %19 = load double, double* %18, align 8
  %20 = fsub double %16, %19
  %21 = load double, double* @t, align 8
  %22 = fmul double %20, %21
  %23 = load double*, double** %3, align 8
  %24 = getelementptr inbounds double, double* %23, i64 0
  store double %22, double* %24, align 8
  %25 = load double*, double** %3, align 8
  %26 = getelementptr inbounds double, double* %25, i64 0
  %27 = load double, double* %26, align 8
  %28 = load double*, double** %3, align 8
  %29 = getelementptr inbounds double, double* %28, i64 1
  %30 = load double, double* %29, align 8
  %31 = fadd double %27, %30
  %32 = load double*, double** %3, align 8
  %33 = getelementptr inbounds double, double* %32, i64 2
  %34 = load double, double* %33, align 8
  %35 = fsub double %31, %34
  %36 = load double*, double** %3, align 8
  %37 = getelementptr inbounds double, double* %36, i64 3
  %38 = load double, double* %37, align 8
  %39 = fadd double %35, %38
  %40 = load double, double* @t, align 8
  %41 = fmul double %39, %40
  %42 = load double*, double** %3, align 8
  %43 = getelementptr inbounds double, double* %42, i64 1
  store double %41, double* %43, align 8
  %44 = load double*, double** %3, align 8
  %45 = getelementptr inbounds double, double* %44, i64 0
  %46 = load double, double* %45, align 8
  %47 = load double*, double** %3, align 8
  %48 = getelementptr inbounds double, double* %47, i64 1
  %49 = load double, double* %48, align 8
  %50 = fsub double %46, %49
  %51 = load double*, double** %3, align 8
  %52 = getelementptr inbounds double, double* %51, i64 2
  %53 = load double, double* %52, align 8
  %54 = fadd double %50, %53
  %55 = load double*, double** %3, align 8
  %56 = getelementptr inbounds double, double* %55, i64 3
  %57 = load double, double* %56, align 8
  %58 = fadd double %54, %57
  %59 = load double, double* @t, align 8
  %60 = fmul double %58, %59
  %61 = load double*, double** %3, align 8
  %62 = getelementptr inbounds double, double* %61, i64 2
  store double %60, double* %62, align 8
  %63 = load double*, double** %3, align 8
  %64 = getelementptr inbounds double, double* %63, i64 0
  %65 = load double, double* %64, align 8
  %66 = fneg double %65
  %67 = load double*, double** %3, align 8
  %68 = getelementptr inbounds double, double* %67, i64 1
  %69 = load double, double* %68, align 8
  %70 = fadd double %66, %69
  %71 = load double*, double** %3, align 8
  %72 = getelementptr inbounds double, double* %71, i64 2
  %73 = load double, double* %72, align 8
  %74 = fadd double %70, %73
  %75 = load double*, double** %3, align 8
  %76 = getelementptr inbounds double, double* %75, i64 3
  %77 = load double, double* %76, align 8
  %78 = fadd double %74, %77
  %79 = load double, double* @t2, align 8
  %80 = fdiv double %78, %79
  %81 = load double*, double** %3, align 8
  %82 = getelementptr inbounds double, double* %81, i64 3
  store double %80, double* %82, align 8
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 6
  br i1 %86, label %87, label %88

87:                                               ; preds = %5
  br label %5

88:                                               ; preds = %5
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @p3(double noundef %0, double noundef %1, double* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double* %2, double** %7, align 8
  %8 = load double, double* @t, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fadd double %9, %10
  %12 = fmul double %8, %11
  store double %12, double* %5, align 8
  %13 = load double, double* @t, align 8
  %14 = load double, double* %5, align 8
  %15 = load double, double* %6, align 8
  %16 = fadd double %14, %15
  %17 = fmul double %13, %16
  store double %17, double* %6, align 8
  %18 = load double, double* %5, align 8
  %19 = load double, double* %6, align 8
  %20 = fadd double %18, %19
  %21 = load double, double* @t2, align 8
  %22 = fdiv double %20, %21
  %23 = load double*, double** %7, align 8
  store double %22, double* %23, align 8
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @p0() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @k, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [4 x double], [4 x double]* @e1, i64 0, i64 %3
  %5 = load double, double* %4, align 8
  %6 = load i32, i32* @j, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x double], [4 x double]* @e1, i64 0, i64 %7
  store double %5, double* %8, align 8
  %9 = load i32, i32* @l, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x double], [4 x double]* @e1, i64 0, i64 %10
  %12 = load double, double* %11, align 8
  %13 = load i32, i32* @k, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x double], [4 x double]* @e1, i64 0, i64 %14
  store double %12, double* %15, align 8
  %16 = load i32, i32* @j, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x double], [4 x double]* @e1, i64 0, i64 %17
  %19 = load double, double* %18, align 8
  %20 = load i32, i32* @l, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x double], [4 x double]* @e1, i64 0, i64 %21
  store double %19, double* %22, align 8
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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

; ModuleID = 'src/ud.c'
source_filename = "src/ud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local global [50 x [50 x i64]] zeroinitializer, align 16
@b = dso_local global [50 x i64] zeroinitializer, align 16
@x = dso_local global [50 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 50, i32* %3, align 4
  store i32 5, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %61, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %64

11:                                               ; preds = %7
  store i64 0, i64* %6, align 8
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %53, %11
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  %21 = add nsw i32 %18, %20
  %22 = sext i32 %21 to i64
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %24
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [50 x i64], [50 x i64]* %25, i64 0, i64 %27
  store i64 %22, i64* %28, align 8
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %16
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %34
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [50 x i64], [50 x i64]* %35, i64 0, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = sitofp i64 %39 to double
  %41 = fmul double %40, 2.000000e+00
  %42 = fptosi double %41 to i64
  store i64 %42, i64* %38, align 8
  br label %43

43:                                               ; preds = %32, %16
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %45
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [50 x i64], [50 x i64]* %46, i64 0, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %12, !llvm.loop !6

56:                                               ; preds = %12
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [50 x i64], [50 x i64]* @b, i64 0, i64 %59
  store i64 %57, i64* %60, align 8
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %7, !llvm.loop !8

64:                                               ; preds = %7
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @ludcmp(i32 noundef %65, i32 noundef %66)
  store i32 %67, i32* %5, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ludcmp(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [100 x i64], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %132, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %135

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %74, %14
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %23
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [50 x i64], [50 x i64]* %24, i64 0, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %54, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %38
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [50 x i64], [50 x i64]* %39, i64 0, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %45
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [50 x i64], [50 x i64]* %46, i64 0, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = mul nsw i64 %43, %50
  %52 = load i64, i64* %8, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %36
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %32, !llvm.loop !9

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57, %21
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %61
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [50 x i64], [50 x i64]* %62, i64 0, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = sdiv i64 %59, %66
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %69
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [50 x i64], [50 x i64]* %70, i64 0, i64 %72
  store i64 %67, i64* %73, align 8
  br label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %17, !llvm.loop !10

77:                                               ; preds = %17
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %128, %77
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %131

84:                                               ; preds = %80
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %87
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [50 x i64], [50 x i64]* %88, i64 0, i64 %90
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %8, align 8
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %116, %84
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %93
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %100
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [50 x i64], [50 x i64]* %101, i64 0, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %107
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [50 x i64], [50 x i64]* %108, i64 0, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = mul nsw i64 %105, %112
  %114 = load i64, i64* %8, align 8
  %115 = sub nsw i64 %114, %113
  store i64 %115, i64* %8, align 8
  br label %116

116:                                              ; preds = %97
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %93, !llvm.loop !11

119:                                              ; preds = %93
  %120 = load i64, i64* %8, align 8
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %123
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [50 x i64], [50 x i64]* %124, i64 0, i64 %126
  store i64 %120, i64* %127, align 8
  br label %128

128:                                              ; preds = %119
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %80, !llvm.loop !12

131:                                              ; preds = %80
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %10, !llvm.loop !13

135:                                              ; preds = %10
  %136 = load i64, i64* getelementptr inbounds ([50 x i64], [50 x i64]* @b, i64 0, i64 0), align 16
  %137 = getelementptr inbounds [100 x i64], [100 x i64]* %9, i64 0, i64 0
  store i64 %136, i64* %137, align 16
  store i32 1, i32* %5, align 4
  br label %138

138:                                              ; preds = %174, %135
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %177

142:                                              ; preds = %138
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [50 x i64], [50 x i64]* @b, i64 0, i64 %144
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %166, %142
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %169

151:                                              ; preds = %147
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %153
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [50 x i64], [50 x i64]* %154, i64 0, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [100 x i64], [100 x i64]* %9, i64 0, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = mul nsw i64 %158, %162
  %164 = load i64, i64* %8, align 8
  %165 = sub nsw i64 %164, %163
  store i64 %165, i64* %8, align 8
  br label %166

166:                                              ; preds = %151
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %147, !llvm.loop !14

169:                                              ; preds = %147
  %170 = load i64, i64* %8, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [100 x i64], [100 x i64]* %9, i64 0, i64 %172
  store i64 %170, i64* %173, align 8
  br label %174

174:                                              ; preds = %169
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %138, !llvm.loop !15

177:                                              ; preds = %138
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [100 x i64], [100 x i64]* %9, i64 0, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %183
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [50 x i64], [50 x i64]* %184, i64 0, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = sdiv i64 %181, %188
  %190 = load i32, i32* %4, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [50 x i64], [50 x i64]* @x, i64 0, i64 %191
  store i64 %189, i64* %192, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sub nsw i32 %193, 1
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %240, %177
  %196 = load i32, i32* %5, align 4
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %243

198:                                              ; preds = %195
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [100 x i64], [100 x i64]* %9, i64 0, i64 %200
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %8, align 8
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %224, %198
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* %4, align 4
  %208 = icmp sle i32 %206, %207
  br i1 %208, label %209, label %227

209:                                              ; preds = %205
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %211
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [50 x i64], [50 x i64]* %212, i64 0, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [50 x i64], [50 x i64]* @x, i64 0, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = mul nsw i64 %216, %220
  %222 = load i64, i64* %8, align 8
  %223 = sub nsw i64 %222, %221
  store i64 %223, i64* %8, align 8
  br label %224

224:                                              ; preds = %209
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  br label %205, !llvm.loop !16

227:                                              ; preds = %205
  %228 = load i64, i64* %8, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %230
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [50 x i64], [50 x i64]* %231, i64 0, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = sdiv i64 %228, %235
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [50 x i64], [50 x i64]* @x, i64 0, i64 %238
  store i64 %236, i64* %239, align 8
  br label %240

240:                                              ; preds = %227
  %241 = load i32, i32* %5, align 4
  %242 = add nsw i32 %241, -1
  store i32 %242, i32* %5, align 4
  br label %195, !llvm.loop !17

243:                                              ; preds = %195
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

; ModuleID = 'src/jfdctint.c'
source_filename = "src/jfdctint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@data = dso_local global [64 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_fdct_islow() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* getelementptr inbounds ([64 x i32], [64 x i32]* @data, i64 0, i64 0), i32** %18, align 8
  store i32 7, i32* %19, align 4
  br label %20

20:                                               ; preds = %200, %0
  %21 = load i32, i32* %19, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %203

23:                                               ; preds = %20
  %24 = load i32*, i32** %18, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %18, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 7
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %1, align 4
  %31 = load i32*, i32** %18, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %18, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 7
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %18, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %18, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 6
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  store i32 %44, i32* %2, align 4
  %45 = load i32*, i32** %18, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %18, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32*, i32** %18, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %18, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  store i32 %58, i32* %3, align 4
  %59 = load i32*, i32** %18, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %18, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  store i32 %65, i32* %6, align 4
  %66 = load i32*, i32** %18, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %18, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %68, %71
  store i32 %72, i32* %4, align 4
  %73 = load i32*, i32** %18, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %18, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %1, align 4
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* %4, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* %3, align 4
  %91 = sub nsw i32 %89, %90
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %92, %93
  %95 = shl i32 %94, 2
  %96 = load i32*, i32** %18, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %98, %99
  %101 = shl i32 %100, 2
  %102 = load i32*, i32** %18, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %104, %105
  %107 = mul nsw i32 %106, 4433
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %12, align 4
  %110 = mul nsw i32 %109, 6270
  %111 = add nsw i32 %108, %110
  %112 = add nsw i32 %111, 1024
  %113 = ashr i32 %112, 11
  %114 = load i32*, i32** %18, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %11, align 4
  %118 = mul nsw i32 %117, -15137
  %119 = add nsw i32 %116, %118
  %120 = add nsw i32 %119, 1024
  %121 = ashr i32 %120, 11
  %122 = load i32*, i32** %18, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 6
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %124, %125
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %127, %128
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %130, %131
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %133, %134
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %136, %137
  %139 = mul nsw i32 %138, 9633
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %5, align 4
  %141 = mul nsw i32 %140, 2446
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %6, align 4
  %143 = mul nsw i32 %142, 16819
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %7, align 4
  %145 = mul nsw i32 %144, 25172
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = mul nsw i32 %146, 12299
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %13, align 4
  %149 = mul nsw i32 %148, -7373
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %14, align 4
  %151 = mul nsw i32 %150, -20995
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %15, align 4
  %153 = mul nsw i32 %152, -16069
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %16, align 4
  %155 = mul nsw i32 %154, -3196
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %16, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %164, %165
  %167 = add nsw i32 %166, 1024
  %168 = ashr i32 %167, 11
  %169 = load i32*, i32** %18, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 7
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %173, %174
  %176 = add nsw i32 %175, 1024
  %177 = ashr i32 %176, 11
  %178 = load i32*, i32** %18, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 5
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %182, %183
  %185 = add nsw i32 %184, 1024
  %186 = ashr i32 %185, 11
  %187 = load i32*, i32** %18, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 3
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %189, %190
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %191, %192
  %194 = add nsw i32 %193, 1024
  %195 = ashr i32 %194, 11
  %196 = load i32*, i32** %18, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  store i32 %195, i32* %197, align 4
  %198 = load i32*, i32** %18, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 8
  store i32* %199, i32** %18, align 8
  br label %200

200:                                              ; preds = %23
  %201 = load i32, i32* %19, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %19, align 4
  br label %20, !llvm.loop !6

203:                                              ; preds = %20
  store i32* getelementptr inbounds ([64 x i32], [64 x i32]* @data, i64 0, i64 0), i32** %18, align 8
  store i32 7, i32* %19, align 4
  br label %204

204:                                              ; preds = %386, %203
  %205 = load i32, i32* %19, align 4
  %206 = icmp sge i32 %205, 0
  br i1 %206, label %207, label %389

207:                                              ; preds = %204
  %208 = load i32*, i32** %18, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %18, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 56
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %210, %213
  store i32 %214, i32* %1, align 4
  %215 = load i32*, i32** %18, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %18, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 56
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %217, %220
  store i32 %221, i32* %8, align 4
  %222 = load i32*, i32** %18, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 8
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %18, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 48
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %224, %227
  store i32 %228, i32* %2, align 4
  %229 = load i32*, i32** %18, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 8
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %18, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 48
  %234 = load i32, i32* %233, align 4
  %235 = sub nsw i32 %231, %234
  store i32 %235, i32* %7, align 4
  %236 = load i32*, i32** %18, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 16
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %18, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 40
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %238, %241
  store i32 %242, i32* %3, align 4
  %243 = load i32*, i32** %18, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 16
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %18, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 40
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 %245, %248
  store i32 %249, i32* %6, align 4
  %250 = load i32*, i32** %18, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 24
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** %18, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 32
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %252, %255
  store i32 %256, i32* %4, align 4
  %257 = load i32*, i32** %18, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 24
  %259 = load i32, i32* %258, align 4
  %260 = load i32*, i32** %18, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 32
  %262 = load i32, i32* %261, align 4
  %263 = sub nsw i32 %259, %262
  store i32 %263, i32* %5, align 4
  %264 = load i32, i32* %1, align 4
  %265 = load i32, i32* %4, align 4
  %266 = add nsw i32 %264, %265
  store i32 %266, i32* %9, align 4
  %267 = load i32, i32* %1, align 4
  %268 = load i32, i32* %4, align 4
  %269 = sub nsw i32 %267, %268
  store i32 %269, i32* %12, align 4
  %270 = load i32, i32* %2, align 4
  %271 = load i32, i32* %3, align 4
  %272 = add nsw i32 %270, %271
  store i32 %272, i32* %10, align 4
  %273 = load i32, i32* %2, align 4
  %274 = load i32, i32* %3, align 4
  %275 = sub nsw i32 %273, %274
  store i32 %275, i32* %11, align 4
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %10, align 4
  %278 = add nsw i32 %276, %277
  %279 = add nsw i32 %278, 2
  %280 = ashr i32 %279, 2
  %281 = load i32*, i32** %18, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* %10, align 4
  %285 = sub nsw i32 %283, %284
  %286 = add nsw i32 %285, 2
  %287 = ashr i32 %286, 2
  %288 = load i32*, i32** %18, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 32
  store i32 %287, i32* %289, align 4
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* %12, align 4
  %292 = add nsw i32 %290, %291
  %293 = mul nsw i32 %292, 4433
  store i32 %293, i32* %13, align 4
  %294 = load i32, i32* %13, align 4
  %295 = load i32, i32* %12, align 4
  %296 = mul nsw i32 %295, 6270
  %297 = add nsw i32 %294, %296
  %298 = add nsw i32 %297, 16384
  %299 = ashr i32 %298, 15
  %300 = load i32*, i32** %18, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 16
  store i32 %299, i32* %301, align 4
  %302 = load i32, i32* %13, align 4
  %303 = load i32, i32* %11, align 4
  %304 = mul nsw i32 %303, -15137
  %305 = add nsw i32 %302, %304
  %306 = add nsw i32 %305, 16384
  %307 = ashr i32 %306, 15
  %308 = load i32*, i32** %18, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 48
  store i32 %307, i32* %309, align 4
  %310 = load i32, i32* %5, align 4
  %311 = load i32, i32* %8, align 4
  %312 = add nsw i32 %310, %311
  store i32 %312, i32* %13, align 4
  %313 = load i32, i32* %6, align 4
  %314 = load i32, i32* %7, align 4
  %315 = add nsw i32 %313, %314
  store i32 %315, i32* %14, align 4
  %316 = load i32, i32* %5, align 4
  %317 = load i32, i32* %7, align 4
  %318 = add nsw i32 %316, %317
  store i32 %318, i32* %15, align 4
  %319 = load i32, i32* %6, align 4
  %320 = load i32, i32* %8, align 4
  %321 = add nsw i32 %319, %320
  store i32 %321, i32* %16, align 4
  %322 = load i32, i32* %15, align 4
  %323 = load i32, i32* %16, align 4
  %324 = add nsw i32 %322, %323
  %325 = mul nsw i32 %324, 9633
  store i32 %325, i32* %17, align 4
  %326 = load i32, i32* %5, align 4
  %327 = mul nsw i32 %326, 2446
  store i32 %327, i32* %5, align 4
  %328 = load i32, i32* %6, align 4
  %329 = mul nsw i32 %328, 16819
  store i32 %329, i32* %6, align 4
  %330 = load i32, i32* %7, align 4
  %331 = mul nsw i32 %330, 25172
  store i32 %331, i32* %7, align 4
  %332 = load i32, i32* %8, align 4
  %333 = mul nsw i32 %332, 12299
  store i32 %333, i32* %8, align 4
  %334 = load i32, i32* %13, align 4
  %335 = mul nsw i32 %334, -7373
  store i32 %335, i32* %13, align 4
  %336 = load i32, i32* %14, align 4
  %337 = mul nsw i32 %336, -20995
  store i32 %337, i32* %14, align 4
  %338 = load i32, i32* %15, align 4
  %339 = mul nsw i32 %338, -16069
  store i32 %339, i32* %15, align 4
  %340 = load i32, i32* %16, align 4
  %341 = mul nsw i32 %340, -3196
  store i32 %341, i32* %16, align 4
  %342 = load i32, i32* %17, align 4
  %343 = load i32, i32* %15, align 4
  %344 = add nsw i32 %343, %342
  store i32 %344, i32* %15, align 4
  %345 = load i32, i32* %17, align 4
  %346 = load i32, i32* %16, align 4
  %347 = add nsw i32 %346, %345
  store i32 %347, i32* %16, align 4
  %348 = load i32, i32* %5, align 4
  %349 = load i32, i32* %13, align 4
  %350 = add nsw i32 %348, %349
  %351 = load i32, i32* %15, align 4
  %352 = add nsw i32 %350, %351
  %353 = add nsw i32 %352, 16384
  %354 = ashr i32 %353, 15
  %355 = load i32*, i32** %18, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 56
  store i32 %354, i32* %356, align 4
  %357 = load i32, i32* %6, align 4
  %358 = load i32, i32* %14, align 4
  %359 = add nsw i32 %357, %358
  %360 = load i32, i32* %16, align 4
  %361 = add nsw i32 %359, %360
  %362 = add nsw i32 %361, 16384
  %363 = ashr i32 %362, 15
  %364 = load i32*, i32** %18, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 40
  store i32 %363, i32* %365, align 4
  %366 = load i32, i32* %7, align 4
  %367 = load i32, i32* %14, align 4
  %368 = add nsw i32 %366, %367
  %369 = load i32, i32* %15, align 4
  %370 = add nsw i32 %368, %369
  %371 = add nsw i32 %370, 16384
  %372 = ashr i32 %371, 15
  %373 = load i32*, i32** %18, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 24
  store i32 %372, i32* %374, align 4
  %375 = load i32, i32* %8, align 4
  %376 = load i32, i32* %13, align 4
  %377 = add nsw i32 %375, %376
  %378 = load i32, i32* %16, align 4
  %379 = add nsw i32 %377, %378
  %380 = add nsw i32 %379, 16384
  %381 = ashr i32 %380, 15
  %382 = load i32*, i32** %18, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 8
  store i32 %381, i32* %383, align 4
  %384 = load i32*, i32** %18, align 8
  %385 = getelementptr inbounds i32, i32* %384, i32 1
  store i32* %385, i32** %18, align 8
  br label %386

386:                                              ; preds = %207
  %387 = load i32, i32* %19, align 4
  %388 = add nsw i32 %387, -1
  store i32 %388, i32* %19, align 4
  br label %204, !llvm.loop !8

389:                                              ; preds = %204
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %15, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 64
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = mul nsw i32 %7, 133
  %9 = add nsw i32 %8, 81
  %10 = srem i32 %9, 65535
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [64 x i32], [64 x i32]* @data, i64 0, i64 %13
  store i32 %11, i32* %14, align 4
  br label %15

15:                                               ; preds = %6
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %3, !llvm.loop !9

18:                                               ; preds = %3
  call void @jpeg_fdct_islow()
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

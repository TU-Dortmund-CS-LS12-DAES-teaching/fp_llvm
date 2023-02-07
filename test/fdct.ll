; ModuleID = 'src/fdct.c'
source_filename = "src/fdct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@block = dso_local global [64 x i16] [i16 99, i16 104, i16 109, i16 113, i16 115, i16 115, i16 55, i16 55, i16 104, i16 111, i16 113, i16 116, i16 119, i16 56, i16 56, i16 56, i16 110, i16 115, i16 120, i16 119, i16 118, i16 56, i16 56, i16 56, i16 119, i16 121, i16 122, i16 120, i16 120, i16 59, i16 59, i16 59, i16 119, i16 120, i16 121, i16 122, i16 122, i16 55, i16 55, i16 55, i16 121, i16 121, i16 121, i16 121, i16 60, i16 57, i16 57, i16 57, i16 122, i16 122, i16 61, i16 63, i16 62, i16 57, i16 57, i16 57, i16 62, i16 62, i16 61, i16 61, i16 63, i16 58, i16 58, i16 58], align 16
@out = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @fdct(i16* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i16*, align 8
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i16*, align 8
  %24 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  %25 = load i16*, i16** %3, align 8
  store i16* %25, i16** %23, align 8
  store i32 0, i32* %22, align 4
  br label %26

26:                                               ; preds = %238, %2
  %27 = load i32, i32* %22, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %241

29:                                               ; preds = %26
  %30 = load i16*, i16** %23, align 8
  %31 = getelementptr inbounds i16, i16* %30, i64 0
  %32 = load i16, i16* %31, align 2
  %33 = sext i16 %32 to i32
  %34 = load i16*, i16** %23, align 8
  %35 = getelementptr inbounds i16, i16* %34, i64 7
  %36 = load i16, i16* %35, align 2
  %37 = sext i16 %36 to i32
  %38 = add nsw i32 %33, %37
  store i32 %38, i32* %5, align 4
  %39 = load i16*, i16** %23, align 8
  %40 = getelementptr inbounds i16, i16* %39, i64 0
  %41 = load i16, i16* %40, align 2
  %42 = sext i16 %41 to i32
  %43 = load i16*, i16** %23, align 8
  %44 = getelementptr inbounds i16, i16* %43, i64 7
  %45 = load i16, i16* %44, align 2
  %46 = sext i16 %45 to i32
  %47 = sub nsw i32 %42, %46
  store i32 %47, i32* %12, align 4
  %48 = load i16*, i16** %23, align 8
  %49 = getelementptr inbounds i16, i16* %48, i64 1
  %50 = load i16, i16* %49, align 2
  %51 = sext i16 %50 to i32
  %52 = load i16*, i16** %23, align 8
  %53 = getelementptr inbounds i16, i16* %52, i64 6
  %54 = load i16, i16* %53, align 2
  %55 = sext i16 %54 to i32
  %56 = add nsw i32 %51, %55
  store i32 %56, i32* %6, align 4
  %57 = load i16*, i16** %23, align 8
  %58 = getelementptr inbounds i16, i16* %57, i64 1
  %59 = load i16, i16* %58, align 2
  %60 = sext i16 %59 to i32
  %61 = load i16*, i16** %23, align 8
  %62 = getelementptr inbounds i16, i16* %61, i64 6
  %63 = load i16, i16* %62, align 2
  %64 = sext i16 %63 to i32
  %65 = sub nsw i32 %60, %64
  store i32 %65, i32* %11, align 4
  %66 = load i16*, i16** %23, align 8
  %67 = getelementptr inbounds i16, i16* %66, i64 2
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = load i16*, i16** %23, align 8
  %71 = getelementptr inbounds i16, i16* %70, i64 5
  %72 = load i16, i16* %71, align 2
  %73 = sext i16 %72 to i32
  %74 = add nsw i32 %69, %73
  store i32 %74, i32* %7, align 4
  %75 = load i16*, i16** %23, align 8
  %76 = getelementptr inbounds i16, i16* %75, i64 2
  %77 = load i16, i16* %76, align 2
  %78 = sext i16 %77 to i32
  %79 = load i16*, i16** %23, align 8
  %80 = getelementptr inbounds i16, i16* %79, i64 5
  %81 = load i16, i16* %80, align 2
  %82 = sext i16 %81 to i32
  %83 = sub nsw i32 %78, %82
  store i32 %83, i32* %10, align 4
  %84 = load i16*, i16** %23, align 8
  %85 = getelementptr inbounds i16, i16* %84, i64 3
  %86 = load i16, i16* %85, align 2
  %87 = sext i16 %86 to i32
  %88 = load i16*, i16** %23, align 8
  %89 = getelementptr inbounds i16, i16* %88, i64 4
  %90 = load i16, i16* %89, align 2
  %91 = sext i16 %90 to i32
  %92 = add nsw i32 %87, %91
  store i32 %92, i32* %8, align 4
  %93 = load i16*, i16** %23, align 8
  %94 = getelementptr inbounds i16, i16* %93, i64 3
  %95 = load i16, i16* %94, align 2
  %96 = sext i16 %95 to i32
  %97 = load i16*, i16** %23, align 8
  %98 = getelementptr inbounds i16, i16* %97, i64 4
  %99 = load i16, i16* %98, align 2
  %100 = sext i16 %99 to i32
  %101 = sub nsw i32 %96, %100
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %111, %112
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %114, %115
  %117 = shl i32 %116, 2
  %118 = trunc i32 %117 to i16
  %119 = load i16*, i16** %23, align 8
  %120 = getelementptr inbounds i16, i16* %119, i64 0
  store i16 %118, i16* %120, align 2
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %14, align 4
  %123 = sub nsw i32 %121, %122
  %124 = shl i32 %123, 2
  %125 = trunc i32 %124 to i16
  %126 = load i16*, i16** %23, align 8
  %127 = getelementptr inbounds i16, i16* %126, i64 4
  store i16 %125, i16* %127, align 2
  store i32 4433, i32* %24, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* %24, align 4
  %132 = mul nsw i32 %130, %131
  store i32 %132, i32* %17, align 4
  store i32 6270, i32* %24, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %24, align 4
  %136 = mul nsw i32 %134, %135
  %137 = add nsw i32 %133, %136
  %138 = ashr i32 %137, 11
  %139 = trunc i32 %138 to i16
  %140 = load i16*, i16** %23, align 8
  %141 = getelementptr inbounds i16, i16* %140, i64 2
  store i16 %139, i16* %141, align 2
  store i32 -15137, i32* %24, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %24, align 4
  %145 = mul nsw i32 %143, %144
  %146 = add nsw i32 %142, %145
  %147 = ashr i32 %146, 11
  %148 = trunc i32 %147 to i16
  %149 = load i16*, i16** %23, align 8
  %150 = getelementptr inbounds i16, i16* %149, i64 6
  store i16 %148, i16* %150, align 2
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %151, %152
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %154, %155
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %157, %158
  store i32 %159, i32* %19, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %160, %161
  store i32 %162, i32* %20, align 4
  store i32 9633, i32* %24, align 4
  %163 = load i32, i32* %19, align 4
  %164 = load i32, i32* %20, align 4
  %165 = add nsw i32 %163, %164
  %166 = load i32, i32* %24, align 4
  %167 = mul nsw i32 %165, %166
  store i32 %167, i32* %21, align 4
  store i32 2446, i32* %24, align 4
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %24, align 4
  %170 = mul nsw i32 %168, %169
  store i32 %170, i32* %9, align 4
  store i32 16819, i32* %24, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %24, align 4
  %173 = mul nsw i32 %171, %172
  store i32 %173, i32* %10, align 4
  store i32 25172, i32* %24, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %24, align 4
  %176 = mul nsw i32 %174, %175
  store i32 %176, i32* %11, align 4
  store i32 12299, i32* %24, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %24, align 4
  %179 = mul nsw i32 %177, %178
  store i32 %179, i32* %12, align 4
  store i32 -7373, i32* %24, align 4
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %24, align 4
  %182 = mul nsw i32 %180, %181
  store i32 %182, i32* %17, align 4
  store i32 -20995, i32* %24, align 4
  %183 = load i32, i32* %18, align 4
  %184 = load i32, i32* %24, align 4
  %185 = mul nsw i32 %183, %184
  store i32 %185, i32* %18, align 4
  store i32 -16069, i32* %24, align 4
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* %24, align 4
  %188 = mul nsw i32 %186, %187
  store i32 %188, i32* %19, align 4
  store i32 -3196, i32* %24, align 4
  %189 = load i32, i32* %20, align 4
  %190 = load i32, i32* %24, align 4
  %191 = mul nsw i32 %189, %190
  store i32 %191, i32* %20, align 4
  %192 = load i32, i32* %21, align 4
  %193 = load i32, i32* %19, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %19, align 4
  %195 = load i32, i32* %21, align 4
  %196 = load i32, i32* %20, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %20, align 4
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %17, align 4
  %200 = add nsw i32 %198, %199
  %201 = load i32, i32* %19, align 4
  %202 = add nsw i32 %200, %201
  %203 = ashr i32 %202, 11
  %204 = trunc i32 %203 to i16
  %205 = load i16*, i16** %23, align 8
  %206 = getelementptr inbounds i16, i16* %205, i64 7
  store i16 %204, i16* %206, align 2
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %18, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i32, i32* %20, align 4
  %211 = add nsw i32 %209, %210
  %212 = ashr i32 %211, 11
  %213 = trunc i32 %212 to i16
  %214 = load i16*, i16** %23, align 8
  %215 = getelementptr inbounds i16, i16* %214, i64 5
  store i16 %213, i16* %215, align 2
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %18, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32, i32* %19, align 4
  %220 = add nsw i32 %218, %219
  %221 = ashr i32 %220, 11
  %222 = trunc i32 %221 to i16
  %223 = load i16*, i16** %23, align 8
  %224 = getelementptr inbounds i16, i16* %223, i64 3
  store i16 %222, i16* %224, align 2
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %17, align 4
  %227 = add nsw i32 %225, %226
  %228 = load i32, i32* %20, align 4
  %229 = add nsw i32 %227, %228
  %230 = ashr i32 %229, 11
  %231 = trunc i32 %230 to i16
  %232 = load i16*, i16** %23, align 8
  %233 = getelementptr inbounds i16, i16* %232, i64 1
  store i16 %231, i16* %233, align 2
  %234 = load i32, i32* %4, align 4
  %235 = load i16*, i16** %23, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i16, i16* %235, i64 %236
  store i16* %237, i16** %23, align 8
  br label %238

238:                                              ; preds = %29
  %239 = load i32, i32* %22, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %22, align 4
  br label %26, !llvm.loop !6

241:                                              ; preds = %26
  %242 = load i16*, i16** %3, align 8
  store i16* %242, i16** %23, align 8
  store i32 0, i32* %22, align 4
  br label %243

243:                                              ; preds = %513, %241
  %244 = load i32, i32* %22, align 4
  %245 = icmp slt i32 %244, 8
  br i1 %245, label %246, label %516

246:                                              ; preds = %243
  %247 = load i16*, i16** %23, align 8
  %248 = getelementptr inbounds i16, i16* %247, i64 0
  %249 = load i16, i16* %248, align 2
  %250 = sext i16 %249 to i32
  %251 = load i16*, i16** %23, align 8
  %252 = load i32, i32* %4, align 4
  %253 = mul nsw i32 7, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i16, i16* %251, i64 %254
  %256 = load i16, i16* %255, align 2
  %257 = sext i16 %256 to i32
  %258 = add nsw i32 %250, %257
  store i32 %258, i32* %5, align 4
  %259 = load i16*, i16** %23, align 8
  %260 = getelementptr inbounds i16, i16* %259, i64 0
  %261 = load i16, i16* %260, align 2
  %262 = sext i16 %261 to i32
  %263 = load i16*, i16** %23, align 8
  %264 = load i32, i32* %4, align 4
  %265 = mul nsw i32 7, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i16, i16* %263, i64 %266
  %268 = load i16, i16* %267, align 2
  %269 = sext i16 %268 to i32
  %270 = sub nsw i32 %262, %269
  store i32 %270, i32* %12, align 4
  %271 = load i16*, i16** %23, align 8
  %272 = load i32, i32* %4, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i16, i16* %271, i64 %273
  %275 = load i16, i16* %274, align 2
  %276 = sext i16 %275 to i32
  %277 = load i16*, i16** %23, align 8
  %278 = load i32, i32* %4, align 4
  %279 = mul nsw i32 6, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i16, i16* %277, i64 %280
  %282 = load i16, i16* %281, align 2
  %283 = sext i16 %282 to i32
  %284 = add nsw i32 %276, %283
  store i32 %284, i32* %6, align 4
  %285 = load i16*, i16** %23, align 8
  %286 = load i32, i32* %4, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i16, i16* %285, i64 %287
  %289 = load i16, i16* %288, align 2
  %290 = sext i16 %289 to i32
  %291 = load i16*, i16** %23, align 8
  %292 = load i32, i32* %4, align 4
  %293 = mul nsw i32 6, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i16, i16* %291, i64 %294
  %296 = load i16, i16* %295, align 2
  %297 = sext i16 %296 to i32
  %298 = sub nsw i32 %290, %297
  store i32 %298, i32* %11, align 4
  %299 = load i16*, i16** %23, align 8
  %300 = load i32, i32* %4, align 4
  %301 = mul nsw i32 2, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i16, i16* %299, i64 %302
  %304 = load i16, i16* %303, align 2
  %305 = sext i16 %304 to i32
  %306 = load i16*, i16** %23, align 8
  %307 = load i32, i32* %4, align 4
  %308 = mul nsw i32 5, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i16, i16* %306, i64 %309
  %311 = load i16, i16* %310, align 2
  %312 = sext i16 %311 to i32
  %313 = add nsw i32 %305, %312
  store i32 %313, i32* %7, align 4
  %314 = load i16*, i16** %23, align 8
  %315 = load i32, i32* %4, align 4
  %316 = mul nsw i32 2, %315
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i16, i16* %314, i64 %317
  %319 = load i16, i16* %318, align 2
  %320 = sext i16 %319 to i32
  %321 = load i16*, i16** %23, align 8
  %322 = load i32, i32* %4, align 4
  %323 = mul nsw i32 5, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i16, i16* %321, i64 %324
  %326 = load i16, i16* %325, align 2
  %327 = sext i16 %326 to i32
  %328 = sub nsw i32 %320, %327
  store i32 %328, i32* %10, align 4
  %329 = load i16*, i16** %23, align 8
  %330 = load i32, i32* %4, align 4
  %331 = mul nsw i32 3, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i16, i16* %329, i64 %332
  %334 = load i16, i16* %333, align 2
  %335 = sext i16 %334 to i32
  %336 = load i16*, i16** %23, align 8
  %337 = load i32, i32* %4, align 4
  %338 = mul nsw i32 4, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i16, i16* %336, i64 %339
  %341 = load i16, i16* %340, align 2
  %342 = sext i16 %341 to i32
  %343 = add nsw i32 %335, %342
  store i32 %343, i32* %8, align 4
  %344 = load i16*, i16** %23, align 8
  %345 = load i32, i32* %4, align 4
  %346 = mul nsw i32 3, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i16, i16* %344, i64 %347
  %349 = load i16, i16* %348, align 2
  %350 = sext i16 %349 to i32
  %351 = load i16*, i16** %23, align 8
  %352 = load i32, i32* %4, align 4
  %353 = mul nsw i32 4, %352
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i16, i16* %351, i64 %354
  %356 = load i16, i16* %355, align 2
  %357 = sext i16 %356 to i32
  %358 = sub nsw i32 %350, %357
  store i32 %358, i32* %9, align 4
  %359 = load i32, i32* %5, align 4
  %360 = load i32, i32* %8, align 4
  %361 = add nsw i32 %359, %360
  store i32 %361, i32* %13, align 4
  %362 = load i32, i32* %5, align 4
  %363 = load i32, i32* %8, align 4
  %364 = sub nsw i32 %362, %363
  store i32 %364, i32* %16, align 4
  %365 = load i32, i32* %6, align 4
  %366 = load i32, i32* %7, align 4
  %367 = add nsw i32 %365, %366
  store i32 %367, i32* %14, align 4
  %368 = load i32, i32* %6, align 4
  %369 = load i32, i32* %7, align 4
  %370 = sub nsw i32 %368, %369
  store i32 %370, i32* %15, align 4
  %371 = load i32, i32* %13, align 4
  %372 = load i32, i32* %14, align 4
  %373 = add nsw i32 %371, %372
  %374 = ashr i32 %373, 5
  %375 = trunc i32 %374 to i16
  %376 = load i16*, i16** %23, align 8
  %377 = getelementptr inbounds i16, i16* %376, i64 0
  store i16 %375, i16* %377, align 2
  %378 = load i32, i32* %13, align 4
  %379 = load i32, i32* %14, align 4
  %380 = sub nsw i32 %378, %379
  %381 = ashr i32 %380, 5
  %382 = trunc i32 %381 to i16
  %383 = load i16*, i16** %23, align 8
  %384 = load i32, i32* %4, align 4
  %385 = mul nsw i32 4, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i16, i16* %383, i64 %386
  store i16 %382, i16* %387, align 2
  store i32 4433, i32* %24, align 4
  %388 = load i32, i32* %15, align 4
  %389 = load i32, i32* %16, align 4
  %390 = add nsw i32 %388, %389
  %391 = load i32, i32* %24, align 4
  %392 = mul nsw i32 %390, %391
  store i32 %392, i32* %17, align 4
  store i32 6270, i32* %24, align 4
  %393 = load i32, i32* %17, align 4
  %394 = load i32, i32* %16, align 4
  %395 = load i32, i32* %24, align 4
  %396 = mul nsw i32 %394, %395
  %397 = add nsw i32 %393, %396
  %398 = ashr i32 %397, 18
  %399 = trunc i32 %398 to i16
  %400 = load i16*, i16** %23, align 8
  %401 = load i32, i32* %4, align 4
  %402 = mul nsw i32 2, %401
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i16, i16* %400, i64 %403
  store i16 %399, i16* %404, align 2
  store i32 -15137, i32* %24, align 4
  %405 = load i32, i32* %17, align 4
  %406 = load i32, i32* %15, align 4
  %407 = load i32, i32* %24, align 4
  %408 = mul nsw i32 %406, %407
  %409 = add nsw i32 %405, %408
  %410 = ashr i32 %409, 18
  %411 = trunc i32 %410 to i16
  %412 = load i16*, i16** %23, align 8
  %413 = load i32, i32* %4, align 4
  %414 = mul nsw i32 6, %413
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i16, i16* %412, i64 %415
  store i16 %411, i16* %416, align 2
  %417 = load i32, i32* %9, align 4
  %418 = load i32, i32* %12, align 4
  %419 = add nsw i32 %417, %418
  store i32 %419, i32* %17, align 4
  %420 = load i32, i32* %10, align 4
  %421 = load i32, i32* %11, align 4
  %422 = add nsw i32 %420, %421
  store i32 %422, i32* %18, align 4
  %423 = load i32, i32* %9, align 4
  %424 = load i32, i32* %11, align 4
  %425 = add nsw i32 %423, %424
  store i32 %425, i32* %19, align 4
  %426 = load i32, i32* %10, align 4
  %427 = load i32, i32* %12, align 4
  %428 = add nsw i32 %426, %427
  store i32 %428, i32* %20, align 4
  store i32 9633, i32* %24, align 4
  %429 = load i32, i32* %19, align 4
  %430 = load i32, i32* %20, align 4
  %431 = add nsw i32 %429, %430
  %432 = load i32, i32* %24, align 4
  %433 = mul nsw i32 %431, %432
  store i32 %433, i32* %21, align 4
  store i32 2446, i32* %24, align 4
  %434 = load i32, i32* %9, align 4
  %435 = load i32, i32* %24, align 4
  %436 = mul nsw i32 %434, %435
  store i32 %436, i32* %9, align 4
  store i32 16819, i32* %24, align 4
  %437 = load i32, i32* %10, align 4
  %438 = load i32, i32* %24, align 4
  %439 = mul nsw i32 %437, %438
  store i32 %439, i32* %10, align 4
  store i32 25172, i32* %24, align 4
  %440 = load i32, i32* %11, align 4
  %441 = load i32, i32* %24, align 4
  %442 = mul nsw i32 %440, %441
  store i32 %442, i32* %11, align 4
  store i32 12299, i32* %24, align 4
  %443 = load i32, i32* %12, align 4
  %444 = load i32, i32* %24, align 4
  %445 = mul nsw i32 %443, %444
  store i32 %445, i32* %12, align 4
  store i32 -7373, i32* %24, align 4
  %446 = load i32, i32* %17, align 4
  %447 = load i32, i32* %24, align 4
  %448 = mul nsw i32 %446, %447
  store i32 %448, i32* %17, align 4
  store i32 -20995, i32* %24, align 4
  %449 = load i32, i32* %18, align 4
  %450 = load i32, i32* %24, align 4
  %451 = mul nsw i32 %449, %450
  store i32 %451, i32* %18, align 4
  store i32 -16069, i32* %24, align 4
  %452 = load i32, i32* %19, align 4
  %453 = load i32, i32* %24, align 4
  %454 = mul nsw i32 %452, %453
  store i32 %454, i32* %19, align 4
  store i32 -3196, i32* %24, align 4
  %455 = load i32, i32* %20, align 4
  %456 = load i32, i32* %24, align 4
  %457 = mul nsw i32 %455, %456
  store i32 %457, i32* %20, align 4
  %458 = load i32, i32* %21, align 4
  %459 = load i32, i32* %19, align 4
  %460 = add nsw i32 %459, %458
  store i32 %460, i32* %19, align 4
  %461 = load i32, i32* %21, align 4
  %462 = load i32, i32* %20, align 4
  %463 = add nsw i32 %462, %461
  store i32 %463, i32* %20, align 4
  %464 = load i32, i32* %9, align 4
  %465 = load i32, i32* %17, align 4
  %466 = add nsw i32 %464, %465
  %467 = load i32, i32* %19, align 4
  %468 = add nsw i32 %466, %467
  %469 = ashr i32 %468, 18
  %470 = trunc i32 %469 to i16
  %471 = load i16*, i16** %23, align 8
  %472 = load i32, i32* %4, align 4
  %473 = mul nsw i32 7, %472
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i16, i16* %471, i64 %474
  store i16 %470, i16* %475, align 2
  %476 = load i32, i32* %10, align 4
  %477 = load i32, i32* %18, align 4
  %478 = add nsw i32 %476, %477
  %479 = load i32, i32* %20, align 4
  %480 = add nsw i32 %478, %479
  %481 = ashr i32 %480, 18
  %482 = trunc i32 %481 to i16
  %483 = load i16*, i16** %23, align 8
  %484 = load i32, i32* %4, align 4
  %485 = mul nsw i32 5, %484
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i16, i16* %483, i64 %486
  store i16 %482, i16* %487, align 2
  %488 = load i32, i32* %11, align 4
  %489 = load i32, i32* %18, align 4
  %490 = add nsw i32 %488, %489
  %491 = load i32, i32* %19, align 4
  %492 = add nsw i32 %490, %491
  %493 = ashr i32 %492, 18
  %494 = trunc i32 %493 to i16
  %495 = load i16*, i16** %23, align 8
  %496 = load i32, i32* %4, align 4
  %497 = mul nsw i32 3, %496
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i16, i16* %495, i64 %498
  store i16 %494, i16* %499, align 2
  %500 = load i32, i32* %12, align 4
  %501 = load i32, i32* %17, align 4
  %502 = add nsw i32 %500, %501
  %503 = load i32, i32* %20, align 4
  %504 = add nsw i32 %502, %503
  %505 = ashr i32 %504, 18
  %506 = trunc i32 %505 to i16
  %507 = load i16*, i16** %23, align 8
  %508 = load i32, i32* %4, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i16, i16* %507, i64 %509
  store i16 %506, i16* %510, align 2
  %511 = load i16*, i16** %23, align 8
  %512 = getelementptr inbounds i16, i16* %511, i32 1
  store i16* %512, i16** %23, align 8
  br label %513

513:                                              ; preds = %246
  %514 = load i32, i32* %22, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %22, align 4
  br label %243, !llvm.loop !8

516:                                              ; preds = %243
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @fdct(i16* noundef getelementptr inbounds ([64 x i16], [64 x i16]* @block, i64 0, i64 0), i32 noundef 8)
  %2 = load i16, i16* getelementptr inbounds ([64 x i16], [64 x i16]* @block, i64 0, i64 0), align 16
  %3 = sext i16 %2 to i32
  ret i32 %3
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

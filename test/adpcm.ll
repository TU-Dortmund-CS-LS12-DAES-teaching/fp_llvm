; ModuleID = 'src/adpcm.c'
source_filename = "src/adpcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@h = dso_local global [24 x i32] [i32 12, i32 -44, i32 -44, i32 212, i32 48, i32 -624, i32 128, i32 1448, i32 -840, i32 -3220, i32 3804, i32 15504, i32 15504, i32 3804, i32 -3220, i32 -840, i32 1448, i32 128, i32 -624, i32 48, i32 212, i32 -44, i32 -44, i32 12], align 16
@qq4_code4_table = dso_local global [16 x i32] [i32 0, i32 -20456, i32 -12896, i32 -8968, i32 -6288, i32 -4240, i32 -2584, i32 -1200, i32 20456, i32 12896, i32 8968, i32 6288, i32 4240, i32 2584, i32 1200, i32 0], align 16
@qq5_code5_table = dso_local global [32 x i32] [i32 -280, i32 -280, i32 -23352, i32 -17560, i32 -14120, i32 -11664, i32 -9752, i32 -8184, i32 -6864, i32 -5712, i32 -4696, i32 -3784, i32 -2960, i32 -2208, i32 -1520, i32 -880, i32 23352, i32 17560, i32 14120, i32 11664, i32 9752, i32 8184, i32 6864, i32 5712, i32 4696, i32 3784, i32 2960, i32 2208, i32 1520, i32 880, i32 280, i32 -280], align 16
@qq6_code6_table = dso_local global [64 x i32] [i32 -136, i32 -136, i32 -136, i32 -136, i32 -24808, i32 -21904, i32 -19008, i32 -16704, i32 -14984, i32 -13512, i32 -12280, i32 -11192, i32 -10232, i32 -9360, i32 -8576, i32 -7856, i32 -7192, i32 -6576, i32 -6000, i32 -5456, i32 -4944, i32 -4464, i32 -4008, i32 -3576, i32 -3168, i32 -2776, i32 -2400, i32 -2032, i32 -1688, i32 -1360, i32 -1040, i32 -728, i32 24808, i32 21904, i32 19008, i32 16704, i32 14984, i32 13512, i32 12280, i32 11192, i32 10232, i32 9360, i32 8576, i32 7856, i32 7192, i32 6576, i32 6000, i32 5456, i32 4944, i32 4464, i32 4008, i32 3576, i32 3168, i32 2776, i32 2400, i32 2032, i32 1688, i32 1360, i32 1040, i32 728, i32 432, i32 136, i32 -432, i32 -136], align 16
@wl_code_table = dso_local global [16 x i32] [i32 -60, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 -60], align 16
@wl_table = dso_local global [8 x i32] [i32 -60, i32 -30, i32 58, i32 172, i32 334, i32 538, i32 1198, i32 3042], align 16
@ilb_table = dso_local global [32 x i32] [i32 2048, i32 2093, i32 2139, i32 2186, i32 2233, i32 2282, i32 2332, i32 2383, i32 2435, i32 2489, i32 2543, i32 2599, i32 2656, i32 2714, i32 2774, i32 2834, i32 2896, i32 2960, i32 3025, i32 3091, i32 3158, i32 3228, i32 3298, i32 3371, i32 3444, i32 3520, i32 3597, i32 3676, i32 3756, i32 3838, i32 3922, i32 4008], align 16
@decis_levl = dso_local global [30 x i32] [i32 280, i32 576, i32 880, i32 1200, i32 1520, i32 1864, i32 2208, i32 2584, i32 2960, i32 3376, i32 3784, i32 4240, i32 4696, i32 5200, i32 5712, i32 6288, i32 6864, i32 7520, i32 8184, i32 8968, i32 9752, i32 10712, i32 11664, i32 12896, i32 14120, i32 15840, i32 17560, i32 20456, i32 23352, i32 32767], align 16
@quant26bt_pos = dso_local global [31 x i32] [i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 32], align 16
@quant26bt_neg = dso_local global [31 x i32] [i32 63, i32 62, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 4], align 16
@qq2_code2_table = dso_local global [4 x i32] [i32 -7408, i32 -1616, i32 7408, i32 1616], align 16
@wh_code_table = dso_local global [4 x i32] [i32 798, i32 -214, i32 798, i32 -214], align 16
@tqmf = dso_local global [24 x i32] zeroinitializer, align 16
@xl = dso_local global i32 0, align 4
@xh = dso_local global i32 0, align 4
@delay_bpl = dso_local global [6 x i32] zeroinitializer, align 16
@delay_dltx = dso_local global [6 x i32] zeroinitializer, align 16
@szl = dso_local global i32 0, align 4
@rlt1 = dso_local global i32 0, align 4
@al1 = dso_local global i32 0, align 4
@rlt2 = dso_local global i32 0, align 4
@al2 = dso_local global i32 0, align 4
@spl = dso_local global i32 0, align 4
@sl = dso_local global i32 0, align 4
@el = dso_local global i32 0, align 4
@detl = dso_local global i32 0, align 4
@il = dso_local global i32 0, align 4
@dlt = dso_local global i32 0, align 4
@nbl = dso_local global i32 0, align 4
@plt = dso_local global i32 0, align 4
@plt1 = dso_local global i32 0, align 4
@plt2 = dso_local global i32 0, align 4
@rlt = dso_local global i32 0, align 4
@delay_bph = dso_local global [6 x i32] zeroinitializer, align 16
@delay_dhx = dso_local global [6 x i32] zeroinitializer, align 16
@szh = dso_local global i32 0, align 4
@rh1 = dso_local global i32 0, align 4
@ah1 = dso_local global i32 0, align 4
@rh2 = dso_local global i32 0, align 4
@ah2 = dso_local global i32 0, align 4
@sph = dso_local global i32 0, align 4
@sh = dso_local global i32 0, align 4
@eh = dso_local global i32 0, align 4
@ih = dso_local global i32 0, align 4
@deth = dso_local global i32 0, align 4
@dh = dso_local global i32 0, align 4
@nbh = dso_local global i32 0, align 4
@ph = dso_local global i32 0, align 4
@ph1 = dso_local global i32 0, align 4
@ph2 = dso_local global i32 0, align 4
@yh = dso_local global i32 0, align 4
@ilr = dso_local global i32 0, align 4
@dec_del_bpl = dso_local global [6 x i32] zeroinitializer, align 16
@dec_del_dltx = dso_local global [6 x i32] zeroinitializer, align 16
@dec_szl = dso_local global i32 0, align 4
@dec_rlt1 = dso_local global i32 0, align 4
@dec_al1 = dso_local global i32 0, align 4
@dec_rlt2 = dso_local global i32 0, align 4
@dec_al2 = dso_local global i32 0, align 4
@dec_spl = dso_local global i32 0, align 4
@dec_sl = dso_local global i32 0, align 4
@dec_detl = dso_local global i32 0, align 4
@dec_dlt = dso_local global i32 0, align 4
@dl = dso_local global i32 0, align 4
@rl = dso_local global i32 0, align 4
@dec_nbl = dso_local global i32 0, align 4
@dec_plt = dso_local global i32 0, align 4
@dec_plt1 = dso_local global i32 0, align 4
@dec_plt2 = dso_local global i32 0, align 4
@dec_rlt = dso_local global i32 0, align 4
@dec_del_bph = dso_local global [6 x i32] zeroinitializer, align 16
@dec_del_dhx = dso_local global [6 x i32] zeroinitializer, align 16
@dec_szh = dso_local global i32 0, align 4
@dec_rh1 = dso_local global i32 0, align 4
@dec_ah1 = dso_local global i32 0, align 4
@dec_rh2 = dso_local global i32 0, align 4
@dec_ah2 = dso_local global i32 0, align 4
@dec_sph = dso_local global i32 0, align 4
@dec_sh = dso_local global i32 0, align 4
@dec_deth = dso_local global i32 0, align 4
@dec_dh = dso_local global i32 0, align 4
@dec_nbh = dso_local global i32 0, align 4
@dec_ph = dso_local global i32 0, align 4
@dec_ph1 = dso_local global i32 0, align 4
@dec_ph2 = dso_local global i32 0, align 4
@rh = dso_local global i32 0, align 4
@xd = dso_local global i32 0, align 4
@xs = dso_local global i32 0, align 4
@accumc = dso_local global [11 x i32] zeroinitializer, align 16
@accumd = dso_local global [11 x i32] zeroinitializer, align 16
@xout1 = dso_local global i32 0, align 4
@xout2 = dso_local global i32 0, align 4
@main.test_data = internal global [6 x i32] zeroinitializer, align 16
@main.compressed = internal global [3 x i32] zeroinitializer, align 4
@main.result = internal global [6 x i32] zeroinitializer, align 16
@rs = dso_local global i32 0, align 4
@yl = dso_local global i32 0, align 4
@dec_yh = dso_local global i32 0, align 4
@dec_rh = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_abs(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %3, align 4
  br label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_fabs(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %3, align 4
  br label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_sin(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %9, %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sgt i32 %7, 6282
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = sub nsw i32 %10, 6282
  store i32 %11, i32* %2, align 4
  br label %6, !llvm.loop !6

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %16, %12
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, -6282
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 6282
  store i32 %18, i32* %2, align 4
  br label %13, !llvm.loop !8

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sub nsw i32 0, %25
  %27 = mul nsw i32 %22, %26
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 2, %28
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %31, 1
  %33 = mul nsw i32 %29, %32
  %34 = sdiv i32 %27, %33
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %44, %19
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @my_fabs(i32 noundef %41)
  %43 = icmp sge i32 %42, 1
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %2, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sub nsw i32 0, %48
  %50 = mul nsw i32 %45, %49
  %51 = load i32, i32* %5, align 4
  %52 = mul nsw i32 2, %51
  %53 = load i32, i32* %5, align 4
  %54 = mul nsw i32 2, %53
  %55 = add nsw i32 %54, 1
  %56 = mul nsw i32 %52, %55
  %57 = sdiv i32 %50, %56
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %40, !llvm.loop !9

63:                                               ; preds = %40
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_cos(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sub nsw i32 1570, %3
  %5 = call i32 @my_sin(i32 noundef %4)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @encode(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* getelementptr inbounds ([24 x i32], [24 x i32]* @h, i64 0, i64 0), i32** %6, align 8
  store i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 0), i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %7, align 8
  %14 = load i32, i32* %12, align 4
  %15 = sext i32 %14 to i64
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %6, align 8
  %18 = load i32, i32* %16, align 4
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %15, %19
  store i64 %20, i64* %9, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* %21, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %25, align 4
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %24, %28
  store i64 %29, i64* %10, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %56, %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %7, align 8
  %36 = load i32, i32* %34, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %6, align 8
  %40 = load i32, i32* %38, align 4
  %41 = sext i32 %40 to i64
  %42 = mul nsw i64 %37, %41
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %9, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %7, align 8
  %47 = load i32, i32* %45, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %6, align 8
  %51 = load i32, i32* %49, align 4
  %52 = sext i32 %51 to i64
  %53 = mul nsw i64 %48, %52
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %30, !llvm.loop !10

59:                                               ; preds = %30
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %7, align 8
  %62 = load i32, i32* %60, align 4
  %63 = sext i32 %62 to i64
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %6, align 8
  %66 = load i32, i32* %64, align 4
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %63, %67
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %6, align 8
  %76 = load i32, i32* %74, align 4
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %73, %77
  %79 = load i64, i64* %10, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %10, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 -2
  store i32* %82, i32** %8, align 8
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %92, %59
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 22
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 -1
  store i32* %88, i32** %8, align 8
  %89 = load i32, i32* %87, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 -1
  store i32* %91, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %83, !llvm.loop !11

95:                                               ; preds = %83
  %96 = load i32, i32* %3, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 -1
  store i32* %98, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = add nsw i64 %101, %102
  %104 = ashr i64 %103, 15
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* @xl, align 4
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = sub nsw i64 %106, %107
  %109 = ashr i64 %108, 15
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* @xh, align 4
  %111 = call i32 @filtez(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bpl, i64 0, i64 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 0))
  store i32 %111, i32* @szl, align 4
  %112 = load i32, i32* @rlt1, align 4
  %113 = load i32, i32* @al1, align 4
  %114 = load i32, i32* @rlt2, align 4
  %115 = load i32, i32* @al2, align 4
  %116 = call i32 @filtep(i32 noundef %112, i32 noundef %113, i32 noundef %114, i32 noundef %115)
  store i32 %116, i32* @spl, align 4
  %117 = load i32, i32* @szl, align 4
  %118 = load i32, i32* @spl, align 4
  %119 = add nsw i32 %117, %118
  store i32 %119, i32* @sl, align 4
  %120 = load i32, i32* @xl, align 4
  %121 = load i32, i32* @sl, align 4
  %122 = sub nsw i32 %120, %121
  store i32 %122, i32* @el, align 4
  %123 = load i32, i32* @el, align 4
  %124 = load i32, i32* @detl, align 4
  %125 = call i32 @quantl(i32 noundef %123, i32 noundef %124)
  store i32 %125, i32* @il, align 4
  %126 = load i32, i32* @detl, align 4
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* @il, align 4
  %129 = ashr i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [16 x i32], [16 x i32]* @qq4_code4_table, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = mul nsw i64 %127, %133
  %135 = ashr i64 %134, 15
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* @dlt, align 4
  %137 = load i32, i32* @il, align 4
  %138 = load i32, i32* @nbl, align 4
  %139 = call i32 @logscl(i32 noundef %137, i32 noundef %138)
  store i32 %139, i32* @nbl, align 4
  %140 = load i32, i32* @nbl, align 4
  %141 = call i32 @scalel(i32 noundef %140, i32 noundef 8)
  store i32 %141, i32* @detl, align 4
  %142 = load i32, i32* @dlt, align 4
  %143 = load i32, i32* @szl, align 4
  %144 = add nsw i32 %142, %143
  store i32 %144, i32* @plt, align 4
  %145 = load i32, i32* @dlt, align 4
  call void @upzero(i32 noundef %145, i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bpl, i64 0, i64 0))
  %146 = load i32, i32* @al1, align 4
  %147 = load i32, i32* @al2, align 4
  %148 = load i32, i32* @plt, align 4
  %149 = load i32, i32* @plt1, align 4
  %150 = load i32, i32* @plt2, align 4
  %151 = call i32 @uppol2(i32 noundef %146, i32 noundef %147, i32 noundef %148, i32 noundef %149, i32 noundef %150)
  store i32 %151, i32* @al2, align 4
  %152 = load i32, i32* @al1, align 4
  %153 = load i32, i32* @al2, align 4
  %154 = load i32, i32* @plt, align 4
  %155 = load i32, i32* @plt1, align 4
  %156 = call i32 @uppol1(i32 noundef %152, i32 noundef %153, i32 noundef %154, i32 noundef %155)
  store i32 %156, i32* @al1, align 4
  %157 = load i32, i32* @sl, align 4
  %158 = load i32, i32* @dlt, align 4
  %159 = add nsw i32 %157, %158
  store i32 %159, i32* @rlt, align 4
  %160 = load i32, i32* @rlt1, align 4
  store i32 %160, i32* @rlt2, align 4
  %161 = load i32, i32* @rlt, align 4
  store i32 %161, i32* @rlt1, align 4
  %162 = load i32, i32* @plt1, align 4
  store i32 %162, i32* @plt2, align 4
  %163 = load i32, i32* @plt, align 4
  store i32 %163, i32* @plt1, align 4
  %164 = call i32 @filtez(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bph, i64 0, i64 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 0))
  store i32 %164, i32* @szh, align 4
  %165 = load i32, i32* @rh1, align 4
  %166 = load i32, i32* @ah1, align 4
  %167 = load i32, i32* @rh2, align 4
  %168 = load i32, i32* @ah2, align 4
  %169 = call i32 @filtep(i32 noundef %165, i32 noundef %166, i32 noundef %167, i32 noundef %168)
  store i32 %169, i32* @sph, align 4
  %170 = load i32, i32* @sph, align 4
  %171 = load i32, i32* @szh, align 4
  %172 = add nsw i32 %170, %171
  store i32 %172, i32* @sh, align 4
  %173 = load i32, i32* @xh, align 4
  %174 = load i32, i32* @sh, align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* @eh, align 4
  %176 = load i32, i32* @eh, align 4
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %95
  store i32 3, i32* @ih, align 4
  br label %180

179:                                              ; preds = %95
  store i32 1, i32* @ih, align 4
  br label %180

180:                                              ; preds = %179, %178
  %181 = load i32, i32* @deth, align 4
  %182 = sext i32 %181 to i64
  %183 = mul nsw i64 564, %182
  %184 = ashr i64 %183, 12
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* @eh, align 4
  %187 = call i32 @my_abs(i32 noundef %186)
  %188 = load i32, i32* %11, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %180
  %191 = load i32, i32* @ih, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* @ih, align 4
  br label %193

193:                                              ; preds = %190, %180
  %194 = load i32, i32* @deth, align 4
  %195 = sext i32 %194 to i64
  %196 = load i32, i32* @ih, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* @qq2_code2_table, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = mul nsw i64 %195, %200
  %202 = ashr i64 %201, 15
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* @dh, align 4
  %204 = load i32, i32* @ih, align 4
  %205 = load i32, i32* @nbh, align 4
  %206 = call i32 @logsch(i32 noundef %204, i32 noundef %205)
  store i32 %206, i32* @nbh, align 4
  %207 = load i32, i32* @nbh, align 4
  %208 = call i32 @scalel(i32 noundef %207, i32 noundef 10)
  store i32 %208, i32* @deth, align 4
  %209 = load i32, i32* @dh, align 4
  %210 = load i32, i32* @szh, align 4
  %211 = add nsw i32 %209, %210
  store i32 %211, i32* @ph, align 4
  %212 = load i32, i32* @dh, align 4
  call void @upzero(i32 noundef %212, i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bph, i64 0, i64 0))
  %213 = load i32, i32* @ah1, align 4
  %214 = load i32, i32* @ah2, align 4
  %215 = load i32, i32* @ph, align 4
  %216 = load i32, i32* @ph1, align 4
  %217 = load i32, i32* @ph2, align 4
  %218 = call i32 @uppol2(i32 noundef %213, i32 noundef %214, i32 noundef %215, i32 noundef %216, i32 noundef %217)
  store i32 %218, i32* @ah2, align 4
  %219 = load i32, i32* @ah1, align 4
  %220 = load i32, i32* @ah2, align 4
  %221 = load i32, i32* @ph, align 4
  %222 = load i32, i32* @ph1, align 4
  %223 = call i32 @uppol1(i32 noundef %219, i32 noundef %220, i32 noundef %221, i32 noundef %222)
  store i32 %223, i32* @ah1, align 4
  %224 = load i32, i32* @sh, align 4
  %225 = load i32, i32* @dh, align 4
  %226 = add nsw i32 %224, %225
  store i32 %226, i32* @yh, align 4
  %227 = load i32, i32* @rh1, align 4
  store i32 %227, i32* @rh2, align 4
  %228 = load i32, i32* @yh, align 4
  store i32 %228, i32* @rh1, align 4
  %229 = load i32, i32* @ph1, align 4
  store i32 %229, i32* @ph2, align 4
  %230 = load i32, i32* @ph, align 4
  store i32 %230, i32* @ph1, align 4
  %231 = load i32, i32* @il, align 4
  %232 = load i32, i32* @ih, align 4
  %233 = shl i32 %232, 6
  %234 = or i32 %231, %233
  ret i32 %234
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @filtez(i32* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %8, i32** %3, align 8
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %4, align 8
  %13 = load i32, i32* %11, align 4
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %10, %14
  store i64 %15, i64* %6, align 8
  store i32 1, i32* %5, align 4
  br label %16

16:                                               ; preds = %31, %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %3, align 8
  %22 = load i32, i32* %20, align 4
  %23 = sext i32 %22 to i64
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %4, align 8
  %26 = load i32, i32* %24, align 4
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %23, %27
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %16, !llvm.loop !12

34:                                               ; preds = %16
  %35 = load i64, i64* %6, align 8
  %36 = ashr i64 %35, 14
  %37 = trunc i64 %36 to i32
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @filtep(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 2, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %9, align 8
  %17 = mul nsw i64 %15, %16
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 2, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %10, align 8
  %24 = mul nsw i64 %22, %23
  %25 = load i64, i64* %9, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = ashr i64 %27, 15
  %29 = trunc i64 %28 to i32
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @quantl(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @my_abs(i32 noundef %9)
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %30, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 30
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [30 x i32], [30 x i32]* @decis_levl, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = mul nsw i64 %20, %22
  %24 = ashr i64 %23, 15
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %33

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %12, !llvm.loop !13

33:                                               ; preds = %28, %12
  %34 = load i32, i32* %3, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [31 x i32], [31 x i32]* @quant26bt_pos, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  br label %46

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [31 x i32], [31 x i32]* @quant26bt_neg, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @logscl(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 127
  %9 = ashr i64 %8, 7
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* %3, align 4
  %13 = ashr i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* @wl_code_table, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %11, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 18432
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 18432, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @scalel(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 6
  %10 = and i32 %9, 31
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [32 x i32], [32 x i32]* @ilb_table, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %18, %19
  %21 = ashr i32 %16, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 3
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @upzero(i32 noundef %0, i32* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul nsw i64 255, %22
  %24 = ashr i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %13, !llvm.loop !14

33:                                               ; preds = %13
  br label %72

34:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %68, %34
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 6
  br i1 %37, label %38, label %71

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %40, %46
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 128, i32* %8, align 4
  br label %51

50:                                               ; preds = %38
  store i32 -128, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 255, %57
  %59 = ashr i64 %58, 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %51
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %35, !llvm.loop !15

71:                                               ; preds = %35
  br label %72

72:                                               ; preds = %71, %33
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  store i32 %80, i32* %82, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %93, i32* %95, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uppol2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 4, %15
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %18, %20
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i64, i64* %11, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %11, align 8
  br label %26

26:                                               ; preds = %23, %5
  %27 = load i64, i64* %11, align 8
  %28 = ashr i64 %27, 7
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %30, %32
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i64, i64* %11, align 8
  %37 = add nsw i64 %36, 128
  store i64 %37, i64* %12, align 8
  br label %41

38:                                               ; preds = %26
  %39 = load i64, i64* %11, align 8
  %40 = sub nsw i64 %39, 128
  store i64 %40, i64* %12, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i64, i64* %12, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 127, %44
  %46 = ashr i64 %45, 7
  %47 = add nsw i64 %42, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp sgt i32 %49, 12288
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 12288, i32* %13, align 4
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, -12288
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 -12288, i32* %13, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %13, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uppol1(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 255
  %15 = ashr i64 %14, 8
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %17, %19
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  %24 = trunc i64 %23 to i32
  %25 = add nsw i32 %24, 192
  store i32 %25, i32* %11, align 4
  br label %30

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = trunc i64 %27 to i32
  %29 = sub nsw i32 %28, 192
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 15360, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %11, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @logsch(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 127
  %9 = ashr i64 %8, 7
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* @wh_code_table, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %11, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 22528
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 22528, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @decode(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 63
  store i32 %12, i32* @ilr, align 4
  %13 = load i32, i32* %2, align 4
  %14 = ashr i32 %13, 6
  store i32 %14, i32* @ih, align 4
  %15 = call i32 @filtez(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bpl, i64 0, i64 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 0))
  store i32 %15, i32* @dec_szl, align 4
  %16 = load i32, i32* @dec_rlt1, align 4
  %17 = load i32, i32* @dec_al1, align 4
  %18 = load i32, i32* @dec_rlt2, align 4
  %19 = load i32, i32* @dec_al2, align 4
  %20 = call i32 @filtep(i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19)
  store i32 %20, i32* @dec_spl, align 4
  %21 = load i32, i32* @dec_spl, align 4
  %22 = load i32, i32* @dec_szl, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* @dec_sl, align 4
  %24 = load i32, i32* @dec_detl, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* @ilr, align 4
  %27 = ashr i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* @qq4_code4_table, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %25, %31
  %33 = ashr i64 %32, 15
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* @dec_dlt, align 4
  %35 = load i32, i32* @dec_detl, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32, i32* @il, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [64 x i32], [64 x i32]* @qq6_code6_table, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = mul nsw i64 %36, %41
  %43 = ashr i64 %42, 15
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* @dl, align 4
  %45 = load i32, i32* @dl, align 4
  %46 = load i32, i32* @dec_sl, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* @rl, align 4
  %48 = load i32, i32* @ilr, align 4
  %49 = load i32, i32* @dec_nbl, align 4
  %50 = call i32 @logscl(i32 noundef %48, i32 noundef %49)
  store i32 %50, i32* @dec_nbl, align 4
  %51 = load i32, i32* @dec_nbl, align 4
  %52 = call i32 @scalel(i32 noundef %51, i32 noundef 8)
  store i32 %52, i32* @dec_detl, align 4
  %53 = load i32, i32* @dec_dlt, align 4
  %54 = load i32, i32* @dec_szl, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* @dec_plt, align 4
  %56 = load i32, i32* @dec_dlt, align 4
  call void @upzero(i32 noundef %56, i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bpl, i64 0, i64 0))
  %57 = load i32, i32* @dec_al1, align 4
  %58 = load i32, i32* @dec_al2, align 4
  %59 = load i32, i32* @dec_plt, align 4
  %60 = load i32, i32* @dec_plt1, align 4
  %61 = load i32, i32* @dec_plt2, align 4
  %62 = call i32 @uppol2(i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60, i32 noundef %61)
  store i32 %62, i32* @dec_al2, align 4
  %63 = load i32, i32* @dec_al1, align 4
  %64 = load i32, i32* @dec_al2, align 4
  %65 = load i32, i32* @dec_plt, align 4
  %66 = load i32, i32* @dec_plt1, align 4
  %67 = call i32 @uppol1(i32 noundef %63, i32 noundef %64, i32 noundef %65, i32 noundef %66)
  store i32 %67, i32* @dec_al1, align 4
  %68 = load i32, i32* @dec_sl, align 4
  %69 = load i32, i32* @dec_dlt, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* @dec_rlt, align 4
  %71 = load i32, i32* @dec_rlt1, align 4
  store i32 %71, i32* @dec_rlt2, align 4
  %72 = load i32, i32* @dec_rlt, align 4
  store i32 %72, i32* @dec_rlt1, align 4
  %73 = load i32, i32* @dec_plt1, align 4
  store i32 %73, i32* @dec_plt2, align 4
  %74 = load i32, i32* @dec_plt, align 4
  store i32 %74, i32* @dec_plt1, align 4
  %75 = call i32 @filtez(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bph, i64 0, i64 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 0))
  store i32 %75, i32* @dec_szh, align 4
  %76 = load i32, i32* @dec_rh1, align 4
  %77 = load i32, i32* @dec_ah1, align 4
  %78 = load i32, i32* @dec_rh2, align 4
  %79 = load i32, i32* @dec_ah2, align 4
  %80 = call i32 @filtep(i32 noundef %76, i32 noundef %77, i32 noundef %78, i32 noundef %79)
  store i32 %80, i32* @dec_sph, align 4
  %81 = load i32, i32* @dec_sph, align 4
  %82 = load i32, i32* @dec_szh, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* @dec_sh, align 4
  %84 = load i32, i32* @dec_deth, align 4
  %85 = sext i32 %84 to i64
  %86 = load i32, i32* @ih, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* @qq2_code2_table, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %85, %90
  %92 = ashr i64 %91, 15
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* @dec_dh, align 4
  %94 = load i32, i32* @ih, align 4
  %95 = load i32, i32* @dec_nbh, align 4
  %96 = call i32 @logsch(i32 noundef %94, i32 noundef %95)
  store i32 %96, i32* @dec_nbh, align 4
  %97 = load i32, i32* @dec_nbh, align 4
  %98 = call i32 @scalel(i32 noundef %97, i32 noundef 10)
  store i32 %98, i32* @dec_deth, align 4
  %99 = load i32, i32* @dec_dh, align 4
  %100 = load i32, i32* @dec_szh, align 4
  %101 = add nsw i32 %99, %100
  store i32 %101, i32* @dec_ph, align 4
  %102 = load i32, i32* @dec_dh, align 4
  call void @upzero(i32 noundef %102, i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bph, i64 0, i64 0))
  %103 = load i32, i32* @dec_ah1, align 4
  %104 = load i32, i32* @dec_ah2, align 4
  %105 = load i32, i32* @dec_ph, align 4
  %106 = load i32, i32* @dec_ph1, align 4
  %107 = load i32, i32* @dec_ph2, align 4
  %108 = call i32 @uppol2(i32 noundef %103, i32 noundef %104, i32 noundef %105, i32 noundef %106, i32 noundef %107)
  store i32 %108, i32* @dec_ah2, align 4
  %109 = load i32, i32* @dec_ah1, align 4
  %110 = load i32, i32* @dec_ah2, align 4
  %111 = load i32, i32* @dec_ph, align 4
  %112 = load i32, i32* @dec_ph1, align 4
  %113 = call i32 @uppol1(i32 noundef %109, i32 noundef %110, i32 noundef %111, i32 noundef %112)
  store i32 %113, i32* @dec_ah1, align 4
  %114 = load i32, i32* @dec_sh, align 4
  %115 = load i32, i32* @dec_dh, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* @rh, align 4
  %117 = load i32, i32* @dec_rh1, align 4
  store i32 %117, i32* @dec_rh2, align 4
  %118 = load i32, i32* @rh, align 4
  store i32 %118, i32* @dec_rh1, align 4
  %119 = load i32, i32* @dec_ph1, align 4
  store i32 %119, i32* @dec_ph2, align 4
  %120 = load i32, i32* @dec_ph, align 4
  store i32 %120, i32* @dec_ph1, align 4
  %121 = load i32, i32* @rl, align 4
  %122 = load i32, i32* @rh, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* @xd, align 4
  %124 = load i32, i32* @rl, align 4
  %125 = load i32, i32* @rh, align 4
  %126 = add nsw i32 %124, %125
  store i32 %126, i32* @xs, align 4
  store i32* getelementptr inbounds ([24 x i32], [24 x i32]* @h, i64 0, i64 0), i32** %6, align 8
  store i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumc, i64 0, i64 0), i32** %7, align 8
  store i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumd, i64 0, i64 0), i32** %9, align 8
  %127 = load i32, i32* @xd, align 4
  %128 = sext i32 %127 to i64
  %129 = load i32*, i32** %6, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %6, align 8
  %131 = load i32, i32* %129, align 4
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %128, %132
  store i64 %133, i64* %4, align 8
  %134 = load i32, i32* @xs, align 4
  %135 = sext i32 %134 to i64
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %6, align 8
  %138 = load i32, i32* %136, align 4
  %139 = sext i32 %138 to i64
  %140 = mul nsw i64 %135, %139
  store i64 %140, i64* %5, align 8
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %167, %1
  %142 = load i32, i32* %3, align 4
  %143 = icmp slt i32 %142, 10
  br i1 %143, label %144, label %170

144:                                              ; preds = %141
  %145 = load i32*, i32** %7, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %7, align 8
  %147 = load i32, i32* %145, align 4
  %148 = sext i32 %147 to i64
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %6, align 8
  %151 = load i32, i32* %149, align 4
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %148, %152
  %154 = load i64, i64* %4, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %4, align 8
  %156 = load i32*, i32** %9, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %9, align 8
  %158 = load i32, i32* %156, align 4
  %159 = sext i32 %158 to i64
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %6, align 8
  %162 = load i32, i32* %160, align 4
  %163 = sext i32 %162 to i64
  %164 = mul nsw i64 %159, %163
  %165 = load i64, i64* %5, align 8
  %166 = add nsw i64 %165, %164
  store i64 %166, i64* %5, align 8
  br label %167

167:                                              ; preds = %144
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %3, align 4
  br label %141, !llvm.loop !16

170:                                              ; preds = %141
  %171 = load i32*, i32** %7, align 8
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = load i32*, i32** %6, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %6, align 8
  %176 = load i32, i32* %174, align 4
  %177 = sext i32 %176 to i64
  %178 = mul nsw i64 %173, %177
  %179 = load i64, i64* %4, align 8
  %180 = add nsw i64 %179, %178
  store i64 %180, i64* %4, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = load i32*, i32** %6, align 8
  %185 = getelementptr inbounds i32, i32* %184, i32 1
  store i32* %185, i32** %6, align 8
  %186 = load i32, i32* %184, align 4
  %187 = sext i32 %186 to i64
  %188 = mul nsw i64 %183, %187
  %189 = load i64, i64* %5, align 8
  %190 = add nsw i64 %189, %188
  store i64 %190, i64* %5, align 8
  %191 = load i64, i64* %4, align 8
  %192 = ashr i64 %191, 14
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* @xout1, align 4
  %194 = load i64, i64* %5, align 8
  %195 = ashr i64 %194, 14
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* @xout2, align 4
  %197 = load i32*, i32** %7, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 -1
  store i32* %198, i32** %8, align 8
  %199 = load i32*, i32** %9, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 -1
  store i32* %200, i32** %10, align 8
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %215, %170
  %202 = load i32, i32* %3, align 4
  %203 = icmp slt i32 %202, 10
  br i1 %203, label %204, label %218

204:                                              ; preds = %201
  %205 = load i32*, i32** %8, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 -1
  store i32* %206, i32** %8, align 8
  %207 = load i32, i32* %205, align 4
  %208 = load i32*, i32** %7, align 8
  %209 = getelementptr inbounds i32, i32* %208, i32 -1
  store i32* %209, i32** %7, align 8
  store i32 %207, i32* %208, align 4
  %210 = load i32*, i32** %10, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 -1
  store i32* %211, i32** %10, align 8
  %212 = load i32, i32* %210, align 4
  %213 = load i32*, i32** %9, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 -1
  store i32* %214, i32** %9, align 8
  store i32 %212, i32* %213, align 4
  br label %215

215:                                              ; preds = %204
  %216 = load i32, i32* %3, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %3, align 4
  br label %201, !llvm.loop !17

218:                                              ; preds = %201
  %219 = load i32, i32* @xd, align 4
  %220 = load i32*, i32** %7, align 8
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* @xs, align 4
  %222 = load i32*, i32** %9, align 8
  store i32 %221, i32* %222, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @reset() #0 {
  %1 = alloca i32, align 4
  store i32 32, i32* @dec_detl, align 4
  store i32 32, i32* @detl, align 4
  store i32 8, i32* @dec_deth, align 4
  store i32 8, i32* @deth, align 4
  store i32 0, i32* @rlt2, align 4
  store i32 0, i32* @rlt1, align 4
  store i32 0, i32* @plt2, align 4
  store i32 0, i32* @plt1, align 4
  store i32 0, i32* @al2, align 4
  store i32 0, i32* @al1, align 4
  store i32 0, i32* @nbl, align 4
  store i32 0, i32* @rh2, align 4
  store i32 0, i32* @rh1, align 4
  store i32 0, i32* @ph2, align 4
  store i32 0, i32* @ph1, align 4
  store i32 0, i32* @ah2, align 4
  store i32 0, i32* @ah1, align 4
  store i32 0, i32* @nbh, align 4
  store i32 0, i32* @dec_rlt2, align 4
  store i32 0, i32* @dec_rlt1, align 4
  store i32 0, i32* @dec_plt2, align 4
  store i32 0, i32* @dec_plt1, align 4
  store i32 0, i32* @dec_al2, align 4
  store i32 0, i32* @dec_al1, align 4
  store i32 0, i32* @dec_nbl, align 4
  store i32 0, i32* @dec_rh2, align 4
  store i32 0, i32* @dec_rh1, align 4
  store i32 0, i32* @dec_ph2, align 4
  store i32 0, i32* @dec_ph1, align 4
  store i32 0, i32* @dec_ah2, align 4
  store i32 0, i32* @dec_ah1, align 4
  store i32 0, i32* @dec_nbh, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %18, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 6
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 %7
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 %10
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 %13
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 %16
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %2, !llvm.loop !18

21:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i32, i32* %1, align 4
  %24 = icmp slt i32 %23, 6
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_bpl, i64 0, i64 %27
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_bph, i64 0, i64 %30
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_bpl, i64 0, i64 %33
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_bph, i64 0, i64 %36
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %22, !llvm.loop !19

41:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %49, %41
  %43 = load i32, i32* %1, align 4
  %44 = icmp slt i32 %43, 23
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [24 x i32], [24 x i32]* @tqmf, i64 0, i64 %47
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %1, align 4
  br label %42, !llvm.loop !20

52:                                               ; preds = %42
  store i32 0, i32* %1, align 4
  br label %53

53:                                               ; preds = %63, %52
  %54 = load i32, i32* %1, align 4
  %55 = icmp slt i32 %54, 11
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [11 x i32], [11 x i32]* @accumc, i64 0, i64 %58
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [11 x i32], [11 x i32]* @accumd, i64 0, i64 %61
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %53, !llvm.loop !21

66:                                               ; preds = %53
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @reset()
  store i32 10, i32* %3, align 4
  store i32 2000, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %19, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 3141
  %12 = load i32, i32* %2, align 4
  %13 = mul nsw i32 %11, %12
  %14 = call i32 @my_cos(i32 noundef %13)
  %15 = mul nsw i32 %9, %14
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* @main.test_data, i64 0, i64 %17
  store i32 %15, i32* %18, align 4
  br label %19

19:                                               ; preds = %8
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %5, !llvm.loop !22

22:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* @main.test_data, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* @main.test_data, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @encode(i32 noundef %30, i32 noundef %35)
  %37 = load i32, i32* %2, align 4
  %38 = sdiv i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* @main.compressed, i64 0, i64 %39
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %26
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %2, align 4
  br label %23, !llvm.loop !23

44:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %63, %44
  %46 = load i32, i32* %2, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load i32, i32* %2, align 4
  %50 = sdiv i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* @main.compressed, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  call void @decode(i32 noundef %53)
  %54 = load i32, i32* @xout1, align 4
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* @main.result, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @xout2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* @main.result, i64 0, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %2, align 4
  br label %45, !llvm.loop !24

66:                                               ; preds = %45
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* @main.result, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* @main.result, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %70, %75
  ret i32 %76
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
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}

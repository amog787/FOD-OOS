.class Lcom/android/server/display/OutlierPointFilter;
.super Ljava/lang/Object;
.source "CurveGen.java"


# instance fields
.field private mLowerLimit:Landroid/util/Spline;

.field private mLowerOutlier:Landroid/util/Spline;

.field private mUpperLimit:Landroid/util/Spline;

.field private mUpperOutlier:Landroid/util/Spline;


# direct methods
.method constructor <init>([F[F)V
    .locals 6
    .param p1, "defaultLux"    # [F
    .param p2, "defaultNit"    # [F

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    array-length v0, p2

    new-array v0, v0, [F

    .line 502
    .local v0, "upperNit":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 503
    aget v2, p2, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 504
    aget v2, v0, v1

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    aget v3, p2, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 505
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget v2, p2, v2

    aput v2, v0, v1

    .line 502
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    .end local v1    # "i":I
    :cond_1
    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/OutlierPointFilter;->mUpperOutlier:Landroid/util/Spline;

    .line 512
    .end local v0    # "upperNit":[F
    array-length v0, p2

    new-array v0, v0, [F

    .line 513
    .restart local v0    # "upperNit":[F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p2

    const/high16 v3, 0x42480000    # 50.0f

    if-ge v1, v2, :cond_3

    .line 514
    aget v2, p2, v1

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 515
    aget v2, v0, v1

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    aget v3, p2, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 516
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget v2, p2, v2

    aput v2, v0, v1

    .line 513
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 519
    .end local v1    # "i":I
    :cond_3
    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/OutlierPointFilter;->mUpperLimit:Landroid/util/Spline;

    .line 523
    .end local v0    # "upperNit":[F
    array-length v0, p2

    new-array v0, v0, [F

    .line 524
    .local v0, "lowerNit":[F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v2, p2

    const/4 v4, 0x0

    if-ge v1, v2, :cond_5

    .line 525
    aget v2, p2, v1

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v2, v5

    const/high16 v5, 0x41c80000    # 25.0f

    sub-float/2addr v2, v5

    aput v2, v0, v1

    .line 526
    aget v2, v0, v1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    .line 527
    aput v4, v0, v1

    .line 524
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 530
    .end local v1    # "i":I
    :cond_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget v2, p2, v2

    aput v2, v0, v1

    .line 531
    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/OutlierPointFilter;->mLowerLimit:Landroid/util/Spline;

    .line 535
    .end local v0    # "lowerNit":[F
    array-length v0, p2

    new-array v0, v0, [F

    .line 536
    .restart local v0    # "lowerNit":[F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v2, p2

    if-ge v1, v2, :cond_7

    .line 537
    aget v2, p2, v1

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v2, v5

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 538
    aget v2, v0, v1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_6

    .line 539
    aput v4, v0, v1

    .line 536
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 542
    .end local v1    # "i":I
    :cond_7
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget v2, p2, v2

    aput v2, v0, v1

    .line 543
    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/OutlierPointFilter;->mLowerOutlier:Landroid/util/Spline;

    .line 545
    .end local v0    # "lowerNit":[F
    return-void
.end method


# virtual methods
.method filter(Lcom/android/server/display/LuxNitPoint;)Lcom/android/server/display/LuxNitPoint;
    .locals 5
    .param p1, "input"    # Lcom/android/server/display/LuxNitPoint;

    .line 547
    iget v0, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    iget-object v1, p0, Lcom/android/server/display/OutlierPointFilter;->mUpperOutlier:Landroid/util/Spline;

    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 548
    return-object v1

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OutlierPointFilter;->mUpperLimit:Landroid/util/Spline;

    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-virtual {v0, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 552
    .local v0, "upper":F
    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 553
    new-instance v1, Lcom/android/server/display/LuxNitPoint;

    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-direct {v1, v2, v0}, Lcom/android/server/display/LuxNitPoint;-><init>(FF)V

    return-object v1

    .line 556
    :cond_1
    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    iget-object v3, p0, Lcom/android/server/display/OutlierPointFilter;->mLowerOutlier:Landroid/util/Spline;

    iget v4, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 557
    return-object v1

    .line 560
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/OutlierPointFilter;->mLowerLimit:Landroid/util/Spline;

    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 561
    .local v1, "lower":F
    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_3

    .line 562
    new-instance v2, Lcom/android/server/display/LuxNitPoint;

    iget v3, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-direct {v2, v3, v1}, Lcom/android/server/display/LuxNitPoint;-><init>(FF)V

    return-object v2

    .line 565
    :cond_3
    return-object p1
.end method

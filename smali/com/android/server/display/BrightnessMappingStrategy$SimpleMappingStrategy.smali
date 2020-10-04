.class Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleMappingStrategy"
.end annotation


# instance fields
.field private mAutoBrightnessAdjustment:F

.field private final mBrightness:[F

.field private final mLux:[F

.field private mMaxGamma:F

.field private mSpline:Landroid/util/Spline;

.field private mUserBrightness:F

.field private mUserLux:F


# direct methods
.method public constructor <init>([F[IF)V
    .locals 5
    .param p1, "lux"    # [F
    .param p2, "brightness"    # [I
    .param p3, "maxGamma"    # F

    .line 518
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 519
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Lux and brightness arrays must not be empty!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 521
    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "Lux and brightness arrays must be the same length!"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 523
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    const-string/jumbo v3, "lux"

    invoke-static {p1, v1, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 524
    const v0, 0x7fffffff

    const-string v3, "brightness"

    invoke-static {p2, v2, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([IIILjava/lang/String;)[I

    .line 527
    array-length v0, p2

    .line 528
    .local v0, "N":I
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    .line 529
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    .line 530
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 531
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    aget v4, p1, v2

    aput v4, v3, v2

    .line 532
    iget-object v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    aget v4, p2, v2

    invoke-virtual {p0, v4}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->normalizeAbsoluteBrightness(I)F

    move-result v4

    aput v4, v3, v2

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 535
    .end local v2    # "i":I
    :cond_2
    iput p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    .line 536
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 537
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 538
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 539
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    if-eqz v1, :cond_3

    .line 540
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string/jumbo v2, "simple mapping strategy"

    invoke-virtual {v1, v2}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 542
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 543
    return-void
.end method

.method private computeSpline()V
    .locals 7

    .line 661
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    iget v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object v0

    .line 663
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    .line 664
    return-void
.end method

.method private getUnadjustedBrightness(F)F
    .locals 2
    .param p1, "lux"    # F

    .line 667
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLux:[F

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    .line 668
    .local v0, "spline":Landroid/util/Spline;
    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    return v1
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .locals 5
    .param p1, "lux"    # F
    .param p2, "brightness"    # F

    .line 600
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 601
    .local v0, "unadjustedBrightness":F
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    const-string v2, "BrightnessMappingStrategy"

    if-eqz v1, :cond_0

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserDataPoint: ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v3, "add user data point"

    invoke-virtual {v1, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    .line 604
    const-string/jumbo v3, "user data point"

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    .line 605
    const-string v3, "current brightness"

    invoke-virtual {v1, v3, p1, v0}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 607
    :cond_0
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v1

    .line 610
    .local v1, "adjustment":F
    iget-boolean v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    if-eqz v3, :cond_1

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUserDataPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_1
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 615
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 616
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 617
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 618
    return-void
.end method

.method public clearUserDataPoints()V
    .locals 5

    .line 622
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 623
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserDataPoints: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " => 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v2, "clear user data points"

    invoke-virtual {v0, v2}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 626
    const-string/jumbo v4, "user data point"

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 628
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 629
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    .line 630
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    .line 631
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 633
    :cond_1
    return-void
.end method

.method public convertToNits(I)F
    .locals 1
    .param p1, "backlight"    # I

    .line 595
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 652
    const-string v0, "SimpleMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method public enableCurveGenAlgo(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 568
    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .locals 1

    .line 574
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    return v0
.end method

.method public getBrightness(FLjava/lang/String;I)F
    .locals 1
    .param p1, "lux"    # F
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I

    .line 553
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    .line 647
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHBMBrightness(FLjava/lang/String;I)F
    .locals 1
    .param p1, "lux"    # F
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I

    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserDataPoints()Z
    .locals 2

    .line 637
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDefaultConfig()Z
    .locals 1

    .line 642
    const/4 v0, 0x1

    return v0
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .locals 2
    .param p1, "adjustment"    # F

    .line 579
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 580
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 581
    const/4 v0, 0x0

    return v0

    .line 583
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBrightnessAdjustment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "auto-brightness adjustment"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 588
    :cond_1
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 589
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$SimpleMappingStrategy;->computeSpline()V

    .line 590
    const/4 v0, 0x1

    return v0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 547
    const/4 v0, 0x0

    return v0
.end method

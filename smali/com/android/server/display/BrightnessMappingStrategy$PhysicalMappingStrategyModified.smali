.class Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;
.super Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhysicalMappingStrategyModified"
.end annotation


# instance fields
.field private mCurveGen:Lcom/android/server/display/CurveGen;

.field private mEnableCurveGenAlgo:Z

.field private final mHBMLuxToBacklightSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF[F[F)V
    .locals 3
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "nits"    # [F
    .param p3, "backlight"    # [I
    .param p4, "maxGamma"    # F
    .param p5, "hbm_lux"    # [F
    .param p6, "hbm_brightness"    # [F

    .line 935
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V

    .line 931
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mEnableCurveGenAlgo:Z

    .line 937
    invoke-static {p5, p6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mHBMLuxToBacklightSpline:Landroid/util/Spline;

    .line 939
    const-string v0, "bend drag"

    invoke-static {v0}, Lcom/android/server/display/CurveGen;->create(Ljava/lang/String;)Lcom/android/server/display/CurveGen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mCurveGen:Lcom/android/server/display/CurveGen;

    .line 942
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mCurveGen:Lcom/android/server/display/CurveGen;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v2}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/CurveGen;->setDefaultCurve([F[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    goto :goto_0

    .line 943
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create PhysicalMappingStrategyModified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private computeSpline()V
    .locals 2

    .line 998
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mEnableCurveGenAlgo:Z

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mCurveGen:Lcom/android/server/display/CurveGen;

    invoke-virtual {v0}, Lcom/android/server/display/CurveGen;->getLuxArray()[F

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mCurveGen:Lcom/android/server/display/CurveGen;

    invoke-virtual {v1}, Lcom/android/server/display/CurveGen;->getNitArray()[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mBrightnessSpline:Landroid/util/Spline;

    goto :goto_0

    .line 1001
    :cond_0
    invoke-static {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->access$100(Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;)V

    .line 1003
    :goto_0
    return-void
.end method

.method private getAdjustedNits(F)F
    .locals 1
    .param p1, "brightness"    # F

    .line 962
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method private getUnadjustedNits(F)F
    .locals 3
    .param p1, "lux"    # F

    .line 956
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 957
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mCurveGen:Lcom/android/server/display/CurveGen;

    invoke-virtual {v1}, Lcom/android/server/display/CurveGen;->getLuxArray()[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mCurveGen:Lcom/android/server/display/CurveGen;

    invoke-virtual {v2}, Lcom/android/server/display/CurveGen;->getNitArray()[F

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    .line 958
    .local v1, "spline":Landroid/util/Spline;
    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .locals 3
    .param p1, "lux"    # F
    .param p2, "brightness"    # F

    .line 967
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mEnableCurveGenAlgo:Z

    if-eqz v0, :cond_0

    .line 968
    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->getUnadjustedNits(F)F

    move-result v0

    .line 969
    .local v0, "unadjustedNits":F
    invoke-direct {p0, p2}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->getAdjustedNits(F)F

    move-result v1

    .line 970
    .local v1, "adjustedNits":F
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mCurveGen:Lcom/android/server/display/CurveGen;

    invoke-virtual {v2, p1}, Lcom/android/server/display/CurveGen;->onLightChanged(F)V

    .line 971
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mCurveGen:Lcom/android/server/display/CurveGen;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/CurveGen;->onUserOperation(FF)V

    .line 972
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mUserLux:F

    .line 973
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mUserBrightness:F

    .line 974
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->computeSpline()V

    .line 975
    .end local v0    # "unadjustedNits":F
    .end local v1    # "adjustedNits":F
    goto :goto_0

    .line 976
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->addUserDataPoint(FF)V

    .line 978
    :goto_0
    return-void
.end method

.method public clearUserDataPoints()V
    .locals 5

    .line 983
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 984
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserDataPoints: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " => 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v2, "clear user data points"

    invoke-virtual {v0, v2}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mUserLux:F

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mUserBrightness:F

    .line 987
    const-string/jumbo v4, "user data point"

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 989
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mAutoBrightnessAdjustment:F

    .line 990
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mUserLux:F

    .line 991
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mUserBrightness:F

    .line 992
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mCurveGen:Lcom/android/server/display/CurveGen;

    invoke-virtual {v0}, Lcom/android/server/display/CurveGen;->resetUserOperations()V

    .line 993
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->computeSpline()V

    .line 995
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1014
    invoke-super {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->dump(Ljava/io/PrintWriter;)V

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnableCurveGenAlgo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mEnableCurveGenAlgo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method public enableCurveGenAlgo(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 1008
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mEnableCurveGenAlgo:Z

    .line 1009
    return-void
.end method

.method public getHBMBrightness(FLjava/lang/String;I)F
    .locals 1
    .param p1, "lux"    # F
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I

    .line 951
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;->mHBMLuxToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 952
    .local v0, "backlight":F
    return v0
.end method

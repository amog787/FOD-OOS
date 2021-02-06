.class final Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;
.super Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccelSensorJudge"
.end annotation


# static fields
.field private static final ACCELERATION_TOLERANCE:F = 4.0f

.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final FLAT_ANGLE:F = 80.0f

.field private static final FLAT_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 13.80665f

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_TILT:I = 0x50

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 5.80665f

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field private static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SWING_AWAY_ANGLE_DELTA:F = 20.0f

.field private static final SWING_TIME_NANOS:J = 0x11e1a300L

.field private static final TILT_HISTORY_SIZE:I = 0xc8

.field private static final TILT_OVERHEAD_ENTER:I = -0x28

.field private static final TILT_OVERHEAD_EXIT:I = -0xf


# instance fields
.field private mAccelerating:Z

.field private mAccelerationTimestampNanos:J

.field private mFlat:Z

.field private mFlatTimestampNanos:J

.field private mLastFilteredTimestampNanos:J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mOverhead:Z

.field private mPredictedRotation:I

.field private mPredictedRotationTimestampNanos:J

.field private mProposedRotation:I

.field private mSwingTimestampNanos:J

.field private mSwinging:Z

.field private mTiltHistory:[F

.field private mTiltHistoryIndex:I

.field private mTiltHistoryTimestampNanos:[J

.field private final mTiltToleranceConfig:[[I

.field private mTouchEndedTimestampNanos:J

.field private mTouched:Z

.field final synthetic this$0:Lcom/android/server/policy/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowOrientationListener;Landroid/content/Context;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/server/policy/WindowOrientationListener;
    .param p2, "context"    # Landroid/content/Context;

    .line 583
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-direct {p0, p1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    .line 538
    const/4 v0, 0x4

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    .line 571
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 579
    const/16 v1, 0xc8

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    .line 580
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    .line 585
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 587
    .local v1, "tiltTolerance":[I
    array-length v2, v1

    const-string v3, "WindowOrientationListener"

    const/16 v6, 0x8

    if-ne v2, v6, :cond_2

    .line 588
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 589
    mul-int/lit8 v6, v2, 0x2

    aget v6, v1, v6

    .line 590
    .local v6, "min":I
    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v5

    aget v7, v1, v7

    .line 591
    .local v7, "max":I
    const/16 v8, -0x5a

    if-lt v6, v8, :cond_0

    if-gt v6, v7, :cond_0

    const/16 v8, 0x5a

    if-gt v7, v8, :cond_0

    .line 592
    iget-object v8, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v9, v8, v2

    aput v6, v9, v4

    .line 593
    aget-object v8, v8, v2

    aput v7, v8, v5

    goto :goto_1

    .line 595
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config_autoRotationTiltTolerance contains invalid range: min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v6    # "min":I
    .end local v7    # "max":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_1
    goto :goto_2

    .line 600
    :cond_2
    const-string v0, "config_autoRotationTiltTolerance should have exactly 8 elements"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        -0x19
        0x46
    .end array-data

    :array_1
    .array-data 4
        -0x19
        0x41
    .end array-data

    :array_2
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_3
    .array-data 4
        -0x19
        0x41
    .end array-data
.end method

.method private addTiltHistoryEntryLocked(JF)V
    .locals 4
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .line 992
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 993
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aput-wide p1, v0, v1

    .line 994
    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0xc8

    iput v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 995
    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 996
    return-void
.end method

.method private clearPredictedRotationLocked()V
    .locals 2

    .line 970
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 971
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 972
    return-void
.end method

.method private clearTiltHistoryLocked()V
    .locals 4

    .line 987
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 988
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 989
    return-void
.end method

.method private getLastTiltLocked()F
    .locals 2

    .line 1030
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    .line 1031
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x7fc00000    # Float.NaN

    :goto_0
    return v1
.end method

.method private isAcceleratingLocked(F)Z
    .locals 1
    .param p1, "magnitude"    # F

    .line 982
    const v0, 0x40b9d014

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const v0, 0x415ce80a

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isFlatLocked(J)Z
    .locals 5
    .param p1, "now"    # J

    .line 999
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_2

    .line 1000
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x42a00000    # 80.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 1001
    goto :goto_0

    .line 1003
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x3b9aca00

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_0

    .line 1005
    const/4 v1, 0x1

    return v1

    .line 1008
    .end local v0    # "i":I
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isOrientationAngleAcceptableLocked(II)Z
    .locals 5
    .param p1, "rotation"    # I
    .param p2, "orientationAngle"    # I

    .line 889
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$200(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v0

    .line 890
    .local v0, "currentRotation":I
    if-ltz v0, :cond_5

    .line 895
    const/16 v1, 0x2d

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_2

    .line 897
    :cond_0
    mul-int/lit8 v3, p1, 0x5a

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x16

    .line 899
    .local v3, "lowerBound":I
    if-nez p1, :cond_1

    .line 900
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_2

    add-int/lit16 v4, v3, 0x168

    if-ge p2, v4, :cond_2

    .line 901
    return v2

    .line 904
    :cond_1
    if-ge p2, v3, :cond_2

    .line 905
    return v2

    .line 914
    .end local v3    # "lowerBound":I
    :cond_2
    if-eq p1, v0, :cond_3

    add-int/lit8 v3, v0, 0x3

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_5

    .line 916
    :cond_3
    mul-int/lit8 v3, p1, 0x5a

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x16

    .line 918
    .local v3, "upperBound":I
    if-nez p1, :cond_4

    .line 919
    if-gt p2, v1, :cond_5

    if-le p2, v3, :cond_5

    .line 920
    return v2

    .line 923
    :cond_4
    if-le p2, v3, :cond_5

    .line 924
    return v2

    .line 929
    .end local v3    # "upperBound":I
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method private isPredictedRotationAcceptableLocked(J)Z
    .locals 8
    .param p1, "now"    # J

    .line 938
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    const-wide/32 v2, 0x2625a00

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 939
    return v1

    .line 943
    :cond_0
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    .line 944
    return v1

    .line 949
    :cond_1
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v6, 0x11e1a300

    add-long/2addr v2, v6

    cmp-long v0, p1, v2

    if-gez v0, :cond_2

    .line 950
    return v1

    .line 954
    :cond_2
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_3

    .line 956
    return v1

    .line 960
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    if-nez v0, :cond_5

    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_4

    goto :goto_0

    .line 966
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 962
    :cond_5
    :goto_0
    return v1
.end method

.method private isSwingingLocked(JF)Z
    .locals 5
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .line 1012
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_2

    .line 1013
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    .line 1014
    goto :goto_0

    .line 1016
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_0

    .line 1018
    const/4 v1, 0x1

    return v1

    .line 1021
    .end local v0    # "i":I
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTiltAngleAcceptableLocked(II)Z
    .locals 4
    .param p1, "rotation"    # I
    .param p2, "tiltAngle"    # I

    .line 875
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v1, v0, p1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x1

    if-lt p2, v1, :cond_0

    aget-object v0, v0, p1

    aget v0, v0, v3

    if-gt p2, v0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method private nextTiltHistoryIndexLocked(I)I
    .locals 5
    .param p1, "index"    # I

    .line 1025
    if-nez p1, :cond_0

    const/16 v0, 0xc8

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 1026
    .end local p1    # "index":I
    .local v0, "index":I
    iget-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, p1, v0

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method private remainingMS(JJ)F
    .locals 2
    .param p1, "now"    # J
    .param p3, "until"    # J

    .line 1035
    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sub-long v0, p3, p1

    long-to-float v0, v0

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method private updatePredictedRotationLocked(JI)V
    .locals 1
    .param p1, "now"    # J
    .param p3, "rotation"    # I

    .line 975
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-eq v0, p3, :cond_0

    .line 976
    iput p3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 977
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 979
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AccelSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mPredictedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastFilteredX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastFilteredY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastFilteredZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    sub-long/2addr v0, v2

    .line 619
    .local v0, "delta":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mLastFilteredTimestampNanos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v3, v0

    const v4, 0x358637bd    # 1.0E-6f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mTiltHistory={last: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->getLastTiltLocked()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mFlat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mSwinging="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mAccelerating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mOverhead="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mTouched="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mTiltToleranceConfig=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    const-string v4, "]"

    if-ge v2, v3, :cond_1

    .line 629
    const-string v3, ", "

    if-eqz v2, :cond_0

    .line 630
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 632
    :cond_0
    const-string v5, "["

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    iget-object v5, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v5, v5, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 634
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v3, v3, v2

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 636
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method public getProposedRotationLocked()I
    .locals 1

    .line 606
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 643
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 25
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 650
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 654
    :try_start_0
    iget-object v0, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v0, v4

    .line 655
    .local v0, "x":F
    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    .line 656
    .local v5, "y":F
    iget-object v7, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    .line 658
    .local v7, "z":F
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 659
    const-string v8, "WindowOrientationListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raw acceleration vector: x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", z="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", magnitude="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v10, v0, v0

    mul-float v11, v5, v5

    add-float/2addr v10, v11

    mul-float v11, v7, v7

    add-float/2addr v10, v11

    float-to-double v10, v10

    .line 661
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 659
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    iget-wide v8, v2, Landroid/hardware/SensorEvent;->timestamp:J

    .line 669
    .local v8, "now":J
    iget-wide v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 670
    .local v10, "then":J
    sub-long v12, v8, v10

    long-to-float v12, v12

    const v13, 0x358637bd    # 1.0E-6f

    mul-float/2addr v12, v13

    .line 672
    .local v12, "timeDeltaMS":F
    cmp-long v14, v8, v10

    if-ltz v14, :cond_3

    const-wide/32 v14, 0x3b9aca00

    add-long/2addr v14, v10

    cmp-long v14, v8, v14

    if-gtz v14, :cond_3

    const/4 v14, 0x0

    cmpl-float v15, v0, v14

    if-nez v15, :cond_1

    cmpl-float v15, v5, v14

    if-nez v15, :cond_1

    cmpl-float v14, v7, v14

    if-nez v14, :cond_1

    goto :goto_1

    .line 681
    :cond_1
    const/high16 v14, 0x43480000    # 200.0f

    add-float/2addr v14, v12

    div-float v14, v12, v14

    .line 682
    .local v14, "alpha":F
    iget v15, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    sub-float v15, v0, v15

    mul-float/2addr v15, v14

    iget v13, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    add-float v0, v15, v13

    .line 683
    iget v13, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    sub-float v13, v5, v13

    mul-float/2addr v13, v14

    iget v15, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    add-float v5, v13, v15

    .line 684
    iget v13, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    sub-float v13, v7, v13

    mul-float/2addr v13, v14

    iget v15, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    add-float v7, v13, v15

    .line 685
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 686
    const-string v13, "WindowOrientationListener"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filtered acceleration vector: x="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", z="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", magnitude="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v4, v0, v0

    mul-float v18, v5, v5

    add-float v4, v4, v18

    mul-float v18, v7, v7

    add-float v4, v4, v18

    move/from16 v19, v7

    .end local v7    # "z":F
    .local v19, "z":F
    float-to-double v6, v4

    .line 688
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 686
    invoke-static {v13, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 685
    .end local v19    # "z":F
    .restart local v7    # "z":F
    :cond_2
    move/from16 v19, v7

    .line 690
    .end local v7    # "z":F
    .restart local v19    # "z":F
    :goto_0
    const/4 v4, 0x0

    move/from16 v7, v19

    .local v4, "skipSample":Z
    goto :goto_2

    .line 675
    .end local v4    # "skipSample":Z
    .end local v14    # "alpha":F
    .end local v19    # "z":F
    .restart local v7    # "z":F
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 676
    const-string v4, "WindowOrientationListener"

    const-string v6, "Resetting orientation listener."

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->resetLocked(Z)V

    .line 679
    const/4 v4, 0x1

    .line 692
    .restart local v4    # "skipSample":Z
    :goto_2
    iput-wide v8, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 693
    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    .line 694
    iput v5, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    .line 695
    iput v7, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    .line 697
    const/4 v6, 0x0

    .line 698
    .local v6, "isAccelerating":Z
    const/4 v13, 0x0

    .line 699
    .local v13, "isFlat":Z
    const/4 v14, 0x0

    .line 700
    .local v14, "isSwinging":Z
    if-nez v4, :cond_16

    .line 702
    mul-float v15, v0, v0

    mul-float v19, v5, v5

    add-float v15, v15, v19

    mul-float v19, v7, v7

    add-float v15, v15, v19

    move-wide/from16 v19, v10

    .end local v10    # "then":J
    .local v19, "then":J
    float-to-double v10, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 703
    .local v10, "magnitude":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_6

    .line 704
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 705
    const-string v11, "WindowOrientationListener"

    const-string v15, "Ignoring sensor data, magnitude too close to zero."

    invoke-static {v11, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    move/from16 v18, v0

    move v0, v4

    move/from16 v22, v5

    move v15, v7

    goto/16 :goto_6

    .line 711
    :cond_6
    invoke-direct {v1, v10}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isAcceleratingLocked(F)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 712
    const/4 v6, 0x1

    .line 713
    iput-wide v8, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 722
    :cond_7
    div-float v11, v7, v10

    move/from16 v21, v6

    move v15, v7

    .end local v6    # "isAccelerating":Z
    .end local v7    # "z":F
    .local v15, "z":F
    .local v21, "isAccelerating":Z
    float-to-double v6, v11

    .line 723
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v22, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v6, v6, v22

    .line 722
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 724
    .local v6, "tiltAngle":I
    int-to-float v7, v6

    invoke-direct {v1, v8, v9, v7}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->addTiltHistoryEntryLocked(JF)V

    .line 727
    invoke-direct {v1, v8, v9}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isFlatLocked(J)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 728
    const/4 v13, 0x1

    .line 729
    iput-wide v8, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 731
    :cond_8
    int-to-float v7, v6

    invoke-direct {v1, v8, v9, v7}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isSwingingLocked(JF)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 732
    const/4 v14, 0x1

    .line 733
    iput-wide v8, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 738
    :cond_9
    const/16 v7, -0x28

    if-gt v6, v7, :cond_a

    .line 739
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    goto :goto_3

    .line 740
    :cond_a
    const/16 v7, -0xf

    if-lt v6, v7, :cond_b

    .line 741
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 743
    :cond_b
    :goto_3
    iget-boolean v7, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    if-eqz v7, :cond_d

    .line 744
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 745
    const-string v7, "WindowOrientationListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring sensor data, device is overhead: tiltAngle="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    move/from16 v18, v0

    move v0, v4

    move/from16 v22, v5

    move v2, v13

    move/from16 v17, v14

    goto/16 :goto_5

    .line 749
    :cond_d
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v7, 0x50

    if-le v2, v7, :cond_f

    .line 750
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 751
    const-string v2, "WindowOrientationListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    move/from16 v18, v0

    move v0, v4

    move/from16 v22, v5

    move v2, v13

    move/from16 v17, v14

    goto/16 :goto_5

    .line 759
    :cond_f
    neg-float v2, v0

    move v7, v10

    .end local v10    # "magnitude":F
    .local v7, "magnitude":F
    float-to-double v10, v2

    move v2, v13

    move/from16 v17, v14

    .end local v13    # "isFlat":Z
    .end local v14    # "isSwinging":Z
    .local v2, "isFlat":Z
    .local v17, "isSwinging":Z
    float-to-double v13, v5

    .line 760
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    neg-double v10, v10

    mul-double v10, v10, v22

    .line 759
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    .line 761
    .local v10, "orientationAngle":I
    if-gez v10, :cond_10

    .line 763
    add-int/lit16 v10, v10, 0x168

    .line 767
    :cond_10
    add-int/lit8 v11, v10, 0x2d

    div-int/lit8 v11, v11, 0x5a

    .line 768
    .local v11, "nearestRotation":I
    const/4 v13, 0x4

    if-ne v11, v13, :cond_11

    .line 769
    const/4 v11, 0x0

    .line 773
    :cond_11
    invoke-direct {v1, v11, v6}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isTiltAngleAcceptableLocked(II)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 774
    invoke-direct {v1, v11, v10}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isOrientationAngleAcceptableLocked(II)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 776
    invoke-direct {v1, v8, v9, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->updatePredictedRotationLocked(JI)V

    .line 777
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 778
    const-string v13, "WindowOrientationListener"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    .end local v0    # "x":F
    .local v18, "x":F
    const-string v0, "Predicted: tiltAngle="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", orientationAngle="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", predictedRotation="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", predictedRotationAgeMS="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    move/from16 v22, v5

    .end local v4    # "skipSample":Z
    .end local v5    # "y":F
    .local v0, "skipSample":Z
    .local v22, "y":F
    iget-wide v4, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    sub-long v4, v8, v4

    long-to-float v4, v4

    const v5, 0x358637bd    # 1.0E-6f

    mul-float/2addr v4, v5

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 777
    .end local v18    # "x":F
    .end local v22    # "y":F
    .local v0, "x":F
    .restart local v4    # "skipSample":Z
    .restart local v5    # "y":F
    :cond_12
    move/from16 v18, v0

    move v0, v4

    move/from16 v22, v5

    .end local v4    # "skipSample":Z
    .end local v5    # "y":F
    .local v0, "skipSample":Z
    .restart local v18    # "x":F
    .restart local v22    # "y":F
    goto :goto_5

    .line 774
    .end local v18    # "x":F
    .end local v22    # "y":F
    .local v0, "x":F
    .restart local v4    # "skipSample":Z
    .restart local v5    # "y":F
    :cond_13
    move/from16 v18, v0

    move v0, v4

    move/from16 v22, v5

    .end local v4    # "skipSample":Z
    .end local v5    # "y":F
    .local v0, "skipSample":Z
    .restart local v18    # "x":F
    .restart local v22    # "y":F
    goto :goto_4

    .line 773
    .end local v18    # "x":F
    .end local v22    # "y":F
    .local v0, "x":F
    .restart local v4    # "skipSample":Z
    .restart local v5    # "y":F
    :cond_14
    move/from16 v18, v0

    move v0, v4

    move/from16 v22, v5

    .line 787
    .end local v4    # "skipSample":Z
    .end local v5    # "y":F
    .local v0, "skipSample":Z
    .restart local v18    # "x":F
    .restart local v22    # "y":F
    :goto_4
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 788
    const-string v4, "WindowOrientationListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", orientationAngle="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 797
    .end local v2    # "isFlat":Z
    .end local v6    # "tiltAngle":I
    .end local v7    # "magnitude":F
    .end local v10    # "orientationAngle":I
    .end local v11    # "nearestRotation":I
    .end local v17    # "isSwinging":Z
    .end local v18    # "x":F
    .end local v22    # "y":F
    .local v0, "x":F
    .restart local v4    # "skipSample":Z
    .restart local v5    # "y":F
    .restart local v13    # "isFlat":Z
    .restart local v14    # "isSwinging":Z
    :goto_5
    move v13, v2

    move/from16 v14, v17

    move/from16 v6, v21

    .end local v4    # "skipSample":Z
    .end local v5    # "y":F
    .end local v13    # "isFlat":Z
    .end local v14    # "isSwinging":Z
    .local v0, "skipSample":Z
    .restart local v2    # "isFlat":Z
    .restart local v17    # "isSwinging":Z
    .restart local v18    # "x":F
    .restart local v22    # "y":F
    goto :goto_6

    .line 700
    .end local v2    # "isFlat":Z
    .end local v15    # "z":F
    .end local v17    # "isSwinging":Z
    .end local v18    # "x":F
    .end local v19    # "then":J
    .end local v21    # "isAccelerating":Z
    .end local v22    # "y":F
    .local v0, "x":F
    .restart local v4    # "skipSample":Z
    .restart local v5    # "y":F
    .local v6, "isAccelerating":Z
    .local v7, "z":F
    .local v10, "then":J
    .restart local v13    # "isFlat":Z
    .restart local v14    # "isSwinging":Z
    :cond_16
    move/from16 v18, v0

    move v0, v4

    move/from16 v22, v5

    move v15, v7

    move-wide/from16 v19, v10

    .line 797
    .end local v4    # "skipSample":Z
    .end local v5    # "y":F
    .end local v7    # "z":F
    .end local v10    # "then":J
    .local v0, "skipSample":Z
    .restart local v15    # "z":F
    .restart local v18    # "x":F
    .restart local v19    # "then":J
    .restart local v22    # "y":F
    :goto_6
    iput-boolean v13, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 798
    iput-boolean v14, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 799
    iput-boolean v6, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 802
    iget v2, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 803
    .local v2, "oldProposedRotation":I
    iget v4, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-ltz v4, :cond_17

    invoke-direct {v1, v8, v9}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isPredictedRotationAcceptableLocked(J)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 804
    :cond_17
    iget v4, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    iput v4, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 806
    :cond_18
    iget v4, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 809
    .local v4, "proposedRotation":I
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 810
    const-string v5, "WindowOrientationListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Result: currentRotation="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v10}, Lcom/android/server/policy/WindowOrientationListener;->access$200(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", proposedRotation="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", predictedRotation="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", timeDeltaMS="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", isAccelerating="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isFlat="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isSwinging="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isOverhead="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isTouched="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", timeUntilSettledMS="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    const-wide/32 v16, 0x2625a00

    add-long v10, v10, v16

    .line 819
    invoke-direct {v1, v8, v9, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    const-wide/32 v16, 0x1dcd6500

    add-long v10, v10, v16

    .line 821
    invoke-direct {v1, v8, v9, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    add-long v10, v10, v16

    .line 823
    invoke-direct {v1, v8, v9, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v23, 0x11e1a300

    add-long v10, v10, v23

    .line 825
    invoke-direct {v1, v8, v9, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", timeUntilTouchDelayExpiredMS="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long v10, v10, v16

    .line 827
    invoke-direct {v1, v8, v9, v10, v11}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 810
    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    .end local v0    # "skipSample":Z
    .end local v6    # "isAccelerating":Z
    .end local v8    # "now":J
    .end local v12    # "timeDeltaMS":F
    .end local v13    # "isFlat":Z
    .end local v14    # "isSwinging":Z
    .end local v15    # "z":F
    .end local v18    # "x":F
    .end local v19    # "then":J
    .end local v22    # "y":F
    :cond_19
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    if-eq v4, v2, :cond_1b

    if-ltz v4, :cond_1b

    .line 834
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", oldProposedRotation="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WindowOrientationListener"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_1a
    iget-object v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 840
    :cond_1b
    return-void

    .line 830
    .end local v2    # "oldProposedRotation":I
    .end local v4    # "proposedRotation":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onTouchEndLocked(J)V
    .locals 1
    .param p1, "whenElapsedNanos"    # J

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 850
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 851
    return-void
.end method

.method public onTouchStartLocked()V
    .locals 1

    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 845
    return-void
.end method

.method public resetLocked(Z)V
    .locals 3
    .param p1, "clearCurrentRotation"    # Z

    .line 855
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 856
    if-eqz p1, :cond_0

    .line 857
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 859
    :cond_0
    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 860
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 861
    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 862
    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 863
    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 864
    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 865
    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 866
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 867
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearTiltHistoryLocked()V

    .line 868
    return-void
.end method

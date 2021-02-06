.class public Lcom/android/server/power/WirelessChargerDetector;
.super Ljava/lang/Object;
.source "WirelessChargerDetector.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_GRAVITY:D = 10.806650161743164

.field private static final MIN_GRAVITY:D = 8.806650161743164

.field private static final MIN_SAMPLES:I = 0x3

.field private static final MOVEMENT_ANGLE_COS_THRESHOLD:D

.field private static final SAMPLING_INTERVAL_MILLIS:I = 0x32

.field private static final SETTLE_TIME_MILLIS:J = 0x320L

.field private static final TAG:Ljava/lang/String; = "WirelessChargerDetector"


# instance fields
.field private mAtRest:Z

.field private mDetectionInProgress:Z

.field private mDetectionStartTime:J

.field private mFirstSampleX:F

.field private mFirstSampleY:F

.field private mFirstSampleZ:F

.field private mGravitySensor:Landroid/hardware/Sensor;

.field private final mHandler:Landroid/os/Handler;

.field private mLastDisconnectPowerWirelessTime:J

.field private mLastSampleX:F

.field private mLastSampleY:F

.field private mLastSampleZ:F

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mMovingSamples:I

.field private mMustUpdateRestPosition:Z

.field private mPoweredWirelessly:Z

.field private mRestX:F

.field private mRestY:F

.field private mRestZ:F

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorTimeout:Ljava/lang/Runnable;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mTotalSamples:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    const-wide v0, 0x3fb657184ae74487L    # 0.08726646259971647

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/WirelessChargerDetector;->MOVEMENT_ANGLE_COS_THRESHOLD:D

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    .line 387
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/WirelessChargerDetector$1;-><init>(Lcom/android/server/power/WirelessChargerDetector;)V

    iput-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mListener:Landroid/hardware/SensorEventListener;

    .line 400
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/WirelessChargerDetector$2;-><init>(Lcom/android/server/power/WirelessChargerDetector;)V

    iput-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorTimeout:Ljava/lang/Runnable;

    .line 145
    iput-object p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 146
    iput-object p2, p0, Lcom/android/server/power/WirelessChargerDetector;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 147
    iput-object p3, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    .line 149
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mGravitySensor:Landroid/hardware/Sensor;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/WirelessChargerDetector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/WirelessChargerDetector;

    .line 76
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/WirelessChargerDetector;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/WirelessChargerDetector;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/WirelessChargerDetector;->processSampleLocked(FFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/WirelessChargerDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/WirelessChargerDetector;

    .line 76
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->finishDetectionLocked()V

    return-void
.end method

.method private clearAtRestLocked()V
    .locals 1

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    .line 359
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    .line 360
    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    .line 361
    return-void
.end method

.method private finishDetectionLocked()V
    .locals 4

    .line 292
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 294
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->clearAtRestLocked()V

    .line 298
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wireless charger detector is broken.  Only received "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " samples from the gravity sensor but we need at least "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and we expect to see about "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " on average."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WirelessChargerDetector"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    :cond_0
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    if-nez v0, :cond_1

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    .line 306
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    .line 307
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    .line 308
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    .line 310
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    .line 320
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    .line 321
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 323
    :cond_3
    return-void
.end method

.method private static hasMoved(FFFFFF)Z
    .locals 12
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    .line 365
    mul-float v0, p0, p3

    mul-float v1, p1, p4

    add-float/2addr v0, v1

    mul-float v1, p2, p5

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 366
    .local v0, "dotProduct":D
    mul-float v2, p0, p0

    mul-float v3, p1, p1

    add-float/2addr v2, v3

    mul-float v3, p2, p2

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 367
    .local v2, "mag1":D
    mul-float v4, p3, p3

    mul-float v5, p4, p4

    add-float/2addr v4, v5

    mul-float v5, p5, p5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 368
    .local v4, "mag2":D
    const-wide v6, 0x40219d0140000000L    # 8.806650161743164

    cmpg-double v8, v2, v6

    const/4 v9, 0x1

    if-ltz v8, :cond_2

    const-wide v10, 0x40259d0140000000L    # 10.806650161743164

    cmpl-double v8, v2, v10

    if-gtz v8, :cond_2

    cmpg-double v6, v4, v6

    if-ltz v6, :cond_2

    cmpl-double v6, v4, v10

    if-lez v6, :cond_0

    goto :goto_1

    .line 375
    :cond_0
    mul-double v6, v2, v4

    sget-wide v10, Lcom/android/server/power/WirelessChargerDetector;->MOVEMENT_ANGLE_COS_THRESHOLD:D

    mul-double/2addr v6, v10

    cmpg-double v6, v0, v6

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    move v6, v9

    .line 384
    .local v6, "moved":Z
    return v6

    .line 373
    .end local v6    # "moved":Z
    :cond_2
    :goto_1
    return v9
.end method

.method private processSampleLocked(FFF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 326
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    if-eqz v0, :cond_2

    .line 327
    iput p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    .line 328
    iput p2, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    .line 329
    iput p3, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    .line 331
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    .line 332
    if-ne v0, v1, :cond_0

    .line 334
    iput p1, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    .line 335
    iput p2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    .line 336
    iput p3, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    goto :goto_0

    .line 339
    :cond_0
    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    iget v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/WirelessChargerDetector;->hasMoved(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    .line 345
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    iget v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/WirelessChargerDetector;->hasMoved(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->clearAtRestLocked()V

    .line 354
    :cond_2
    return-void
.end method

.method private startDetectionLocked()V
    .locals 4

    .line 275
    iget-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mGravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mListener:Landroid/hardware/SensorEventListener;

    const v3, 0xc350

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    .line 280
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionStartTime:J

    .line 281
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    .line 282
    iput v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    .line 284
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mSensorTimeout:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 285
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 286
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 289
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 153
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 155
    const-string v1, "Wireless Charger Detector State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mGravitySensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mGravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPoweredWirelessly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAtRest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRestX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mRestY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mRestZ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDetectionInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDetectionStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string v2, "0 (never)"

    goto :goto_0

    .line 162
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mDetectionStartTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMustUpdateRestPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTotalSamples="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMovingSamples="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFirstSampleX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mFirstSampleY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mFirstSampleZ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSampleX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mLastSampleY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mLastSampleZ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 174
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 175
    .local v3, "wcdToken":J
    iget-object v5, v1, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 176
    const-wide v6, 0x10800000001L

    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    invoke-virtual {v2, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 177
    const-wide v6, 0x10800000002L

    iget-boolean v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    invoke-virtual {v2, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 179
    const-wide v6, 0x10b00000003L

    invoke-virtual {v2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 180
    .local v6, "restVectorToken":J
    iget v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mRestX:F

    const-wide v8, 0x10200000001L

    invoke-virtual {v2, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 181
    iget v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mRestY:F

    const-wide v10, 0x10200000002L

    invoke-virtual {v2, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 182
    iget v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mRestZ:F

    const-wide v12, 0x10200000003L

    invoke-virtual {v2, v12, v13, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 183
    invoke-virtual {v2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 185
    const-wide v14, 0x10800000004L

    iget-boolean v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mDetectionInProgress:Z

    invoke-virtual {v2, v14, v15, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 187
    const-wide v14, 0x10300000005L

    iget-wide v12, v1, Lcom/android/server/power/WirelessChargerDetector;->mDetectionStartTime:J

    invoke-virtual {v2, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 188
    const-wide v12, 0x10800000006L

    iget-boolean v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    invoke-virtual {v2, v12, v13, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 191
    const-wide v12, 0x10500000007L

    iget v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mTotalSamples:I

    invoke-virtual {v2, v12, v13, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 192
    const-wide v12, 0x10500000008L

    iget v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mMovingSamples:I

    invoke-virtual {v2, v12, v13, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 194
    const-wide v12, 0x10b00000009L

    .line 195
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 196
    .local v12, "firstSampleVectorToken":J
    iget v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleX:F

    invoke-virtual {v2, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 197
    iget v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleY:F

    invoke-virtual {v2, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 198
    iget v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mFirstSampleZ:F

    const-wide v14, 0x10200000003L

    invoke-virtual {v2, v14, v15, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 199
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 201
    const-wide v14, 0x10b0000000aL

    .line 202
    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 203
    .local v14, "lastSampleVectorToken":J
    iget v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleX:F

    invoke-virtual {v2, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 204
    iget v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleY:F

    invoke-virtual {v2, v10, v11, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 205
    iget v0, v1, Lcom/android/server/power/WirelessChargerDetector;->mLastSampleZ:F

    const-wide v8, 0x10200000003L

    invoke-virtual {v2, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 206
    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 207
    .end local v6    # "restVectorToken":J
    .end local v12    # "firstSampleVectorToken":J
    .end local v14    # "lastSampleVectorToken":J
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 209
    return-void

    .line 207
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public update(ZI)Z
    .locals 8
    .param p1, "isPowered"    # Z
    .param p2, "plugType"    # I

    .line 225
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    .line 231
    .local v1, "wasPoweredWirelessly":Z
    if-nez p1, :cond_0

    if-eqz v1, :cond_0

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastDisconnectPowerWirelessTime:J

    .line 234
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastDisconnectPowerWirelessTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xfa0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->clearAtRestLocked()V

    goto :goto_0

    .line 237
    :cond_1
    const-string v2, "WirelessChargerDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device discharge for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/power/WirelessChargerDetector;->mLastDisconnectPowerWirelessTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    if-ne p2, v2, :cond_2

    .line 244
    iput-boolean v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    .line 245
    iput-boolean v3, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    .line 246
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->startDetectionLocked()V

    goto :goto_1

    .line 250
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    .line 251
    iget-boolean v5, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    if-eqz v5, :cond_4

    .line 252
    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_3

    .line 255
    iput-boolean v4, p0, Lcom/android/server/power/WirelessChargerDetector;->mMustUpdateRestPosition:Z

    .line 256
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->clearAtRestLocked()V

    goto :goto_1

    .line 262
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/WirelessChargerDetector;->startDetectionLocked()V

    .line 270
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mPoweredWirelessly:Z

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    iget-boolean v2, p0, Lcom/android/server/power/WirelessChargerDetector;->mAtRest:Z

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    monitor-exit v0

    return v3

    .line 271
    .end local v1    # "wasPoweredWirelessly":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

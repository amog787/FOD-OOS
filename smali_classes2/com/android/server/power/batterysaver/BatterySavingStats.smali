.class public Lcom/android/server/power/batterysaver/BatterySavingStats;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final STATE_CHARGING:I = -0x2

.field private static final STATE_NOT_INITIALIZED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BatterySavingStats"


# instance fields
.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatterySaverEnabledCount:I

.field private mCurrentState:I

.field private mIsBatterySaverEnabled:Z

.field private mLastBatterySaverDisabledTime:J

.field private mLastBatterySaverEnabledTime:J

.field private final mLock:Ljava/lang/Object;

.field final mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "lock"    # Ljava/lang/Object;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 154
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/ArrayMap;

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    .line 167
    iput-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 173
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    .line 174
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 175
    return-void
.end method

.method private dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "interactiveState"    # I
    .param p4, "interactiveLabel"    # Ljava/lang/String;
    .param p5, "dozeState"    # I
    .param p6, "dozeLabel"    # Ljava/lang/String;

    .line 433
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3, p5}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(III)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v1

    .line 440
    .local v1, "offStat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    const/4 v2, 0x1

    invoke-direct {p0, v2, p3, p5}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(III)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v3

    .line 442
    .local v3, "onStat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    .line 443
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    iget v0, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 v0, v0, 0x3e8

    .line 444
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    iget v0, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    .line 446
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v4, v2

    .line 447
    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v4, v2

    iget v0, v3, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 v0, v0, 0x3e8

    .line 448
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v4, v2

    iget v0, v3, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 449
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v4, v2

    .line 450
    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v4, v2

    .line 442
    const-string v0, "%6dm %6dmAh(%3d%%) %8.1fmAh/h     %6dm %6dmAh(%3d%%) %8.1fmAh/h"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method private endLastStateLocked(JII)V
    .locals 21
    .param p1, "now"    # J
    .param p3, "batteryLevel"    # I
    .param p4, "batteryPercent"    # I

    .line 310
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-gez v1, :cond_0

    .line 311
    return-void

    .line 313
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v1

    .line 315
    .local v1, "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    move/from16 v2, p3

    iput v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryLevel:I

    .line 316
    move/from16 v3, p4

    iput v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryPercent:I

    .line 317
    move-wide/from16 v4, p1

    iput-wide v4, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    .line 319
    iget-wide v6, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    iget-wide v8, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    sub-long/2addr v6, v8

    .line 320
    .local v6, "deltaTime":J
    iget v8, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    iget v9, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryLevel:I

    sub-int/2addr v8, v9

    .line 321
    .local v8, "deltaDrain":I
    iget v9, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    iget v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryPercent:I

    sub-int/2addr v9, v10

    .line 323
    .local v9, "deltaPercent":I
    iget-wide v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    add-long/2addr v10, v6

    iput-wide v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    .line 324
    iget v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    add-int/2addr v10, v8

    iput v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    .line 325
    iget v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    add-int/2addr v10, v9

    iput v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 336
    iget v10, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 337
    invoke-static {v10}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v10

    iget v11, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 338
    invoke-static {v11}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v11

    iget v12, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 339
    invoke-static {v12}, Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;->fromIndex(I)I

    move-result v12

    iget-wide v13, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    iget v15, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    iget v0, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 336
    move-wide/from16 v17, v13

    move-wide v13, v6

    move/from16 v19, v15

    move v15, v8

    move/from16 v16, v9

    move/from16 v20, v0

    invoke-static/range {v10 .. v20}, Lcom/android/server/EventLogTags;->writeBatterySavingStats(IIIJIIJII)V

    .line 347
    return-void
.end method

.method private getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_0

    .line 179
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 180
    if-nez v0, :cond_0

    .line 181
    const-string v0, "BatterySavingStats"

    const-string v1, "BatteryManagerInternal not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method private getStat(III)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .locals 1
    .param p1, "batterySaverState"    # I
    .param p2, "interactiveState"    # I
    .param p3, "dozeState"    # I

    .line 234
    invoke-static {p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v0

    return-object v0
.end method

.method private startNewStateLocked(IJII)V
    .locals 3
    .param p1, "newState"    # I
    .param p2, "now"    # J
    .param p4, "batteryLevel"    # I
    .param p5, "batteryPercent"    # I

    .line 354
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 356
    if-gez p1, :cond_0

    .line 357
    return-void

    .line 360
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v0

    .line 361
    .local v0, "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    iput p4, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    .line 362
    iput p5, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    .line 363
    iput-wide p2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    .line 364
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    .line 365
    return-void
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 204
    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    return-object v0

    .line 206
    :cond_0
    const-string v0, "NotInitialized"

    return-object v0

    .line 208
    :cond_1
    const-string v0, "Charging"

    return-object v0
.end method

.method static statesToIndex(III)I
    .locals 2
    .param p0, "batterySaverState"    # I
    .param p1, "interactiveState"    # I
    .param p2, "dozeState"    # I

    .line 193
    and-int/lit8 v0, p0, 0x3

    .line 194
    .local v0, "ret":I
    and-int/lit8 v1, p1, 0x1

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 195
    and-int/lit8 v1, p2, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    .line 196
    return v0
.end method

.method private transitionStateLocked(I)V
    .locals 12
    .param p1, "newState"    # I

    .line 283
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-ne v0, p1, :cond_0

    .line 284
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v7

    .line 287
    .local v7, "now":J
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryLevel()I

    move-result v0

    .line 288
    .local v0, "batteryLevel":I
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryPercent()I

    move-result v9

    .line 290
    .local v9, "batteryPercent":I
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 291
    invoke-static {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v10, v1

    .line 292
    .local v10, "oldBatterySaverEnabled":Z
    nop

    .line 293
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    move v11, v2

    .line 294
    .local v11, "newBatterySaverEnabled":Z
    if-eq v10, v11, :cond_4

    .line 295
    iput-boolean v11, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mIsBatterySaverEnabled:Z

    .line 296
    if-eqz v11, :cond_3

    .line 297
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 298
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    goto :goto_1

    .line 300
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 304
    :cond_4
    :goto_1
    invoke-direct {p0, v7, v8, v0, v9}, Lcom/android/server/power/batterysaver/BatterySavingStats;->endLastStateLocked(JII)V

    .line 305
    move-object v1, p0

    move v2, p1

    move-wide v3, v7

    move v5, v0

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->startNewStateLocked(IJII)V

    .line 306
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    .line 368
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v10, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 369
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    const-string v0, "Battery saving stats:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v1, p2

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v0

    .line 374
    .end local p2    # "indent":Ljava/lang/String;
    .local v11, "indent":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v12, v0

    .line 375
    .local v12, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v0

    move-wide v14, v0

    .line 376
    .local v14, "nowElapsed":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 378
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    const-string v1, "Battery Saver is currently: "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    iget-boolean v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mIsBatterySaverEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "ON"

    goto :goto_0

    :cond_0
    const-string v1, "OFF"

    :goto_0
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    iget-wide v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 382
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 383
    const-string v1, "  "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    const-string v1, "Last ON time: "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 385
    new-instance v1, Ljava/util/Date;

    sub-long v5, v12, v14

    iget-wide v3, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    add-long/2addr v5, v3

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 386
    const-string v1, " "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 387
    iget-wide v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    invoke-static {v1, v2, v14, v15, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 388
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 391
    :cond_1
    iget-wide v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 392
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    const-string v1, "  "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    const-string v1, "Last OFF time: "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    new-instance v1, Ljava/util/Date;

    sub-long v2, v12, v14

    iget-wide v4, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    const-string v1, " "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    iget-wide v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    invoke-static {v1, v2, v14, v15, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 398
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 401
    :cond_2
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    const-string v1, "  "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    const-string v1, "Times enabled: "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 406
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 408
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    const-string v1, "Drain stats:"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 412
    const-string v1, "                   Battery saver OFF                          ON"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    const/4 v4, 0x0

    const-string v5, "NonIntr"

    const/4 v6, 0x0

    const-string v7, "NonDoze"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 415
    const/4 v4, 0x1

    const-string v5, "   Intr"

    const/4 v6, 0x0

    const-string v7, "       "

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 418
    const/4 v4, 0x0

    const-string v5, "NonIntr"

    const/4 v6, 0x2

    const-string v7, "Deep   "

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 420
    const/4 v4, 0x1

    const-string v5, "   Intr"

    const/4 v6, 0x2

    const-string v7, "       "

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 423
    const/4 v4, 0x0

    const-string v5, "NonIntr"

    const/4 v6, 0x1

    const-string v7, "Light  "

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 425
    const/4 v4, 0x1

    const-string v5, "   Intr"

    const/4 v6, 0x1

    const-string v7, "       "

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 427
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v12    # "now":J
    .end local v14    # "nowElapsed":J
    monitor-exit v10

    .line 428
    return-void

    .line 427
    .end local v11    # "indent":Ljava/lang/String;
    .restart local p2    # "indent":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v1, p2

    :goto_1
    move-object v11, v1

    .end local p2    # "indent":Ljava/lang/String;
    .restart local v11    # "indent":Ljava/lang/String;
    :goto_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .locals 4
    .param p1, "stateIndex"    # I

    .line 220
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    .line 222
    .local v1, "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    if-nez v1, :cond_0

    .line 223
    new-instance v2, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    invoke-direct {v2}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;-><init>()V

    move-object v1, v2

    .line 224
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_0
    monitor-exit v0

    return-object v1

    .line 227
    .end local v1    # "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method injectBatteryLevel()I
    .locals 2

    .line 244
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    .line 245
    .local v0, "bmi":Landroid/os/BatteryManagerInternal;
    if-nez v0, :cond_0

    .line 246
    const/4 v1, 0x0

    return v1

    .line 248
    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryChargeCounter()I

    move-result v1

    return v1
.end method

.method injectBatteryPercent()I
    .locals 2

    .line 253
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    .line 254
    .local v0, "bmi":Landroid/os/BatteryManagerInternal;
    if-nez v0, :cond_0

    .line 255
    const/4 v1, 0x0

    return v1

    .line 257
    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    return v1
.end method

.method injectCurrentTime()J
    .locals 2

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public startCharging()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    const/4 v1, -0x2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionStateLocked(I)V

    .line 278
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public transitionState(III)V
    .locals 2
    .param p1, "batterySaverState"    # I
    .param p2, "interactiveState"    # I
    .param p3, "dozeState"    # I

    .line 265
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(III)I

    move-result v1

    .line 268
    .local v1, "newState":I
    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionStateLocked(I)V

    .line 269
    .end local v1    # "newState":I
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

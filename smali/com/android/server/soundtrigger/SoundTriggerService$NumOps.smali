.class Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;
.super Ljava/lang/Object;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumOps"
.end annotation


# instance fields
.field private mLastOpsHourSinceBoot:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNumOps:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLock:Ljava/lang/Object;

    .line 584
    const/16 v0, 0x18

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mNumOps:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/soundtrigger/SoundTriggerService$1;

    .line 581
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;-><init>()V

    return-void
.end method


# virtual methods
.method addOp(J)V
    .locals 6
    .param p1, "currentTime"    # J

    .line 618
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 621
    .local v1, "numHoursSinceBoot":J
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mNumOps:[I

    const-wide/16 v4, 0x18

    rem-long v4, v1, v4

    long-to-int v4, v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 622
    iput-wide v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLastOpsHourSinceBoot:J

    .line 623
    .end local v1    # "numHoursSinceBoot":J
    monitor-exit v0

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearOldOps(J)V
    .locals 10
    .param p1, "currentTime"    # J

    .line 598
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 604
    .local v1, "numHoursSinceBoot":J
    iget-wide v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLastOpsHourSinceBoot:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 605
    iget-wide v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLastOpsHourSinceBoot:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .local v3, "hour":J
    :goto_0
    cmp-long v7, v3, v1

    if-gtz v7, :cond_0

    .line 606
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mNumOps:[I

    const-wide/16 v8, 0x18

    rem-long v8, v3, v8

    long-to-int v8, v8

    const/4 v9, 0x0

    aput v9, v7, v8

    .line 605
    add-long/2addr v3, v5

    goto :goto_0

    .line 609
    .end local v1    # "numHoursSinceBoot":J
    .end local v3    # "hour":J
    :cond_0
    monitor-exit v0

    .line 610
    return-void

    .line 609
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getOpsAdded()I
    .locals 4

    .line 632
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    const/4 v1, 0x0

    .line 634
    .local v1, "totalOperationsInLastDay":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 635
    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mNumOps:[I

    aget v3, v3, v2

    add-int/2addr v1, v3

    .line 634
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 638
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    return v1

    .line 639
    .end local v1    # "totalOperationsInLastDay":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

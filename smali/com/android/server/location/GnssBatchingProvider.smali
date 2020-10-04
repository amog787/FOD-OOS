.class public Lcom/android/server/location/GnssBatchingProvider;
.super Ljava/lang/Object;
.source "GnssBatchingProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssBatchingProvider"


# instance fields
.field private mEnabled:Z

.field private final mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

.field private mPeriodNanos:J

.field private mStarted:Z

.field private mWakeOnFifoFull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-string v0, "GnssBatchingProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssBatchingProvider;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssBatchingProvider;-><init>(Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;)V

    .line 26
    return-void
.end method

.method constructor <init>(Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;)V
    .locals 0
    .param p1, "gnssBatchingProviderNative"    # Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    .line 31
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 13
    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_get_batch_size()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(JZ)Z
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # Z

    .line 13
    invoke-static {p0, p1, p2}, Lcom/android/server/location/GnssBatchingProvider;->native_start_batch(JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 13
    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_flush_batch()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 13
    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_stop_batch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 13
    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_init_batching()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()V
    .locals 0

    .line 13
    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_cleanup_batching()V

    return-void
.end method

.method private static native native_cleanup_batching()V
.end method

.method private static native native_flush_batch()V
.end method

.method private static native native_get_batch_size()I
.end method

.method private static native native_init_batching()Z
.end method

.method private static native native_start_batch(JZ)Z
.end method

.method private static native native_stop_batch()Z
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/android/server/location/GnssBatchingProvider;->stop()Z

    .line 93
    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->cleanupBatching()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mEnabled:Z

    .line 95
    return-void
.end method

.method public enable()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->initBatching()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mEnabled:Z

    .line 43
    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mEnabled:Z

    if-nez v0, :cond_0

    .line 44
    const-string v0, "GnssBatchingProvider"

    const-string v1, "Failed to initialize GNSS batching"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 72
    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    if-nez v0, :cond_0

    .line 73
    const-string v0, "GnssBatchingProvider"

    const-string v1, "Cannot flush since GNSS batching has not started."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->flushBatch()V

    .line 77
    return-void
.end method

.method public getBatchSize()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->getBatchSize()I

    move-result v0

    return v0
.end method

.method resumeIfStarted()V
    .locals 4

    .line 99
    sget-boolean v0, Lcom/android/server/location/GnssBatchingProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "GnssBatchingProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    iget-wide v1, p0, Lcom/android/server/location/GnssBatchingProvider;->mPeriodNanos:J

    iget-boolean v3, p0, Lcom/android/server/location/GnssBatchingProvider;->mWakeOnFifoFull:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->startBatch(JZ)Z

    .line 105
    :cond_1
    return-void
.end method

.method public start(JZ)Z
    .locals 2
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z

    .line 52
    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mEnabled:Z

    if-eqz v0, :cond_2

    .line 55
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid periodNanos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " in batching request, not started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssBatchingProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->startBatch(JZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    .line 61
    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    if-eqz v0, :cond_1

    .line 62
    iput-wide p1, p0, Lcom/android/server/location/GnssBatchingProvider;->mPeriodNanos:J

    .line 63
    iput-boolean p3, p0, Lcom/android/server/location/GnssBatchingProvider;->mWakeOnFifoFull:Z

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    return v0

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stop()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->stopBatch()Z

    move-result v0

    .line 84
    .local v0, "stopped":Z
    if-eqz v0, :cond_0

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    .line 87
    :cond_0
    return v0
.end method

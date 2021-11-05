.class public Lcom/android/server/location/gnss/GnssBatchingProvider;
.super Ljava/lang/Object;
.source "GnssBatchingProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssBatchingProvider"


# instance fields
.field private mEnabled:Z

.field private final mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

.field private mPeriodNanos:J

.field private mStarted:Z

.field private mWakeOnFifoFull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string v0, "GnssBatchingProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssBatchingProvider;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/gnss/GnssBatchingProvider;-><init>(Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;)V

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;)V
    .locals 0
    .param p1, "gnssBatchingProviderNative"    # Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    .line 47
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 29
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->native_get_batch_size()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(JZ)Z
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # Z

    .line 29
    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/GnssBatchingProvider;->native_start_batch(JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 29
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->native_flush_batch()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 29
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->native_stop_batch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 29
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->native_init_batching()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()V
    .locals 0

    .line 29
    invoke-static {}, Lcom/android/server/location/gnss/GnssBatchingProvider;->native_cleanup_batching()V

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

    .line 108
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssBatchingProvider;->stop()Z

    .line 109
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;->cleanupBatching()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mEnabled:Z

    .line 111
    return-void
.end method

.method public enable()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;->initBatching()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mEnabled:Z

    .line 59
    if-nez v0, :cond_0

    .line 60
    const-string v0, "GnssBatchingProvider"

    const-string v1, "Failed to initialize GNSS batching"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 88
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mStarted:Z

    if-nez v0, :cond_0

    .line 89
    const-string v0, "GnssBatchingProvider"

    const-string v1, "Cannot flush since GNSS batching has not started."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;->flushBatch()V

    .line 93
    return-void
.end method

.method public getBatchSize()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;->getBatchSize()I

    move-result v0

    return v0
.end method

.method resumeIfStarted()V
    .locals 4

    .line 115
    sget-boolean v0, Lcom/android/server/location/gnss/GnssBatchingProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "GnssBatchingProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mStarted:Z

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    iget-wide v1, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mPeriodNanos:J

    iget-boolean v3, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mWakeOnFifoFull:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;->startBatch(JZ)Z

    .line 121
    :cond_1
    return-void
.end method

.method public start(JZ)Z
    .locals 2
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z

    .line 68
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mEnabled:Z

    if-eqz v0, :cond_2

    .line 71
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 72
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

    .line 74
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;->startBatch(JZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mStarted:Z

    .line 77
    if-eqz v0, :cond_1

    .line 78
    iput-wide p1, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mPeriodNanos:J

    .line 79
    iput-boolean p3, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mWakeOnFifoFull:Z

    .line 81
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mStarted:Z

    return v0

    .line 69
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stop()Z
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mNative:Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssBatchingProvider$GnssBatchingProviderNative;->stopBatch()Z

    move-result v0

    .line 100
    .local v0, "stopped":Z
    if-eqz v0, :cond_0

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/gnss/GnssBatchingProvider;->mStarted:Z

    .line 103
    :cond_0
    return v0
.end method

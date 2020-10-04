.class public final Lcom/android/server/job/controllers/ConnectivityController;
.super Lcom/android/server/job/controllers/StateController;
.source "ConnectivityController.java"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MSG_DATA_SAVER_TOGGLED:I = 0x0

.field private static final MSG_UID_RULES_CHANGES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Connectivity"


# instance fields
.field private final mAvailableNetworks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnManager:Landroid/net/ConnectivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mNetPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mNetPolicyManager:Landroid/net/NetworkPolicyManager;

.field private final mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mRequestedWhitelistJobs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTrackedJobs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 70
    const-string v1, "JobScheduler.Connectivity"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArraySet;

    .line 526
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$1;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 555
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$2;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 98
    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    .line 100
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 101
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 102
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 106
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 107
    .local v0, "request":Landroid/net/NetworkRequest;
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 109
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 110
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/ConnectivityController;

    .line 66
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/ConnectivityController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/Network;

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobs(ILandroid/net/Network;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/controllers/ConnectivityController;

    .line 66
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static isCongestionDelayed(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .locals 3
    .param p0, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;

    .line 357
    const/16 v0, 0x14

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result v0

    iget v2, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 360
    :cond_1
    return v1
.end method

.method private static isInsane(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .locals 12
    .param p0, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;

    .line 324
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEstimatedNetworkBytes()J

    move-result-wide v0

    .line 325
    .local v0, "estimatedBytes":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 327
    return v3

    .line 332
    :cond_0
    nop

    .line 333
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v2

    .line 334
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v4

    .line 332
    invoke-static {v2, v4}, Landroid/net/NetworkCapabilities;->minBandwidth(II)I

    move-result v2

    int-to-long v4, v2

    .line 335
    .local v4, "slowest":J
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    .line 337
    return v3

    .line 340
    :cond_1
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v0

    const-wide/16 v8, 0x400

    mul-long/2addr v8, v4

    const-wide/16 v10, 0x8

    div-long/2addr v8, v10

    div-long/2addr v6, v8

    .line 342
    .local v6, "estimatedMillis":J
    const-wide/32 v8, 0x927c0

    cmp-long v2, v6, v8

    if-lez v2, :cond_2

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Estimated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " kbps network would take "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms; that\'s insane!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler.Connectivity"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v2, 0x1

    return v2

    .line 348
    :cond_2
    return v3
.end method

.method private static isRelaxedSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .locals 4
    .param p0, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;

    .line 375
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 376
    return v1

    .line 380
    :cond_0
    new-instance v0, Landroid/net/NetworkCapabilities;

    .line 381
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    const/16 v2, 0xb

    .line 382
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 383
    .local v0, "relaxed":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result v2

    iget v3, p3, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 387
    :cond_2
    return v1
.end method

.method static isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .locals 3
    .param p0, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 395
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isInsane(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 401
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isCongestionDelayed(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 404
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isStrictSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    return v2

    .line 407
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/job/controllers/ConnectivityController;->isRelaxedSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 409
    :cond_4
    return v0

    .line 395
    :cond_5
    :goto_0
    return v0
.end method

.method private static isStrictSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .locals 1
    .param p0, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "constants"    # Lcom/android/server/job/JobSchedulerService$Constants;

    .line 367
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 368
    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    .line 367
    return v0
.end method

.method private revokeStandbyExceptionLocked(I)V
    .locals 2
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 303
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoking standby exception for UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Connectivity"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setAppIdleWhitelist(IZ)V

    .line 305
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 306
    return-void
.end method

.method private updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 413
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getActiveNetworkForUid(I)Landroid/net/Network;

    move-result-object v0

    .line 414
    .local v0, "network":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 415
    .local v1, "capabilities":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v2

    return v2
.end method

.method private updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z
    .locals 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 422
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 423
    .local v0, "ignoreBlocked":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    .line 424
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    .line 423
    invoke-virtual {v3, p2, v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 426
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 427
    .local v4, "connected":Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {p1, p2, p3, v5}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v5

    .line 429
    .local v5, "satisfied":Z
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 430
    :goto_2
    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->setConnectivityConstraintSatisfied(Z)Z

    move-result v1

    .line 435
    .local v1, "changed":Z
    iput-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    .line 437
    sget-boolean v2, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connectivity "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    const-string v6, "CHANGED"

    goto :goto_3

    :cond_3
    const-string/jumbo v6, "unchanged"

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": connected="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " satisfied="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "JobScheduler.Connectivity"

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_4
    return v1
.end method

.method private updateTrackedJobs(ILandroid/net/Network;)V
    .locals 5
    .param p1, "filterUid"    # I
    .param p2, "filterNetwork"    # Landroid/net/Network;

    .line 454
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 459
    .local v1, "networkToCapabilities":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/NetworkCapabilities;>;"
    const/4 v2, 0x0

    .line 460
    .local v2, "changed":Z
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 461
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 462
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-direct {p0, v4, p2, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;Landroid/util/SparseArray;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 461
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 466
    :cond_1
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-direct {p0, v3, p2, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;Landroid/util/SparseArray;)Z

    move-result v3

    move v2, v3

    .line 469
    :goto_1
    if-eqz v2, :cond_2

    .line 470
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v3}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 472
    .end local v1    # "networkToCapabilities":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/NetworkCapabilities;>;"
    .end local v2    # "changed":Z
    :cond_2
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;Landroid/util/SparseArray;)Z
    .locals 8
    .param p2, "filterNetwork"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;",
            "Landroid/net/Network;",
            "Landroid/util/SparseArray<",
            "Landroid/net/NetworkCapabilities;",
            ">;)Z"
        }
    .end annotation

    .line 477
    .local p1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .local p3, "networkToCapabilities":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/NetworkCapabilities;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getActiveNetworkForUid(I)Landroid/net/Network;

    move-result-object v1

    .line 482
    .local v1, "network":Landroid/net/Network;
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/net/Network;->netId:I

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 483
    .local v2, "netId":I
    :goto_0
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkCapabilities;

    .line 484
    .local v3, "capabilities":Landroid/net/NetworkCapabilities;
    if-nez v3, :cond_2

    .line 485
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 486
    invoke-virtual {p3, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    :cond_2
    const/4 v4, 0x1

    if-eqz p2, :cond_3

    .line 489
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v0, v4

    .line 491
    .local v0, "networkMatch":Z
    :cond_4
    const/4 v5, 0x0

    .line 492
    .local v5, "changed":Z
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_7

    .line 493
    invoke-virtual {p1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 498
    .local v4, "js":Lcom/android/server/job/controllers/JobStatus;
    if-nez v0, :cond_5

    iget-object v7, v4, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-static {v7, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 499
    :cond_5
    invoke-direct {p0, v4, v1, v3}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 492
    .end local v4    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 502
    .end local v6    # "i":I
    :cond_7
    return v5

    .line 478
    .end local v0    # "networkMatch":Z
    .end local v1    # "network":Landroid/net/Network;
    .end local v2    # "netId":I
    .end local v3    # "capabilities":Landroid/net/NetworkCapabilities;
    .end local v5    # "changed":Z
    :cond_8
    :goto_2
    return v0
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 640
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 641
    .local v2, "token":J
    const-wide v4, 0x10b00000003L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 643
    .local v6, "mToken":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v9, v0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 644
    iget-object v9, v0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 645
    .local v9, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 646
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/controllers/JobStatus;

    .line 647
    .local v11, "js":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v12, p4

    invoke-interface {v12, v11}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 648
    move-wide v11, v4

    goto :goto_3

    .line 650
    :cond_0
    const-wide v13, 0x20b00000002L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 652
    .local v13, "jsToken":J
    const-wide v4, 0x10b00000001L

    invoke-virtual {v11, v1, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 654
    const-wide v4, 0x10500000002L

    .line 655
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v15

    .line 654
    invoke-virtual {v1, v4, v5, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 656
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    .line 657
    .local v4, "rn":Landroid/net/NetworkRequest;
    if-eqz v4, :cond_1

    .line 658
    move-object v5, v11

    const-wide v11, 0x10b00000003L

    .end local v11    # "js":Lcom/android/server/job/controllers/JobStatus;
    .local v5, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4, v1, v11, v12}, Landroid/net/NetworkRequest;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_2

    .line 657
    .end local v5    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v11    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    move-object v5, v11

    const-wide v11, 0x10b00000003L

    .line 662
    .end local v11    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v5    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_2
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 645
    .end local v4    # "rn":Landroid/net/NetworkRequest;
    .end local v5    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v13    # "jsToken":J
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-wide v4, v11

    goto :goto_1

    :cond_2
    move-wide v11, v4

    .line 643
    .end local v9    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v10    # "j":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 666
    .end local v8    # "i":I
    :cond_3
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 667
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 668
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 597
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 598
    const-string v0, "Requested standby exceptions:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 599
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 600
    const-string v1, " "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 602
    const-string v1, " ("

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 604
    const-string v1, " jobs)"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 609
    const-string v0, "Available networks:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 611
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 612
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 614
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_2

    .line 616
    :cond_3
    const-string v0, "No available networks"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 618
    :goto_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 619
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 620
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 621
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 622
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 623
    goto :goto_5

    .line 625
    :cond_4
    const-string v4, "#"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 627
    const-string v4, " from "

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-static {p1, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 629
    const-string v4, ": "

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 631
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 620
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 618
    .end local v1    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "j":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 634
    .end local v0    # "i":I
    :cond_6
    return-void
.end method

.method public evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-eqz v0, :cond_0

    .line 233
    return-void

    .line 236
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    return-void

    .line 241
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->wouldBeReadyWithConnectivityLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    const-string v1, "evaluateStateLocked finds job "

    const-string v2, "JobScheduler.Connectivity"

    if-eqz v0, :cond_3

    .line 242
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " would be ready."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->requestStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_0

    .line 247
    :cond_3
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " would not be ready."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 252
    :goto_0
    return-void
.end method

.method public isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 9
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 159
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 161
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Network;

    .line 162
    .local v3, "network":Landroid/net/Network;
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    .line 164
    .local v4, "capabilities":Landroid/net/NetworkCapabilities;
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-static {p1, v3, v4, v5}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v5

    .line 165
    .local v5, "satisfied":Z
    sget-boolean v6, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 166
    const-string v6, "JobScheduler.Connectivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isNetworkAvailable("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") with network "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " and capabilities "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ". Satisfied="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    if-eqz v5, :cond_1

    .line 170
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 160
    .end local v3    # "network":Landroid/net/Network;
    .end local v4    # "capabilities":Landroid/net/NetworkCapabilities;
    .end local v5    # "satisfied":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0

    return v1

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isStandbyExceptionRequestedLocked(I)Z
    .locals 2
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 207
    .local v0, "jobs":Landroid/util/ArraySet;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 274
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 275
    .local v0, "uid":I
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isStandbyExceptionRequestedLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    return-void

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 279
    .local v1, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const-string v2, "JobScheduler.Connectivity"

    if-nez v1, :cond_1

    .line 280
    const-string/jumbo v3, "maybeRevokeStandbyExceptionLocked found null jobs array even though a standby exception has been requested."

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 285
    :cond_1
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_0

    .line 294
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->revokeStandbyExceptionLocked(I)V

    .line 295
    return-void

    .line 286
    :cond_3
    :goto_0
    sget-boolean v3, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maybeRevokeStandbyExceptionLocked not revoking because there are still "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " jobs left."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_4
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 117
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 118
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v0, :cond_0

    .line 119
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 120
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 125
    .end local v0    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 131
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 133
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 138
    .end local v0    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 312
    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-eqz v0, :cond_2

    .line 145
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler.Connectivity"

    const-string v1, "Revoking all standby exceptions"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 148
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setAppIdleWhitelist(IZ)V

    .line 146
    .end local v1    # "uid":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 152
    :cond_2
    return-void
.end method

.method public onNetworkActive()V
    .locals 8

    .line 510
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 512
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 513
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_2

    .line 514
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 515
    .local v4, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 516
    sget-boolean v5, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 517
    const-string v5, "JobScheduler.Connectivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Running "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " due to network activity."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v5, v4}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 513
    .end local v4    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 511
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 523
    .end local v1    # "i":I
    :cond_3
    monitor-exit v0

    .line 524
    return-void

    .line 523
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reevaluateStateLocked(I)V
    .locals 3
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_HEARTBEATS:Z

    if-eqz v0, :cond_0

    .line 258
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 262
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v0, :cond_1

    .line 263
    return-void

    .line 265
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 266
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, v2}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 265
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 268
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method requestStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 6
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 184
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 186
    .local v0, "uid":I
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isStandbyExceptionRequestedLocked(I)Z

    move-result v1

    .line 187
    .local v1, "isExceptionRequested":Z
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 188
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v2, :cond_0

    .line 189
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v3

    .line 190
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "JobScheduler.Connectivity"

    if-eqz v3, :cond_3

    if-eqz v1, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    sget-boolean v3, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting standby exception for UID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setAppIdleWhitelist(IZ)V

    .line 200
    return-void

    .line 193
    :cond_3
    :goto_0
    sget-boolean v3, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 194
    const-string/jumbo v3, "requestStandbyExceptionLocked found exception already requested."

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_4
    return-void
.end method

.method wouldBeReadyWithConnectivityLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 214
    .local v0, "networkAvailable":Z
    sget-boolean v1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wouldBeReadyWithConnectivityLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " networkAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.Connectivity"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    if-eqz v0, :cond_1

    const/high16 v1, 0x10000000

    invoke-virtual {p0, p1, v1}, Lcom/android/server/job/controllers/ConnectivityController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

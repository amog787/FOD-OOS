.class public Lcom/android/server/attention/AttentionManagerService;
.super Lcom/android/server/SystemService;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/attention/AttentionManagerService$BinderService;,
        Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;,
        Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;,
        Lcom/android/server/attention/AttentionManagerService$AttentionHandler;,
        Lcom/android/server/attention/AttentionManagerService$UserState;,
        Lcom/android/server/attention/AttentionManagerService$AttentionCheck;,
        Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;,
        Lcom/android/server/attention/AttentionManagerService$LocalService;
    }
.end annotation


# static fields
.field private static final CONNECTION_TTL_MILLIS:J = 0xea60L

.field private static final DEBUG:Z = false

.field private static final DEFAULT_SERVICE_ENABLED:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AttentionManagerService"

.field private static final SERVICE_ENABLED:Ljava/lang/String; = "service_enabled"

.field private static final STALE_AFTER_MILLIS:J = 0x1388L

.field private static sTestAttentionServicePackage:Ljava/lang/String;


# instance fields
.field private mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

.field mComponentName:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/attention/AttentionManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/attention/AttentionManagerService;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Ljava/lang/Object;Lcom/android/server/attention/AttentionManagerService$AttentionHandler;)V

    .line 105
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    invoke-direct {v0, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Ljava/lang/Object;Lcom/android/server/attention/AttentionManagerService$AttentionHandler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerManager"    # Landroid/os/PowerManager;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "handler"    # Lcom/android/server/attention/AttentionManagerService$AttentionHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 112
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 114
    iput-object p3, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 115
    iput-object p4, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 116
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService;

    .line 76
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/attention/AttentionManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService;

    .line 76
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->isAttentionServiceSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/attention/AttentionManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService;

    .line 76
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService;
    .param p1, "x1"    # Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->cancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$2202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 76
    sput-object p0, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService;

    .line 76
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 76
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/attention/AttentionManagerService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/attention/AttentionManagerService;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method private cancelAfterTimeoutLocked(J)V
    .locals 2
    .param p1, "timeout"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 297
    return-void
.end method

.method private cancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .locals 3
    .param p1, "userState"    # Lcom/android/server/attention/AttentionManagerService$UserState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    if-nez p1, :cond_0

    .line 645
    :try_start_0
    monitor-exit v0

    return-void

    .line 648
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->cancel(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 650
    iget-object v1, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    if-nez v1, :cond_1

    .line 651
    monitor-exit v0

    return-void

    .line 654
    :cond_1
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    new-instance v2, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$2UthIuCIdjigpPv1U5Dxw_fo4nY;

    invoke-direct {v2, p0, p1}, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$2UthIuCIdjigpPv1U5Dxw_fo4nY;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$UserState;)V

    invoke-virtual {v1, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->post(Ljava/lang/Runnable;)Z

    .line 660
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$2000(Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->cleanupService()V

    .line 661
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$2100(Lcom/android/server/attention/AttentionManagerService$UserState;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 662
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$AttentionCheck;
    .locals 2
    .param p1, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
    .param p2, "userState"    # Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 230
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/attention/AttentionManagerService$1;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$UserState;Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    .line 263
    .local v0, "iAttentionCallback":Landroid/service/attention/IAttentionCallback;
    new-instance v1, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-direct {v1, p1, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;-><init>(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Landroid/service/attention/IAttentionCallback;)V

    return-object v1
.end method

.method private dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 377
    const-string v0, "Attention Manager Service (dumpsys attention) state:\n"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttentionServicePackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 380
    const-string v0, "Resolved component:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 390
    .local v1, "size":I
    const-string v2, "Number user states: "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 392
    if-lez v1, :cond_2

    .line 393
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 394
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 395
    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 396
    .local v3, "userState":Lcom/android/server/attention/AttentionManagerService$UserState;
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 397
    const-string v4, ":"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 398
    invoke-static {v3, p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$1200(Lcom/android/server/attention/AttentionManagerService$UserState;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 399
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 394
    .end local v3    # "userState":Lcom/android/server/attention/AttentionManagerService$UserState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 403
    .end local v1    # "size":I
    :cond_2
    monitor-exit v0

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAttentionServiceSupported()Z
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isServiceAvailable()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isServiceConfigured(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 139
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private peekUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/attention/AttentionManagerService$UserState;

    return-object v0
.end method

.method private static resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .line 339
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "serviceConfigPackage":Ljava/lang/String;
    const/high16 v1, 0x100000

    .line 343
    .local v1, "flags":I
    sget-object v2, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 344
    sget-object v2, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    .line 345
    .local v2, "resolvedPackage":Ljava/lang/String;
    const/16 v1, 0x80

    goto :goto_0

    .line 346
    .end local v2    # "resolvedPackage":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 347
    move-object v2, v0

    .line 352
    .restart local v2    # "resolvedPackage":Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.service.attention.AttentionService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 355
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v4, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 356
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const-string v10, "AttentionManagerService"

    if-eqz v6, :cond_3

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_1

    goto :goto_1

    .line 363
    :cond_1
    iget-object v5, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 364
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 365
    .local v11, "permission":Ljava/lang/String;
    const-string v12, "android.permission.BIND_ATTENTION_SERVICE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 366
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    return-object v3

    .line 368
    :cond_2
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    .line 370
    invoke-virtual {v5}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    aput-object v14, v13, v8

    aput-object v12, v13, v7

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    aput-object v7, v13, v9

    .line 368
    const-string v7, "Service %s should require %s permission. Found %s permission"

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-object v3

    .line 357
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v11    # "permission":Ljava/lang/String;
    :cond_3
    :goto_1
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v8

    aput-object v0, v9, v7

    const-string v5, "Service %s not found in package %s"

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-object v3

    .line 349
    .end local v2    # "resolvedPackage":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    return-object v3
.end method


# virtual methods
.method cancel(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .locals 3
    .param p1, "userState"    # Lcom/android/server/attention/AttentionManagerService$UserState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 616
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-nez v0, :cond_0

    goto :goto_1

    .line 620
    :cond_0
    iget-object v0, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$800(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    return-void

    .line 627
    :cond_1
    iget-object v0, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    if-nez v0, :cond_2

    .line 628
    iget-object v0, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-virtual {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->cancelInternal()V

    .line 629
    return-void

    .line 633
    :cond_2
    :try_start_0
    iget-object v0, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    iget-object v1, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 634
    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$900(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;

    move-result-object v1

    .line 633
    invoke-interface {v0, v1}, Landroid/service/attention/IAttentionService;->cancelAttentionCheck(Landroid/service/attention/IAttentionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AttentionManagerService"

    const-string v2, "Unable to cancel attention check"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v1, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->cancelInternal()V

    .line 639
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 617
    :cond_3
    :goto_1
    return-void
.end method

.method cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V
    .locals 4
    .param p1, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->peekCurrentUserStateLocked()Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v1

    .line 271
    .local v1, "userState":Lcom/android/server/attention/AttentionManagerService$UserState;
    if-nez v1, :cond_0

    .line 272
    monitor-exit v0

    return-void

    .line 274
    :cond_0
    iget-object v2, v1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$1100(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    const-string v2, "AttentionManagerService"

    const-string v3, "Cannot cancel a non-current request"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    monitor-exit v0

    return-void

    .line 278
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/attention/AttentionManagerService;->cancel(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 279
    .end local v1    # "userState":Lcom/android/server/attention/AttentionManagerService$UserState;
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "callbackInternal"    # Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 174
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->isAttentionServiceSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 177
    const-string v0, "AttentionManagerService"

    const-string v2, "Trying to call checkAttention() on an unsupported device."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v1

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    return v1

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 189
    .local v2, "now":J
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->freeIfInactiveLocked()V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->getOrCreateCurrentUserStateLocked()Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v4

    .line 193
    .local v4, "userState":Lcom/android/server/attention/AttentionManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$300(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 196
    iget-object v5, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionCheckCache:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 197
    .local v5, "cache":Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-static {v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->access$400(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    add-long/2addr v7, v9

    cmp-long v7, v2, v7

    if-gez v7, :cond_2

    .line 198
    invoke-static {v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->access$500(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)I

    move-result v1

    invoke-static {v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->access$600(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide v7

    invoke-virtual {p3, v1, v7, v8}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onSuccess(IJ)V

    .line 199
    monitor-exit v0

    return v6

    .line 203
    :cond_2
    iget-object v7, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-eqz v7, :cond_4

    .line 204
    iget-object v7, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v7}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$700(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 205
    invoke-static {v7}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$800(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 206
    :cond_3
    monitor-exit v0

    return v1

    .line 210
    :cond_4
    invoke-direct {p0, p3, v4}, Lcom/android/server/attention/AttentionManagerService;->createAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 212
    iget-object v7, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_5

    .line 215
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/attention/AttentionManagerService;->cancelAfterTimeoutLocked(J)V

    .line 216
    iget-object v7, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    iget-object v8, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 217
    invoke-static {v8}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$900(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;

    move-result-object v8

    .line 216
    invoke-interface {v7, v8}, Landroid/service/attention/IAttentionService;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    .line 218
    iget-object v7, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v7, v6}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$702(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    goto :goto_0

    .line 219
    :catch_0
    move-exception v6

    .line 220
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "AttentionManagerService"

    const-string v8, "Cannot call into the AttentionService"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    monitor-exit v0

    return v1

    .line 224
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_0
    monitor-exit v0

    return v6

    .line 225
    .end local v2    # "now":J
    .end local v4    # "userState":Lcom/android/server/attention/AttentionManagerService$UserState;
    .end local v5    # "cache":Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected freeIfInactiveLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->removeMessages(I)V

    .line 289
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 291
    return-void
.end method

.method protected getOrCreateCurrentUserStateLocked()Lcom/android/server/attention/AttentionManagerService$UserState;
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 303
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/attention/AttentionManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method protected getOrCreateUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;
    .locals 8
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 310
    .local v0, "result":Lcom/android/server/attention/AttentionManagerService$UserState;
    if-nez v0, :cond_0

    .line 311
    new-instance v7, Lcom/android/server/attention/AttentionManagerService$UserState;

    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    iget-object v6, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    move-object v1, v7

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/attention/AttentionManagerService$UserState;-><init>(ILandroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;Landroid/content/ComponentName;)V

    move-object v0, v7

    .line 312
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    :cond_0
    return-object v0
.end method

.method protected isServiceEnabled()Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 159
    const-string v0, "attention_manager_service"

    const-string/jumbo v1, "service_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$cancelAndUnbindLocked$0$AttentionManagerService(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .locals 2
    .param p1, "userState"    # Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 654
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$2000(Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .line 120
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 128
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/attention/AttentionManagerService$BinderService;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V

    const-string v2, "attention"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/attention/AttentionManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 129
    const-class v0, Landroid/attention/AttentionManagerInternal;

    new-instance v2, Lcom/android/server/attention/AttentionManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/attention/AttentionManagerService$LocalService;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/attention/AttentionManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->peekUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/attention/AttentionManagerService;->cancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 135
    return-void
.end method

.method protected peekCurrentUserStateLocked()Lcom/android/server/attention/AttentionManagerService$UserState;
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 321
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/attention/AttentionManagerService;->peekUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

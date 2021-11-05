.class final Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
.super Ljava/lang/Object;
.source "RemoteSystemCaptionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;
    }
.end annotation


# static fields
.field private static final MSG_BIND:I = 0x1

.field private static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.systemcaptions.SystemCaptionsManagerService"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBinding:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/lang/Object;

.field private mService:Landroid/os/IBinder;

.field private final mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

.field private final mUserId:I

.field private final mVerbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "verbose"    # Z

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;-><init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    .line 66
    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 68
    iput p3, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mUserId:I

    .line 69
    iput-boolean p4, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.systemcaptions.SystemCaptionsManagerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mIntent:Landroid/content/Intent;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 35
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 35
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 35
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 35
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 35
    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    return-object p1
.end method

.method private ensureUnboundLocked()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    if-nez v0, :cond_0

    .line 148
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    .line 154
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "ensureUnbound(): unbinding"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 158
    return-void
.end method

.method private handleEnsureBound()V
    .locals 8

    .line 123
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v1, :cond_1

    .line 129
    sget-object v1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v2, "handleEnsureBound(): binding"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 133
    const v1, 0x4001001

    .line 135
    .local v1, "flags":I
    iget-object v2, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    iget-object v6, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mUserId:I

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v2

    .line 137
    .local v2, "willBind":Z
    if-nez v2, :cond_2

    .line 138
    sget-object v3, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with flags "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 140
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    .line 142
    .end local v1    # "flags":I
    .end local v2    # "willBind":Z
    :cond_2
    monitor-exit v0

    .line 143
    return-void

    .line 125
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$P9HS4I_OwuvbenRQbLezxI-qmx8(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->handleEnsureBound()V

    return-void
.end method

.method private scheduleBind()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "scheduleBind(): already scheduled"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/systemcaptions/-$$Lambda$RemoteSystemCaptionsManagerService$P9HS4I_OwuvbenRQbLezxI-qmx8;->INSTANCE:Lcom/android/server/systemcaptions/-$$Lambda$RemoteSystemCaptionsManagerService$P9HS4I_OwuvbenRQbLezxI-qmx8;

    .line 118
    invoke-static {v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 119
    invoke-virtual {v2, v1}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/systemcaptions/-$$Lambda$FWiGrgnndUWGwX-f3Sn_9kgFkfk;->INSTANCE:Lcom/android/server/systemcaptions/-$$Lambda$FWiGrgnndUWGwX-f3Sn_9kgFkfk;

    .line 86
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    return-void
.end method

.method handleDestroy()V
    .locals 3

    .line 90
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "handleDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    if-eqz v1, :cond_2

    .line 96
    iget-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v1, :cond_1

    .line 97
    sget-object v1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v2, "handleDestroy(): Already destroyed"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    monitor-exit v0

    return-void

    .line 101
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    .line 102
    invoke-direct {p0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->ensureUnboundLocked()V

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method initialize()V
    .locals 2

    .line 75
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->scheduleBind()V

    .line 79
    return-void
.end method

.method isDestroyed()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

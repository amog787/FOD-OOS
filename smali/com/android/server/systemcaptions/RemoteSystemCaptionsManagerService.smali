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
.field private static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.systemcaptions.SystemCaptionsManagerService"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBinding:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private final mLock:Ljava/lang/Object;

.field private mService:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

.field private final mUserId:I

.field private final mVerbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;-><init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    .line 62
    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 64
    iput p3, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mUserId:I

    .line 65
    iput-boolean p4, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.systemcaptions.SystemCaptionsManagerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mIntent:Landroid/content/Intent;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 33
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 33
    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    return-object p1
.end method

.method private ensureBound()V
    .locals 8

    .line 101
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v1, :cond_1

    .line 107
    sget-object v1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v2, "ensureBound(): binding"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 111
    const v1, 0x4000001

    .line 112
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

    .line 114
    .local v2, "willBind":Z
    if-nez v2, :cond_2

    .line 115
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

    .line 116
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 117
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    .line 119
    .end local v1    # "flags":I
    .end local v2    # "willBind":Z
    :cond_2
    monitor-exit v0

    .line 120
    return-void

    .line 103
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private ensureUnboundLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    if-nez v0, :cond_0

    .line 125
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    .line 131
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "ensureUnbound(): unbinding"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 135
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 3

    .line 78
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    if-eqz v1, :cond_2

    .line 84
    iget-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v1, :cond_1

    .line 85
    sget-object v1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v2, "destroy(): Already destroyed"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    monitor-exit v0

    return-void

    .line 89
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    .line 90
    invoke-direct {p0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->ensureUnboundLocked()V

    .line 91
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method initialize()V
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->TAG:Ljava/lang/String;

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->ensureBound()V

    .line 75
    return-void
.end method

.method isDestroyed()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

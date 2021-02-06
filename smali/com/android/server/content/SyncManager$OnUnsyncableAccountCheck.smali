.class Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnUnsyncableAccountCheck"
.end annotation


# static fields
.field static final SERVICE_BOUND_TIME_MILLIS:J = 0x1388L


# instance fields
.field private final mOnReadyCallback:Lcom/android/server/content/SyncManager$OnReadyCallback;

.field private final mSyncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Lcom/android/server/content/SyncManager$OnReadyCallback;)V
    .locals 0
    .param p2, "onReadyCallback"    # Lcom/android/server/content/SyncManager$OnReadyCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<",
            "Landroid/content/SyncAdapterType;",
            ">;",
            "Lcom/android/server/content/SyncManager$OnReadyCallback;",
            ")V"
        }
    .end annotation

    .line 2769
    .local p1, "syncAdapterInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/content/SyncAdapterType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2770
    iput-object p1, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mSyncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 2771
    iput-object p2, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mOnReadyCallback:Lcom/android/server/content/SyncManager$OnReadyCallback;

    .line 2772
    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    .line 2760
    invoke-direct {p0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onReady()V

    return-void
.end method

.method private onReady()V
    .locals 3

    .line 2775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2777
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mOnReadyCallback:Lcom/android/server/content/SyncManager$OnReadyCallback;

    invoke-interface {v2}, Lcom/android/server/content/SyncManager$OnReadyCallback;->onReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2779
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2780
    nop

    .line 2781
    return-void

    .line 2779
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2780
    throw v2
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2785
    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    move-result-object v0

    .line 2788
    .local v0, "adapter":Landroid/content/ISyncAdapter;
    :try_start_0
    new-instance v1, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;-><init>(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    invoke-interface {v0, v1}, Landroid/content/ISyncAdapter;->onUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2803
    goto :goto_0

    .line 2796
    :catch_0
    move-exception v1

    .line 2797
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not call onUnsyncableAccountDone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->mSyncAdapterInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SyncManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2802
    invoke-direct {p0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onReady()V

    .line 2804
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2809
    return-void
.end method

.class public final Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
.super Ljava/lang/Object;
.source "WindowMagnificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowMagnificationMgr"


# instance fields
.field private mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

.field mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 32
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;)Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .param p1, "x1"    # Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    .line 32
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    return-object p1
.end method


# virtual methods
.method public setConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V
    .locals 5
    .param p1, "connection"    # Landroid/view/accessibility/IWindowMagnificationConnection;

    .line 45
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z

    .line 49
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;->access$002(Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;Z)Z

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 53
    iput-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 55
    :cond_1
    if-eqz p1, :cond_2

    .line 56
    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    invoke-direct {v1, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;-><init>(Landroid/view/accessibility/IWindowMagnificationConnection;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 61
    :try_start_1
    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/magnification/WindowMagnificationManager$1;)V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    .line 62
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 63
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationManager$ConnectionCallback;

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "WindowMagnificationMgr"

    const-string/jumbo v4, "setConnection failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    iput-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/WindowMagnificationConnectionWrapper;

    .line 69
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    monitor-exit v0

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

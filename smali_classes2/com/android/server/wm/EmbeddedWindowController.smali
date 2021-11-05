.class Lcom/android/server/wm/EmbeddedWindowController;
.super Ljava/lang/Object;
.source "EmbeddedWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mGlobalLock:Ljava/lang/Object;

.field private mWindows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 1
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 49
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private updateProcessController(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V
    .locals 3
    .param p1, "window"    # Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 79
    iget-object v0, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iget v2, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 84
    .local v0, "processController":Lcom/android/server/wm/WindowProcessController;
    if-nez v0, :cond_1

    .line 85
    const-string v1, "WindowManager"

    const-string v2, "Could not find the embedding process."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->addHostActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 89
    :goto_0
    return-void
.end method


# virtual methods
.method add(Landroid/os/IBinder;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V
    .locals 3
    .param p1, "inputToken"    # Landroid/os/IBinder;
    .param p2, "window"    # Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-direct {p0, p2}, Lcom/android/server/wm/EmbeddedWindowController;->updateProcessController(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V

    .line 63
    iget-object v0, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$EmbeddedWindowController$Q0HHIdTKm8MX4DsCYgzZ2UOUXPQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$EmbeddedWindowController$Q0HHIdTKm8MX4DsCYgzZ2UOUXPQ;-><init>(Lcom/android/server/wm/EmbeddedWindowController;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method get(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .locals 1
    .param p1, "inputToken"    # Landroid/os/IBinder;

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object v0
.end method

.method getHostWindow(Landroid/os/IBinder;)Lcom/android/server/wm/WindowState;
    .locals 2
    .param p1, "inputToken"    # Landroid/os/IBinder;

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 93
    .local v0, "embeddedWindow":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public synthetic lambda$add$0$EmbeddedWindowController(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "inputToken"    # Landroid/os/IBinder;

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    monitor-exit v0

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onActivityRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 120
    .local v1, "window":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, p1, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iget v4, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 122
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 123
    .local v2, "processController":Lcom/android/server/wm/WindowProcessController;
    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowProcessController;->removeHostActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 118
    .end local v1    # "window":Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .end local v2    # "processController":Lcom/android/server/wm/WindowProcessController;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 128
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method onWindowRemoved(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "host"    # Lcom/android/server/wm/WindowState;

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    iget-object v1, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-ne v1, p1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    .line 106
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 111
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method remove(Landroid/view/IWindow;)V
    .locals 3
    .param p1, "client"    # Landroid/view/IWindow;

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    iget-object v1, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    .line 100
    return-void

    .line 97
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

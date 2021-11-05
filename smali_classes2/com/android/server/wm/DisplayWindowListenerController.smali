.class Lcom/android/server/wm/DisplayWindowListenerController;
.super Ljava/lang/Object;
.source "DisplayWindowListenerController.java"


# instance fields
.field mDisplayListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IDisplayWindowListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    .line 35
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 36
    return-void
.end method


# virtual methods
.method dispatchDisplayAdded(Lcom/android/server/wm/DisplayContent;)V
    .locals 4
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 57
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v2, v3}, Landroid/view/IDisplayWindowListener;->onDisplayAdded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_1

    .line 60
    :catch_0
    move-exception v2

    .line 57
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 64
    return-void
.end method

.method dispatchDisplayChanged(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "isInHierarchy":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 69
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 75
    return-void

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 78
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 80
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IDisplayWindowListener;

    .line 81
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    .line 80
    invoke-interface {v3, v4, p2}, Landroid/view/IDisplayWindowListener;->onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_2

    .line 82
    :catch_0
    move-exception v3

    .line 78
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 86
    return-void
.end method

.method dispatchDisplayRemoved(Lcom/android/server/wm/DisplayContent;)V
    .locals 4
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 90
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v2, v3}, Landroid/view/IDisplayWindowListener;->onDisplayRemoved(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_1

    .line 93
    :catch_0
    move-exception v2

    .line 90
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 97
    return-void
.end method

.method dispatchFixedRotationFinished(Lcom/android/server/wm/DisplayContent;)V
    .locals 4
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 113
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v2, v3}, Landroid/view/IDisplayWindowListener;->onFixedRotationFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_1

    .line 116
    :catch_0
    move-exception v2

    .line 113
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 120
    return-void
.end method

.method dispatchFixedRotationStarted(Lcom/android/server/wm/DisplayContent;I)V
    .locals 4
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "newRotation"    # I

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 101
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v2, v3, p2}, Landroid/view/IDisplayWindowListener;->onFixedRotationStarted(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_1

    .line 105
    :catch_0
    move-exception v2

    .line 101
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 109
    return-void
.end method

.method registerListener(Landroid/view/IDisplayWindowListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/IDisplayWindowListener;

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 40
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 45
    .local v2, "d":Lcom/android/server/wm/DisplayContent;
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {p1, v3}, Landroid/view/IDisplayWindowListener;->onDisplayAdded(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .end local v2    # "d":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 47
    :catch_0
    move-exception v1

    :goto_1
    nop

    .line 48
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method unregisterListener(Landroid/view/IDisplayWindowListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/IDisplayWindowListener;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 53
    return-void
.end method

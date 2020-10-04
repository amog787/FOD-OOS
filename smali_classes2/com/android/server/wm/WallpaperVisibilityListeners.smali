.class Lcom/android/server/wm/WallpaperVisibilityListeners;
.super Ljava/lang/Object;
.source "WallpaperVisibilityListeners.java"


# instance fields
.field private final mDisplayListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IWallpaperVisibilityListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 57
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 58
    .local v0, "displayId":I
    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v1

    .line 59
    .local v1, "visible":Z
    iget-object v2, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    .line 60
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 63
    .local v2, "displayListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/IWallpaperVisibilityListener;>;"
    if-nez v2, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 68
    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_1

    .line 69
    add-int/lit8 v3, v3, -0x1

    .line 70
    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/view/IWallpaperVisibilityListener;

    .line 72
    .local v4, "listener":Landroid/view/IWallpaperVisibilityListener;
    :try_start_0
    invoke-interface {v4, v1, v0}, Landroid/view/IWallpaperVisibilityListener;->onWallpaperVisibilityChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_1

    .line 73
    :catch_0
    move-exception v5

    .line 76
    .end local v4    # "listener":Landroid/view/IWallpaperVisibilityListener;
    :goto_1
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 78
    return-void
.end method

.method registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .locals 2
    .param p1, "listener"    # Landroid/view/IWallpaperVisibilityListener;
    .param p2, "displayId"    # I

    .line 37
    iget-object v0, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    .line 38
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 39
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/IWallpaperVisibilityListener;>;"
    if-nez v0, :cond_0

    .line 40
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v0, v1

    .line 41
    iget-object v1, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 43
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 44
    return-void
.end method

.method unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/view/IWallpaperVisibilityListener;
    .param p2, "displayId"    # I

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    .line 49
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 50
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/IWallpaperVisibilityListener;>;"
    if-nez v0, :cond_0

    .line 51
    return-void

    .line 53
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 54
    return-void
.end method

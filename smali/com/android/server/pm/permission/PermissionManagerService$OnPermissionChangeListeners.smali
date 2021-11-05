.class final Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;
.super Landroid/os/Handler;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnPermissionChangeListeners"
.end annotation


# static fields
.field private static final MSG_ON_PERMISSIONS_CHANGED:I = 0x1


# instance fields
.field private final mPermissionListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/permission/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 5347
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5343
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 5348
    return-void
.end method

.method private handleOnPermissionsChanged(I)V
    .locals 6
    .param p1, "uid"    # I

    .line 5376
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 5378
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5379
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 5380
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/permission/IOnPermissionsChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5382
    .local v2, "callback":Landroid/permission/IOnPermissionsChangeListener;
    :try_start_1
    invoke-interface {v2, p1}, Landroid/permission/IOnPermissionsChangeListener;->onPermissionsChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5385
    goto :goto_1

    .line 5383
    :catch_0
    move-exception v3

    .line 5384
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "PackageManager"

    const-string v5, "Permission listener is dead"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5378
    .end local v2    # "callback":Landroid/permission/IOnPermissionsChangeListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5388
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5389
    throw v1

    .line 5388
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 5389
    nop

    .line 5390
    return-void
.end method


# virtual methods
.method public addListenerLocked(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 5361
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5363
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 5352
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 5354
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5355
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->handleOnPermissionsChanged(I)V

    .line 5358
    .end local v0    # "uid":I
    :goto_0
    return-void
.end method

.method public onPermissionsChanged(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 5370
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 5371
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5373
    :cond_0
    return-void
.end method

.method public removeListenerLocked(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 5366
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 5367
    return-void
.end method

.class final Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
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
            "Landroid/content/pm/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 25058
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25054
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 25059
    return-void
.end method

.method private handleOnPermissionsChanged(I)V
    .locals 6
    .param p1, "uid"    # I

    .line 25087
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 25089
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 25090
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 25091
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IOnPermissionsChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25093
    .local v2, "callback":Landroid/content/pm/IOnPermissionsChangeListener;
    :try_start_1
    invoke-interface {v2, p1}, Landroid/content/pm/IOnPermissionsChangeListener;->onPermissionsChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25096
    goto :goto_1

    .line 25094
    :catch_0
    move-exception v3

    .line 25095
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "PackageManager"

    const-string v5, "Permission listener is dead"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25089
    .end local v2    # "callback":Landroid/content/pm/IOnPermissionsChangeListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25099
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 25100
    nop

    .line 25101
    return-void
.end method


# virtual methods
.method public addListenerLocked(Landroid/content/pm/IOnPermissionsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/pm/IOnPermissionsChangeListener;

    .line 25072
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 25074
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 25063
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 25065
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 25066
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->handleOnPermissionsChanged(I)V

    .line 25069
    .end local v0    # "uid":I
    :goto_0
    return-void
.end method

.method public onPermissionsChanged(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 25081
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 25082
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 25084
    :cond_0
    return-void
.end method

.method public removeListenerLocked(Landroid/content/pm/IOnPermissionsChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/pm/IOnPermissionsChangeListener;

    .line 25077
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 25078
    return-void
.end method

.class public Lcom/oneplus/core/oimc/OIMCRemoteFunc;
.super Ljava/lang/Object;
.source "OIMCRemoteFunc.java"

# interfaces
.implements Lcom/oneplus/core/oimc/IOPFunction;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/core/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V
    .locals 0
    .param p1, "action"    # Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oneplus/core/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    .line 27
    return-void
.end method


# virtual methods
.method public bindRemoteAction(Lcom/oneplus/core/oimc/IOIMCRemoteAction;)Z
    .locals 4
    .param p1, "action"    # Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 84
    monitor-exit p0

    return v1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    invoke-interface {v0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 90
    .local v0, "binder":Landroid/os/IBinder;
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 91
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oneplus/core/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    .line 94
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/core/oimc/IOIMCRemoteAction;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .restart local v0    # "binder":Landroid/os/IBinder;
    :try_start_1
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    nop

    .line 102
    :try_start_2
    iput-object p1, p0, Lcom/oneplus/core/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    .line 103
    .end local v0    # "binder":Landroid/os/IBinder;
    monitor-exit p0

    .line 104
    return v1

    .line 98
    .restart local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit p0

    return v2

    .line 103
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public binderDied()V
    .locals 3

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    .line 124
    .local v0, "action":Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/core/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    .line 128
    .end local v0    # "action":Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    :cond_0
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public config(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .local v0, "action":Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    if-eqz v0, :cond_0

    .line 71
    :try_start_1
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/core/oimc/IOIMCRemoteAction;->onConfig(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    :try_start_2
    monitor-exit p0

    return v2

    .line 76
    .end local v0    # "action":Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 78
    const/4 v0, 0x0

    return v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .local v0, "action":Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    if-eqz v0, :cond_0

    .line 39
    :try_start_1
    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/core/oimc/IOIMCRemoteAction;->onStart([Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    :try_start_2
    monitor-exit p0

    return v2

    .line 44
    .end local v0    # "action":Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 46
    const/4 v0, 0x0

    return v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .local v0, "action":Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    if-eqz v0, :cond_0

    .line 55
    :try_start_1
    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oneplus/core/oimc/IOIMCRemoteAction;->onStop([Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    :try_start_2
    monitor-exit p0

    return v2

    .line 60
    .end local v0    # "action":Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 62
    const/4 v0, 0x0

    return v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public unBindRemoteAction()Z
    .locals 3

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/core/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    .line 110
    .local v0, "action":Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 112
    .local v1, "binder":Landroid/os/IBinder;
    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 113
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/core/oimc/OIMCRemoteFunc;->mAction:Lcom/oneplus/core/oimc/IOIMCRemoteAction;

    .line 115
    .end local v0    # "action":Lcom/oneplus/core/oimc/IOIMCRemoteAction;
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_0
    monitor-exit p0

    .line 116
    const/4 v0, 0x1

    return v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

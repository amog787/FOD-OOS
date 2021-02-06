.class final Lcom/android/server/tv/TvRemoteServiceInput;
.super Landroid/media/tv/ITvRemoteServiceInput$Stub;
.source "TvRemoteServiceInput.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_KEYS:Z = false

.field private static final TAG:Ljava/lang/String; = "TvRemoteServiceInput"


# instance fields
.field private final mBridgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/UinputBridge;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mProvider:Landroid/media/tv/ITvRemoteProvider;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/media/tv/ITvRemoteProvider;)V
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "provider"    # Landroid/media/tv/ITvRemoteProvider;

    .line 39
    invoke-direct {p0}, Landroid/media/tv/ITvRemoteServiceInput$Stub;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    .line 42
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mProvider:Landroid/media/tv/ITvRemoteProvider;

    .line 43
    return-void
.end method


# virtual methods
.method public clearInputBridge(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 159
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/UinputBridge;

    .line 161
    .local v1, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-nez v1, :cond_0

    .line 162
    const-string v2, "TvRemoteServiceInput"

    const-string v3, "Input bridge not found for token: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    monitor-exit v0

    return-void

    .line 166
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    .local v2, "idToken":J
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/android/server/tv/UinputBridge;->clear(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    nop

    .line 172
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    monitor-exit v0

    .line 173
    return-void

    .line 170
    .restart local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .restart local v2    # "idToken":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    nop

    .end local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v4

    .line 172
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    .restart local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public closeInputBridge(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 137
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/UinputBridge;

    .line 139
    .local v1, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-nez v1, :cond_0

    .line 140
    const-string v2, "TvRemoteServiceInput"

    const-string v3, "Input bridge not found for token: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    monitor-exit v0

    return-void

    .line 144
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    .local v2, "idToken":J
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/android/server/tv/UinputBridge;->close(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    nop

    .line 150
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    monitor-exit v0

    .line 151
    return-void

    .line 148
    .restart local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .restart local v2    # "idToken":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    nop

    .end local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v4

    .line 150
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    .restart local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public openGamepadBridge(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    .local v1, "idToken":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/android/server/tv/UinputBridge;->openGamepad(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/tv/UinputBridge;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v3, Lcom/android/server/tv/TvRemoteServiceInput$2;

    invoke-direct {v3, p0, p1}, Lcom/android/server/tv/TvRemoteServiceInput$2;-><init>(Lcom/android/server/tv/TvRemoteServiceInput;Landroid/os/IBinder;)V

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    nop

    .line 122
    .end local v1    # "idToken":J
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    :try_start_3
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvRemoteProvider;->onInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 128
    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TvRemoteServiceInput"

    const-string v2, "Failed remote call to onInputBridgeConnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 119
    .restart local v1    # "idToken":J
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 114
    :catch_1
    move-exception v3

    .line 115
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "TvRemoteServiceInput"

    const-string v5, "Token is already dead"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvRemoteServiceInput;->closeInputBridge(Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    :try_start_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 117
    return-void

    .line 111
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    .line 112
    .local v3, "e":Ljava/io/IOException;
    :try_start_6
    const-string v4, "TvRemoteServiceInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot create device for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    :try_start_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 113
    return-void

    .line 119
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    nop

    .end local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "name":Ljava/lang/String;
    throw v3

    .line 122
    .end local v1    # "idToken":J
    .restart local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method

.method public openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "maxPointers"    # I

    .line 54
    move-object v1, p0

    move-object v8, p1

    iget-object v9, v1, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 55
    :try_start_0
    iget-object v0, v1, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v10, v2

    .line 62
    .local v10, "idToken":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    new-instance v12, Lcom/android/server/tv/UinputBridge;

    move-object v2, v12

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/tv/UinputBridge;-><init>(Landroid/os/IBinder;Ljava/lang/String;III)V

    invoke-interface {v0, p1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/android/server/tv/TvRemoteServiceInput$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/tv/TvRemoteServiceInput$1;-><init>(Lcom/android/server/tv/TvRemoteServiceInput;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    nop

    .line 81
    .end local v10    # "idToken":J
    :goto_0
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 84
    :try_start_3
    iget-object v0, v1, Lcom/android/server/tv/TvRemoteServiceInput;->mProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvRemoteProvider;->onInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 87
    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TvRemoteServiceInput"

    const-string v3, "Failed remote call to onInputBridgeConnected"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 78
    .restart local v10    # "idToken":J
    :catchall_0
    move-exception v0

    move-object v4, p2

    goto :goto_2

    .line 73
    :catch_1
    move-exception v0

    .line 74
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "TvRemoteServiceInput"

    const-string v3, "Token is already dead"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvRemoteServiceInput;->closeInputBridge(Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    :try_start_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 76
    return-void

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    const-string v2, "TvRemoteServiceInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create device for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v4, p2

    :try_start_7
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 78
    :try_start_8
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9

    .line 72
    return-void

    .line 78
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    nop

    .end local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "width":I
    .end local p4    # "height":I
    .end local p5    # "maxPointers":I
    throw v0

    .line 81
    .end local v10    # "idToken":J
    .restart local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "width":I
    .restart local p4    # "height":I
    .restart local p5    # "maxPointers":I
    :catchall_2
    move-exception v0

    move-object v4, p2

    :goto_3
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method public sendGamepadAxisValue(Landroid/os/IBinder;IF)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "axis"    # I
    .param p3, "value"    # F

    .line 340
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/UinputBridge;

    .line 342
    .local v1, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-nez v1, :cond_0

    .line 343
    const-string v2, "TvRemoteServiceInput"

    const-string v3, "Input bridge not found for token: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    monitor-exit v0

    return-void

    .line 347
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 349
    .local v2, "idToken":J
    :try_start_1
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/tv/UinputBridge;->sendGamepadAxisValue(Landroid/os/IBinder;IF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    nop

    .line 353
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    monitor-exit v0

    .line 354
    return-void

    .line 351
    .restart local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .restart local v2    # "idToken":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    nop

    .end local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "axis":I
    .end local p3    # "value":F
    throw v4

    .line 353
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    .restart local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "axis":I
    .restart local p3    # "value":F
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public sendGamepadKeyDown(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    .line 319
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/UinputBridge;

    .line 321
    .local v1, "inputBridge":Lcom/android/server/tv/UinputBridge;
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 322
    const-string v3, "TvRemoteServiceInput"

    const-string v4, "Input bridge not found for token: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    monitor-exit v0

    return-void

    .line 326
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 328
    .local v3, "idToken":J
    :try_start_1
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/tv/UinputBridge;->sendGamepadKey(Landroid/os/IBinder;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    nop

    .line 332
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v3    # "idToken":J
    monitor-exit v0

    .line 333
    return-void

    .line 330
    .restart local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .restart local v3    # "idToken":J
    :catchall_0
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    nop

    .end local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "keyCode":I
    throw v2

    .line 332
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v3    # "idToken":J
    .restart local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "keyCode":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public sendGamepadKeyUp(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyIndex"    # I

    .line 298
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/UinputBridge;

    .line 300
    .local v1, "inputBridge":Lcom/android/server/tv/UinputBridge;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 301
    const-string v3, "TvRemoteServiceInput"

    const-string v4, "Input bridge not found for token: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    monitor-exit v0

    return-void

    .line 305
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 307
    .local v3, "idToken":J
    :try_start_1
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/tv/UinputBridge;->sendGamepadKey(Landroid/os/IBinder;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    nop

    .line 311
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v3    # "idToken":J
    monitor-exit v0

    .line 312
    return-void

    .line 309
    .restart local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .restart local v3    # "idToken":J
    :catchall_0
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    nop

    .end local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "keyIndex":I
    throw v2

    .line 311
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v3    # "idToken":J
    .restart local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "keyIndex":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public sendKeyDown(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    .line 188
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/UinputBridge;

    .line 190
    .local v1, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-nez v1, :cond_0

    .line 191
    const-string v2, "TvRemoteServiceInput"

    const-string v3, "Input bridge not found for token: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    monitor-exit v0

    return-void

    .line 195
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    .local v2, "idToken":J
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendKeyDown(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    nop

    .line 201
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    monitor-exit v0

    .line 202
    return-void

    .line 199
    .restart local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .restart local v2    # "idToken":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    nop

    .end local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "keyCode":I
    throw v4

    .line 201
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    .restart local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "keyCode":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public sendKeyUp(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keyCode"    # I

    .line 210
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/UinputBridge;

    .line 212
    .local v1, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-nez v1, :cond_0

    .line 213
    const-string v2, "TvRemoteServiceInput"

    const-string v3, "Input bridge not found for token: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    monitor-exit v0

    return-void

    .line 217
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    .local v2, "idToken":J
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendKeyUp(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    nop

    .line 223
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    monitor-exit v0

    .line 224
    return-void

    .line 221
    .restart local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .restart local v2    # "idToken":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    nop

    .end local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "keyCode":I
    throw v4

    .line 223
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    .restart local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "keyCode":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public sendPointerDown(Landroid/os/IBinder;III)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 233
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/UinputBridge;

    .line 235
    .local v1, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-nez v1, :cond_0

    .line 236
    const-string v2, "TvRemoteServiceInput"

    const-string v3, "Input bridge not found for token: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    monitor-exit v0

    return-void

    .line 240
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    .local v2, "idToken":J
    :try_start_1
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/tv/UinputBridge;->sendPointerDown(Landroid/os/IBinder;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    nop

    .line 246
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    monitor-exit v0

    .line 247
    return-void

    .line 244
    .restart local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .restart local v2    # "idToken":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    nop

    .end local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "pointerId":I
    .end local p3    # "x":I
    .end local p4    # "y":I
    throw v4

    .line 246
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    .restart local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "pointerId":I
    .restart local p3    # "x":I
    .restart local p4    # "y":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public sendPointerSync(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 277
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/UinputBridge;

    .line 279
    .local v1, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-nez v1, :cond_0

    .line 280
    const-string v2, "TvRemoteServiceInput"

    const-string v3, "Input bridge not found for token: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    monitor-exit v0

    return-void

    .line 284
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    .local v2, "idToken":J
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/android/server/tv/UinputBridge;->sendPointerSync(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 289
    nop

    .line 290
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    monitor-exit v0

    .line 291
    return-void

    .line 288
    .restart local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .restart local v2    # "idToken":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 289
    nop

    .end local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v4

    .line 290
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    .restart local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .restart local p1    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public sendPointerUp(Landroid/os/IBinder;I)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pointerId"    # I

    .line 255
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/UinputBridge;

    .line 257
    .local v1, "inputBridge":Lcom/android/server/tv/UinputBridge;
    if-nez v1, :cond_0

    .line 258
    const-string v2, "TvRemoteServiceInput"

    const-string v3, "Input bridge not found for token: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    monitor-exit v0

    return-void

    .line 262
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 264
    .local v2, "idToken":J
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendPointerUp(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    nop

    .line 268
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    monitor-exit v0

    .line 269
    return-void

    .line 266
    .restart local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .restart local v2    # "idToken":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    nop

    .end local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "pointerId":I
    throw v4

    .line 268
    .end local v1    # "inputBridge":Lcom/android/server/tv/UinputBridge;
    .end local v2    # "idToken":J
    .restart local p0    # "this":Lcom/android/server/tv/TvRemoteServiceInput;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "pointerId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public sendTimestamp(Landroid/os/IBinder;J)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timestamp"    # J

    .line 180
    return-void
.end method

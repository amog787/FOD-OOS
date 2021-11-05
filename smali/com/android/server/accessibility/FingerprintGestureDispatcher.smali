.class public Lcom/android/server/accessibility/FingerprintGestureDispatcher;
.super Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;
.source "FingerprintGestureDispatcher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FingerprintGestureDispatcher"

.field private static final MSG_REGISTER:I = 0x1

.field private static final MSG_UNREGISTER:I = 0x2


# instance fields
.field private final mCapturingClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

.field private final mHandler:Landroid/os/Handler;

.field private final mHardwareSupportsGestures:Z

.field private final mLock:Ljava/lang/Object;

.field private mRegisteredReadOnlyExceptInHandler:Z


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintService;Landroid/content/res/Resources;Ljava/lang/Object;)V
    .locals 2
    .param p1, "fingerprintService"    # Landroid/hardware/fingerprint/IFingerprintService;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 56
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 58
    const v0, 0x1110088

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    .line 60
    iput-object p3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintService;Landroid/content/res/Resources;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 2
    .param p1, "fingerprintService"    # Landroid/hardware/fingerprint/IFingerprintService;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 70
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback$Stub;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 72
    const v0, 0x1110088

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    .line 74
    iput-object p3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    .line 75
    iput-object p4, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "FingerprintGestureDispatcher"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 190
    .local v4, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p0}, Landroid/hardware/fingerprint/IFingerprintService;->addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V

    .line 191
    iput-boolean v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    nop

    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 196
    goto :goto_1

    .line 195
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Failed to register for fingerprint activity callbacks"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 197
    :goto_1
    return v1

    .line 195
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 196
    throw v0

    .line 198
    .end local v4    # "identity":J
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 201
    .restart local v4    # "identity":J
    :try_start_2
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p0}, Landroid/hardware/fingerprint/IFingerprintService;->removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 205
    nop

    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    goto :goto_4

    .line 205
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 202
    :catch_1
    move-exception v0

    .line 203
    .restart local v0    # "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "Failed to unregister for fingerprint activity callbacks"

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_3

    .line 207
    :goto_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    .line 208
    .end local v4    # "identity":J
    nop

    .line 212
    return v3

    .line 205
    .restart local v4    # "identity":J
    :goto_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    throw v0

    .line 209
    .end local v4    # "identity":J
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v1
.end method

.method public isFingerprintGestureDetectionAvailable()Z
    .locals 4

    .line 131
    iget-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 133
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 135
    .local v2, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->isClientActive()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    xor-int/lit8 v0, v0, 0x1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    return v0

    .line 139
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    throw v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "re":Landroid/os/RemoteException;
    nop

    .line 139
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    return v1
.end method

.method public onClientActiveChanged(Z)V
    .locals 4
    .param p1, "nonGestureFingerprintClientActive"    # Z

    .line 108
    iget-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    if-nez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->onFingerprintGestureDetectionActiveChanged(Z)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onClientActiveChangedWithPkg(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isActive"    # Z
    .param p2, "pkg"    # Ljava/lang/String;

    .line 121
    return-void
.end method

.method public onFingerprintEventCallback(IIII)V
    .locals 0
    .param p1, "msg"    # I
    .param p2, "event"    # I
    .param p3, "reservedCode"    # I
    .param p4, "reservedCode2"    # I

    .line 127
    return-void
.end method

.method public onFingerprintGesture(I)Z
    .locals 4
    .param p1, "fingerprintKeyCode"    # I

    .line 153
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 155
    monitor-exit v0

    return v2

    .line 157
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 175
    monitor-exit v0

    goto :goto_2

    .line 167
    :pswitch_0
    const/4 v1, 0x1

    .line 169
    .local v1, "idForFingerprintGestureManager":I
    goto :goto_0

    .line 171
    .end local v1    # "idForFingerprintGestureManager":I
    :pswitch_1
    const/4 v1, 0x2

    .line 173
    .restart local v1    # "idForFingerprintGestureManager":I
    goto :goto_0

    .line 163
    .end local v1    # "idForFingerprintGestureManager":I
    :pswitch_2
    const/16 v1, 0x8

    .line 165
    .restart local v1    # "idForFingerprintGestureManager":I
    goto :goto_0

    .line 159
    .end local v1    # "idForFingerprintGestureManager":I
    :pswitch_3
    const/4 v1, 0x4

    .line 161
    .restart local v1    # "idForFingerprintGestureManager":I
    nop

    .line 177
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    .local v2, "clientList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 180
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    invoke-interface {v3, v1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->onFingerprintGesture(I)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 175
    .end local v1    # "idForFingerprintGestureManager":I
    .end local v2    # "clientList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;>;"
    :goto_2
    return v2

    .line 178
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x118
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateClientList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p1, "clientList":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;>;"
    iget-boolean v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 89
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    .line 90
    .local v2, "client":Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;
    invoke-interface {v2}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->isCapturingFingerprintGestures()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v2    # "client":Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    iget-boolean v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    if-eqz v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 99
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    if-nez v1, :cond_4

    .line 100
    iget-object v1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 103
    :cond_4
    :goto_1
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

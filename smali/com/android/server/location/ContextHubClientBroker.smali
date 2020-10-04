.class public Lcom/android/server/location/ContextHubClientBroker;
.super Landroid/hardware/location/IContextHubClient$Stub;
.source "ContextHubClientBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;,
        Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextHubClientBroker"


# instance fields
.field private final mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

.field private mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

.field private final mClientManager:Lcom/android/server/location/ContextHubClientManager;

.field private final mContext:Landroid/content/Context;

.field private final mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

.field private final mHostEndPointId:S

.field private final mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

.field private mRegistered:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/app/PendingIntent;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextHubProxy"    # Landroid/hardware/contexthub/V1_0/IContexthub;
    .param p3, "clientManager"    # Lcom/android/server/location/ContextHubClientManager;
    .param p4, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p5, "hostEndPointId"    # S
    .param p6, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p7, "nanoAppId"    # J

    .line 153
    invoke-direct {p0}, Landroid/hardware/location/IContextHubClient$Stub;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mRegistered:Z

    .line 154
    iput-object p1, p0, Lcom/android/server/location/ContextHubClientBroker;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/android/server/location/ContextHubClientBroker;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 156
    iput-object p3, p0, Lcom/android/server/location/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 157
    iput-object p4, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 158
    iput-short p5, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    .line 159
    new-instance v0, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-direct {v0, p0, p6, p7, p8}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;-><init>(Lcom/android/server/location/ContextHubClientBroker;Landroid/app/PendingIntent;J)V

    iput-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    .line 160
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextHubProxy"    # Landroid/hardware/contexthub/V1_0/IContexthub;
    .param p3, "clientManager"    # Lcom/android/server/location/ContextHubClientManager;
    .param p4, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p5, "hostEndPointId"    # S
    .param p6, "callback"    # Landroid/hardware/location/IContextHubClientCallback;

    .line 140
    invoke-direct {p0}, Landroid/hardware/location/IContextHubClient$Stub;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mRegistered:Z

    .line 141
    iput-object p1, p0, Lcom/android/server/location/ContextHubClientBroker;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/android/server/location/ContextHubClientBroker;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 143
    iput-object p3, p0, Lcom/android/server/location/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 144
    iput-object p4, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 145
    iput-short p5, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    .line 146
    iput-object p6, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    .line 147
    new-instance v0, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-direct {v0, p0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;-><init>(Lcom/android/server/location/ContextHubClientBroker;)V

    iput-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    .line 148
    return-void
.end method

.method private createIntent(I)Landroid/content/Intent;
    .locals 3
    .param p1, "eventType"    # I

    .line 338
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 339
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.hardware.location.extra.EVENT_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    iget-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    const-string v2, "android.hardware.location.extra.CONTEXT_HUB_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 341
    return-object v0
.end method

.method private createIntent(IJ)Landroid/content/Intent;
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "nanoAppId"    # J

    .line 353
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubClientBroker;->createIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 354
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.hardware.location.extra.NANOAPP_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 355
    return-object v0
.end method

.method private doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 8
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "android.permission.LOCATION_HARDWARE"

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PendingIntent has been canceled, unregistering from client (host endpoint ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextHubClientBroker"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientBroker;->close()V

    .line 400
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method

.method private declared-synchronized invokeCallback(Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;)V
    .locals 4
    .param p1, "consumer"    # Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;

    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 323
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {p1, v0}, Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;->accept(Landroid/hardware/location/IContextHubClientCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    goto :goto_0

    .line 324
    .end local p0    # "this":Lcom/android/server/location/ContextHubClientBroker;
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "ContextHubClientBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while invoking client callback (host endpoint ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 320
    .end local p1    # "consumer":Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isRegistered()Z
    .locals 1

    monitor-enter p0

    .line 406
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/server/location/ContextHubClientBroker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$onHubReset$6(Landroid/hardware/location/IContextHubClientCallback;)V
    .locals 0
    .param p0, "callback"    # Landroid/hardware/location/IContextHubClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    invoke-interface {p0}, Landroid/hardware/location/IContextHubClientCallback;->onHubReset()V

    return-void
.end method

.method static synthetic lambda$onNanoAppAborted$8(JILandroid/hardware/location/IContextHubClientCallback;)V
    .locals 0
    .param p0, "nanoAppId"    # J
    .param p2, "abortCode"    # I
    .param p3, "callback"    # Landroid/hardware/location/IContextHubClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-interface {p3, p0, p1, p2}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppAborted(JI)V

    return-void
.end method

.method static synthetic lambda$onNanoAppLoaded$2(JLandroid/hardware/location/IContextHubClientCallback;)V
    .locals 0
    .param p0, "nanoAppId"    # J
    .param p2, "callback"    # Landroid/hardware/location/IContextHubClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    invoke-interface {p2, p0, p1}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppLoaded(J)V

    return-void
.end method

.method static synthetic lambda$onNanoAppUnloaded$4(JLandroid/hardware/location/IContextHubClientCallback;)V
    .locals 0
    .param p0, "nanoAppId"    # J
    .param p2, "callback"    # Landroid/hardware/location/IContextHubClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    invoke-interface {p2, p0, p1}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppUnloaded(J)V

    return-void
.end method

.method static synthetic lambda$sendMessageToClient$0(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubClientCallback;)V
    .locals 0
    .param p0, "message"    # Landroid/hardware/location/NanoAppMessage;
    .param p1, "callback"    # Landroid/hardware/location/IContextHubClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    invoke-interface {p1, p0}, Landroid/hardware/location/IContextHubClientCallback;->onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V

    return-void
.end method

.method private declared-synchronized onClientExit()V
    .locals 3

    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    .line 417
    .end local p0    # "this":Lcom/android/server/location/ContextHubClientBroker;
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    iget-short v2, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v0, v2}, Lcom/android/server/location/ContextHubClientManager;->unregisterClient(S)V

    .line 419
    iput-boolean v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :cond_1
    monitor-exit p0

    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendPendingIntent(Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/ContextHubClientBroker;->doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    .end local p0    # "this":Lcom/android/server/location/ContextHubClientBroker;
    :cond_0
    monitor-exit p0

    return-void

    .line 363
    .end local p1    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized sendPendingIntent(Ljava/util/function/Supplier;J)V
    .locals 2
    .param p2, "nanoAppId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Intent;",
            ">;J)V"
        }
    .end annotation

    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    .line 377
    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/ContextHubClientBroker;->doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    .end local p0    # "this":Lcom/android/server/location/ContextHubClientBroker;
    :cond_0
    monitor-exit p0

    return-void

    .line 375
    .end local p1    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    .end local p2    # "nanoAppId":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method attachDeathRecipient()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 313
    :cond_0
    return-void
.end method

.method public binderDied()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/android/server/location/ContextHubClientBroker;->onClientExit()V

    .line 213
    return-void
.end method

.method public close()V
    .locals 1

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->clear()V

    .line 203
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-direct {p0}, Lcom/android/server/location/ContextHubClientBroker;->onClientExit()V

    .line 205
    return-void

    .line 203
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getAttachedContextHubId()I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v0

    return v0
.end method

.method getHostEndPointId()S
    .locals 1

    .line 226
    iget-short v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    return v0
.end method

.method hasPendingIntent(Landroid/app/PendingIntent;J)Z
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "nanoAppId"    # J

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v1}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    move-object v0, v1

    .line 298
    iget-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v1}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v1

    .line 299
    .local v1, "intentNanoAppId":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    cmp-long v3, v1, p2

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 299
    .end local v1    # "intentNanoAppId":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onHubReset$7$ContextHubClientBroker()Landroid/content/Intent;
    .locals 1

    .line 270
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubClientBroker;->createIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onNanoAppAborted$9$ContextHubClientBroker(JI)Landroid/content/Intent;
    .locals 2
    .param p1, "nanoAppId"    # J
    .param p3, "abortCode"    # I

    .line 283
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object v0

    .line 284
    const-string v1, "android.hardware.location.extra.NANOAPP_ABORT_CODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 283
    return-object v0
.end method

.method public synthetic lambda$onNanoAppLoaded$3$ContextHubClientBroker(J)Landroid/content/Intent;
    .locals 1
    .param p1, "nanoAppId"    # J

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onNanoAppUnloaded$5$ContextHubClientBroker(J)Landroid/content/Intent;
    .locals 1
    .param p1, "nanoAppId"    # J

    .line 262
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$sendMessageToClient$1$ContextHubClientBroker(Landroid/hardware/location/NanoAppMessage;)Landroid/content/Intent;
    .locals 3
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 238
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v0

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/location/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object v0

    .line 239
    const-string v1, "android.hardware.location.extra.MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 238
    return-object v0
.end method

.method onHubReset()V
    .locals 1

    .line 269
    sget-object v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$LSvRo4l-aTVqttfWfOHNw7uyb3Q;->INSTANCE:Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$LSvRo4l-aTVqttfWfOHNw7uyb3Q;

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;)V

    .line 270
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$dhEakMhmIulMdmLMree-thpxPXU;

    invoke-direct {v0, p0}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$dhEakMhmIulMdmLMree-thpxPXU;-><init>(Lcom/android/server/location/ContextHubClientBroker;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;)V

    .line 271
    return-void
.end method

.method onNanoAppAborted(JI)V
    .locals 1
    .param p1, "nanoAppId"    # J
    .param p3, "abortCode"    # I

    .line 280
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$euuUV-nmBEuGSQnmknMVANWcP88;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$euuUV-nmBEuGSQnmknMVANWcP88;-><init>(JI)V

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;)V

    .line 282
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$B9OxjmBvqPB3gqJ7VRMqEIw1cbY;

    .local v0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$B9OxjmBvqPB3gqJ7VRMqEIw1cbY;-><init>(Lcom/android/server/location/ContextHubClientBroker;JI)V

    .line 285
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    .line 286
    return-void
.end method

.method onNanoAppLoaded(J)V
    .locals 1
    .param p1, "nanoAppId"    # J

    .line 249
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$ykmLCadaR6NcV4R42i4K8zw4AWs;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$ykmLCadaR6NcV4R42i4K8zw4AWs;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;)V

    .line 250
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$7Uwy0RpQUtRsDYbocrZ-WuXEVJQ;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$7Uwy0RpQUtRsDYbocrZ-WuXEVJQ;-><init>(Lcom/android/server/location/ContextHubClientBroker;J)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    .line 252
    return-void
.end method

.method onNanoAppUnloaded(J)V
    .locals 1
    .param p1, "nanoAppId"    # J

    .line 260
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$iBGtMeLZ6k5dYJZb_VEUfBBYh9s;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$iBGtMeLZ6k5dYJZb_VEUfBBYh9s;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;)V

    .line 261
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$NOnZ9Z0Vw11snzPmdVOE1pPrZ_4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$NOnZ9Z0Vw11snzPmdVOE1pPrZ_4;-><init>(Lcom/android/server/location/ContextHubClientBroker;J)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    .line 263
    return-void
.end method

.method sendMessageToClient(Landroid/hardware/location/NanoAppMessage;)V
    .locals 3
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 235
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$CFacmt7807NhDDkp6CgbkeGnMvQ;

    invoke-direct {v0, p1}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$CFacmt7807NhDDkp6CgbkeGnMvQ;-><init>(Landroid/hardware/location/NanoAppMessage;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;)V

    .line 237
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$P9IUEzaG4gP8jALe00of9jdlrGw;

    .local v0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$P9IUEzaG4gP8jALe00of9jdlrGw;-><init>(Lcom/android/server/location/ContextHubClientBroker;Landroid/hardware/location/NanoAppMessage;)V

    .line 240
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    .line 241
    return-void
.end method

.method public sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I
    .locals 6
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 171
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->checkPermissions(Landroid/content/Context;)V

    .line 174
    invoke-direct {p0}, Lcom/android/server/location/ContextHubClientBroker;->isRegistered()Z

    move-result v0

    const-string v1, "ContextHubClientBroker"

    if-eqz v0, :cond_0

    .line 175
    iget-short v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    .line 176
    invoke-static {v0, p1}, Lcom/android/server/location/ContextHubServiceUtil;->createHidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    move-result-object v0

    .line 178
    .local v0, "messageToNanoApp":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    iget-object v2, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v2

    .line 180
    .local v2, "contextHubId":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {v3, v2, v0}, Landroid/hardware/contexthub/V1_0/IContexthub;->sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .local v1, "result":I
    goto :goto_0

    .line 181
    .end local v1    # "result":I
    :catch_0
    move-exception v3

    .line 182
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException in sendMessageToNanoApp (target hub ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v1, 0x1

    .line 186
    .end local v0    # "messageToNanoApp":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .end local v2    # "contextHubId":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "result":I
    :goto_0
    goto :goto_1

    .line 187
    .end local v1    # "result":I
    :cond_0
    const-string v0, "Failed to send message to nanoapp: client connection is closed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v1, 0x1

    .line 191
    .restart local v1    # "result":I
    :goto_1
    invoke-static {v1}, Lcom/android/server/location/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v0

    return v0
.end method

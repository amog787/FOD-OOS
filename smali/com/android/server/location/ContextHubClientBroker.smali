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

.field private final mHasAccessContextHubPermission:Z

.field private final mHostEndPointId:S

.field private mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPackage:Ljava/lang/String;

.field private final mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

.field private mRegistered:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/app/PendingIntent;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextHubProxy"    # Landroid/hardware/contexthub/V1_0/IContexthub;
    .param p3, "clientManager"    # Lcom/android/server/location/ContextHubClientManager;
    .param p4, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p5, "hostEndPointId"    # S
    .param p6, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p7, "nanoAppId"    # J

    .line 184
    invoke-direct {p0}, Landroid/hardware/location/IContextHubClient$Stub;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mRegistered:Z

    .line 112
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    iput-object p1, p0, Lcom/android/server/location/ContextHubClientBroker;->mContext:Landroid/content/Context;

    .line 186
    iput-object p2, p0, Lcom/android/server/location/ContextHubClientBroker;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 187
    iput-object p3, p0, Lcom/android/server/location/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 188
    iput-object p4, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 189
    iput-short p5, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    .line 190
    new-instance v1, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-direct {v1, p0, p6, p7, p8}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;-><init>(Lcom/android/server/location/ContextHubClientBroker;Landroid/app/PendingIntent;J)V

    iput-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    .line 191
    invoke-virtual {p6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    .line 193
    const-string v1, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mHasAccessContextHubPermission:Z

    .line 195
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextHubProxy"    # Landroid/hardware/contexthub/V1_0/IContexthub;
    .param p3, "clientManager"    # Lcom/android/server/location/ContextHubClientManager;
    .param p4, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p5, "hostEndPointId"    # S
    .param p6, "callback"    # Landroid/hardware/location/IContextHubClientCallback;

    .line 167
    invoke-direct {p0}, Landroid/hardware/location/IContextHubClient$Stub;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mRegistered:Z

    .line 112
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 168
    iput-object p1, p0, Lcom/android/server/location/ContextHubClientBroker;->mContext:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Lcom/android/server/location/ContextHubClientBroker;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 170
    iput-object p3, p0, Lcom/android/server/location/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    .line 171
    iput-object p4, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 172
    iput-short p5, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    .line 173
    iput-object p6, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    .line 174
    new-instance v1, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-direct {v1, p0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;-><init>(Lcom/android/server/location/ContextHubClientBroker;)V

    iput-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    .line 175
    iget-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    .line 177
    const-string v1, "android.permission.ACCESS_CONTEXT_HUB"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mHasAccessContextHubPermission:Z

    .line 179
    return-void
.end method

.method private createIntent(I)Landroid/content/Intent;
    .locals 3
    .param p1, "eventType"    # I

    .line 380
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.hardware.location.extra.EVENT_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    iget-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    const-string v2, "android.hardware.location.extra.CONTEXT_HUB_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 383
    return-object v0
.end method

.method private createIntent(IJ)Landroid/content/Intent;
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "nanoAppId"    # J

    .line 395
    invoke-direct {p0, p1}, Lcom/android/server/location/ContextHubClientBroker;->createIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 396
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.hardware.location.extra.NANOAPP_ID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 397
    return-object v0
.end method

.method private doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 9
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 432
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mHasAccessContextHubPermission:Z

    if-eqz v0, :cond_0

    .line 433
    const-string v0, "android.permission.ACCESS_CONTEXT_HUB"

    move-object v7, v0

    goto :goto_0

    .line 434
    :cond_0
    const-string v0, "android.permission.LOCATION_HARDWARE"

    move-object v7, v0

    :goto_0
    nop

    .line 435
    .local v7, "requiredPermission":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/ContextHubClientBroker;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .end local v7    # "requiredPermission":Ljava/lang/String;
    goto :goto_1

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    iget-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 441
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

    .line 443
    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientBroker;->close()V

    .line 445
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_1
    return-void
.end method

.method private declared-synchronized invokeCallback(Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;)V
    .locals 4
    .param p1, "consumer"    # Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;

    monitor-enter p0

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 365
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {p1, v0}, Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;->accept(Landroid/hardware/location/IContextHubClientCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    goto :goto_0

    .line 366
    .end local p0    # "this":Lcom/android/server/location/ContextHubClientBroker;
    :catch_0
    move-exception v0

    .line 367
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

    .line 371
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 362
    .end local p1    # "consumer":Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isRegistered()Z
    .locals 1

    monitor-enter p0

    .line 451
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 451
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

    .line 304
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

    .line 315
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

    .line 284
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

    .line 295
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

    .line 270
    invoke-interface {p1, p0}, Landroid/hardware/location/IContextHubClientCallback;->onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V

    return-void
.end method

.method private declared-synchronized onClientExit()V
    .locals 3

    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    .line 462
    .end local p0    # "this":Lcom/android/server/location/ContextHubClientBroker;
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/ContextHubClientManager;

    iget-short v2, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v0, v2}, Lcom/android/server/location/ContextHubClientManager;->unregisterClient(S)V

    .line 464
    iput-boolean v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :cond_1
    monitor-exit p0

    return-void

    .line 457
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

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/ContextHubClientBroker;->doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    .end local p0    # "this":Lcom/android/server/location/ContextHubClientBroker;
    :cond_0
    monitor-exit p0

    return-void

    .line 405
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

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    .line 419
    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/ContextHubClientBroker;->doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    .end local p0    # "this":Lcom/android/server/location/ContextHubClientBroker;
    :cond_0
    monitor-exit p0

    return-void

    .line 417
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

    .line 345
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 348
    :cond_0
    return-void
.end method

.method public binderDied()V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/android/server/location/ContextHubClientBroker;->onClientExit()V

    .line 248
    return-void
.end method

.method public close()V
    .locals 1

    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->clear()V

    .line 238
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-direct {p0}, Lcom/android/server/location/ContextHubClientBroker;->onClientExit()V

    .line 240
    return-void

    .line 238
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 477
    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientBroker;->getHostEndPointId()S

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 478
    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v0

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 479
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const-wide v0, 0x10800000005L

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 482
    const-wide v0, 0x10300000004L

    iget-object v2, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v2}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 484
    :cond_0
    const-wide v0, 0x10800000006L

    iget-object v2, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v2}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 485
    const-wide v0, 0x10800000007L

    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientBroker;->isPendingIntentCancelled()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 486
    const-wide v0, 0x10800000008L

    iget-boolean v2, p0, Lcom/android/server/location/ContextHubClientBroker;->mRegistered:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 488
    return-void
.end method

.method getAttachedContextHubId()I
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v0

    return v0
.end method

.method getHostEndPointId()S
    .locals 1

    .line 261
    iget-short v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    return v0
.end method

.method hasPendingIntent(Landroid/app/PendingIntent;J)Z
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "nanoAppId"    # J

    .line 329
    const/4 v0, 0x0

    .line 331
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v1}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    move-object v0, v1

    .line 333
    iget-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v1}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v1

    .line 334
    .local v1, "intentNanoAppId":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
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

    .line 334
    .end local v1    # "intentNanoAppId":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method isPendingIntentCancelled()Z
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onHubReset$7$ContextHubClientBroker()Landroid/content/Intent;
    .locals 1

    .line 305
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubClientBroker;->createIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onNanoAppAborted$9$ContextHubClientBroker(JI)Landroid/content/Intent;
    .locals 2
    .param p1, "nanoAppId"    # J
    .param p3, "abortCode"    # I

    .line 318
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object v0

    .line 319
    const-string v1, "android.hardware.location.extra.NANOAPP_ABORT_CODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 318
    return-object v0
.end method

.method public synthetic lambda$onNanoAppLoaded$3$ContextHubClientBroker(J)Landroid/content/Intent;
    .locals 1
    .param p1, "nanoAppId"    # J

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onNanoAppUnloaded$5$ContextHubClientBroker(J)Landroid/content/Intent;
    .locals 1
    .param p1, "nanoAppId"    # J

    .line 297
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$sendMessageToClient$1$ContextHubClientBroker(Landroid/hardware/location/NanoAppMessage;)Landroid/content/Intent;
    .locals 3
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 273
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v0

    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/location/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object v0

    .line 274
    const-string v1, "android.hardware.location.extra.MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 273
    return-object v0
.end method

.method onHubReset()V
    .locals 1

    .line 304
    sget-object v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$LSvRo4l-aTVqttfWfOHNw7uyb3Q;->INSTANCE:Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$LSvRo4l-aTVqttfWfOHNw7uyb3Q;

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;)V

    .line 305
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$dhEakMhmIulMdmLMree-thpxPXU;

    invoke-direct {v0, p0}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$dhEakMhmIulMdmLMree-thpxPXU;-><init>(Lcom/android/server/location/ContextHubClientBroker;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;)V

    .line 306
    return-void
.end method

.method onNanoAppAborted(JI)V
    .locals 1
    .param p1, "nanoAppId"    # J
    .param p3, "abortCode"    # I

    .line 315
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$euuUV-nmBEuGSQnmknMVANWcP88;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$euuUV-nmBEuGSQnmknMVANWcP88;-><init>(JI)V

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;)V

    .line 317
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$B9OxjmBvqPB3gqJ7VRMqEIw1cbY;

    .local v0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$B9OxjmBvqPB3gqJ7VRMqEIw1cbY;-><init>(Lcom/android/server/location/ContextHubClientBroker;JI)V

    .line 320
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    .line 321
    return-void
.end method

.method onNanoAppLoaded(J)V
    .locals 1
    .param p1, "nanoAppId"    # J

    .line 284
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$ykmLCadaR6NcV4R42i4K8zw4AWs;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$ykmLCadaR6NcV4R42i4K8zw4AWs;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;)V

    .line 285
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$7Uwy0RpQUtRsDYbocrZ-WuXEVJQ;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$7Uwy0RpQUtRsDYbocrZ-WuXEVJQ;-><init>(Lcom/android/server/location/ContextHubClientBroker;J)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    .line 287
    return-void
.end method

.method onNanoAppUnloaded(J)V
    .locals 1
    .param p1, "nanoAppId"    # J

    .line 295
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$iBGtMeLZ6k5dYJZb_VEUfBBYh9s;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$iBGtMeLZ6k5dYJZb_VEUfBBYh9s;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;)V

    .line 296
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$NOnZ9Z0Vw11snzPmdVOE1pPrZ_4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$NOnZ9Z0Vw11snzPmdVOE1pPrZ_4;-><init>(Lcom/android/server/location/ContextHubClientBroker;J)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    .line 298
    return-void
.end method

.method sendMessageToClient(Landroid/hardware/location/NanoAppMessage;)V
    .locals 3
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 270
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$CFacmt7807NhDDkp6CgbkeGnMvQ;

    invoke-direct {v0, p1}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$CFacmt7807NhDDkp6CgbkeGnMvQ;-><init>(Landroid/hardware/location/NanoAppMessage;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/ContextHubClientBroker$CallbackConsumer;)V

    .line 272
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$P9IUEzaG4gP8jALe00of9jdlrGw;

    .local v0, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/content/Intent;>;"
    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$ContextHubClientBroker$P9IUEzaG4gP8jALe00of9jdlrGw;-><init>(Lcom/android/server/location/ContextHubClientBroker;Landroid/hardware/location/NanoAppMessage;)V

    .line 275
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    .line 276
    return-void
.end method

.method public sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I
    .locals 6
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 206
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->checkPermissions(Landroid/content/Context;)V

    .line 209
    invoke-direct {p0}, Lcom/android/server/location/ContextHubClientBroker;->isRegistered()Z

    move-result v0

    const-string v1, "ContextHubClientBroker"

    if-eqz v0, :cond_0

    .line 210
    iget-short v0, p0, Lcom/android/server/location/ContextHubClientBroker;->mHostEndPointId:S

    .line 211
    invoke-static {v0, p1}, Lcom/android/server/location/ContextHubServiceUtil;->createHidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    move-result-object v0

    .line 213
    .local v0, "messageToNanoApp":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    iget-object v2, p0, Lcom/android/server/location/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v2

    .line 215
    .local v2, "contextHubId":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    invoke-interface {v3, v2, v0}, Landroid/hardware/contexthub/V1_0/IContexthub;->sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .local v1, "result":I
    goto :goto_0

    .line 216
    .end local v1    # "result":I
    :catch_0
    move-exception v3

    .line 217
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

    .line 219
    const/4 v1, 0x1

    .line 221
    .end local v0    # "messageToNanoApp":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .end local v2    # "contextHubId":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "result":I
    :goto_0
    goto :goto_1

    .line 222
    .end local v1    # "result":I
    :cond_0
    const-string v0, "Failed to send message to nanoapp: client connection is closed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v1, 0x1

    .line 226
    .restart local v1    # "result":I
    :goto_1
    invoke-static {v1}, Lcom/android/server/location/ContextHubServiceUtil;->toTransactionResult(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 492
    const-string v0, "[ContextHubClient "

    .line 493
    .local v0, "out":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "endpointID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientBroker;->getHostEndPointId()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "contextHub: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v1}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "intentCreatorPackage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "nanoAppId: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v2}, Lcom/android/server/location/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 499
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    return-object v0
.end method

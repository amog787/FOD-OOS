.class final Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;
.super Landroid/os/Handler;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SensorPrivacyHandler"
.end annotation


# static fields
.field private static final MESSAGE_SENSOR_PRIVACY_CHANGED:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeathRecipients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/ISensorPrivacyListener;",
            "Lcom/android/server/SensorPrivacyService$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerLock:Ljava/lang/Object;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/hardware/ISensorPrivacyListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/SensorPrivacyService;


# direct methods
.method constructor <init>(Lcom/android/server/SensorPrivacyService;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "context"    # Landroid/content/Context;

    .line 232
    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 233
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 224
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    .line 226
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    .line 234
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    .line 235
    iput-object p3, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mContext:Landroid/content/Context;

    .line 236
    return-void
.end method

.method static synthetic lambda$onSensorPrivacyChanged$0(Ljava/lang/Object;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 242
    move-object v0, p0

    check-cast v0, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    invoke-static {v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;->access$100(Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 247
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_0
    new-instance v1, Lcom/android/server/SensorPrivacyService$DeathRecipient;

    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/SensorPrivacyService$DeathRecipient;-><init>(Lcom/android/server/SensorPrivacyService;Landroid/hardware/ISensorPrivacyListener;)V

    .line 249
    .local v1, "deathRecipient":Lcom/android/server/SensorPrivacyService$DeathRecipient;
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 251
    nop

    .end local v1    # "deathRecipient":Lcom/android/server/SensorPrivacyService$DeathRecipient;
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleSensorPrivacyChanged(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .line 265
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 266
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 267
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/hardware/ISensorPrivacyListener;

    .line 269
    .local v2, "listener":Landroid/hardware/ISensorPrivacyListener;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/hardware/ISensorPrivacyListener;->onSensorPrivacyChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    goto :goto_1

    .line 270
    :catch_0
    move-exception v3

    .line 271
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught an exception notifying listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SensorPrivacyService"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .end local v2    # "listener":Landroid/hardware/ISensorPrivacyListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 275
    return-void
.end method

.method public onSensorPrivacyChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 239
    sget-object v0, Lcom/android/server/-$$Lambda$2rlj96lJ7chZc-A-SbtixW5GQdw;->INSTANCE:Lcom/android/server/-$$Lambda$2rlj96lJ7chZc-A-SbtixW5GQdw;

    .line 240
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 239
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    sget-object v0, Lcom/android/server/-$$Lambda$SensorPrivacyService$SensorPrivacyHandler$ctW6BcqPnLm_33mG1WatsFwFT7w;->INSTANCE:Lcom/android/server/-$$Lambda$SensorPrivacyService$SensorPrivacyHandler$ctW6BcqPnLm_33mG1WatsFwFT7w;

    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->this$0:Lcom/android/server/SensorPrivacyService;

    .line 243
    invoke-static {v1}, Lcom/android/server/SensorPrivacyService;->access$000(Lcom/android/server/SensorPrivacyService;)Lcom/android/server/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v1

    .line 242
    invoke-static {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 241
    invoke-virtual {p0, v0}, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    return-void
.end method

.method public removeListener(Landroid/hardware/ISensorPrivacyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 255
    iget-object v0, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mDeathRecipients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SensorPrivacyService$DeathRecipient;

    .line 257
    .local v1, "deathRecipient":Lcom/android/server/SensorPrivacyService$DeathRecipient;
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1}, Lcom/android/server/SensorPrivacyService$DeathRecipient;->destroy()V

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/android/server/SensorPrivacyService$SensorPrivacyHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 261
    nop

    .end local v1    # "deathRecipient":Lcom/android/server/SensorPrivacyService$DeathRecipient;
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

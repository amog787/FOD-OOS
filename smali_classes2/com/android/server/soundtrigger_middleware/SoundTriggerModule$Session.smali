.class Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    }
.end annotation


# instance fields
.field private mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

.field private mLoadedModels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;


# direct methods
.method private constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V
    .locals 0
    .param p2, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 256
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    .line 257
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 258
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->notifyRecognitionAvailability()V

    .line 259
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;
    .param p2, "x1"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .param p3, "x2"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$1;

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V

    return-void
.end method

.method private abortActiveRecognitions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 404
    .local p1, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    .line 405
    .local v1, "model":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    invoke-static {v1, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->access$1800(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Ljava/util/List;)V

    .line 406
    .end local v1    # "model":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    goto :goto_0

    .line 407
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .param p1, "x1"    # Ljava/util/List;

    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->abortActiveRecognitions(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 247
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->notifyRecognitionAvailability()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 247
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 247
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    .line 247
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->moduleDied()Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v0

    return-object v0
.end method

.method private checkValid()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    if-eqz v0, :cond_0

    .line 434
    return-void

    .line 432
    :cond_0
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw v0
.end method

.method private moduleDied()Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 425
    .local v0, "callback":Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v1, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$400(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V

    .line 426
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 427
    return-object v0
.end method

.method private notifyRecognitionAvailability()V
    .locals 3

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$1900(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognitionAvailabilityChange(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SoundTriggerModule"

    const-string v2, "Client callback execption."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .line 439
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This implementation is not intended to be used directly with Binder."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    if-nez v1, :cond_0

    .line 265
    monitor-exit v0

    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v1, p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$400(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 269
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forceRecognitionEvent(I)V
    .locals 3
    .param p1, "modelHandle"    # I

    .line 367
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 368
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 369
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->access$1400(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)V

    .line 370
    monitor-exit v0

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getModelParameter(II)I
    .locals 3
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I

    .line 383
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 384
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 385
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    invoke-static {v1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->access$1600(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 386
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadModel(Landroid/media/soundtrigger_middleware/SoundModel;)I
    .locals 5
    .param p1, "model"    # Landroid/media/soundtrigger_middleware/SoundModel;

    .line 276
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 277
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$500(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;->acquireSession()Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    move-result-object v0

    .line 280
    .local v0, "audioSession":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 282
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$600(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$700(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    move-result-object v3

    iget v3, v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->maxSoundModels:I

    if-eq v2, v3, :cond_0

    .line 286
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$1;)V

    .line 287
    .local v2, "loadedModel":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    invoke-static {v2, p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->access$900(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger_middleware/SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I

    move-result v3

    .line 288
    .local v3, "result":I
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$604(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)I

    .line 289
    monitor-exit v1

    return v3

    .line 283
    .end local v2    # "loadedModel":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    .end local v3    # "result":I
    :cond_0
    new-instance v2, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const/4 v3, 0x1

    const-string v4, "Maximum number of models loaded."

    invoke-direct {v2, v3, v4}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(ILjava/lang/String;)V

    .end local v0    # "audioSession":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .end local p1    # "model":Landroid/media/soundtrigger_middleware/SoundModel;
    throw v2

    .line 290
    .restart local v0    # "audioSession":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .restart local p1    # "model":Landroid/media/soundtrigger_middleware/SoundModel;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "audioSession":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .end local p1    # "model":Landroid/media/soundtrigger_middleware/SoundModel;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 291
    .restart local v0    # "audioSession":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .restart local p1    # "model":Landroid/media/soundtrigger_middleware/SoundModel;
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$500(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    move-result-object v2

    iget v3, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;->releaseSession(I)V

    .line 295
    throw v1
.end method

.method public loadPhraseModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)I
    .locals 9
    .param p1, "model"    # Landroid/media/soundtrigger_middleware/PhraseSoundModel;

    .line 303
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 304
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$500(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;->acquireSession()Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    move-result-object v0

    .line 307
    .local v0, "audioSession":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 309
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$600(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$700(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;

    move-result-object v3

    iget v3, v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleProperties;->maxSoundModels:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    .line 313
    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$1;)V

    .line 314
    .local v2, "loadedModel":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    invoke-static {v2, p1, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->access$1000(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger_middleware/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I

    move-result v3

    .line 315
    .local v3, "result":I
    iget-object v5, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$604(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)I

    .line 316
    const-string v5, "SoundTriggerModule"

    const-string v6, "loadPhraseModel()->%d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    monitor-exit v1

    return v3

    .line 310
    .end local v2    # "loadedModel":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    .end local v3    # "result":I
    :cond_0
    new-instance v2, Lcom/android/server/soundtrigger_middleware/RecoverableException;

    const-string v3, "Maximum number of models loaded."

    invoke-direct {v2, v4, v3}, Lcom/android/server/soundtrigger_middleware/RecoverableException;-><init>(ILjava/lang/String;)V

    .end local v0    # "audioSession":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .end local p1    # "model":Landroid/media/soundtrigger_middleware/PhraseSoundModel;
    throw v2

    .line 318
    .restart local v0    # "audioSession":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .restart local p1    # "model":Landroid/media/soundtrigger_middleware/PhraseSoundModel;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "audioSession":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .end local p1    # "model":Landroid/media/soundtrigger_middleware/PhraseSoundModel;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 319
    .restart local v0    # "audioSession":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .restart local p1    # "model":Landroid/media/soundtrigger_middleware/PhraseSoundModel;
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$500(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    move-result-object v2

    iget v3, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    invoke-virtual {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;->releaseSession(I)V

    .line 323
    throw v1
.end method

.method public queryModelParameterSupport(II)Landroid/media/soundtrigger_middleware/ModelParameterRange;
    .locals 3
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I

    .line 392
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 393
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 394
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    invoke-static {v1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->access$1700(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;I)Landroid/media/soundtrigger_middleware/ModelParameterRange;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setModelParameter(III)V
    .locals 3
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .param p3, "value"    # I

    .line 375
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 376
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 377
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    invoke-static {v1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->access$1500(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;II)V

    .line 378
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startRecognition(ILandroid/media/soundtrigger_middleware/RecognitionConfig;)V
    .locals 4
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/media/soundtrigger_middleware/RecognitionConfig;

    .line 346
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 348
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v1

    .line 349
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 350
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    invoke-static {v2, p2, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->access$1200(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger_middleware/RecognitionConfig;Ljava/util/List;)V

    .line 351
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 354
    .local v2, "callback":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 355
    .end local v2    # "callback":Ljava/lang/Runnable;
    goto :goto_0

    .line 356
    :cond_0
    return-void

    .line 351
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public stopRecognition(I)V
    .locals 3
    .param p1, "modelHandle"    # I

    .line 360
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->access$1300(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)V

    .line 362
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unloadModel(I)V
    .locals 3
    .param p1, "modelHandle"    # I

    .line 330
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v0

    .line 331
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->checkValid()V

    .line 332
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->mLoadedModels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->access$1100(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)I

    move-result v1

    .line 333
    .local v1, "sessionId":I
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$606(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)I

    .line 334
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$500(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;->releaseSession(I)V

    .line 339
    return-void

    .line 334
    .end local v1    # "sessionId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.class Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;
.source "SoundTriggerMiddlewareValidation.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModuleService"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

.field private mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

.field private final mHandle:I

.field private mLoadedModels:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

.field final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V
    .locals 1
    .param p2, "handle"    # I
    .param p3, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 417
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;-><init>()V

    .line 412
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    .line 415
    sget-object p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->ALIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    .line 418
    iput-object p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 419
    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mHandle:I

    .line 421
    :try_start_0
    invoke-interface {p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    nop

    .line 425
    return-void

    .line 422
    :catch_0
    move-exception p1

    .line 423
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private detachInternal()V
    .locals 2

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V

    .line 723
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    .line 724
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 725
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->access$100(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mHandle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->sessions:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    nop

    .line 729
    return-void

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method attach(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    .locals 2
    .param p1, "delegate"    # Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 428
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 429
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->access$100(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mHandle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->sessions:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 430
    return-void
.end method

.method public binderDied()V
    .locals 5

    .line 832
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 836
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 839
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;>;"
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V

    .line 840
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V

    .line 841
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;>;"
    goto :goto_0

    .line 843
    :cond_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->detachInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    nop

    .line 847
    :try_start_1
    monitor-exit v0

    .line 848
    return-void

    .line 847
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 844
    :catch_0
    move-exception v1

    .line 845
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    throw v2

    .line 847
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public detach()V
    .locals 3

    .line 693
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->checkPermissions()V

    .line 696
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_2

    .line 701
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->ALIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot detach while models are loaded."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->detachInternal()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    nop

    .line 711
    :try_start_2
    monitor-exit v0

    .line 712
    return-void

    .line 708
    :catch_0
    move-exception v1

    .line 709
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    throw v2

    .line 699
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has already been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    throw v1

    .line 711
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 732
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->ALIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 733
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Loaded models for session %s (handle, active)"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 734
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 735
    const-string v0, "-------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 737
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 738
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 739
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    invoke-virtual {v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->getActivityState()Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 741
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->description:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 743
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;>;"
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 745
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Session %s is dead"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 746
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 748
    :goto_1
    return-void
.end method

.method public forceRecognitionEvent(I)V
    .locals 5
    .param p1, "modelHandle"    # I

    .line 579
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->checkPermissions()V

    .line 582
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_1

    .line 587
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    .line 588
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 587
    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_0

    .line 596
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    nop

    .line 600
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :try_start_2
    monitor-exit v0

    .line 601
    return-void

    .line 597
    .restart local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :catch_0
    move-exception v2

    .line 598
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    throw v3

    .line 590
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    throw v2

    .line 585
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    throw v1

    .line 600
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getModelParameter(II)I
    .locals 5
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I

    .line 634
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->checkPermissions()V

    .line 636
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateModelParameter(I)V

    .line 638
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 640
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_1

    .line 643
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    .line 644
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 643
    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 645
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {v1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->checkSupported(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 653
    :catch_0
    move-exception v2

    .line 654
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    throw v3

    .line 646
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    throw v2

    .line 641
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    throw v1

    .line 656
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public loadModel(Landroid/media/soundtrigger_middleware/SoundModel;)I
    .locals 5
    .param p1, "model"    # Landroid/media/soundtrigger_middleware/SoundModel;

    .line 435
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->checkPermissions()V

    .line 437
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateGenericModel(Landroid/media/soundtrigger_middleware/SoundModel;)V

    .line 439
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    .line 447
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger_middleware/SoundModel;)I

    move-result v1

    .line 448
    .local v1, "handle":I
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    invoke-direct {v4, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;-><init>(Landroid/media/soundtrigger_middleware/SoundModel;)V

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :try_start_2
    monitor-exit v0

    return v1

    .line 450
    .end local v1    # "handle":I
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "model":Landroid/media/soundtrigger_middleware/SoundModel;
    throw v2

    .line 442
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "model":Landroid/media/soundtrigger_middleware/SoundModel;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "model":Landroid/media/soundtrigger_middleware/SoundModel;
    throw v1

    .line 453
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "model":Landroid/media/soundtrigger_middleware/SoundModel;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public loadPhraseModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)I
    .locals 5
    .param p1, "model"    # Landroid/media/soundtrigger_middleware/PhraseSoundModel;

    .line 459
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->checkPermissions()V

    .line 461
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validatePhraseModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)V

    .line 463
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    .line 471
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v1, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)I

    move-result v1

    .line 472
    .local v1, "handle":I
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    invoke-direct {v4, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;-><init>(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)V

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    :try_start_2
    monitor-exit v0

    return v1

    .line 474
    .end local v1    # "handle":I
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "model":Landroid/media/soundtrigger_middleware/PhraseSoundModel;
    throw v2

    .line 466
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "model":Landroid/media/soundtrigger_middleware/PhraseSoundModel;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "model":Landroid/media/soundtrigger_middleware/PhraseSoundModel;
    throw v1

    .line 477
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "model":Landroid/media/soundtrigger_middleware/PhraseSoundModel;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onModuleDied()V
    .locals 3

    .line 815
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 816
    :try_start_0
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DEAD:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    iput-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    .line 817
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModuleDied()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 825
    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SoundTriggerMiddlewareValidation"

    const-string v2, "Client callback exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 827
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 817
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEvent;)V
    .locals 3
    .param p1, "modelHandle"    # I
    .param p2, "event"    # Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;

    .line 786
    iget-object v0, p2, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    iget v0, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 788
    .local v0, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v0, :cond_0

    .line 789
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->setActivityState(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;)V

    .line 793
    .end local v0    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    goto :goto_0

    .line 794
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SoundTriggerMiddlewareValidation"

    const-string v2, "Client callback exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEvent;)V
    .locals 3
    .param p1, "modelHandle"    # I
    .param p2, "event"    # Landroid/media/soundtrigger_middleware/RecognitionEvent;

    .line 762
    iget v0, p2, Landroid/media/soundtrigger_middleware/RecognitionEvent;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 764
    .local v0, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v0, :cond_0

    .line 765
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->setActivityState(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;)V

    .line 769
    .end local v0    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SoundTriggerMiddlewareValidation"

    const-string v2, "Client callback exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onRecognitionAvailabilityChange(Z)V
    .locals 3
    .param p1, "available"    # Z

    .line 805
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mCallback:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognitionAvailabilityChange(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    goto :goto_0

    .line 806
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SoundTriggerMiddlewareValidation"

    const-string v2, "Client callback exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public queryModelParameterSupport(II)Landroid/media/soundtrigger_middleware/ModelParameterRange;
    .locals 5
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I

    .line 663
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->checkPermissions()V

    .line 665
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateModelParameter(I)V

    .line 667
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_1

    .line 672
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    .line 673
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 672
    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_0

    .line 680
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger_middleware/ModelParameterRange;

    move-result-object v2

    .line 682
    .local v2, "result":Landroid/media/soundtrigger_middleware/ModelParameterRange;
    invoke-virtual {v1, p2, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->updateParameterSupport(ILandroid/media/soundtrigger_middleware/ModelParameterRange;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    :try_start_2
    monitor-exit v0

    return-object v2

    .line 684
    .end local v2    # "result":Landroid/media/soundtrigger_middleware/ModelParameterRange;
    :catch_0
    move-exception v2

    .line 685
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    throw v3

    .line 675
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    throw v2

    .line 670
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    throw v1

    .line 687
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setModelParameter(III)V
    .locals 5
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .param p3, "value"    # I

    .line 606
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->checkPermissions()V

    .line 608
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateModelParameter(I)V

    .line 610
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_1

    .line 615
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    .line 616
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 615
    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 617
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {v1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->checkSupported(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    nop

    .line 628
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :try_start_2
    monitor-exit v0

    .line 629
    return-void

    .line 625
    .restart local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :catch_0
    move-exception v2

    .line 626
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    .end local p3    # "value":I
    throw v3

    .line 618
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    .restart local p3    # "value":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    .end local p3    # "value":I
    throw v2

    .line 613
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    .restart local p3    # "value":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    .end local p2    # "modelParam":I
    .end local p3    # "value":I
    throw v1

    .line 628
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "modelParam":I
    .restart local p3    # "value":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startRecognition(ILandroid/media/soundtrigger_middleware/RecognitionConfig;)V
    .locals 5
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/media/soundtrigger_middleware/RecognitionConfig;

    .line 514
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->checkPermissions()V

    .line 516
    invoke-static {p2}, Lcom/android/server/soundtrigger_middleware/ValidationUtil;->validateRecognitionConfig(Landroid/media/soundtrigger_middleware/RecognitionConfig;)V

    .line 518
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_2

    .line 523
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    .line 524
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 523
    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 525
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_1

    .line 528
    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->getActivityState()Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    move-result-object v2

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    .line 539
    :try_start_1
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->setActivityState(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;)V

    .line 540
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger_middleware/RecognitionConfig;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    nop

    .line 545
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :try_start_2
    monitor-exit v0

    .line 546
    return-void

    .line 541
    .restart local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :catch_0
    move-exception v2

    .line 542
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    invoke-virtual {v1, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->setActivityState(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;)V

    .line 543
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    .end local p2    # "config":Landroid/media/soundtrigger_middleware/RecognitionConfig;
    throw v3

    .line 529
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "config":Landroid/media/soundtrigger_middleware/RecognitionConfig;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model with handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has invalid state for starting recognition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->getActivityState()Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    .end local p2    # "config":Landroid/media/soundtrigger_middleware/RecognitionConfig;
    throw v2

    .line 526
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "config":Landroid/media/soundtrigger_middleware/RecognitionConfig;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    .end local p2    # "config":Landroid/media/soundtrigger_middleware/RecognitionConfig;
    throw v2

    .line 521
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "config":Landroid/media/soundtrigger_middleware/RecognitionConfig;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    .end local p2    # "config":Landroid/media/soundtrigger_middleware/RecognitionConfig;
    throw v1

    .line 545
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "config":Landroid/media/soundtrigger_middleware/RecognitionConfig;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopRecognition(I)V
    .locals 5
    .param p1, "modelHandle"    # I

    .line 551
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->checkPermissions()V

    .line 554
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_1

    .line 559
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    .line 560
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 559
    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_0

    .line 568
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V

    .line 569
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->setActivityState(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    nop

    .line 573
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :try_start_2
    monitor-exit v0

    .line 574
    return-void

    .line 570
    .restart local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :catch_0
    move-exception v2

    .line 571
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    throw v3

    .line 562
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    throw v2

    .line 557
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    throw v1

    .line 573
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unloadModel(I)V
    .locals 5
    .param p1, "modelHandle"    # I

    .line 483
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->checkPermissions()V

    .line 486
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    monitor-enter v0

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;->DETACHED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleStatus;

    if-eq v1, v2, :cond_2

    .line 491
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    .line 492
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 491
    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;

    .line 493
    .local v1, "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    if-eqz v1, :cond_1

    .line 496
    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->getActivityState()Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    move-result-object v2

    sget-object v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_0

    .line 503
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V

    .line 504
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;->mLoadedModels:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    nop

    .line 508
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :try_start_2
    monitor-exit v0

    .line 509
    return-void

    .line 505
    .restart local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    :catch_0
    move-exception v2

    .line 506
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;->handleException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    throw v3

    .line 497
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model with handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has invalid state for unloading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;->getActivityState()Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState$Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    throw v2

    .line 494
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    throw v2

    .line 489
    .end local v1    # "modelState":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModelState;
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Module has been detached."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .end local p1    # "modelHandle":I
    throw v1

    .line 508
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleService;
    .restart local p1    # "modelHandle":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

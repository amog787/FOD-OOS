.class public Lcom/android/server/audio/AudioService$AudioPolicyProxy;
.super Landroid/media/audiopolicy/AudioPolicyConfig;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioPolicyProxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioPolicyProxy"


# instance fields
.field mFocusDuckBehavior:I

.field final mHasFocusListener:Z

.field mIsFocusPolicy:Z

.field mIsTestFocusPolicy:Z

.field final mIsVolumeController:Z

.field final mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field final mProjection:Landroid/media/projection/IMediaProjection;

.field mProjectionCallback:Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

.field final mUidDeviceAffinities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/AudioService$AudioDeviceArray;",
            ">;"
        }
    .end annotation
.end field

.field final mUserIdDeviceAffinities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/AudioService$AudioDeviceArray;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "config"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p3, "token"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p4, "hasFocusListener"    # Z
    .param p5, "isFocusPolicy"    # Z
    .param p6, "isTestFocusPolicy"    # Z
    .param p7, "isVolumeController"    # Z
    .param p8, "projection"    # Landroid/media/projection/IMediaProjection;

    .line 10167
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    .line 10168
    invoke-direct {p0, p2}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;)V

    .line 10140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    .line 10143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUserIdDeviceAffinities:Ljava/util/HashMap;

    .line 10161
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 10162
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    .line 10163
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    .line 10169
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioPolicyConfig;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":ap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$11308(Lcom/android/server/audio/AudioService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setRegistration(Ljava/lang/String;)V

    .line 10170
    iput-object p3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 10171
    iput-boolean p4, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    .line 10172
    iput-boolean p7, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsVolumeController:Z

    .line 10173
    iput-object p8, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    .line 10174
    if-eqz p4, :cond_0

    .line 10175
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 10177
    if-eqz p5, :cond_0

    .line 10178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    .line 10179
    iput-boolean p6, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    .line 10180
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->setFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    .line 10183
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsVolumeController:Z

    if-eqz v0, :cond_1

    .line 10184
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-static {p1, v0}, Lcom/android/server/audio/AudioService;->access$11400(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 10186
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    if-eqz v0, :cond_2

    .line 10187
    new-instance v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;-><init>(Lcom/android/server/audio/AudioService$AudioPolicyProxy;Lcom/android/server/audio/AudioService$1;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjectionCallback:Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

    .line 10189
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    invoke-interface {v1, v0}, Landroid/media/projection/IMediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10194
    goto :goto_0

    .line 10190
    :catch_0
    move-exception v0

    .line 10191
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 10192
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaProjection callback registration failed, could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 10196
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()I

    move-result v0

    .line 10197
    .local v0, "status":I
    if-nez v0, :cond_3

    .line 10201
    return-void

    .line 10198
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 10199
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not connect mix, error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private logFriendlyAttributeDeviceArrayMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "attribute"    # Ljava/lang/String;
    .param p3, "spacer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/AudioService$AudioDeviceArray;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 10462
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$AudioDeviceArray;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10463
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 10464
    .local v2, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$AudioDeviceArray;>;"
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10465
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10466
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioDeviceArray;

    .line 10467
    .local v4, "deviceArray":Lcom/android/server/audio/AudioService$AudioDeviceArray;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 10468
    .local v5, "deviceSpacer":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v7, v4, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceTypes:[I

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 10469
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Type: 0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceTypes:[I

    aget v7, v7, v6

    .line 10470
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10471
    const-string v7, " Address: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceAddresses:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10472
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10468
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 10474
    .end local v2    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$AudioDeviceArray;>;"
    .end local v4    # "deviceArray":Lcom/android/server/audio/AudioService$AudioDeviceArray;
    .end local v5    # "deviceSpacer":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_0
    goto :goto_0

    .line 10475
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeUidDeviceAffinitiesFromSystem(I)I
    .locals 3
    .param p1, "uid"    # I

    .line 10329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 10331
    .local v0, "identity":J
    :try_start_0
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUidDeviceAffinities(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10333
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10331
    return v2

    .line 10333
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10334
    throw v2
.end method

.method private removeUserIdDeviceAffinitiesFromSystem(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 10381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 10383
    .local v0, "identity":J
    :try_start_0
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUserIdDeviceAffinities(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10385
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10383
    return v2

    .line 10385
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10386
    throw v2
.end method

.method private setUidDeviceAffinitiesOnSystem(ILcom/android/server/audio/AudioService$AudioDeviceArray;)I
    .locals 4
    .param p1, "uid"    # I
    .param p2, "deviceArray"    # Lcom/android/server/audio/AudioService$AudioDeviceArray;

    .line 10339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 10341
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p2, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceTypes:[I

    iget-object v3, p2, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceAddresses:[Ljava/lang/String;

    invoke-static {p1, v2, v3}, Landroid/media/AudioSystem;->setUidDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10344
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10341
    return v2

    .line 10344
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10345
    throw v2
.end method

.method private setUserIdDeviceAffinitiesOnSystem(ILcom/android/server/audio/AudioService$AudioDeviceArray;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "deviceArray"    # Lcom/android/server/audio/AudioService$AudioDeviceArray;

    .line 10391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 10393
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p2, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceTypes:[I

    iget-object v3, p2, Lcom/android/server/audio/AudioService$AudioDeviceArray;->mDeviceAddresses:[Ljava/lang/String;

    invoke-static {p1, v2, v3}, Landroid/media/AudioSystem;->setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10396
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10393
    return v2

    .line 10396
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10397
    throw v2
.end method


# virtual methods
.method addMixes(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;)I"
        }
    .end annotation

    .line 10277
    .local p1, "mixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    monitor-enter v0

    .line 10278
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 10279
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->add(Ljava/util/ArrayList;)V

    .line 10280
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    move-result v1

    monitor-exit v0

    return v1

    .line 10281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public binderDied()V
    .locals 2

    .line 10204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio policy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " died"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPolicyProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10205
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 10206
    return-void
.end method

.method connectMixes()I
    .locals 4

    .line 10294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 10295
    .local v0, "identity":J
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    move-result v2

    .line 10296
    .local v2, "status":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10297
    return v2
.end method

.method getRegistrationId()Ljava/lang/String;
    .locals 1

    .line 10209
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasMixAffectingUsage(II)Z
    .locals 3
    .param p1, "usage"    # I
    .param p2, "excludedFlags"    # I

    .line 10246
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMix;

    .line 10247
    .local v1, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioMix;->isAffectingUsage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10248
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v2

    and-int/2addr v2, p2

    if-eq v2, p2, :cond_0

    .line 10249
    const/4 v0, 0x1

    return v0

    .line 10251
    .end local v1    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_0
    goto :goto_0

    .line 10252
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hasMixRoutedToDevices([I[Ljava/lang/String;)Z
    .locals 6
    .param p1, "deviceTypes"    # [I
    .param p2, "deviceAddresses"    # [Ljava/lang/String;

    .line 10258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 10259
    const/4 v1, 0x0

    .line 10260
    .local v1, "hasDevice":Z
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    .line 10263
    .local v3, "mix":Landroid/media/audiopolicy/AudioMix;
    aget v4, p1, v0

    aget-object v5, p2, v0

    invoke-virtual {v3, v4, v5}, Landroid/media/audiopolicy/AudioMix;->isRoutedToDevice(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10264
    const/4 v1, 0x1

    .line 10265
    goto :goto_2

    .line 10267
    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_0
    goto :goto_1

    .line 10268
    :cond_1
    :goto_2
    if-nez v1, :cond_2

    .line 10269
    const/4 v2, 0x0

    return v2

    .line 10258
    .end local v1    # "hasDevice":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10272
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method release()V
    .locals 5

    .line 10213
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    if-eqz v0, :cond_0

    .line 10214
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->unsetFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    .line 10216
    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 10217
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 10219
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    if-eqz v0, :cond_2

    .line 10220
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$9000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 10222
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjectionCallback:Lcom/android/server/audio/AudioService$AudioPolicyProxy$UnregisterOnStopCallback;

    if-eqz v0, :cond_3

    .line 10224
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    invoke-interface {v1, v0}, Landroid/media/projection/IMediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10227
    goto :goto_0

    .line 10225
    :catch_0
    move-exception v0

    .line 10226
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioPolicyProxy"

    const-string v3, "Fail to unregister Audiopolicy callback from MediaProjection"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10229
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsVolumeController:Z

    if-eqz v0, :cond_4

    .line 10230
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$11600(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10231
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/AudioService;->access$11702(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 10232
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 10234
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 10235
    .local v0, "identity":J
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 10236
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 10237
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 10238
    :try_start_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->access$11800(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v4}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10239
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10241
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyUnregistration()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 10242
    :catch_1
    move-exception v2

    :goto_2
    nop

    .line 10243
    return-void

    .line 10239
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method removeMixes(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;)I"
        }
    .end annotation

    .line 10286
    .local p1, "mixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    monitor-enter v0

    .line 10287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    .line 10288
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->remove(Ljava/util/ArrayList;)V

    .line 10289
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mMixes:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    move-result v1

    monitor-exit v0

    return v1

    .line 10290
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeUidDeviceAffinities(I)I
    .locals 2
    .param p1, "uid"    # I

    .line 10319
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10320
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUidDeviceAffinitiesFromSystem(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 10321
    const/4 v0, 0x0

    return v0

    .line 10324
    :cond_0
    const-string v0, "AudioPolicyProxy"

    const-string v1, "AudioSystem. removeUidDeviceAffinities failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10325
    const/4 v0, -0x1

    return v0
.end method

.method removeUserIdDeviceAffinities(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 10370
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUserIdDeviceAffinities:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10371
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUserIdDeviceAffinitiesFromSystem(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 10372
    const/4 v0, 0x0

    return v0

    .line 10375
    :cond_0
    const-string v0, "AudioPolicyProxy"

    const-string v1, "AudioSystem.removeUserIdDeviceAffinities failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10376
    const/4 v0, -0x1

    return v0
.end method

.method setUidDeviceAffinities(I[I[Ljava/lang/String;)I
    .locals 6
    .param p1, "uid"    # I
    .param p2, "types"    # [I
    .param p3, "addresses"    # [Ljava/lang/String;

    .line 10301
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 10302
    .local v0, "Uid":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "AudioPolicyProxy"

    if-eqz v1, :cond_0

    .line 10303
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUidDeviceAffinitiesFromSystem(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 10304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioSystem. removeUidDeviceAffinities("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") failed,  cannot call AudioSystem.setUidDeviceAffinities"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10306
    return v2

    .line 10309
    :cond_0
    new-instance v1, Lcom/android/server/audio/AudioService$AudioDeviceArray;

    invoke-direct {v1, p2, p3}, Lcom/android/server/audio/AudioService$AudioDeviceArray;-><init>([I[Ljava/lang/String;)V

    .line 10310
    .local v1, "deviceArray":Lcom/android/server/audio/AudioService$AudioDeviceArray;
    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUidDeviceAffinitiesOnSystem(ILcom/android/server/audio/AudioService$AudioDeviceArray;)I

    move-result v4

    if-nez v4, :cond_1

    .line 10311
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10312
    const/4 v2, 0x0

    return v2

    .line 10314
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioSystem. setUidDeviceAffinities("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10315
    return v2
.end method

.method setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "types"    # [I
    .param p3, "addresses"    # [Ljava/lang/String;

    .line 10350
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 10351
    .local v0, "UserId":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUserIdDeviceAffinities:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "AudioPolicyProxy"

    if-eqz v1, :cond_0

    .line 10352
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUserIdDeviceAffinitiesFromSystem(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 10353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioSystem. removeUserIdDeviceAffinities("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") failed,  cannot call AudioSystem.setUserIdDeviceAffinities"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10356
    return v2

    .line 10359
    :cond_0
    new-instance v1, Lcom/android/server/audio/AudioService$AudioDeviceArray;

    invoke-direct {v1, p2, p3}, Lcom/android/server/audio/AudioService$AudioDeviceArray;-><init>([I[Ljava/lang/String;)V

    .line 10360
    .local v1, "audioDeviceArray":Lcom/android/server/audio/AudioService$AudioDeviceArray;
    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUserIdDeviceAffinitiesOnSystem(ILcom/android/server/audio/AudioService$AudioDeviceArray;)I

    move-result v4

    if-nez v4, :cond_1

    .line 10362
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUserIdDeviceAffinities:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10363
    const/4 v2, 0x0

    return v2

    .line 10365
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioSystem.setUserIdDeviceAffinities("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10366
    return v2
.end method

.method setupDeviceAffinities()I
    .locals 6

    .line 10401
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "AudioPolicyProxy"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10402
    .local v1, "uidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$AudioDeviceArray;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUidDeviceAffinitiesFromSystem(I)I

    move-result v3

    .line 10403
    .local v3, "uidStatus":I
    if-eqz v3, :cond_0

    .line 10404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupDeviceAffinities failed to remove device affinity for uid "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10406
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10404
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10407
    return v3

    .line 10409
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioDeviceArray;

    invoke-direct {p0, v4, v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUidDeviceAffinitiesOnSystem(ILcom/android/server/audio/AudioService$AudioDeviceArray;)I

    move-result v3

    .line 10410
    if-eqz v3, :cond_1

    .line 10411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupDeviceAffinities failed to set device affinity for uid "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10413
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10411
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10414
    return v3

    .line 10416
    .end local v1    # "uidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$AudioDeviceArray;>;"
    .end local v3    # "uidStatus":I
    :cond_1
    goto :goto_0

    .line 10419
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUserIdDeviceAffinities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10420
    .local v1, "userIdEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$AudioDeviceArray;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUserIdDeviceAffinitiesFromSystem(I)I

    move-result v3

    .line 10421
    .local v3, "userIdStatus":I
    if-eqz v3, :cond_3

    .line 10422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupDeviceAffinities failed to remove device affinity for userId "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10424
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10422
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10425
    return v3

    .line 10427
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 10428
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioDeviceArray;

    .line 10427
    invoke-direct {p0, v4, v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUserIdDeviceAffinitiesOnSystem(ILcom/android/server/audio/AudioService$AudioDeviceArray;)I

    move-result v3

    .line 10429
    if-eqz v3, :cond_4

    .line 10430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupDeviceAffinities failed to set device affinity for userId "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10432
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10430
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10433
    return v3

    .line 10435
    .end local v1    # "userIdEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/audio/AudioService$AudioDeviceArray;>;"
    .end local v3    # "userIdStatus":I
    :cond_4
    goto :goto_1

    .line 10436
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public toLogFriendlyString()Ljava/lang/String;
    .locals 5

    .line 10441
    invoke-super {p0}, Landroid/media/audiopolicy/AudioPolicyConfig;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v0

    .line 10442
    .local v0, "textDump":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Uid Device Affinities:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10443
    const-string v1, "     "

    .line 10444
    .local v1, "spacer":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUidDeviceAffinities:Ljava/util/HashMap;

    const-string v4, "Uid"

    invoke-direct {p0, v4, v3, v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->logFriendlyAttributeDeviceArrayMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " UserId Device Affinities:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mUserIdDeviceAffinities:Ljava/util/HashMap;

    const-string v4, "UserId"

    invoke-direct {p0, v4, v3, v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->logFriendlyAttributeDeviceArrayMap(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Proxy:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   is focus policy= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10451
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsFocusPolicy:Z

    if-eqz v2, :cond_0

    .line 10452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "     focus duck behaviour= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "     is test focus policy= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mIsTestFocusPolicy:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "     has focus listener= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mHasFocusListener:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10456
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   media projection= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mProjection:Landroid/media/projection/IMediaProjection;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10457
    return-object v0
.end method

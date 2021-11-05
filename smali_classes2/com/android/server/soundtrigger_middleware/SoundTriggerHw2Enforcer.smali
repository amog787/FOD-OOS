.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
.super Ljava/lang/Object;
.source "SoundTriggerHw2Enforcer.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SoundTriggerHw2Enforcer"


# instance fields
.field mModelStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;)V
    .locals 1
    .param p1, "underlying"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    .line 48
    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 39
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->rebootHal()V

    return-void
.end method

.method private static handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "e"    # Ljava/lang/RuntimeException;

    .line 194
    const-string v0, "SoundTriggerHw2Enforcer"

    const-string v1, "Exception caught from HAL, rebooting HAL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->rebootHal()V

    .line 196
    throw p0
.end method

.method private static rebootHal()V
    .locals 2

    .line 201
    const-string v0, "sys.audio.restart.hal"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method


# virtual methods
.method public getModelParameter(II)I
    .locals 2
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getModelParameter(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getModelState(I)V
    .locals 2
    .param p1, "modelHandle"    # I

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getModelState(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    nop

    .line 149
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;
    .locals 2

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 180
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .locals 5
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p3, "cookie"    # I

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$1;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v0

    .line 81
    .local v0, "handle":I
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    monitor-exit v1

    .line 84
    return v0

    .line 83
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .end local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .end local p3    # "cookie":I
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    .end local v0    # "handle":I
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    .restart local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .restart local p3    # "cookie":I
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
    .locals 5
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .param p2, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p3, "cookie"    # I

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$1;)V

    invoke-interface {v0, p1, v1, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v0

    .line 65
    .local v0, "handle":I
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :try_start_1
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    monitor-exit v1

    .line 68
    return v0

    .line 67
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .end local p1    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .end local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .end local p3    # "cookie":I
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    .end local v0    # "handle":I
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .restart local p1    # "soundModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    .restart local p2    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .restart local p3    # "cookie":I
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;
    .locals 2
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setModelParameter(III)V
    .locals 2
    .param p1, "modelHandle"    # I
    .param p2, "param"    # I
    .param p3, "value"    # I

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->setModelParameter(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    nop

    .line 167
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
    .locals 4
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .param p3, "callback"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p4, "cookie"    # I

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$1;)V

    invoke-interface {v0, p1, p2, v1, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V

    .line 134
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    monitor-exit v0

    .line 139
    nop

    .line 140
    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .end local p1    # "modelHandle":I
    .end local p2    # "config":Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .end local p3    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .end local p4    # "cookie":I
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .restart local p1    # "modelHandle":I
    .restart local p2    # "config":Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    .restart local p3    # "callback":Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .restart local p4    # "cookie":I
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopAllRecognitions()V
    .locals 4

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->stopAllRecognitions()V

    .line 118
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 120
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 122
    :cond_0
    monitor-exit v0

    .line 125
    nop

    .line 126
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopRecognition(I)V
    .locals 4
    .param p1, "modelHandle"    # I

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->stopRecognition(I)V

    .line 106
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    monitor-exit v0

    .line 111
    nop

    .line 112
    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .end local p1    # "modelHandle":I
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .restart local p1    # "modelHandle":I
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 185
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method

.method public unloadSoundModel(I)V
    .locals 3
    .param p1, "modelHandle"    # I

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    invoke-interface {v0, p1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->unloadSoundModel(I)V

    .line 94
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit v0

    .line 99
    nop

    .line 100
    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .end local p1    # "modelHandle":I
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    .restart local p0    # "this":Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .restart local p1    # "modelHandle":I
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->handleException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

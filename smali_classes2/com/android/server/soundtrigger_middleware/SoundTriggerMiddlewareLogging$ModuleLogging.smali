.class Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareLogging.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModuleLogging"
.end annotation


# instance fields
.field private final mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

.field final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;


# direct methods
.method private constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V
    .locals 0
    .param p2, "delegate"    # Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 207
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
    .param p2, "x1"    # Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .param p3, "x2"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$1;

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerModule;)V

    return-void
.end method

.method private varargs logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->access$200(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method private varargs logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "retVal"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->access$400(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method private varargs logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->access$300(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public detach()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    const-string v0, "detach"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->detach()V

    .line 322
    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    nop

    .line 327
    return-void

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, "e":Ljava/lang/Exception;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 325
    throw v2
.end method

.method public forceRecognitionEvent(I)V
    .locals 5
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    const-string v0, "forceRecognitionEvent"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->forceRecognitionEvent(I)V

    .line 273
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    nop

    .line 278
    return-void

    .line 274
    :catch_0
    move-exception v3

    .line 275
    .local v3, "e":Ljava/lang/Exception;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 276
    throw v3
.end method

.method public getModelParameter(II)I
    .locals 8
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    const-string v0, "getModelParameter"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v4, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->getModelParameter(II)I

    move-result v4

    .line 296
    .local v4, "result":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    return v4

    .line 298
    .end local v4    # "result":I
    :catch_0
    move-exception v4

    .line 299
    .local v4, "e":Ljava/lang/Exception;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 300
    throw v4
.end method

.method public loadModel(Landroid/media/soundtrigger_middleware/SoundModel;)I
    .locals 6
    .param p1, "model"    # Landroid/media/soundtrigger_middleware/SoundModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    const-string v0, "loadModel"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadModel(Landroid/media/soundtrigger_middleware/SoundModel;)I

    move-result v3

    .line 215
    .local v3, "result":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    return v3

    .line 217
    .end local v3    # "result":I
    :catch_0
    move-exception v3

    .line 218
    .local v3, "e":Ljava/lang/Exception;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 219
    throw v3
.end method

.method public loadPhraseModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)I
    .locals 6
    .param p1, "model"    # Landroid/media/soundtrigger_middleware/PhraseSoundModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    const-string v0, "loadPhraseModel"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->loadPhraseModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)I

    move-result v3

    .line 227
    .local v3, "result":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    return v3

    .line 229
    .end local v3    # "result":I
    :catch_0
    move-exception v3

    .line 230
    .local v3, "e":Ljava/lang/Exception;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 231
    throw v3
.end method

.method public queryModelParameterSupport(II)Landroid/media/soundtrigger_middleware/ModelParameterRange;
    .locals 7
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    const-string v0, "queryModelParameterSupport"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v4, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->queryModelParameterSupport(II)Landroid/media/soundtrigger_middleware/ModelParameterRange;

    move-result-object v4

    .line 310
    .local v4, "result":Landroid/media/soundtrigger_middleware/ModelParameterRange;
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logReturn(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-object v4

    .line 312
    .end local v4    # "result":Landroid/media/soundtrigger_middleware/ModelParameterRange;
    :catch_0
    move-exception v4

    .line 313
    .local v4, "e":Ljava/lang/Exception;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 314
    throw v4
.end method

.method public setModelParameter(III)V
    .locals 7
    .param p1, "modelHandle"    # I
    .param p2, "modelParam"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    const-string v0, "setModelParameter"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v5, p1, p2, p3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->setModelParameter(III)V

    .line 285
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {p0, v0, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    nop

    .line 290
    return-void

    .line 286
    :catch_0
    move-exception v5

    .line 287
    .local v5, "e":Ljava/lang/Exception;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-direct {p0, v0, v5, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 288
    throw v5
.end method

.method public startRecognition(ILandroid/media/soundtrigger_middleware/RecognitionConfig;)V
    .locals 6
    .param p1, "modelHandle"    # I
    .param p2, "config"    # Landroid/media/soundtrigger_middleware/RecognitionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    const-string v0, "startRecognition"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v4, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->startRecognition(ILandroid/media/soundtrigger_middleware/RecognitionConfig;)V

    .line 251
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    invoke-direct {p0, v0, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    nop

    .line 256
    return-void

    .line 252
    :catch_0
    move-exception v4

    .line 253
    .local v4, "e":Ljava/lang/Exception;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object p2, v3, v1

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 254
    throw v4
.end method

.method public stopRecognition(I)V
    .locals 5
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    const-string v0, "stopRecognition"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->stopRecognition(I)V

    .line 262
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    nop

    .line 267
    return-void

    .line 263
    :catch_0
    move-exception v3

    .line 264
    .local v3, "e":Ljava/lang/Exception;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 265
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unloadModel(I)V
    .locals 5
    .param p1, "modelHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    const-string v0, "unloadModel"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule;->unloadModel(I)V

    .line 239
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    nop

    .line 244
    return-void

    .line 240
    :catch_0
    move-exception v3

    .line 241
    .local v3, "e":Ljava/lang/Exception;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModuleLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 242
    throw v3
.end method

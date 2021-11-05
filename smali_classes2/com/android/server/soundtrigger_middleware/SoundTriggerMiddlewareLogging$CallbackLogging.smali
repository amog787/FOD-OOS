.class Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareLogging.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackLogging"
.end annotation


# instance fields
.field private final mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

.field final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;


# direct methods
.method private constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V
    .locals 0
    .param p2, "delegate"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 135
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
    .param p2, "x1"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .param p3, "x2"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$1;

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)V

    return-void
.end method

.method private varargs logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->access$200(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method private varargs logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;->access$300(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onModuleDied()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    const-string v0, "onModuleDied"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onModuleDied()V

    .line 177
    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    nop

    .line 182
    return-void

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 180
    throw v2
.end method

.method public onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEvent;)V
    .locals 6
    .param p1, "modelHandle"    # I
    .param p2, "event"    # Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const-string v0, "onPhraseRecognition"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v4, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEvent;)V

    .line 155
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    invoke-direct {p0, v0, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    nop

    .line 160
    return-void

    .line 156
    :catch_0
    move-exception v4

    .line 157
    .local v4, "e":Ljava/lang/Exception;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object p2, v3, v1

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 158
    throw v4
.end method

.method public onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEvent;)V
    .locals 6
    .param p1, "modelHandle"    # I
    .param p2, "event"    # Landroid/media/soundtrigger_middleware/RecognitionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    const-string v0, "onRecognition"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v4, p1, p2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEvent;)V

    .line 143
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    invoke-direct {p0, v0, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    nop

    .line 148
    return-void

    .line 144
    :catch_0
    move-exception v4

    .line 145
    .local v4, "e":Ljava/lang/Exception;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object p2, v3, v1

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 146
    throw v4
.end method

.method public onRecognitionAvailabilityChange(Z)V
    .locals 5
    .param p1, "available"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    const-string v0, "onRecognitionAvailabilityChange"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-interface {v3, p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognitionAvailabilityChange(Z)V

    .line 166
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-direct {p0, v0, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->logVoidReturn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    nop

    .line 171
    return-void

    .line 167
    :catch_0
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/Exception;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->logException(Ljava/lang/String;Ljava/lang/Exception;[Ljava/lang/Object;)V

    .line 169
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$CallbackLogging;->mDelegate:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

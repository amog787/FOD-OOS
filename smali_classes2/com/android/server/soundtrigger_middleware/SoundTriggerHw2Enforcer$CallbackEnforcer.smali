.class Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;
.super Ljava/lang/Object;
.source "SoundTriggerHw2Enforcer.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackEnforcer"
.end annotation


# instance fields
.field private final mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;

.field final synthetic this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;


# direct methods
.method private constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;)V
    .locals 0
    .param p2, "underlying"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;

    .line 208
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;
    .param p2, "x1"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p3, "x2"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$1;

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;)V

    return-void
.end method


# virtual methods
.method public phraseRecognitionCallback(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;
    .param p2, "cookie"    # I

    .line 233
    iget-object v0, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    iget-object v0, v0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    iget v0, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->model:I

    .line 234
    .local v0, "model":I
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;

    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    const-string v2, "SoundTriggerHw2Enforcer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected recognition event for model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->access$100()V

    .line 238
    monitor-exit v1

    return-void

    .line 240
    :cond_0
    iget-object v2, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;->common:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    iget-object v2, v2, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    iget v2, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->status:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 242
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;

    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;

    invoke-interface {v1, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;->phraseRecognitionCallback(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;I)V

    .line 246
    return-void

    .line 244
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public recognitionCallback(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;
    .param p2, "cookie"    # I

    .line 215
    iget-object v0, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    iget v0, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->model:I

    .line 216
    .local v0, "model":I
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;

    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    const-string v2, "SoundTriggerHw2Enforcer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected recognition event for model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->access$100()V

    .line 220
    monitor-exit v1

    return-void

    .line 222
    :cond_0
    iget-object v2, p1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    iget v2, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->status:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 224
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;

    iget-object v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer;->mModelStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Enforcer$CallbackEnforcer;->mUnderlying:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;

    invoke-interface {v1, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;->recognitionCallback(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;I)V

    .line 228
    return-void

    .line 226
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

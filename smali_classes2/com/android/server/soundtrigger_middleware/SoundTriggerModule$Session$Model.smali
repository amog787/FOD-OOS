.class Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
.super Ljava/lang/Object;
.source "SoundTriggerModule.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Model"
.end annotation


# instance fields
.field public mHandle:I

.field private mModelType:I

.field private mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

.field private mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

.field final synthetic this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;


# direct methods
.method private constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    sget-object p1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->INIT:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 451
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mModelType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;
    .param p2, "x1"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$1;

    .line 448
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)V

    return-void
.end method

.method private abortActiveRecognition(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 558
    .local p1, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->getState()Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    move-result-object v0

    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    if-eq v0, v1, :cond_0

    .line 559
    return-void

    .line 562
    :cond_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->stopRecognition()V

    .line 565
    new-instance v0, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerModule$Session$Model$SKjuNdt0iPC81BScKlVMeotxUlg;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerModule$Session$Model$SKjuNdt0iPC81BScKlVMeotxUlg;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger_middleware/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    .param p1, "x1"    # Landroid/media/soundtrigger_middleware/PhraseSoundModel;
    .param p2, "x2"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->load(Landroid/media/soundtrigger_middleware/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    .line 448
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->unload()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger_middleware/RecognitionConfig;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    .param p1, "x1"    # Landroid/media/soundtrigger_middleware/RecognitionConfig;
    .param p2, "x2"    # Ljava/util/List;

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->startRecognition(Landroid/media/soundtrigger_middleware/RecognitionConfig;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    .line 448
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->stopRecognition()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;

    .line 448
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->forceRecognitionEvent()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setParameter(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    .param p1, "x1"    # I

    .line 448
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->getParameter(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;I)Landroid/media/soundtrigger_middleware/ModelParameterRange;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    .param p1, "x1"    # I

    .line 448
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->queryModelParameterSupport(I)Landroid/media/soundtrigger_middleware/ModelParameterRange;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    .param p1, "x1"    # Ljava/util/List;

    .line 448
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->abortActiveRecognition(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;Landroid/media/soundtrigger_middleware/SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;
    .param p1, "x1"    # Landroid/media/soundtrigger_middleware/SoundModel;
    .param p2, "x2"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->load(Landroid/media/soundtrigger_middleware/SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I

    move-result v0

    return v0
.end method

.method private forceRecognitionEvent()V
    .locals 2

    .line 526
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->getState()Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    move-result-object v0

    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    if-eq v0, v1, :cond_0

    .line 528
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$2000(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-interface {v0, v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getModelState(I)V

    .line 531
    return-void
.end method

.method private getParameter(I)I
    .locals 3
    .param p1, "modelParam"    # I

    .line 540
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$2000(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    .line 541
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlModelParameter(I)I

    move-result v2

    .line 540
    invoke-interface {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->getModelParameter(II)I

    move-result v0

    return v0
.end method

.method private getState()Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    return-object v0
.end method

.method public static synthetic lambda$SKjuNdt0iPC81BScKlVMeotxUlg(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->notifyAbort()V

    return-void
.end method

.method private load(Landroid/media/soundtrigger_middleware/PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I
    .locals 3
    .param p1, "model"    # Landroid/media/soundtrigger_middleware/PhraseSoundModel;
    .param p2, "audioSession"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    .line 478
    iget-object v0, p1, Landroid/media/soundtrigger_middleware/PhraseSoundModel;->common:Landroid/media/soundtrigger_middleware/SoundModel;

    iget v0, v0, Landroid/media/soundtrigger_middleware/SoundModel;->type:I

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mModelType:I

    .line 479
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    .line 480
    nop

    .line 481
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlPhraseSoundModel(Landroid/media/soundtrigger_middleware/PhraseSoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;

    move-result-object v0

    .line 483
    .local v0, "hidlModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$2000(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    .line 485
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 486
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->access$2100(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    return v1
.end method

.method private load(Landroid/media/soundtrigger_middleware/SoundModel;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;)I
    .locals 3
    .param p1, "model"    # Landroid/media/soundtrigger_middleware/SoundModel;
    .param p2, "audioSession"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    .line 466
    iget v0, p1, Landroid/media/soundtrigger_middleware/SoundModel;->type:I

    iput v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mModelType:I

    .line 467
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    .line 468
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlSoundModel(Landroid/media/soundtrigger_middleware/SoundModel;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;

    move-result-object v0

    .line 470
    .local v0, "hidlModel":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$2000(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    .line 471
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 472
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->access$2100(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    return v1
.end method

.method private notifyAbort()V
    .locals 4

    .line 571
    const-string v0, "SoundTriggerModule"

    :try_start_0
    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mModelType:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown model type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mModelType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 574
    :cond_0
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$2200()Landroid/media/soundtrigger_middleware/RecognitionEvent;

    move-result-object v1

    .line 575
    .local v1, "event":Landroid/media/soundtrigger_middleware/RecognitionEvent;
    iput v2, v1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->status:I

    .line 577
    iput v2, v1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->type:I

    .line 578
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->access$2300(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v2

    iget v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-interface {v2, v3, v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEvent;)V

    .line 580
    .end local v1    # "event":Landroid/media/soundtrigger_middleware/RecognitionEvent;
    goto :goto_0

    .line 584
    :cond_1
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$2400()Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;

    move-result-object v1

    .line 585
    .local v1, "event":Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;
    iget-object v3, v1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    iput v2, v3, Landroid/media/soundtrigger_middleware/RecognitionEvent;->status:I

    .line 587
    iget-object v2, v1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    const/4 v3, 0x0

    iput v3, v2, Landroid/media/soundtrigger_middleware/RecognitionEvent;->type:I

    .line 588
    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->access$2300(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v2

    iget v3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-interface {v2, v3, v1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v1    # "event":Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;
    nop

    .line 600
    :goto_0
    goto :goto_1

    .line 596
    :catch_0
    move-exception v1

    .line 599
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Client callback execption."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private queryModelParameterSupport(I)Landroid/media/soundtrigger_middleware/ModelParameterRange;
    .locals 3
    .param p1, "modelParam"    # I

    .line 546
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    .line 547
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$2000(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    .line 548
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlModelParameter(I)I

    move-result v2

    .line 547
    invoke-interface {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;

    move-result-object v0

    .line 546
    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlModelParameterRange(Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;)Landroid/media/soundtrigger_middleware/ModelParameterRange;

    move-result-object v0

    return-object v0
.end method

.method private setParameter(II)V
    .locals 3
    .param p1, "modelParam"    # I
    .param p2, "value"    # I

    .line 535
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$2000(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    .line 536
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlModelParameter(I)I

    move-result v2

    .line 535
    invoke-interface {v0, v1, v2, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->setModelParameter(III)V

    .line 537
    return-void
.end method

.method private setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 460
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mState:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    .line 461
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 462
    return-void
.end method

.method private startRecognition(Landroid/media/soundtrigger_middleware/RecognitionConfig;Ljava/util/List;)V
    .locals 4
    .param p1, "config"    # Landroid/media/soundtrigger_middleware/RecognitionConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/soundtrigger_middleware/RecognitionConfig;",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 502
    .local p2, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$1900(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerModule$Session$Model$SKjuNdt0iPC81BScKlVMeotxUlg;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger_middleware/-$$Lambda$SoundTriggerModule$Session$Model$SKjuNdt0iPC81BScKlVMeotxUlg;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    return-void

    .line 507
    :cond_0
    nop

    .line 508
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->aidl2hidlRecognitionConfig(Landroid/media/soundtrigger_middleware/RecognitionConfig;)Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;

    move-result-object v0

    .line 509
    .local v0, "hidlConfig":Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    iget v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mDeviceHandle:I

    iput v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    .line 510
    iget-object v1, v0, Landroid/hardware/soundtrigger/V2_3/RecognitionConfig;->base:Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;

    iget-object v1, v1, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    iget v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mIoHandle:I

    iput v2, v1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    .line 511
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$2000(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    move-result-object v1

    iget v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p0, v3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V

    .line 512
    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->ACTIVE:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-direct {p0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 513
    return-void
.end method

.method private stopRecognition()V
    .locals 2

    .line 516
    invoke-direct {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->getState()Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    move-result-object v0

    sget-object v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    if-ne v0, v1, :cond_0

    .line 518
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$2000(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-interface {v0, v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->stopRecognition(I)V

    .line 521
    sget-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 522
    return-void
.end method

.method private unload()I
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;->access$2000(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-interface {v0, v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;->unloadSoundModel(I)V

    .line 496
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->access$2100(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    iget v0, v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    return v0
.end method


# virtual methods
.method public phraseRecognitionCallback(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;I)V
    .locals 4
    .param p1, "phraseRecognitionEvent"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;
    .param p2, "cookie"    # I

    .line 628
    nop

    .line 629
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlPhraseRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;)Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;

    move-result-object v0

    .line 630
    .local v0, "aidlEvent":Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;
    iget-object v1, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    iget v2, v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    iput v2, v1, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureSession:I

    .line 632
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v1

    .line 633
    :try_start_0
    iget-object v2, v0, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger_middleware/RecognitionEvent;

    iget v2, v2, Landroid/media/soundtrigger_middleware/RecognitionEvent;->status:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 634
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 636
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->access$2300(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v1

    iget v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-interface {v1, v2, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 644
    nop

    .line 645
    return-void

    .line 641
    :catch_0
    move-exception v1

    .line 643
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 636
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public recognitionCallback(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;I)V
    .locals 4
    .param p1, "recognitionEvent"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;
    .param p2, "cookie"    # I

    .line 607
    nop

    .line 608
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/ConversionUtil;->hidl2aidlRecognitionEvent(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/media/soundtrigger_middleware/RecognitionEvent;

    move-result-object v0

    .line 609
    .local v0, "aidlEvent":Landroid/media/soundtrigger_middleware/RecognitionEvent;
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mSession:Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;

    iget v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    iput v1, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->captureSession:I

    .line 610
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    iget-object v1, v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->this$0:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule;

    monitor-enter v1

    .line 611
    :try_start_0
    iget v2, v0, Landroid/media/soundtrigger_middleware/RecognitionEvent;->status:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 612
    sget-object v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;->LOADED:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;

    invoke-direct {p0, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->setState(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$ModelState;)V

    .line 614
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :try_start_1
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->this$1:Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;

    invoke-static {v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;->access$2300(Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    move-result-object v1

    iget v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerModule$Session$Model;->mHandle:I

    invoke-interface {v1, v2, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;->onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 621
    nop

    .line 622
    return-void

    .line 618
    :catch_0
    move-exception v1

    .line 620
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 614
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

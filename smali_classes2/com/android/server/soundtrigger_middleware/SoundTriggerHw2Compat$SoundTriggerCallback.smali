.class Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;
.super Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;
.source "SoundTriggerHw2Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundTriggerCallback"
.end annotation


# instance fields
.field private final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;


# direct methods
.method private constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;)V
    .locals 1
    .param p1, "delegate"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;

    .line 457
    invoke-direct {p0}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$Stub;-><init>()V

    .line 458
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;

    .line 459
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    .param p2, "x1"    # Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$1;

    .line 451
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;)V

    return-void
.end method


# virtual methods
.method public phraseRecognitionCallback(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;
    .param p2, "cookie"    # I

    .line 496
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertPhraseRecognitionEvent_2_0_to_2_1(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$PhraseRecognitionEvent;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;

    move-result-object v0

    .line 497
    .local v0, "event_2_1":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;

    invoke-interface {v1, v0, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;->phraseRecognitionCallback(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;I)V

    .line 498
    return-void
.end method

.method public phraseRecognitionCallback_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;
    .param p2, "cookie"    # I

    .line 472
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;->phraseRecognitionCallback(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;I)V

    .line 473
    return-void
.end method

.method public recognitionCallback(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;
    .param p2, "cookie"    # I

    .line 486
    nop

    .line 487
    invoke-static {p1}, Lcom/android/server/soundtrigger_middleware/Hw2CompatUtil;->convertRecognitionEvent_2_0_to_2_1(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;)Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    move-result-object v0

    .line 488
    .local v0, "event_2_1":Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;

    invoke-interface {v1, v0, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;->recognitionCallback(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;I)V

    .line 489
    return-void
.end method

.method public recognitionCallback_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;
    .param p2, "cookie"    # I

    .line 465
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$SoundTriggerCallback;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;->recognitionCallback(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;I)V

    .line 466
    return-void
.end method

.method public soundModelCallback(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$ModelEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$ModelEvent;
    .param p2, "cookie"    # I

    .line 505
    return-void
.end method

.method public soundModelCallback_2_1(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$ModelEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$ModelEvent;
    .param p2, "cookie"    # I

    .line 480
    return-void
.end method

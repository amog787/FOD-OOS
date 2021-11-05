.class public interface abstract Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
.super Ljava/lang/Object;
.source "ISoundTriggerHw2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract phraseRecognitionCallback(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$PhraseRecognitionEvent;I)V
.end method

.method public abstract recognitionCallback(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;I)V
.end method

.class public interface abstract Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2;
.super Ljava/lang/Object;
.source "ISoundTriggerHw2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;
    }
.end annotation


# virtual methods
.method public abstract getModelParameter(II)I
.end method

.method public abstract getModelState(I)V
.end method

.method public abstract getProperties()Landroid/hardware/soundtrigger/V2_3/Properties;
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
.end method

.method public abstract loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$PhraseSoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
.end method

.method public abstract loadSoundModel(Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$SoundModel;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)I
.end method

.method public abstract queryParameter(II)Landroid/hardware/soundtrigger/V2_3/ModelParameterRange;
.end method

.method public abstract setModelParameter(III)V
.end method

.method public abstract startRecognition(ILandroid/hardware/soundtrigger/V2_3/RecognitionConfig;Lcom/android/server/soundtrigger_middleware/ISoundTriggerHw2$Callback;I)V
.end method

.method public abstract stopAllRecognitions()V
.end method

.method public abstract stopRecognition(I)V
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
.end method

.method public abstract unloadSoundModel(I)V
.end method

.class public final synthetic Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$F-iA254xzDfAHrQW86c2oSqXfwI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;


# instance fields
.field private final synthetic f$0:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

.field private final synthetic f$1:Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$F-iA254xzDfAHrQW86c2oSqXfwI;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    iput-object p2, p0, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$F-iA254xzDfAHrQW86c2oSqXfwI;->f$1:Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    return-void
.end method


# virtual methods
.method public final run(ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$F-iA254xzDfAHrQW86c2oSqXfwI;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    iget-object v1, p0, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$F-iA254xzDfAHrQW86c2oSqXfwI;->f$1:Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->lambda$onGenericSoundTriggerDetected$1$SoundTriggerService$RemoteSoundTriggerDetectionService(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V

    return-void
.end method

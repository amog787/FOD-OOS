.class public final synthetic Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$crQZgbDmIG6q92Mrkm49T2yqrs0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;


# instance fields
.field public final synthetic f$0:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$crQZgbDmIG6q92Mrkm49T2yqrs0;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    iput p2, p0, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$crQZgbDmIG6q92Mrkm49T2yqrs0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run(ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$crQZgbDmIG6q92Mrkm49T2yqrs0;->f$0:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    iget v1, p0, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$crQZgbDmIG6q92Mrkm49T2yqrs0;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->lambda$onError$4$SoundTriggerService$RemoteSoundTriggerDetectionService(IILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V

    return-void
.end method

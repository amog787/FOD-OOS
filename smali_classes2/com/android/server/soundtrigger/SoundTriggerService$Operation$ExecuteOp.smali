.class interface abstract Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;
.super Ljava/lang/Object;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ExecuteOp"
.end annotation


# virtual methods
.method public abstract run(ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

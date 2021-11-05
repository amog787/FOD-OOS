.class public final synthetic Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$f4MXnpVbndKtwah7RVztUtj3RoU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$f4MXnpVbndKtwah7RVztUtj3RoU;->f$0:Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$f4MXnpVbndKtwah7RVztUtj3RoU;->f$0:Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->lambda$sendRequestActiveSource$0$SystemAudioInitiationActionFromAvr(I)V

    return-void
.end method

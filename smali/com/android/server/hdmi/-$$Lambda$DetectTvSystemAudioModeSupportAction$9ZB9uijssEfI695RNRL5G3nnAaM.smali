.class public final synthetic Lcom/android/server/hdmi/-$$Lambda$DetectTvSystemAudioModeSupportAction$9ZB9uijssEfI695RNRL5G3nnAaM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/-$$Lambda$DetectTvSystemAudioModeSupportAction$9ZB9uijssEfI695RNRL5G3nnAaM;->f$0:Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;

    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/-$$Lambda$DetectTvSystemAudioModeSupportAction$9ZB9uijssEfI695RNRL5G3nnAaM;->f$0:Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->lambda$sendSetSystemAudioMode$0$DetectTvSystemAudioModeSupportAction(I)V

    return-void
.end method

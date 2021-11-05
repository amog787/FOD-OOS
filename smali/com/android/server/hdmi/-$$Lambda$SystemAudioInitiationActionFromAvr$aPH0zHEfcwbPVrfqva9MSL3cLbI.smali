.class public final synthetic Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$aPH0zHEfcwbPVrfqva9MSL3cLbI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$aPH0zHEfcwbPVrfqva9MSL3cLbI;->f$0:Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    iput-boolean p2, p0, Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$aPH0zHEfcwbPVrfqva9MSL3cLbI;->f$1:Z

    iput p3, p0, Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$aPH0zHEfcwbPVrfqva9MSL3cLbI;->f$2:I

    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$aPH0zHEfcwbPVrfqva9MSL3cLbI;->f$0:Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    iget-boolean v1, p0, Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$aPH0zHEfcwbPVrfqva9MSL3cLbI;->f$1:Z

    iget v2, p0, Lcom/android/server/hdmi/-$$Lambda$SystemAudioInitiationActionFromAvr$aPH0zHEfcwbPVrfqva9MSL3cLbI;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->lambda$sendSetSystemAudioMode$1$SystemAudioInitiationActionFromAvr(ZII)V

    return-void
.end method

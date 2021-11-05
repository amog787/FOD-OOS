.class public final synthetic Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$-7fhWuVwUiBxScm6sqwHxovK41E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

.field public final synthetic f$1:Landroid/hardware/tv/cec/V1_0/CecMessage;

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;Landroid/hardware/tv/cec/V1_0/CecMessage;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$-7fhWuVwUiBxScm6sqwHxovK41E;->f$0:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    iput-object p2, p0, Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$-7fhWuVwUiBxScm6sqwHxovK41E;->f$1:Landroid/hardware/tv/cec/V1_0/CecMessage;

    iput-object p3, p0, Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$-7fhWuVwUiBxScm6sqwHxovK41E;->f$2:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$-7fhWuVwUiBxScm6sqwHxovK41E;->f$0:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    iget-object v1, p0, Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$-7fhWuVwUiBxScm6sqwHxovK41E;->f$1:Landroid/hardware/tv/cec/V1_0/CecMessage;

    iget-object v2, p0, Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$-7fhWuVwUiBxScm6sqwHxovK41E;->f$2:[B

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->lambda$onCecMessage$0$HdmiCecController$HdmiCecCallback(Landroid/hardware/tv/cec/V1_0/CecMessage;[B)V

    return-void
.end method

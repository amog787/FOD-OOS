.class public final synthetic Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$4-RVFN1kudwsncLnWj5l8GAvuWE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

.field public final synthetic f$1:Landroid/hardware/tv/cec/V1_0/HotplugEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;Landroid/hardware/tv/cec/V1_0/HotplugEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$4-RVFN1kudwsncLnWj5l8GAvuWE;->f$0:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    iput-object p2, p0, Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$4-RVFN1kudwsncLnWj5l8GAvuWE;->f$1:Landroid/hardware/tv/cec/V1_0/HotplugEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$4-RVFN1kudwsncLnWj5l8GAvuWE;->f$0:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    iget-object v1, p0, Lcom/android/server/hdmi/-$$Lambda$HdmiCecController$HdmiCecCallback$4-RVFN1kudwsncLnWj5l8GAvuWE;->f$1:Landroid/hardware/tv/cec/V1_0/HotplugEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->lambda$onHotplugEvent$1$HdmiCecController$HdmiCecCallback(Landroid/hardware/tv/cec/V1_0/HotplugEvent;)V

    return-void
.end method

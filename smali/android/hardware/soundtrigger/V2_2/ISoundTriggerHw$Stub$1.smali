.class Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$1;
.super Ljava/lang/Object;
.source "ISoundTriggerHw.java"

# interfaces
.implements Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$getPropertiesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;

    .line 759
    iput-object p1, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$1;->this$0:Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub;

    iput-object p2, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;)V
    .locals 2
    .param p1, "retval"    # I
    .param p2, "properties"    # Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;

    .line 762
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 763
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 764
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Properties;->writeToParcel(Landroid/os/HwParcel;)V

    .line 765
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_2/ISoundTriggerHw$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 766
    return-void
.end method

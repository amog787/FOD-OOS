.class Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$1;
.super Ljava/lang/Object;
.source "IBroadcastRadio.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getAmFmRegionConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;

    .line 755
    iput-object p1, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$1;->this$0:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;

    iput-object p2, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILandroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "config"    # Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;

    .line 758
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 759
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 760
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, v0}, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->writeToParcel(Landroid/os/HwParcel;)V

    .line 761
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 762
    return-void
.end method

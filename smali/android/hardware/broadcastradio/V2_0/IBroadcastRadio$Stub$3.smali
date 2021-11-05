.class Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;
.super Ljava/lang/Object;
.source "IBroadcastRadio.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;


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

    .line 786
    iput-object p1, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;->this$0:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;

    iput-object p2, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILandroid/hardware/broadcastradio/V2_0/ITunerSession;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "session"    # Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 789
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 790
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 791
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 792
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 793
    return-void
.end method

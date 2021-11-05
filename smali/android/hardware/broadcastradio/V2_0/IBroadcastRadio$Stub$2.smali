.class Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$2;
.super Ljava/lang/Object;
.source "IBroadcastRadio.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getDabRegionConfigCallback;


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

    .line 770
    iput-object p1, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$2;->this$0:Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;

    iput-object p2, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/DabTableEntry;",
            ">;)V"
        }
    .end annotation

    .line 773
    .local p2, "config":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/DabTableEntry;>;"
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 774
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 775
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-static {v0, p2}, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 776
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 777
    return-void
.end method

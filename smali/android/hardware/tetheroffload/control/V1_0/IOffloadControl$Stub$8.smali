.class Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;
.super Ljava/lang/Object;
.source "IOffloadControl.java"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;

    .line 980
    iput-object p1, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;->this$0:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;

    iput-object p2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ZLjava/lang/String;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 983
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 984
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 985
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 987
    return-void
.end method

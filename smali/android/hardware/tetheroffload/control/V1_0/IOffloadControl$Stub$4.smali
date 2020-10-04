.class Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;
.super Ljava/lang/Object;
.source "IOffloadControl.java"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;


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

    .line 890
    iput-object p1, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;->this$0:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;

    iput-object p2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(JJ)V
    .locals 2
    .param p1, "rxBytes"    # J
    .param p3, "txBytes"    # J

    .line 893
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 894
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 895
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p3, p4}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 896
    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 897
    return-void
.end method

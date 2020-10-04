.class Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;
.super Ljava/lang/Object;
.source "IWeaver.java"

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver$readCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/weaver/V1_0/IWeaver$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/weaver/V1_0/IWeaver$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/weaver/V1_0/IWeaver$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/weaver/V1_0/IWeaver$Stub;

    .line 589
    iput-object p1, p0, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;->this$0:Landroid/hardware/weaver/V1_0/IWeaver$Stub;

    iput-object p2, p0, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "readResponse"    # Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    .line 592
    iget-object v0, p0, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 593
    iget-object v0, p0, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 594
    iget-object v0, p0, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, v0}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->writeToParcel(Landroid/os/HwParcel;)V

    .line 595
    iget-object v0, p0, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 596
    return-void
.end method

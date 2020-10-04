.class Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;
.super Ljava/lang/Object;
.source "IOemLock.java"

# interfaces
.implements Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/oemlock/V1_0/IOemLock$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/oemlock/V1_0/IOemLock$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/oemlock/V1_0/IOemLock$Stub;

    .line 619
    iput-object p1, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;->this$0:Landroid/hardware/oemlock/V1_0/IOemLock$Stub;

    iput-object p2, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(IZ)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "allowed"    # Z

    .line 622
    iget-object v0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 623
    iget-object v0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 624
    iget-object v0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 625
    iget-object v0, p0, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 626
    return-void
.end method

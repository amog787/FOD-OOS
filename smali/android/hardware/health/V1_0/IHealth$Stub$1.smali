.class Landroid/hardware/health/V1_0/IHealth$Stub$1;
.super Ljava/lang/Object;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V1_0/IHealth$updateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/health/V1_0/IHealth$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/health/V1_0/IHealth$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/health/V1_0/IHealth$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/health/V1_0/IHealth$Stub;

    .line 543
    iput-object p1, p0, Landroid/hardware/health/V1_0/IHealth$Stub$1;->this$0:Landroid/hardware/health/V1_0/IHealth$Stub;

    iput-object p2, p0, Landroid/hardware/health/V1_0/IHealth$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ZLandroid/hardware/health/V1_0/HealthInfo;)V
    .locals 2
    .param p1, "skipLogging"    # Z
    .param p2, "infoOut"    # Landroid/hardware/health/V1_0/HealthInfo;

    .line 546
    iget-object v0, p0, Landroid/hardware/health/V1_0/IHealth$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 547
    iget-object v0, p0, Landroid/hardware/health/V1_0/IHealth$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 548
    iget-object v0, p0, Landroid/hardware/health/V1_0/IHealth$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, v0}, Landroid/hardware/health/V1_0/HealthInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 549
    iget-object v0, p0, Landroid/hardware/health/V1_0/IHealth$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 550
    return-void
.end method

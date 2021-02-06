.class Landroid/hardware/health/V2_0/IHealth$Stub$7;
.super Ljava/lang/Object;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/health/V2_0/IHealth$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/health/V2_0/IHealth$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/health/V2_0/IHealth$Stub;

    .line 1065
    iput-object p1, p0, Landroid/hardware/health/V2_0/IHealth$Stub$7;->this$0:Landroid/hardware/health/V2_0/IHealth$Stub;

    iput-object p2, p0, Landroid/hardware/health/V2_0/IHealth$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

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
            "Landroid/hardware/health/V2_0/StorageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1068
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/health/V2_0/StorageInfo;>;"
    iget-object v0, p0, Landroid/hardware/health/V2_0/IHealth$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1069
    iget-object v0, p0, Landroid/hardware/health/V2_0/IHealth$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1070
    iget-object v0, p0, Landroid/hardware/health/V2_0/IHealth$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-static {v0, p2}, Landroid/hardware/health/V2_0/StorageInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1071
    iget-object v0, p0, Landroid/hardware/health/V2_0/IHealth$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 1072
    return-void
.end method

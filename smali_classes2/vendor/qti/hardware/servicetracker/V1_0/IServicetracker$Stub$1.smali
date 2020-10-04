.class Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$1;
.super Ljava/lang/Object;
.source "IServicetracker.java"

# interfaces
.implements Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getclientInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;

    .line 871
    iput-object p1, p0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$1;->this$0:Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;

    iput-object p2, p0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILvendor/qti/hardware/servicetracker/V1_0/ClientRecord;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "client"    # Lvendor/qti/hardware/servicetracker/V1_0/ClientRecord;

    .line 874
    iget-object v0, p0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 875
    iget-object v0, p0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 876
    iget-object v0, p0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p2, v0}, Lvendor/qti/hardware/servicetracker/V1_0/ClientRecord;->writeToParcel(Landroid/os/HwParcel;)V

    .line 877
    iget-object v0, p0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 878
    return-void
.end method

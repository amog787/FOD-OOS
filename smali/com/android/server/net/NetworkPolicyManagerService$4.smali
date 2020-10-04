.class Lcom/android/server/net/NetworkPolicyManagerService$4;
.super Landroid/app/IUidObserver$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 932
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 943
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 949
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 939
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 940
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 946
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J

    .line 934
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    .line 935
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 934
    const/16 v2, 0x64

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 935
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 936
    return-void
.end method

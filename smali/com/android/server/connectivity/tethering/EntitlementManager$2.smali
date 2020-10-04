.class Lcom/android/server/connectivity/tethering/EntitlementManager$2;
.super Landroid/os/ResultReceiver;
.source "EntitlementManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/tethering/EntitlementManager;->buildProxyReceiver(IZLandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

.field final synthetic val$notifyFail:Z

.field final synthetic val$receiver:Landroid/os/ResultReceiver;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/EntitlementManager;Landroid/os/Handler;IZLandroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/tethering/EntitlementManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 596
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iput p3, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$type:I

    iput-boolean p4, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$notifyFail:Z

    iput-object p5, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 599
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$type:I

    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$800(Lcom/android/server/connectivity/tethering/EntitlementManager;II)I

    move-result v0

    .line 600
    .local v0, "updatedCacheValue":I
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$type:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->addDownstreamMapping(II)V

    .line 601
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$notifyFail:Z

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$900(Lcom/android/server/connectivity/tethering/EntitlementManager;)Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;

    move-result-object v1

    iget v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$type:I

    invoke-interface {v1, v2}, Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;->onUiEntitlementFailed(I)V

    .line 604
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$receiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 605
    :cond_1
    return-void
.end method

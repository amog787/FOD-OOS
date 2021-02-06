.class Lcom/android/server/connectivity/MultipathPolicyTracker$2;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "MultipathPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/MultipathPolicyTracker;->registerNetworkPolicyListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 501
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onMeteredIfacesChanged$0$MultipathPolicyTracker$2()V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1200(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    return-void
.end method

.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 2
    .param p1, "meteredIfaces"    # [Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$900(Lcom/android/server/connectivity/MultipathPolicyTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$MultipathPolicyTracker$2$dvyDLfu9d6g2XoEdL3QMHx7ut6k;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/-$$Lambda$MultipathPolicyTracker$2$dvyDLfu9d6g2XoEdL3QMHx7ut6k;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    return-void
.end method

.class Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;
.super Landroid/app/usage/NetworkStatsManager$UsageCallback;
.source "MultipathPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

.field final synthetic val$network:Landroid/net/Network;

.field final synthetic val$this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/net/Network;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 225
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;->this$1:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    iput-object p2, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;->val$this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    iput-object p3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;->val$network:Landroid/net/Network;

    invoke-direct {p0}, Landroid/app/usage/NetworkStatsManager$UsageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onThresholdReached(ILjava/lang/String;)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;->this$1:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->access$202(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;J)J

    .line 230
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;->this$1:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    .line 231
    return-void
.end method

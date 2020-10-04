.class Lcom/android/server/connectivity/tethering/EntitlementManager$1;
.super Landroid/content/BroadcastReceiver;
.source "EntitlementManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/EntitlementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/EntitlementManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/tethering/EntitlementManager;

    .line 492
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$1;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 495
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.connectivity.tethering.PROVISIONING_RECHECK_ALARM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$1;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$000(Lcom/android/server/connectivity/tethering/EntitlementManager;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "Received provisioning alarm"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$1;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$100(Lcom/android/server/connectivity/tethering/EntitlementManager;)Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    .line 498
    .local v0, "config":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$1;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->reevaluateSimCardProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    .line 500
    .end local v0    # "config":Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    :cond_0
    return-void
.end method

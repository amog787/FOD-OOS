.class Lcom/android/server/usage/AppStandbyController$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    .line 1750
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/usage/AppStandbyController;
    .param p2, "x1"    # Lcom/android/server/usage/AppStandbyController$1;

    .line 1750
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1753
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1754
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1755
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->getSendingUserId()I

    move-result v2

    .line 1756
    .local v2, "userId":I
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1757
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1758
    :cond_0
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v4}, Lcom/android/server/usage/AppStandbyController;->clearCarrierPrivilegedApps()V

    .line 1760
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v4, v1, v2}, Lcom/android/server/usage/AppStandbyController;->access$200(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V

    .line 1761
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v4}, Lcom/android/server/usage/AppStandbyController;->access$300(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v4

    const/16 v5, 0xb

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v2, v6, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1762
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1764
    :cond_1
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1765
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1766
    :cond_2
    const/4 v3, 0x0

    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1767
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/usage/AppStandbyController;->maybeUnrestrictBuggyApp(Ljava/lang/String;I)V

    goto :goto_0

    .line 1769
    :cond_3
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/usage/AppStandbyController;->clearAppIdleForPackage(Ljava/lang/String;I)V

    .line 1772
    :cond_4
    :goto_0
    return-void
.end method

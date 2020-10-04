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

    .line 1425
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/usage/AppStandbyController;
    .param p2, "x1"    # Lcom/android/server/usage/AppStandbyController$1;

    .line 1425
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1428
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1429
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1430
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1431
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController;->clearCarrierPrivilegedApps()V

    .line 1433
    :cond_1
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1434
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    .line 1435
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1436
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 1437
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;->getSendingUserId()I

    move-result v3

    .line 1436
    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/AppStandbyController;->clearAppIdleForPackage(Ljava/lang/String;I)V

    .line 1439
    :cond_3
    return-void
.end method

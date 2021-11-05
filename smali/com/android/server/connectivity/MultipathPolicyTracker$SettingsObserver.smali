.class final Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MultipathPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/MultipathPolicyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 516
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 517
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 518
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 522
    invoke-static {}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Should never be reached."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 527
    const-string/jumbo v0, "network_default_daily_multipath_quota_bytes"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 528
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    invoke-static {}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected settings observation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$SettingsObserver;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1200(Lcom/android/server/connectivity/MultipathPolicyTracker;)V

    .line 533
    return-void
.end method

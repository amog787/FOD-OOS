.class final Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/StatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppUpdateReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 539
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/stats/StatsCompanionService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/stats/StatsCompanionService$1;

    .line 539
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 547
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 548
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    return-void

    .line 552
    :cond_0
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 553
    :try_start_0
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 554
    const-string v1, "StatsCompanionService"

    const-string v2, "Could not access statsd to inform it of an app update"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 558
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 559
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 560
    .local v2, "b":Landroid/os/Bundle;
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 561
    .local v3, "uid":I
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 562
    .local v1, "replacing":Z
    if-nez v1, :cond_2

    .line 565
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 566
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 567
    .local v5, "app":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Landroid/os/IStatsManager;->informOnePackageRemoved(Ljava/lang/String;I)V

    .line 569
    .end local v1    # "replacing":Z
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "uid":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "app":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 570
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 571
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 572
    .restart local v2    # "b":Landroid/os/Bundle;
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 573
    .local v6, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, "app":Ljava/lang/String;
    const/high16 v4, 0x400000

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v4

    .line 577
    .local v11, "pi":Landroid/content/pm/PackageInfo;
    :try_start_2
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 580
    .local v4, "installer":Ljava/lang/String;
    move-object v12, v4

    goto :goto_0

    .line 578
    .end local v4    # "installer":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 579
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v5, ""

    move-object v4, v5

    move-object v12, v4

    .line 581
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .local v12, "installer":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v4

    invoke-virtual {v11}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    iget-object v9, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 582
    if-nez v12, :cond_4

    const-string v5, ""

    move-object v10, v5

    goto :goto_1

    :cond_4
    move-object v10, v12

    .line 581
    :goto_1
    move-object v5, v3

    invoke-interface/range {v4 .. v10}, Landroid/os/IStatsManager;->informOnePackage(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 586
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "app":Ljava/lang/String;
    .end local v6    # "uid":I
    .end local v11    # "pi":Landroid/content/pm/PackageInfo;
    .end local v12    # "installer":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 584
    :catch_1
    move-exception v1

    .line 585
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "StatsCompanionService"

    const-string v3, "Failed to inform statsd of an app update"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit v0

    .line 588
    return-void

    .line 587
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

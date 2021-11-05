.class public Lcom/android/server/updates/NetworkWatchlistInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "NetworkWatchlistInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 28
    const-string v0, "/data/misc/network_watchlist/"

    const-string v1, "network_watchlist.xml"

    const-string v2, "metadata/"

    const-string v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 34
    :try_start_0
    const-class v0, Landroid/net/NetworkWatchlistManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkWatchlistManager;

    invoke-virtual {v0}, Landroid/net/NetworkWatchlistManager;->reloadWatchlist()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NetworkWatchlistInstallReceiver"

    const-string v2, "Unable to reload watchlist"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

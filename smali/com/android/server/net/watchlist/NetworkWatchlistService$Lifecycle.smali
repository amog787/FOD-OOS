.class public Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "NetworkWatchlistService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/watchlist/NetworkWatchlistService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .line 78
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "network_watchlist_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network Watchlist service is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 86
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    invoke-static {v0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->access$100(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    invoke-static {v0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->access$200(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    invoke-virtual {v0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->startWatchlistLogging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/watchlist/ReportWatchlistJobService;->schedule(Landroid/content/Context;)V

    .line 94
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 66
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "network_watchlist_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network Watchlist service is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 72
    :cond_0
    new-instance v0, Lcom/android/server/net/watchlist/NetworkWatchlistService;

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/net/watchlist/NetworkWatchlistService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 73
    const-string/jumbo v1, "network_watchlist"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 74
    return-void
.end method

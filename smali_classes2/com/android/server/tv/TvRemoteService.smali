.class public Lcom/android/server/tv/TvRemoteService;
.super Lcom/android/server/SystemService;
.source "TvRemoteService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TvRemoteService"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/android/server/tv/TvRemoteProviderWatcher;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/android/server/tv/TvRemoteProviderWatcher;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 46
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 47
    return-void
.end method


# virtual methods
.method public monitor()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 62
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->start()V

    .line 67
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 52
    return-void
.end method

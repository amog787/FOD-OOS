.class public Lcom/android/server/BinderCallsStatsService$LifeCycle;
.super Lcom/android/server/SystemService;
.source "BinderCallsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinderCallsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycle"
.end annotation


# instance fields
.field private mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field private mService:Lcom/android/server/BinderCallsStatsService;

.field private mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 239
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 240
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .line 263
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_0

    .line 264
    const-class v0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {p0, v0}, Lcom/android/server/BinderCallsStatsService$LifeCycle;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 266
    .local v0, "deviceState":Lcom/android/internal/os/CachedDeviceState$Readonly;
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BinderCallsStats;->setDeviceState(Lcom/android/internal/os/CachedDeviceState$Readonly;)V

    .line 269
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$LifeCycle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->systemReady(Landroid/content/Context;)V

    .line 270
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mService:Lcom/android/server/BinderCallsStatsService;

    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$LifeCycle;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/BinderCallsStatsService;->systemReady(Landroid/content/Context;)V

    .line 272
    .end local v0    # "deviceState":Lcom/android/internal/os/CachedDeviceState$Readonly;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 244
    new-instance v0, Lcom/android/internal/os/BinderCallsStats;

    new-instance v1, Lcom/android/internal/os/BinderCallsStats$Injector;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats$Injector;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;)V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 245
    new-instance v0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-direct {v0}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;-><init>()V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 246
    new-instance v0, Lcom/android/server/BinderCallsStatsService;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v2, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-direct {v0, v1, v2}, Lcom/android/server/BinderCallsStatsService;-><init>(Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mService:Lcom/android/server/BinderCallsStatsService;

    .line 248
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    new-instance v1, Lcom/android/server/BinderCallsStatsService$Internal;

    iget-object v2, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-direct {v1, v2}, Lcom/android/server/BinderCallsStatsService$Internal;-><init>(Lcom/android/internal/os/BinderCallsStats;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/BinderCallsStatsService$LifeCycle;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mService:Lcom/android/server/BinderCallsStatsService;

    const-string v1, "binder_calls_stats"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/BinderCallsStatsService$LifeCycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 250
    const-string/jumbo v0, "persist.sys.binder_calls_detailed_tracking"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 253
    .local v0, "detailedTrackingEnabled":Z
    if-eqz v0, :cond_0

    .line 254
    const-string v1, "BinderCallsStatsService"

    const-string v2, "Enabled CPU usage tracking for binder calls. Controlled by persist.sys.binder_calls_detailed_tracking or via dumpsys binder_calls_stats --enable-detailed-tracking"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 259
    :cond_0
    return-void
.end method

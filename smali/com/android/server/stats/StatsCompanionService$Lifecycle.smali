.class public final Lcom/android/server/stats/StatsCompanionService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/StatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mStatsCompanionService:Lcom/android/server/stats/StatsCompanionService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 2534
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2535
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 2551
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 2552
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 2553
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService$Lifecycle;->mStatsCompanionService:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {v0}, Lcom/android/server/stats/StatsCompanionService;->access$800(Lcom/android/server/stats/StatsCompanionService;)V

    .line 2555
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 2539
    new-instance v0, Lcom/android/server/stats/StatsCompanionService;

    invoke-virtual {p0}, Lcom/android/server/stats/StatsCompanionService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/stats/StatsCompanionService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService$Lifecycle;->mStatsCompanionService:Lcom/android/server/stats/StatsCompanionService;

    .line 2541
    :try_start_0
    const-string/jumbo v0, "statscompanion"

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService$Lifecycle;->mStatsCompanionService:Lcom/android/server/stats/StatsCompanionService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/stats/StatsCompanionService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2546
    goto :goto_0

    .line 2544
    :catch_0
    move-exception v0

    .line 2545
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StatsCompanionService"

    const-string v2, "Failed to publishBinderService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2547
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

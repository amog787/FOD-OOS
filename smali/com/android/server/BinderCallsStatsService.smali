.class public Lcom/android/server/BinderCallsStatsService;
.super Landroid/os/Binder;
.source "BinderCallsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BinderCallsStatsService$LifeCycle;,
        Lcom/android/server/BinderCallsStatsService$Internal;,
        Lcom/android/server/BinderCallsStatsService$SettingsObserver;,
        Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;
    }
.end annotation


# static fields
.field private static final PERSIST_SYS_BINDER_CALLS_DETAILED_TRACKING:Ljava/lang/String; = "persist.sys.binder_calls_detailed_tracking"

.field private static final SERVICE_NAME:Ljava/lang/String; = "binder_calls_stats"

.field private static final TAG:Ljava/lang/String; = "BinderCallsStatsService"


# instance fields
.field private final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field private mSettingsObserver:Lcom/android/server/BinderCallsStatsService$SettingsObserver;

.field private final mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V
    .locals 0
    .param p1, "binderCallsStats"    # Lcom/android/internal/os/BinderCallsStats;
    .param p2, "workSourceProvider"    # Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 283
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 285
    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 286
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 299
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "binder_calls_stats"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    return-void

    .line 304
    :cond_0
    const/4 v0, 0x0

    .line 305
    .local v0, "verbose":Z
    if-eqz p3, :cond_a

    .line 306
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_a

    aget-object v4, p3, v3

    .line 307
    .local v4, "arg":Ljava/lang/String;
    const-string v5, "-a"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 308
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 309
    :cond_1
    const-string v5, "--reset"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 310
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService;->reset()V

    .line 311
    const-string v1, "binder_calls_stats reset."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    return-void

    .line 313
    :cond_2
    const-string v5, "--enable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 314
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 315
    return-void

    .line 316
    :cond_3
    const-string v5, "--disable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 317
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 318
    return-void

    .line 319
    :cond_4
    const-string v5, "--no-sampling"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 320
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1, v6}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    .line 321
    return-void

    .line 322
    :cond_5
    const-string v5, "--enable-detailed-tracking"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v7, "persist.sys.binder_calls_detailed_tracking"

    if-eqz v5, :cond_6

    .line 323
    const-string v1, "1"

    invoke-static {v7, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1, v6}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 325
    const-string v1, "Detailed tracking enabled"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    return-void

    .line 327
    :cond_6
    const-string v5, "--disable-detailed-tracking"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 328
    const-string v1, ""

    invoke-static {v7, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 330
    const-string v1, "Detailed tracking disabled"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    return-void

    .line 332
    :cond_7
    const-string v5, "--dump-worksource-provider"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 333
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;)V

    .line 334
    return-void

    .line 335
    :cond_8
    const-string v5, "-h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 336
    const-string v1, "binder_calls_stats commands:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    const-string v1, "  --reset: Reset stats"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    const-string v1, "  --enable: Enable tracking binder calls"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    const-string v1, "  --disable: Disables tracking binder calls"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    const-string v1, "  --no-sampling: Tracks all calls"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    const-string v1, "  --enable-detailed-tracking: Enables detailed tracking"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    const-string v1, "  --disable-detailed-tracking: Disables detailed tracking"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    return-void

    .line 345
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    .end local v4    # "arg":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 349
    :cond_a
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/internal/os/BinderCallsStats;->dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;Z)V

    .line 350
    return-void
.end method

.method public reset()V
    .locals 2

    .line 293
    const-string v0, "BinderCallsStatsService"

    const-string v1, "Resetting stats"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 295
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 289
    new-instance v0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v2, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/BinderCallsStatsService$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService;->mSettingsObserver:Lcom/android/server/BinderCallsStatsService$SettingsObserver;

    .line 290
    return-void
.end method

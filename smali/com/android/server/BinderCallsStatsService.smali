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

    .line 280
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 282
    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 283
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "verbose":Z
    if-eqz p3, :cond_a

    .line 298
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "verbose":Z
    .local v3, "verbose":Z
    :goto_0
    if-ge v0, v1, :cond_9

    aget-object v4, p3, v0

    .line 299
    .local v4, "arg":Ljava/lang/String;
    const-string v5, "-a"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 301
    :cond_0
    const-string v5, "--reset"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService;->reset()V

    .line 303
    const-string v0, "binder_calls_stats reset."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    return-void

    .line 305
    :cond_1
    const-string v5, "--enable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 306
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v0}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 307
    return-void

    .line 308
    :cond_2
    const-string v5, "--disable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 309
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 310
    return-void

    .line 311
    :cond_3
    const-string v5, "--no-sampling"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 312
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0, v6}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    .line 313
    return-void

    .line 314
    :cond_4
    const-string v5, "--enable-detailed-tracking"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v7, "persist.sys.binder_calls_detailed_tracking"

    if-eqz v5, :cond_5

    .line 315
    const-string v0, "1"

    invoke-static {v7, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0, v6}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 317
    const-string v0, "Detailed tracking enabled"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    return-void

    .line 319
    :cond_5
    const-string v5, "--disable-detailed-tracking"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 320
    const-string v0, ""

    invoke-static {v7, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 322
    const-string v0, "Detailed tracking disabled"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    return-void

    .line 324
    :cond_6
    const-string v5, "--dump-worksource-provider"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 325
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;)V

    .line 326
    return-void

    .line 327
    :cond_7
    const-string v5, "-h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 328
    const-string v0, "binder_calls_stats commands:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    const-string v0, "  --reset: Reset stats"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    const-string v0, "  --enable: Enable tracking binder calls"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    const-string v0, "  --disable: Disables tracking binder calls"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    const-string v0, "  --no-sampling: Tracks all calls"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    const-string v0, "  --enable-detailed-tracking: Enables detailed tracking"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    const-string v0, "  --disable-detailed-tracking: Disables detailed tracking"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    return-void

    .line 337
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    .end local v4    # "arg":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    move v0, v3

    .line 341
    .end local v3    # "verbose":Z
    .restart local v0    # "verbose":Z
    :cond_a
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/internal/os/BinderCallsStats;->dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;Z)V

    .line 342
    return-void
.end method

.method public reset()V
    .locals 2

    .line 290
    const-string v0, "BinderCallsStatsService"

    const-string v1, "Resetting stats"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 292
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 286
    new-instance v0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v2, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/BinderCallsStatsService$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService;->mSettingsObserver:Lcom/android/server/BinderCallsStatsService$SettingsObserver;

    .line 287
    return-void
.end method

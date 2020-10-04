.class public Lcom/android/server/am/InstrumentationReporter;
.super Ljava/lang/Object;
.source "InstrumentationReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/InstrumentationReporter$Report;,
        Lcom/android/server/am/InstrumentationReporter$MyThread;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final REPORT_TYPE_FINISHED:I = 0x1

.field static final REPORT_TYPE_STATUS:I = 0x0

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final mLock:Ljava/lang/Object;

.field mPendingReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/InstrumentationReporter$Report;",
            ">;"
        }
    .end annotation
.end field

.field mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private report(Lcom/android/server/am/InstrumentationReporter$Report;)V
    .locals 2
    .param p1, "report"    # Lcom/android/server/am/InstrumentationReporter$Report;

    .line 132
    iget-object v0, p0, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Lcom/android/server/am/InstrumentationReporter$MyThread;

    invoke-direct {v1, p0}, Lcom/android/server/am/InstrumentationReporter$MyThread;-><init>(Lcom/android/server/am/InstrumentationReporter;)V

    iput-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;

    .line 135
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public reportFinished(Landroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "resultCode"    # I
    .param p4, "results"    # Landroid/os/Bundle;

    .line 128
    new-instance v7, Lcom/android/server/am/InstrumentationReporter$Report;

    const/4 v2, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/InstrumentationReporter$Report;-><init>(Lcom/android/server/am/InstrumentationReporter;ILandroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    invoke-direct {p0, v7}, Lcom/android/server/am/InstrumentationReporter;->report(Lcom/android/server/am/InstrumentationReporter$Report;)V

    .line 129
    return-void
.end method

.method public reportStatus(Landroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "watcher"    # Landroid/app/IInstrumentationWatcher;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "resultCode"    # I
    .param p4, "results"    # Landroid/os/Bundle;

    .line 120
    new-instance v7, Lcom/android/server/am/InstrumentationReporter$Report;

    const/4 v2, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/InstrumentationReporter$Report;-><init>(Lcom/android/server/am/InstrumentationReporter;ILandroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    invoke-direct {p0, v7}, Lcom/android/server/am/InstrumentationReporter;->report(Lcom/android/server/am/InstrumentationReporter$Report;)V

    .line 121
    return-void
.end method

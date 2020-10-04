.class public final Lcom/android/server/timedetector/TimeDetectorService;
.super Landroid/app/timedetector/ITimeDetectorService$Stub;
.source "TimeDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "timedetector.TimeDetectorService"


# instance fields
.field private final mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mStrategyLock:Ljava/lang/Object;

.field private final mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStrategyLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;Lcom/android/server/timedetector/TimeDetectorStrategy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;
    .param p3, "timeDetectorStrategy"    # Lcom/android/server/timedetector/TimeDetectorStrategy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 92
    invoke-direct {p0}, Landroid/app/timedetector/ITimeDetectorService$Stub;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mStrategyLock:Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    .line 95
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategy;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 96
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/android/server/timedetector/TimeDetectorService;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 40
    invoke-static {p0}, Lcom/android/server/timedetector/TimeDetectorService;->create(Landroid/content/Context;)Lcom/android/server/timedetector/TimeDetectorService;

    move-result-object v0

    return-object v0
.end method

.method private static create(Landroid/content/Context;)Lcom/android/server/timedetector/TimeDetectorService;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;

    invoke-direct {v0}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;-><init>()V

    .line 70
    .local v0, "timeDetector":Lcom/android/server/timedetector/TimeDetectorStrategy;
    new-instance v1, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;-><init>(Landroid/content/Context;)V

    .line 72
    .local v1, "callback":Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;
    invoke-interface {v0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->initialize(Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;)V

    .line 74
    new-instance v2, Lcom/android/server/timedetector/TimeDetectorService;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/timedetector/TimeDetectorService;-><init>(Landroid/content/Context;Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;Lcom/android/server/timedetector/TimeDetectorStrategy;)V

    .line 78
    .local v2, "timeDetectorService":Lcom/android/server/timedetector/TimeDetectorService;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 79
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    nop

    .line 80
    const-string v4, "auto_time"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/timedetector/TimeDetectorService$1;

    .line 81
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/android/server/timedetector/TimeDetectorService$1;-><init>(Landroid/os/Handler;Lcom/android/server/timedetector/TimeDetectorService;)V

    .line 79
    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 87
    return-object v2
.end method

.method private enforceSetTimePermission()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "set time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "timedetector.TimeDetectorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mStrategyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v1, p2, p3}, Lcom/android/server/timedetector/TimeDetectorStrategy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleAutoTimeDetectionToggle()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mStrategyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->isTimeDetectionEnabled()Z

    move-result v1

    .line 117
    .local v1, "timeDetectionEnabled":Z
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v2, v1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->handleAutoTimeDetectionToggle(Z)V

    .line 118
    .end local v1    # "timeDetectionEnabled":Z
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public suggestTime(Landroid/app/timedetector/TimeSignal;)V
    .locals 4
    .param p1, "timeSignal"    # Landroid/app/timedetector/TimeSignal;

    .line 100
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceSetTimePermission()V

    .line 101
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 105
    .local v0, "idToken":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mStrategyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :try_start_1
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v3, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->suggestTime(Landroid/app/timedetector/TimeSignal;)V

    .line 107
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    nop

    .line 111
    return-void

    .line 107
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "idToken":J
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorService;
    .end local p1    # "timeSignal":Landroid/app/timedetector/TimeSignal;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    .restart local v0    # "idToken":J
    .restart local p0    # "this":Lcom/android/server/timedetector/TimeDetectorService;
    .restart local p1    # "timeSignal":Landroid/app/timedetector/TimeSignal;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

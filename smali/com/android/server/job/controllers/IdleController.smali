.class public final Lcom/android/server/job/controllers/IdleController;
.super Lcom/android/server/job/controllers/StateController;
.source "IdleController.java"

# interfaces
.implements Lcom/android/server/job/controllers/idle/IdlenessListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "JobScheduler.IdleController"


# instance fields
.field mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

.field final mTrackedTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 45
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/IdleController;->initIdleStateTracking(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private initIdleStateTracking(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 88
    .local v0, "isCar":Z
    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;

    invoke-direct {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    goto :goto_0

    .line 91
    :cond_0
    new-instance v1, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;

    invoke-direct {v1}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v1, p1, p0}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->startTracking(Landroid/content/Context;Lcom/android/server/job/controllers/idle/IdlenessListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 119
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 120
    .local v0, "token":J
    const-wide v2, 0x10b00000006L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 122
    .local v2, "mToken":J
    iget-object v4, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v4}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->isIdle()Z

    move-result v4

    const-wide v5, 0x10800000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 124
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 125
    iget-object v5, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 126
    .local v5, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p4, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 127
    goto :goto_1

    .line 129
    :cond_0
    const-wide v6, 0x20b00000002L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 130
    .local v6, "jsToken":J
    const-wide v8, 0x10b00000001L

    invoke-virtual {v5, p1, v8, v9}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 131
    const-wide v8, 0x10500000002L

    .line 132
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    .line 131
    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 133
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 124
    .end local v5    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "jsToken":J
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 138
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently idle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v1}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->isIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v0, "Idleness tracker:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v0, p1}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->dump(Ljava/io/PrintWriter;)V

    .line 101
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 105
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    goto :goto_1

    .line 108
    :cond_0
    const-string v2, "#"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 110
    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 112
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 103
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 53
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 55
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 56
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mIdleTracker:Lcom/android/server/job/controllers/idle/IdlenessTracker;

    invoke-interface {v0}, Lcom/android/server/job/controllers/idle/IdlenessTracker;->isIdle()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setIdleConstraintSatisfied(Z)Z

    .line 58
    :cond_0
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 1
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 63
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public reportNewIdleState(Z)V
    .locals 3
    .param p1, "isIdle"    # Z

    .line 73
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/server/job/controllers/IdleController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->setIdleConstraintSatisfied(Z)Z

    .line 74
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

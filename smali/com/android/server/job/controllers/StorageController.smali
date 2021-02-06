.class public final Lcom/android/server/job/controllers/StorageController;
.super Lcom/android/server/job/controllers/StateController;
.source "StorageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/StorageController$StorageTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Storage"


# instance fields
.field private final mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

.field private final mTrackedTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 45
    const-string v1, "JobScheduler.Storage"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/StorageController;->DEBUG:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 47
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 57
    new-instance v0, Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;-><init>(Lcom/android/server/job/controllers/StorageController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 58
    invoke-virtual {v0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->startTracking()V

    .line 59
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/android/server/job/controllers/StorageController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/StorageController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/controllers/StorageController;

    .line 42
    invoke-direct {p0}, Lcom/android/server/job/controllers/StorageController;->maybeReportNewStorageState()V

    return-void
.end method

.method private maybeReportNewStorageState()V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v0

    .line 80
    .local v0, "storageNotLow":Z
    const/4 v1, 0x0

    .line 81
    .local v1, "reportChange":Z
    iget-object v2, p0, Lcom/android/server/job/controllers/StorageController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 83
    iget-object v4, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 84
    .local v4, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4, v0}, Lcom/android/server/job/controllers/JobStatus;->setStorageNotLowConstraintSatisfied(Z)Z

    move-result v5

    or-int/2addr v1, v5

    .line 82
    .end local v4    # "ts":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 86
    .end local v3    # "i":I
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-eqz v0, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/server/job/controllers/StorageController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_1

    .line 90
    :cond_1
    if-eqz v1, :cond_2

    .line 93
    iget-object v2, p0, Lcom/android/server/job/controllers/StorageController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 95
    :cond_2
    :goto_1
    return-void

    .line 86
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 15
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

    .line 177
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 178
    .local v2, "token":J
    const-wide v4, 0x10b00000007L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 180
    .local v4, "mToken":J
    iget-object v6, v0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 181
    invoke-virtual {v6}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v6

    .line 180
    const-wide v7, 0x10800000001L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 182
    iget-object v6, v0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 183
    invoke-virtual {v6}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result v6

    .line 182
    const-wide v7, 0x10500000002L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 185
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v9, v0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 186
    iget-object v9, v0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v9, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 187
    .local v9, "js":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v10, p4

    invoke-interface {v10, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 188
    goto :goto_1

    .line 190
    :cond_0
    const-wide v11, 0x20b00000003L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 191
    .local v11, "jsToken":J
    const-wide v13, 0x10b00000001L

    invoke-virtual {v9, v1, v13, v14}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 192
    nop

    .line 193
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v13

    .line 192
    invoke-virtual {v1, v7, v8, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 194
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 185
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v11    # "jsToken":J
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v10, p4

    .line 197
    .end local v6    # "i":I
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 198
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 199
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

    .line 157
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not low: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sequence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 163
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    goto :goto_1

    .line 166
    :cond_0
    const-string v2, "#"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 168
    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 170
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 161
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    return-object v0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 63
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 65
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 66
    iget-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setStorageNotLowConstraintSatisfied(Z)Z

    .line 68
    :cond_0
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 1
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 73
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-void
.end method

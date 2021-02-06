.class final Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;
.super Landroid/app/IUidObserver$Stub;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImperceptibleKillRunner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;,
        Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;
    }
.end annotation


# static fields
.field private static final DROPBOX_TAG_IMPERCEPTIBLE_KILL:Ljava/lang/String; = "imperceptible_app_kill"

.field private static final EXTRA_PID:Ljava/lang/String; = "pid"

.field private static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final EXTRA_REQUESTER:Ljava/lang/String; = "requester"

.field private static final EXTRA_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final EXTRA_UID:Ljava/lang/String; = "uid"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private volatile mIdle:Z

.field private mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

.field private mUidObserverEnabled:Z

.field private mWorkItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 4290
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 4239
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    .line 4242
    new-instance p1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;

    .line 4291
    new-instance p1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;-><init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Landroid/os/Handler;

    .line 4292
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 4229
    invoke-direct {p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->handleDeviceIdle()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;
    .param p1, "x1"    # I

    .line 4229
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->handleUidGone(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 4229
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->handleUidStateChanged(II)V

    return-void
.end method

.method private handleDeviceIdle()V
    .locals 18

    .line 4340
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/DropBoxManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/DropBoxManager;

    .line 4341
    .local v11, "dbox":Landroid/os/DropBoxManager;
    if-eqz v11, :cond_0

    .line 4342
    const-string v0, "imperceptible_app_kill"

    invoke-virtual {v11, v0}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    .line 4344
    .local v9, "logToDropbox":Z
    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4345
    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4346
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    move v13, v1

    .local v13, "i":I
    :goto_1
    iget-boolean v1, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    if-eqz v1, :cond_4

    if-ltz v13, :cond_4

    .line 4347
    iget-object v1, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v14, v1

    .line 4348
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    move v15, v1

    .line 4349
    .local v15, "len":I
    add-int/lit8 v1, v15, -0x1

    move v8, v1

    .local v8, "j":I
    :goto_2
    iget-boolean v1, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    if-eqz v1, :cond_2

    if-ltz v8, :cond_2

    .line 4350
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    move-object v7, v1

    .line 4351
    .local v7, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "pid"

    .line 4352
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v1, "uid"

    .line 4353
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v1, "timestamp"

    .line 4354
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v1, "reason"

    .line 4355
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "requester"

    .line 4356
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 4351
    move-object/from16 v1, p0

    move-object/from16 v17, v7

    .end local v7    # "bundle":Landroid/os/Bundle;
    .local v17, "bundle":Landroid/os/Bundle;
    move/from16 v7, v16

    move/from16 v16, v0

    move v0, v8

    .end local v8    # "j":I
    .local v0, "j":I
    .local v16, "size":I
    move-object v8, v11

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->killProcessLocked(IIJLjava/lang/String;ILandroid/os/DropBoxManager;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4358
    invoke-interface {v14, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4349
    .end local v17    # "bundle":Landroid/os/Bundle;
    :cond_1
    add-int/lit8 v8, v0, -0x1

    move/from16 v0, v16

    .end local v0    # "j":I
    .restart local v8    # "j":I
    goto :goto_2

    .end local v16    # "size":I
    .local v0, "size":I
    :cond_2
    move/from16 v16, v0

    move v0, v8

    .line 4361
    .end local v0    # "size":I
    .end local v8    # "j":I
    .restart local v16    # "size":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 4362
    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4346
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v15    # "len":I
    :cond_3
    add-int/lit8 v13, v13, -0x1

    move/from16 v0, v16

    goto :goto_1

    .end local v16    # "size":I
    .restart local v0    # "size":I
    :cond_4
    move/from16 v16, v0

    .line 4365
    .end local v0    # "size":I
    .end local v13    # "i":I
    .restart local v16    # "size":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->registerUidObserverIfNecessaryLocked()V

    .line 4366
    .end local v16    # "size":I
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4367
    return-void

    .line 4366
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private handleUidGone(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 4469
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4470
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4471
    invoke-direct {p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->registerUidObserverIfNecessaryLocked()V

    .line 4472
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4473
    return-void

    .line 4472
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private handleUidStateChanged(II)V
    .locals 17
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 4438
    move-object/from16 v10, p0

    move/from16 v11, p1

    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/DropBoxManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/DropBoxManager;

    .line 4439
    .local v12, "dbox":Landroid/os/DropBoxManager;
    if-eqz v12, :cond_0

    .line 4440
    const-string v0, "imperceptible_app_kill"

    invoke-virtual {v12, v0}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    .line 4441
    .local v9, "logToDropbox":Z
    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4442
    iget-boolean v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    if-eqz v0, :cond_4

    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 4443
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4444
    iget-object v0, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4445
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-eqz v0, :cond_4

    .line 4446
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v14, v1

    .line 4447
    .local v14, "len":I
    add-int/lit8 v1, v14, -0x1

    move v15, v1

    .local v15, "j":I
    :goto_1
    iget-boolean v1, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    if-eqz v1, :cond_2

    if-ltz v15, :cond_2

    .line 4448
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    move-object v8, v1

    .line 4449
    .local v8, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "pid"

    .line 4450
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v1, "uid"

    .line 4451
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v1, "timestamp"

    .line 4452
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v1, "reason"

    .line 4453
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "requester"

    .line 4454
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 4449
    move-object/from16 v1, p0

    move-object/from16 v16, v8

    .end local v8    # "bundle":Landroid/os/Bundle;
    .local v16, "bundle":Landroid/os/Bundle;
    move-object v8, v12

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->killProcessLocked(IIJLjava/lang/String;ILandroid/os/DropBoxManager;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4456
    invoke-interface {v0, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4447
    .end local v16    # "bundle":Landroid/os/Bundle;
    :cond_1
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 4459
    .end local v15    # "j":I
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 4460
    iget-object v1, v10, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->remove(I)V

    .line 4462
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->registerUidObserverIfNecessaryLocked()V

    .line 4465
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v14    # "len":I
    :cond_4
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4466
    return-void

    .line 4465
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private killProcessLocked(IIJLjava/lang/String;ILandroid/os/DropBoxManager;Z)Z
    .locals 14
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "timestamp"    # J
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "requester"    # I
    .param p7, "dbox"    # Landroid/os/DropBoxManager;
    .param p8, "logToDropbox"    # Z

    .line 4393
    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p5

    const/4 v4, 0x0

    .line 4394
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v5

    .line 4395
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v4, v0

    .line 4396
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4398
    const/4 v0, 0x1

    if-eqz v4, :cond_6

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v5, v2, :cond_6

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v6, p2

    if-ne v5, v6, :cond_7

    iget-wide v7, v4, Lcom/android/server/am/ProcessRecord;->startTime:J

    cmp-long v5, v7, p3

    if-eqz v5, :cond_0

    move/from16 v11, p6

    move-object/from16 v13, p7

    goto/16 :goto_2

    .line 4404
    :cond_0
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v5

    .line 4405
    .local v5, "pkgSize":I
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_0
    if-ge v7, v5, :cond_2

    .line 4406
    iget-object v8, v1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v8, v8, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    iget-object v9, v4, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    .line 4407
    invoke-virtual {v9, v7}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v9

    .line 4406
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4409
    return v0

    .line 4405
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 4413
    .end local v7    # "ip":I
    :cond_2
    iget-object v7, v1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v7, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    .line 4414
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getReportedProcState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 4413
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4416
    const/4 v0, 0x0

    return v0

    .line 4419
    :cond_3
    const/16 v7, 0xd

    const/16 v8, 0xf

    invoke-virtual {v4, v3, v7, v8, v0}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 4422
    iget-boolean v7, v4, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v7, :cond_4

    .line 4423
    iget-object v7, v1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v9, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 4426
    :cond_4
    if-eqz p8, :cond_5

    .line 4427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 4428
    .local v7, "now":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 4429
    .local v9, "sb":Ljava/lang/StringBuilder;
    iget-object v10, v1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v10, v10, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v4, v11, v9}, Lcom/android/server/am/ActivityManagerService;->appendDropBoxProcessHeaders(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4430
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4431
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Requester UID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4432
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "imperceptible_app_kill"

    move-object/from16 v13, p7

    invoke-virtual {v13, v12, v10}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4426
    .end local v7    # "now":J
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    move/from16 v11, p6

    move-object/from16 v13, p7

    .line 4434
    :goto_1
    return v0

    .line 4398
    .end local v5    # "pkgSize":I
    :cond_6
    move/from16 v6, p2

    :cond_7
    move/from16 v11, p6

    move-object/from16 v13, p7

    .line 4401
    :goto_2
    return v0

    .line 4396
    :catchall_0
    move-exception v0

    move/from16 v6, p2

    move/from16 v11, p6

    move-object/from16 v13, p7

    :goto_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private registerUidObserverIfNecessaryLocked()V
    .locals 4

    .line 4372
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    .line 4374
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "android"

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    goto :goto_0

    .line 4377
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 4378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mUidObserverEnabled:Z

    .line 4379
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 4381
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method enqueueLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "requester"    # I

    .line 4297
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mLastProcessKillTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 4298
    .local v0, "last":Ljava/lang/Long;
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 4299
    const/4 v1, 0x0

    return v1

    .line 4302
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4303
    .local v2, "bundle":Landroid/os/Bundle;
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string/jumbo v4, "pid"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4304
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4306
    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v5, "timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4307
    const-string/jumbo v3, "reason"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4308
    const-string/jumbo v3, "requester"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4309
    iget-object v3, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 4310
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v3, :cond_2

    .line 4311
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 4312
    iget-object v4, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4314
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4315
    iget-object v4, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    if-nez v4, :cond_3

    .line 4316
    new-instance v4, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;-><init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Lcom/android/server/am/ProcessList$1;)V

    iput-object v4, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    .line 4317
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4319
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4320
    iget-object v4, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mReceiver:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4322
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method notifyDeviceIdleness(Z)V
    .locals 3
    .param p1, "idle"    # Z

    .line 4328
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4329
    .local v0, "diff":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mIdle:Z

    .line 4330
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 4331
    monitor-enter p0

    .line 4332
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mWorkItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 4333
    iget-object v2, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4335
    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4337
    :cond_2
    :goto_1
    return-void
.end method

.method public onUidActive(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 4482
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 4495
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 4477
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4478
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 4486
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 4490
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4491
    return-void
.end method

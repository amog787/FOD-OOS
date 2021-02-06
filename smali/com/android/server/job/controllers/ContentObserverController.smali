.class public final Lcom/android/server/job/controllers/ContentObserverController;
.super Lcom/android/server/job/controllers/StateController;
.source "ContentObserverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ContentObserverController$JobInstance;,
        Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;,
        Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_URIS_REPORTED:I = 0x32

.field private static final TAG:Ljava/lang/String; = "JobScheduler.ContentObserver"

.field private static final URIS_URGENT_THRESHOLD:I = 0x28


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            "Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;",
            ">;>;"
        }
    .end annotation
.end field

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

    .line 46
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 47
    const-string v1, "JobScheduler.ContentObserver"

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
    sput-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 61
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 30
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

    .line 448
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 449
    .local v3, "token":J
    const-wide v5, 0x10b00000004L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 451
    .local v5, "mToken":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    const-wide v9, 0x10b00000001L

    const-wide v11, 0x10500000002L

    if-ge v7, v8, :cond_1

    .line 452
    iget-object v8, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 453
    .local v8, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {v2, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 454
    goto :goto_1

    .line 456
    :cond_0
    const-wide v13, 0x20b00000001L

    .line 457
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 458
    .local v13, "jsToken":J
    invoke-virtual {v8, v1, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 460
    nop

    .line 461
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v9

    .line 460
    invoke-virtual {v1, v11, v12, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 462
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 451
    .end local v8    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v13    # "jsToken":J
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 465
    .end local v7    # "i":I
    :cond_1
    iget-object v7, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 466
    .local v7, "n":I
    const/4 v8, 0x0

    .local v8, "userIdx":I
    :goto_2
    if-ge v8, v7, :cond_d

    .line 467
    nop

    .line 468
    const-wide v13, 0x20b00000002L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 469
    .local v9, "oToken":J
    iget-object v15, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 471
    .local v15, "userId":I
    const-wide v11, 0x10500000001L

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 473
    iget-object v11, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 474
    invoke-virtual {v11, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    .line 475
    .local v11, "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 476
    .local v12, "numbOfObserversPerUser":I
    const/16 v16, 0x0

    move/from16 v13, v16

    .local v13, "observerIdx":I
    :goto_3
    if-ge v13, v12, :cond_c

    .line 477
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 478
    .local v14, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    iget-object v0, v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 479
    .local v0, "m":I
    const/16 v16, 0x0

    .line 480
    .local v16, "shouldDump":Z
    const/16 v19, 0x0

    move/from16 v20, v7

    move/from16 v7, v19

    .local v7, "j":I
    .local v20, "n":I
    :goto_4
    if-ge v7, v0, :cond_3

    .line 481
    move/from16 v19, v12

    .end local v12    # "numbOfObserversPerUser":I
    .local v19, "numbOfObserversPerUser":I
    iget-object v12, v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v12, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 482
    .local v12, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    move/from16 v21, v15

    .end local v15    # "userId":I
    .local v21, "userId":I
    iget-object v15, v12, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {v2, v15}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 483
    const/16 v16, 0x1

    .line 484
    goto :goto_5

    .line 480
    .end local v12    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    move/from16 v12, v19

    move/from16 v15, v21

    goto :goto_4

    .end local v19    # "numbOfObserversPerUser":I
    .end local v21    # "userId":I
    .local v12, "numbOfObserversPerUser":I
    .restart local v15    # "userId":I
    :cond_3
    move/from16 v19, v12

    move/from16 v21, v15

    .line 487
    .end local v7    # "j":I
    .end local v12    # "numbOfObserversPerUser":I
    .end local v15    # "userId":I
    .restart local v19    # "numbOfObserversPerUser":I
    .restart local v21    # "userId":I
    :goto_5
    if-nez v16, :cond_4

    .line 488
    move-wide/from16 v22, v3

    move-wide/from16 v17, v5

    move/from16 v27, v8

    move-wide/from16 v28, v9

    move-object/from16 v25, v11

    goto/16 :goto_b

    .line 490
    :cond_4
    move-wide/from16 v22, v3

    move-wide/from16 v17, v5

    const-wide v2, 0x20b00000002L

    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .local v17, "mToken":J
    .local v22, "token":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 493
    .local v4, "tToken":J
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 494
    .local v6, "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {v6}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 495
    .local v7, "u":Landroid/net/Uri;
    if-eqz v7, :cond_5

    .line 496
    const-wide v2, 0x10900000001L

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 498
    :cond_5
    invoke-virtual {v6}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v2

    move-object v3, v6

    move-object v12, v7

    const-wide v6, 0x10500000002L

    .end local v6    # "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    .end local v7    # "u":Landroid/net/Uri;
    .local v3, "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    .local v12, "u":Landroid/net/Uri;
    invoke-virtual {v1, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 500
    const/4 v2, 0x0

    move-object v7, v12

    .end local v12    # "u":Landroid/net/Uri;
    .local v2, "j":I
    .restart local v7    # "u":Landroid/net/Uri;
    :goto_6
    if-ge v2, v0, :cond_b

    .line 501
    move-object v12, v7

    .end local v7    # "u":Landroid/net/Uri;
    .restart local v12    # "u":Landroid/net/Uri;
    const-wide v6, 0x20b00000003L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 502
    .local v6, "jToken":J
    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 504
    .local v15, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    move/from16 v24, v0

    .end local v0    # "m":I
    .local v24, "m":I
    iget-object v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    const-wide v11, 0x10b00000001L

    .end local v11    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .end local v12    # "u":Landroid/net/Uri;
    .local v25, "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .local v26, "u":Landroid/net/Uri;
    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 505
    iget-object v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 506
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 505
    const-wide v11, 0x10500000002L

    invoke-virtual {v1, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 508
    iget-object v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v0, :cond_6

    .line 509
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 510
    move/from16 v27, v8

    move-wide/from16 v28, v9

    move-object/from16 v7, v26

    goto/16 :goto_a

    .line 512
    :cond_6
    iget-boolean v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v0, :cond_7

    .line 513
    const-wide v11, 0x10300000003L

    iget-object v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 514
    move/from16 v27, v8

    move-wide/from16 v28, v9

    .end local v8    # "userIdx":I
    .end local v9    # "oToken":J
    .local v27, "userIdx":I
    .local v28, "oToken":J
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v8

    .line 513
    invoke-virtual {v1, v11, v12, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 515
    const-wide v8, 0x10300000004L

    iget-object v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 516
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v10

    .line 515
    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_7

    .line 512
    .end local v27    # "userIdx":I
    .end local v28    # "oToken":J
    .restart local v8    # "userIdx":I
    .restart local v9    # "oToken":J
    :cond_7
    move/from16 v27, v8

    move-wide/from16 v28, v9

    .line 518
    .end local v8    # "userIdx":I
    .end local v9    # "oToken":J
    .restart local v27    # "userIdx":I
    .restart local v28    # "oToken":J
    :goto_7
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_8
    iget-object v8, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v0, v8, :cond_8

    .line 519
    const-wide v8, 0x20900000005L

    iget-object v10, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 520
    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 519
    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 522
    .end local v0    # "k":I
    :cond_8
    iget-object v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_a

    .line 523
    const/4 v0, 0x0

    .restart local v0    # "k":I
    :goto_9
    iget-object v8, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v0, v8, :cond_a

    .line 524
    iget-object v8, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v26, v8

    check-cast v26, Landroid/net/Uri;

    .line 525
    if-eqz v26, :cond_9

    .line 526
    const-wide v8, 0x20900000006L

    .line 527
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 526
    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 523
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 532
    .end local v0    # "k":I
    :cond_a
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v7, v26

    .line 500
    .end local v6    # "jToken":J
    .end local v15    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    .end local v26    # "u":Landroid/net/Uri;
    .restart local v7    # "u":Landroid/net/Uri;
    :goto_a
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v24

    move-object/from16 v11, v25

    move/from16 v8, v27

    move-wide/from16 v9, v28

    goto/16 :goto_6

    .end local v24    # "m":I
    .end local v25    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .end local v27    # "userIdx":I
    .end local v28    # "oToken":J
    .local v0, "m":I
    .restart local v8    # "userIdx":I
    .restart local v9    # "oToken":J
    .restart local v11    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    :cond_b
    move/from16 v24, v0

    move-object/from16 v26, v7

    move/from16 v27, v8

    move-wide/from16 v28, v9

    move-object/from16 v25, v11

    .line 535
    .end local v0    # "m":I
    .end local v2    # "j":I
    .end local v7    # "u":Landroid/net/Uri;
    .end local v8    # "userIdx":I
    .end local v9    # "oToken":J
    .end local v11    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .restart local v24    # "m":I
    .restart local v25    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .restart local v26    # "u":Landroid/net/Uri;
    .restart local v27    # "userIdx":I
    .restart local v28    # "oToken":J
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 476
    .end local v3    # "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    .end local v4    # "tToken":J
    .end local v14    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v16    # "shouldDump":Z
    .end local v24    # "m":I
    .end local v26    # "u":Landroid/net/Uri;
    :goto_b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-wide/from16 v5, v17

    move/from16 v12, v19

    move/from16 v7, v20

    move/from16 v15, v21

    move-wide/from16 v3, v22

    move-object/from16 v11, v25

    move/from16 v8, v27

    move-wide/from16 v9, v28

    goto/16 :goto_3

    .end local v17    # "mToken":J
    .end local v19    # "numbOfObserversPerUser":I
    .end local v20    # "n":I
    .end local v21    # "userId":I
    .end local v22    # "token":J
    .end local v25    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .end local v27    # "userIdx":I
    .end local v28    # "oToken":J
    .local v3, "token":J
    .restart local v5    # "mToken":J
    .local v7, "n":I
    .restart local v8    # "userIdx":I
    .restart local v9    # "oToken":J
    .restart local v11    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .local v12, "numbOfObserversPerUser":I
    .local v15, "userId":I
    :cond_c
    move-wide/from16 v22, v3

    move-wide/from16 v17, v5

    move/from16 v20, v7

    move/from16 v27, v8

    move-wide/from16 v28, v9

    move-object/from16 v25, v11

    move/from16 v19, v12

    move/from16 v21, v15

    .line 538
    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .end local v7    # "n":I
    .end local v8    # "userIdx":I
    .end local v9    # "oToken":J
    .end local v11    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .end local v12    # "numbOfObserversPerUser":I
    .end local v13    # "observerIdx":I
    .end local v15    # "userId":I
    .restart local v17    # "mToken":J
    .restart local v19    # "numbOfObserversPerUser":I
    .restart local v20    # "n":I
    .restart local v21    # "userId":I
    .restart local v22    # "token":J
    .restart local v25    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .restart local v27    # "userIdx":I
    .restart local v28    # "oToken":J
    move-wide/from16 v2, v28

    .end local v28    # "oToken":J
    .local v2, "oToken":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 466
    .end local v2    # "oToken":J
    .end local v19    # "numbOfObserversPerUser":I
    .end local v21    # "userId":I
    .end local v25    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    add-int/lit8 v8, v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-wide/from16 v3, v22

    const-wide v9, 0x10b00000001L

    const-wide v11, 0x10500000002L

    .end local v27    # "userIdx":I
    .restart local v8    # "userIdx":I
    goto/16 :goto_2

    .end local v17    # "mToken":J
    .end local v20    # "n":I
    .end local v22    # "token":J
    .restart local v3    # "token":J
    .restart local v5    # "mToken":J
    .restart local v7    # "n":I
    :cond_d
    move-wide/from16 v22, v3

    move-wide/from16 v17, v5

    .line 541
    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .end local v8    # "userIdx":I
    .restart local v17    # "mToken":J
    .restart local v22    # "token":J
    move-wide/from16 v2, v17

    .end local v17    # "mToken":J
    .local v2, "mToken":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 542
    move-wide/from16 v4, v22

    .end local v22    # "token":J
    .local v4, "token":J
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 543
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 18
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

    .line 358
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const-string v5, " from "

    const-string v6, "#"

    if-ge v3, v4, :cond_1

    .line 359
    iget-object v4, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 360
    .local v4, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {v2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 361
    goto :goto_1

    .line 363
    :cond_0
    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v4, v1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 365
    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-static {v1, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 358
    .end local v4    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 369
    .end local v3    # "i":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 371
    iget-object v3, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 372
    .local v3, "N":I
    if-lez v3, :cond_c

    .line 373
    const-string v4, "Observers:"

    invoke-virtual {v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 375
    const/4 v4, 0x0

    .local v4, "userIdx":I
    :goto_2
    if-ge v4, v3, :cond_b

    .line 376
    iget-object v7, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 377
    .local v7, "userId":I
    iget-object v8, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 378
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 379
    .local v8, "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 380
    .local v9, "numbOfObserversPerUser":I
    const/4 v10, 0x0

    .local v10, "observerIdx":I
    :goto_3
    if-ge v10, v9, :cond_a

    .line 381
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 382
    .local v11, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    iget-object v12, v11, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v12

    .line 383
    .local v12, "M":I
    const/4 v13, 0x0

    .line 384
    .local v13, "shouldDump":Z
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    if-ge v14, v12, :cond_3

    .line 385
    iget-object v15, v11, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 386
    .local v15, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    iget-object v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {v2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    const/4 v13, 0x1

    .line 388
    goto :goto_5

    .line 384
    .end local v15    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    goto :goto_4

    .line 391
    .end local v14    # "j":I
    :cond_3
    :goto_5
    if-nez v13, :cond_4

    .line 392
    move/from16 v17, v3

    goto/16 :goto_b

    .line 394
    :cond_4
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 395
    .local v0, "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {v0}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 396
    const-string v14, " 0x"

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 398
    const-string v14, " ("

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 399
    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 400
    const-string v14, "):"

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 402
    const-string v14, "Jobs:"

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 404
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_6
    if-ge v14, v12, :cond_9

    .line 405
    iget-object v15, v11, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 406
    .restart local v15    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 407
    move-object/from16 v16, v0

    .end local v0    # "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    .local v16, "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    iget-object v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 408
    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 409
    iget-object v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 410
    iget-object v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_8

    .line 411
    const-string v0, ":"

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 413
    iget-boolean v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v0, :cond_5

    .line 414
    const-string v0, "Trigger pending: update="

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 415
    iget-object v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 416
    move/from16 v17, v3

    .end local v3    # "N":I
    .local v17, "N":I
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    .line 415
    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 417
    const-string v0, ", max="

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget-object v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 419
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v2

    .line 418
    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 420
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_7

    .line 413
    .end local v17    # "N":I
    .restart local v3    # "N":I
    :cond_5
    move/from16 v17, v3

    .line 422
    .end local v3    # "N":I
    .restart local v17    # "N":I
    :goto_7
    const-string v0, "Changed Authorities:"

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 423
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_8
    iget-object v2, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 424
    iget-object v2, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 426
    .end local v0    # "k":I
    :cond_6
    iget-object v0, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_7

    .line 427
    const-string v0, "          Changed URIs:"

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 428
    const/4 v0, 0x0

    .restart local v0    # "k":I
    :goto_9
    iget-object v2, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 429
    iget-object v2, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 432
    .end local v0    # "k":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_a

    .line 434
    .end local v17    # "N":I
    .restart local v3    # "N":I
    :cond_8
    move/from16 v17, v3

    .end local v3    # "N":I
    .restart local v17    # "N":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 404
    .end local v15    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :goto_a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move-object/from16 v0, v16

    move/from16 v3, v17

    goto/16 :goto_6

    .end local v16    # "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    .end local v17    # "N":I
    .local v0, "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    .restart local v3    # "N":I
    :cond_9
    move-object/from16 v16, v0

    move/from16 v17, v3

    .line 437
    .end local v0    # "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    .end local v3    # "N":I
    .end local v14    # "j":I
    .restart local v16    # "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    .restart local v17    # "N":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 380
    .end local v11    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v12    # "M":I
    .end local v13    # "shouldDump":Z
    .end local v16    # "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, v17

    goto/16 :goto_3

    .end local v17    # "N":I
    .restart local v3    # "N":I
    :cond_a
    move/from16 v17, v3

    .line 375
    .end local v3    # "N":I
    .end local v7    # "userId":I
    .end local v8    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .end local v9    # "numbOfObserversPerUser":I
    .end local v10    # "observerIdx":I
    .restart local v17    # "N":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    goto/16 :goto_2

    .end local v17    # "N":I
    .restart local v3    # "N":I
    :cond_b
    move/from16 v17, v3

    .line 441
    .end local v3    # "N":I
    .end local v4    # "userIdx":I
    .restart local v17    # "N":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_c

    .line 372
    .end local v17    # "N":I
    .restart local v3    # "N":I
    :cond_c
    move/from16 v17, v3

    .line 443
    .end local v3    # "N":I
    .restart local v17    # "N":I
    :goto_c
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 76
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 77
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-direct {v0, p0, p1}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 80
    :cond_0
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking content-trigger job "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JobScheduler.ContentObserver"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 85
    const/4 v0, 0x0

    .line 88
    .local v0, "havePendingUris":Z
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v2, :cond_2

    .line 89
    const/4 v0, 0x1

    .line 93
    :cond_2
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v2, :cond_7

    .line 94
    const/4 v0, 0x1

    .line 95
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v2, :cond_3

    .line 96
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 99
    :cond_3
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 100
    .local v3, "auth":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v4, v4, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v3    # "auth":Ljava/lang/String;
    goto :goto_0

    .line 102
    :cond_4
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v2, :cond_6

    .line 103
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-nez v2, :cond_5

    .line 104
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 106
    :cond_5
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 107
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v4, v4, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v3    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 110
    :cond_6
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 111
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 113
    :cond_7
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 114
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 115
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setContentTriggerConstraintSatisfied(Z)Z

    .line 117
    .end local v0    # "havePendingUris":Z
    :cond_8
    if-eqz p2, :cond_9

    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_9

    .line 119
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    .line 120
    iput-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 122
    :cond_9
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 3
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 140
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->unscheduleLocked()V

    .line 144
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 145
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v1, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-nez v1, :cond_0

    .line 153
    new-instance v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-direct {v1, p0, p2}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    iput-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 155
    :cond_0
    iget-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    iput-object v2, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 157
    iget-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    iput-object v2, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 159
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object v0, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 160
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object v0, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    goto :goto_0

    .line 168
    :cond_1
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    .line 169
    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 172
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No longer tracking job "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.ContentObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_3
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 126
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 129
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 131
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 132
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 135
    :cond_0
    return-void
.end method

.method public rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "newJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .line 180
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 186
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 188
    :cond_0
    return-void
.end method

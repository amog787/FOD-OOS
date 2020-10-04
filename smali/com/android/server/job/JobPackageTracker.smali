.class public final Lcom/android/server/job/JobPackageTracker;
.super Ljava/lang/Object;
.source "JobPackageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobPackageTracker$DataSet;,
        Lcom/android/server/job/JobPackageTracker$PackageEntry;
    }
.end annotation


# static fields
.field static final BATCHING_TIME:J = 0x1b7740L

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field public static final EVENT_CMD_MASK:I = 0xff

.field public static final EVENT_NULL:I = 0x0

.field public static final EVENT_START_JOB:I = 0x1

.field public static final EVENT_START_PERIODIC_JOB:I = 0x3

.field public static final EVENT_STOP_JOB:I = 0x2

.field public static final EVENT_STOP_PERIODIC_JOB:I = 0x4

.field public static final EVENT_STOP_REASON_MASK:I = 0xff00

.field public static final EVENT_STOP_REASON_SHIFT:I = 0x8

.field static final NUM_HISTORY:I = 0x5


# instance fields
.field mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

.field private final mEventCmds:[I

.field private final mEventIndices:Lcom/android/internal/util/RingBufferIndices;

.field private final mEventJobIds:[I

.field private final mEventReasons:[Ljava/lang/String;

.field private final mEventTags:[Ljava/lang/String;

.field private final mEventTimes:[J

.field private final mEventUids:[I

.field mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/internal/util/RingBufferIndices;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/internal/util/RingBufferIndices;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    .line 56
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    .line 57
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    .line 58
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    .line 59
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    .line 60
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    .line 61
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/job/JobPackageTracker$DataSet;

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    return-void
.end method


# virtual methods
.method public addEvent(IILjava/lang/String;IILjava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "uid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "jobId"    # I
    .param p5, "stopReason"    # I
    .param p6, "debugReason"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBufferIndices;->add()I

    move-result v0

    .line 66
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    shl-int/lit8 v2, p5, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v2, p1

    aput v2, v1, v0

    .line 67
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 68
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aput p2, v1, v0

    .line 69
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aput-object p3, v1, v0

    .line 70
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aput p4, v1, v0

    .line 71
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    aput-object p6, v1, v0

    .line 72
    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 18
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "filterUid"    # I

    .line 543
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 544
    .local v1, "token":J
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    .line 545
    .local v13, "now":J
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v15

    .line 548
    .local v15, "nowElapsed":J
    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    if-eqz v5, :cond_0

    .line 549
    new-instance v5, Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v3, v3, v4

    invoke-direct {v5, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    move-object v3, v5

    .line 550
    .local v3, "total":Lcom/android/server/job/JobPackageTracker$DataSet;
    iget-object v5, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v4, v5, v4

    invoke-virtual {v4, v3, v13, v14}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    goto :goto_0

    .line 552
    .end local v3    # "total":Lcom/android/server/job/JobPackageTracker$DataSet;
    :cond_0
    new-instance v3, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v3, v4}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    .line 554
    .restart local v3    # "total":Lcom/android/server/job/JobPackageTracker$DataSet;
    :goto_0
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v4, v3, v13, v14}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    .line 556
    const/4 v4, 0x1

    move v12, v4

    .local v12, "i":I
    :goto_1
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    array-length v5, v4

    if-ge v12, v5, :cond_2

    .line 557
    aget-object v5, v4, v12

    if-eqz v5, :cond_1

    .line 558
    aget-object v4, v4, v12

    const-wide v6, 0x20b00000001L

    move-object/from16 v5, p1

    move-wide v8, v13

    move-wide v10, v15

    move/from16 v17, v12

    .end local v12    # "i":I
    .local v17, "i":I
    move/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Landroid/util/proto/ProtoOutputStream;JJJI)V

    goto :goto_2

    .line 557
    .end local v17    # "i":I
    .restart local v12    # "i":I
    :cond_1
    move/from16 v17, v12

    .line 556
    .end local v12    # "i":I
    .restart local v17    # "i":I
    :goto_2
    add-int/lit8 v12, v17, 0x1

    .end local v17    # "i":I
    .restart local v12    # "i":I
    goto :goto_1

    :cond_2
    move/from16 v17, v12

    .line 562
    .end local v12    # "i":I
    const-wide v6, 0x10b00000002L

    move-object v4, v3

    move-object/from16 v5, p1

    move-wide v8, v13

    move-wide v10, v15

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 565
    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 566
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filterUid"    # I

    .line 523
    move-object/from16 v0, p0

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    .line 524
    .local v11, "now":J
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    .line 526
    .local v13, "nowElapsed":J
    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 527
    new-instance v3, Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v1, v1, v2

    invoke-direct {v3, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    move-object v1, v3

    .line 528
    .local v1, "total":Lcom/android/server/job/JobPackageTracker$DataSet;
    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v2, v3, v2

    invoke-virtual {v2, v1, v11, v12}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    goto :goto_0

    .line 530
    .end local v1    # "total":Lcom/android/server/job/JobPackageTracker$DataSet;
    :cond_0
    new-instance v1, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v1, v2}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    .line 532
    .restart local v1    # "total":Lcom/android/server/job/JobPackageTracker$DataSet;
    :goto_0
    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v2, v1, v11, v12}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    .line 533
    const/4 v2, 0x1

    move v15, v2

    .local v15, "i":I
    :goto_1
    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    array-length v3, v2

    if-ge v15, v3, :cond_2

    .line 534
    aget-object v3, v2, v15

    if-eqz v3, :cond_1

    .line 535
    aget-object v2, v2, v15

    const-string v4, "Historical stats"

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-wide v6, v11

    move-wide v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 536
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 533
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 539
    .end local v15    # "i":I
    :cond_2
    const-string v4, "Current stats"

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-wide v6, v11

    move-wide v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 540
    return-void
.end method

.method public dumpHistory(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 17
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "filterUid"    # I

    .line 619
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBufferIndices;->size()I

    move-result v3

    .line 620
    .local v3, "size":I
    if-nez v3, :cond_0

    .line 621
    return-void

    .line 623
    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 625
    .local v4, "token":J
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 626
    .local v6, "now":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_5

    .line 627
    iget-object v9, v0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v9, v8}, Lcom/android/internal/util/RingBufferIndices;->indexOf(I)I

    move-result v9

    .line 628
    .local v9, "index":I
    iget-object v10, v0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aget v10, v10, v9

    .line 629
    .local v10, "uid":I
    const/4 v11, -0x1

    if-eq v2, v11, :cond_1

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v2, v11, :cond_1

    .line 630
    move/from16 v16, v3

    goto :goto_1

    .line 632
    :cond_1
    iget-object v11, v0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v11, v11, v9

    and-int/lit16 v11, v11, 0xff

    .line 633
    .local v11, "cmd":I
    if-nez v11, :cond_2

    .line 634
    move/from16 v16, v3

    goto :goto_1

    .line 636
    :cond_2
    const-wide v12, 0x20b00000001L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 638
    .local v12, "heToken":J
    const-wide v14, 0x10e00000001L

    invoke-virtual {v1, v14, v15, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 639
    iget-object v14, v0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    aget-wide v14, v14, v9

    sub-long v14, v6, v14

    move/from16 v16, v3

    const-wide v2, 0x10300000002L

    .end local v3    # "size":I
    .local v16, "size":I
    invoke-virtual {v1, v2, v3, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 640
    const-wide v2, 0x10500000003L

    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 641
    const-wide v2, 0x10500000004L

    iget-object v14, v0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aget v14, v14, v9

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 642
    const-wide v2, 0x10900000005L

    iget-object v14, v0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aget-object v14, v14, v9

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 643
    const/4 v2, 0x2

    if-eq v11, v2, :cond_3

    const/4 v2, 0x4

    if-ne v11, v2, :cond_4

    .line 644
    :cond_3
    const-wide v2, 0x10e00000006L

    iget-object v14, v0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v14, v14, v9

    const v15, 0xff00

    and-int/2addr v14, v15

    shr-int/lit8 v14, v14, 0x8

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 648
    :cond_4
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 626
    .end local v9    # "index":I
    .end local v10    # "uid":I
    .end local v11    # "cmd":I
    .end local v12    # "heToken":J
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p4

    move/from16 v3, v16

    goto/16 :goto_0

    .line 651
    .end local v8    # "i":I
    .end local v16    # "size":I
    .restart local v3    # "size":I
    :cond_5
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 652
    return-void
.end method

.method public dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;I)Z
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filterUid"    # I

    .line 569
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBufferIndices;->size()I

    move-result v3

    .line 570
    .local v3, "size":I
    if-gtz v3, :cond_0

    .line 571
    const/4 v4, 0x0

    return v4

    .line 573
    :cond_0
    const-string v4, "  Job history:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 575
    .local v4, "now":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x1

    if-ge v6, v3, :cond_a

    .line 576
    iget-object v8, v0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v8, v6}, Lcom/android/internal/util/RingBufferIndices;->indexOf(I)I

    move-result v8

    .line 577
    .local v8, "index":I
    iget-object v9, v0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aget v9, v9, v8

    .line 578
    .local v9, "uid":I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_1

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    if-eq v2, v10, :cond_1

    .line 579
    goto/16 :goto_3

    .line 581
    :cond_1
    iget-object v10, v0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v10, v10, v8

    and-int/lit16 v10, v10, 0xff

    .line 582
    .local v10, "cmd":I
    if-nez v10, :cond_2

    .line 583
    goto/16 :goto_3

    .line 586
    :cond_2
    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eq v10, v7, :cond_6

    if-eq v10, v12, :cond_5

    const/4 v7, 0x3

    if-eq v10, v7, :cond_4

    if-eq v10, v11, :cond_3

    .line 591
    const-string v7, "     ??"

    .local v7, "label":Ljava/lang/String;
    goto :goto_1

    .line 590
    .end local v7    # "label":Ljava/lang/String;
    :cond_3
    const-string v7, " STOP-P"

    .restart local v7    # "label":Ljava/lang/String;
    goto :goto_1

    .line 589
    .end local v7    # "label":Ljava/lang/String;
    :cond_4
    const-string v7, "START-P"

    .restart local v7    # "label":Ljava/lang/String;
    goto :goto_1

    .line 588
    .end local v7    # "label":Ljava/lang/String;
    :cond_5
    const-string v7, "   STOP"

    .restart local v7    # "label":Ljava/lang/String;
    goto :goto_1

    .line 587
    .end local v7    # "label":Ljava/lang/String;
    :cond_6
    const-string v7, "  START"

    .line 593
    .restart local v7    # "label":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    iget-object v13, v0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    aget-wide v13, v13, v8

    sub-long/2addr v13, v4

    const/16 v15, 0x13

    invoke-static {v13, v14, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 595
    const-string v13, " "

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    const-string v14, ": #"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    invoke-static {v1, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 599
    const-string v14, "/"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    iget-object v14, v0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aget v14, v14, v8

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 601
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    iget-object v14, v0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aget-object v14, v14, v8

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    if-eq v10, v12, :cond_7

    if-ne v10, v11, :cond_9

    .line 604
    :cond_7
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 605
    iget-object v11, v0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    aget-object v12, v11, v8

    .line 606
    .local v12, "reason":Ljava/lang/String;
    if-eqz v12, :cond_8

    .line 607
    aget-object v11, v11, v8

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 609
    :cond_8
    iget-object v11, v0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v11, v11, v8

    const v13, 0xff00

    and-int/2addr v11, v13

    shr-int/lit8 v11, v11, 0x8

    invoke-static {v11}, Landroid/app/job/JobParameters;->getReasonName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 613
    .end local v12    # "reason":Ljava/lang/String;
    :cond_9
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 575
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "uid":I
    .end local v10    # "cmd":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 615
    .end local v6    # "i":I
    :cond_a
    return v7
.end method

.method public getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F
    .locals 16
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 502
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    .line 503
    .local v1, "uid":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v3

    .line 505
    .local v3, "cur":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v5, 0x0

    aget-object v6, v4, v5

    if-eqz v6, :cond_0

    aget-object v4, v4, v5

    invoke-virtual {v4, v1, v2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 506
    .local v4, "last":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    :goto_0
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 507
    const/4 v5, 0x0

    return v5

    .line 509
    :cond_1
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 510
    .local v6, "now":J
    const-wide/16 v8, 0x0

    .line 511
    .local v8, "time":J
    if-eqz v3, :cond_2

    .line 512
    invoke-virtual {v3, v6, v7}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v10

    invoke-virtual {v3, v6, v7}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v12

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    .line 514
    :cond_2
    iget-object v10, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v10, v6, v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v10

    .line 515
    .local v10, "period":J
    if-eqz v4, :cond_3

    .line 516
    invoke-virtual {v4, v6, v7}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v12

    invoke-virtual {v4, v6, v7}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v14

    add-long/2addr v12, v14

    add-long/2addr v8, v12

    .line 517
    iget-object v12, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v5, v12, v5

    invoke-virtual {v5, v6, v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 519
    :cond_3
    long-to-float v5, v8

    long-to-float v12, v10

    div-float/2addr v5, v12

    return v5
.end method

.method public noteActive(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 10
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 467
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 468
    .local v0, "now":J
    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    .line 469
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 470
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    const/16 v3, 0x28

    if-lt v2, v3, :cond_0

    .line 471
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->incActiveTop(ILjava/lang/String;J)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->incActive(ILjava/lang/String;J)V

    .line 475
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v4, v2

    .line 476
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 475
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/JobPackageTracker;->addEvent(IILjava/lang/String;IILjava/lang/String;)V

    .line 477
    return-void
.end method

.method public noteConcurrency(II)V
    .locals 1
    .param p1, "totalActive"    # I
    .param p2, "fgActive"    # I

    .line 493
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget v0, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    if-le p1, v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iput p1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget v0, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    if-le p2, v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iput p2, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    .line 499
    :cond_1
    return-void
.end method

.method public noteInactive(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)V
    .locals 9
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "stopReason"    # I
    .param p3, "debugReason"    # Ljava/lang/String;

    .line 480
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 481
    .local v7, "now":J
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    move-wide v4, v7

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->decActiveTop(ILjava/lang/String;JI)V

    goto :goto_0

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    move-wide v4, v7

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->decActive(ILjava/lang/String;JI)V

    .line 487
    :goto_0
    invoke-virtual {p0, v7, v8}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 488
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    :goto_1
    move v1, v0

    .line 489
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    .line 488
    move-object v0, p0

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobPackageTracker;->addEvent(IILjava/lang/String;IILjava/lang/String;)V

    .line 490
    return-void
.end method

.method public noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 461
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 462
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->decPending(ILjava/lang/String;J)V

    .line 463
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 464
    return-void
.end method

.method public notePending(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 454
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 455
    .local v0, "now":J
    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    .line 456
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 457
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->incPending(ILjava/lang/String;J)V

    .line 458
    return-void
.end method

.method rebatchIfNeeded(J)V
    .locals 7
    .param p1, "now"    # J

    .line 442
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v0

    .line 443
    .local v0, "totalTime":J
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 445
    .local v2, "last":Lcom/android/server/job/JobPackageTracker$DataSet;
    iput-wide v0, v2, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    .line 446
    new-instance v3, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v3}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 447
    iget-object v3, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->finish(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    .line 448
    iget-object v3, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    invoke-static {v3, v6, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    iget-object v3, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aput-object v2, v3, v6

    .line 451
    .end local v2    # "last":Lcom/android/server/job/JobPackageTracker$DataSet;
    :cond_0
    return-void
.end method

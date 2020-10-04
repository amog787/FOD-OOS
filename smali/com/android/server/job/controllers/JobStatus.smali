.class public final Lcom/android/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# static fields
.field static final CONSTRAINTS_OF_INTEREST:I = -0x6bfffff1

.field static final CONSTRAINT_BACKGROUND_NOT_RESTRICTED:I = 0x400000

.field static final CONSTRAINT_BATTERY_NOT_LOW:I = 0x2

.field static final CONSTRAINT_CHARGING:I = 0x1

.field static final CONSTRAINT_CONNECTIVITY:I = 0x10000000

.field static final CONSTRAINT_CONTENT_TRIGGER:I = 0x4000000

.field static final CONSTRAINT_DEADLINE:I = 0x40000000

.field static final CONSTRAINT_DEVICE_NOT_DOZING:I = 0x2000000

.field static final CONSTRAINT_IDLE:I = 0x4

.field static final CONSTRAINT_STORAGE_NOT_LOW:I = 0x8

.field static final CONSTRAINT_TIMING_DELAY:I = -0x80000000

.field static final CONSTRAINT_WITHIN_QUOTA:I = 0x1000000

.field static final DEBUG:Z

.field static final DEBUG_PREPARE:Z = true

.field public static final DEFAULT_TRIGGER_MAX_DELAY:J = 0x1d4c0L

.field public static final DEFAULT_TRIGGER_UPDATE_DELAY:J = 0x2710L

.field public static final INTERNAL_FLAG_HAS_FOREGROUND_EXEMPTION:I = 0x1

.field public static final MIN_TRIGGER_MAX_DELAY:J = 0x3e8L

.field public static final MIN_TRIGGER_UPDATE_DELAY:J = 0x1f4L

.field public static final NO_EARLIEST_RUNTIME:J = 0x0L

.field public static final NO_LATEST_RUNTIME:J = 0x7fffffffffffffffL

.field public static final OVERRIDE_FULL:I = 0x2

.field public static final OVERRIDE_SOFT:I = 0x1

.field static final SOFT_OVERRIDE_CONSTRAINTS:I = -0x7ffffff1

.field private static final STATSD_CONSTRAINTS_TO_LOG:I = -0x3afffff4

.field private static final STATS_LOG_ENABLED:Z = false

.field static final TAG:Ljava/lang/String; = "JobSchedulerService"

.field public static final TRACKING_BATTERY:I = 0x1

.field public static final TRACKING_CONNECTIVITY:I = 0x2

.field public static final TRACKING_CONTENT:I = 0x4

.field public static final TRACKING_IDLE:I = 0x8

.field public static final TRACKING_QUOTA:I = 0x40

.field public static final TRACKING_STORAGE:I = 0x10

.field public static final TRACKING_TIME:I = 0x20


# instance fields
.field private final baseHeartbeat:J

.field final batteryName:Ljava/lang/String;

.field final callingUid:I

.field public changedAuthorities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public changedUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

.field public dozeWhitelisted:Z

.field private final earliestRunTimeElapsedMillis:J

.field public enqueueTime:J

.field public executingWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field final job:Landroid/app/job/JobInfo;

.field public lastEvaluatedPriority:I

.field private final latestRunTimeElapsedMillis:J

.field private mInternalFlags:I

.field private mLastFailedRunTime:J

.field private mLastSuccessfulRunTime:J

.field private mOriginalLatestRunTimeElapsedMillis:J

.field private mPersistedUtcTimes:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReadyDeadlineSatisfied:Z

.field private mReadyNotDozing:Z

.field private mReadyNotRestrictedInBg:Z

.field private mReadyWithinQuota:Z

.field private final mRequiredConstraintsOfInterest:I

.field private mSatisfiedConstraintsOfInterest:I

.field public madeActive:J

.field public madePending:J

.field public network:Landroid/net/Network;

.field public nextPendingWorkId:I

.field private final numFailures:I

.field public overrideState:I

.field public pendingWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private prepared:Z

.field final requiredConstraints:I

.field satisfiedConstraints:I

.field final sourcePackageName:Ljava/lang/String;

.field final sourceTag:Ljava/lang/String;

.field final sourceUid:I

.field final sourceUserId:I

.field private standbyBucket:I

.field final tag:Ljava/lang/String;

.field final targetSdkVersion:I

.field private totalNetworkBytes:J

.field private trackingControllers:I

.field public uidActive:Z

.field private unpreparedPoint:Ljava/lang/Throwable;

.field private uriPerms:Lcom/android/server/job/GrantedUriPermissions;

.field private whenStandbyDeferred:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V
    .locals 20
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "callingUid"    # I
    .param p3, "targetSdkVersion"    # I
    .param p4, "sourcePackageName"    # Ljava/lang/String;
    .param p5, "sourceUserId"    # I
    .param p6, "standbyBucket"    # I
    .param p7, "heartbeat"    # J
    .param p9, "tag"    # Ljava/lang/String;
    .param p10, "numFailures"    # I
    .param p11, "earliestRunTimeElapsedMillis"    # J
    .param p13, "latestRunTimeElapsedMillis"    # J
    .param p15, "lastSuccessfulRunTime"    # J
    .param p17, "lastFailedRunTime"    # J
    .param p19, "internalFlags"    # I

    .line 368
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-wide/from16 v5, p11

    move-wide/from16 v7, p13

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 194
    const/4 v10, 0x0

    iput v10, v1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 195
    iput v10, v1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 267
    const/4 v11, 0x1

    iput v11, v1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 270
    iput v10, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 308
    const-wide/16 v12, -0x1

    iput-wide v12, v1, Lcom/android/server/job/controllers/JobStatus;->totalNetworkBytes:J

    .line 369
    move-object/from16 v12, p1

    iput-object v12, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 370
    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 371
    move/from16 v13, p3

    iput v13, v1, Lcom/android/server/job/controllers/JobStatus;->targetSdkVersion:I

    .line 372
    move/from16 v14, p6

    iput v14, v1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 373
    move-wide/from16 v11, p7

    iput-wide v11, v1, Lcom/android/server/job/controllers/JobStatus;->baseHeartbeat:J

    .line 375
    const/16 v16, -0x1

    .line 376
    .local v16, "tempSourceUid":I
    const/4 v15, -0x1

    if-eq v4, v15, :cond_0

    if-eqz v3, :cond_0

    .line 378
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v3, v10, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v16, v0

    .line 382
    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 384
    :cond_0
    move/from16 v0, v16

    .end local v16    # "tempSourceUid":I
    .local v0, "tempSourceUid":I
    :goto_0
    if-ne v0, v15, :cond_1

    .line 385
    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 386
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    iput v15, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 387
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 388
    iput-object v9, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    move-object/from16 v9, p9

    goto :goto_1

    .line 390
    :cond_1
    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 391
    iput v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 392
    iput-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 393
    move-object/from16 v9, p9

    iput-object v9, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 396
    :goto_1
    iget-object v15, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    if-eqz v15, :cond_2

    .line 397
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 398
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    iput-object v10, v1, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 399
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "*job*/"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    .line 401
    iput-wide v5, v1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 402
    iput-wide v7, v1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 403
    iput-wide v7, v1, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    .line 404
    move/from16 v10, p10

    iput v10, v1, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    .line 406
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getConstraintFlags()I

    move-result v15

    .line 407
    .local v15, "requiredConstraints":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 408
    const/high16 v18, 0x10000000

    or-int v15, v15, v18

    .line 410
    :cond_3
    const-wide/16 v18, 0x0

    cmp-long v18, v5, v18

    if-eqz v18, :cond_4

    .line 411
    const/high16 v18, -0x80000000

    or-int v15, v15, v18

    .line 413
    :cond_4
    const-wide v18, 0x7fffffffffffffffL

    cmp-long v18, v7, v18

    if-eqz v18, :cond_5

    .line 414
    const/high16 v18, 0x40000000    # 2.0f

    or-int v15, v15, v18

    .line 416
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 417
    const/high16 v18, 0x4000000

    or-int v15, v15, v18

    .line 419
    :cond_6
    iput v15, v1, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    .line 420
    const v18, -0x6bfffff1

    move/from16 v19, v0

    .end local v0    # "tempSourceUid":I
    .local v19, "tempSourceUid":I
    and-int v0, v15, v18

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    const/16 v17, 0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    move/from16 v0, v17

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, v1, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 423
    move-wide/from16 v2, p15

    iput-wide v2, v1, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    .line 424
    move-wide/from16 v2, p17

    iput-wide v2, v1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    .line 426
    move/from16 v2, p19

    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 436
    :cond_8
    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIJLjava/lang/String;JJJJLandroid/util/Pair;I)V
    .locals 21
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "callingUid"    # I
    .param p3, "sourcePkgName"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "standbyBucket"    # I
    .param p6, "baseHeartbeat"    # J
    .param p8, "sourceTag"    # Ljava/lang/String;
    .param p9, "earliestRunTimeElapsedMillis"    # J
    .param p11, "latestRunTimeElapsedMillis"    # J
    .param p13, "lastSuccessfulRunTime"    # J
    .param p15, "lastFailedRunTime"    # J
    .param p18, "innerFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobInfo;",
            "I",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/lang/String;",
            "JJJJ",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .local p17, "persistedExecutionTimesUTC":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move/from16 v20, p18

    .line 470
    invoke-static/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->resolveTargetSdkVersion(Landroid/app/job/JobInfo;)I

    move-result v4

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v20}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V

    .line 480
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 481
    if-eqz v0, :cond_0

    .line 482
    sget-boolean v2, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 483
    const-string v2, "JobSchedulerService"

    const-string v3, "+ restored job with RTC times because of bad boot clock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 21
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 441
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->targetSdkVersion:I

    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v6

    .line 443
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getBaseHeartbeat()J

    move-result-wide v8

    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v11

    .line 445
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v14

    .line 446
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v18

    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v20

    .line 441
    invoke-direct/range {v1 .. v20}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V

    .line 448
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 449
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v1, :cond_0

    .line 450
    sget-boolean v1, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 451
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v3, "JobSchedulerService"

    const-string v4, "Cloning job with persisted run times"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJJIJJ)V
    .locals 21
    .param p1, "rescheduling"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "newBaseHeartbeat"    # J
    .param p4, "newEarliestRuntimeElapsedMillis"    # J
    .param p6, "newLatestRuntimeElapsedMillis"    # J
    .param p8, "backoffAttempt"    # I
    .param p9, "lastSuccessfulRunTime"    # J
    .param p11, "lastFailedRunTime"    # J

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-wide/from16 v8, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    move/from16 v11, p8

    move-wide/from16 v16, p9

    move-wide/from16 v18, p11

    .line 493
    iget-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-static {v4}, Lcom/android/server/job/controllers/JobStatus;->resolveTargetSdkVersion(Landroid/app/job/JobInfo;)I

    move-result v4

    .line 494
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v6

    .line 495
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v7

    .line 496
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v10

    .line 498
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v20

    .line 493
    invoke-direct/range {v1 .. v20}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V

    .line 499
    return-void
.end method

.method static bucketName(I)Ljava/lang/String;
    .locals 2
    .param p0, "standbyBucket"    # I

    .line 1428
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1433
    :cond_0
    const-string v0, "NEVER"

    return-object v0

    .line 1432
    :cond_1
    const-string v0, "RARE"

    return-object v0

    .line 1431
    :cond_2
    const-string v0, "FREQUENT"

    return-object v0

    .line 1430
    :cond_3
    const-string v0, "WORKING_SET"

    return-object v0

    .line 1429
    :cond_4
    const-string v0, "ACTIVE"

    return-object v0
.end method

.method private computeEstimatedNetworkBytesLocked()J
    .locals 8

    .line 797
    const-wide/16 v0, 0x0

    .line 798
    .local v0, "totalNetworkBytes":J
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getEstimatedNetworkBytes()J

    move-result-wide v2

    .line 799
    .local v2, "networkBytes":J
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 800
    return-wide v4

    .line 802
    :cond_0
    add-long/2addr v0, v2

    .line 804
    iget-object v6, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 805
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 806
    iget-object v7, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/job/JobWorkItem;

    invoke-virtual {v7}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkBytes()J

    move-result-wide v2

    .line 807
    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    .line 808
    return-wide v4

    .line 810
    :cond_1
    add-long/2addr v0, v2

    .line 805
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 814
    .end local v6    # "i":I
    :cond_2
    return-wide v0
.end method

.method public static createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;
    .locals 30
    .param p0, "job"    # Landroid/app/job/JobInfo;
    .param p1, "callingUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 511
    move/from16 v13, p3

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    .line 513
    .local v11, "elapsedNow":J
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 515
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v3

    const-wide v5, 0x757b12c00L

    .line 516
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 515
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 517
    .local v3, "period":J
    add-long v5, v11, v3

    .line 518
    .local v5, "latestRunTimeElapsedMillis":J
    nop

    .line 520
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    sub-long v3, v5, v7

    .line 521
    .local v3, "earliestRunTimeElapsedMillis":J
    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    goto :goto_2

    .line 522
    .end local v3    # "earliestRunTimeElapsedMillis":J
    .end local v5    # "latestRunTimeElapsedMillis":J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v3

    add-long/2addr v3, v11

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 524
    .restart local v3    # "earliestRunTimeElapsedMillis":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v5

    add-long/2addr v5, v11

    goto :goto_1

    :cond_2
    const-wide v5, 0x7fffffffffffffffL

    :goto_1
    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    .line 527
    .end local v3    # "earliestRunTimeElapsedMillis":J
    .local v20, "earliestRunTimeElapsedMillis":J
    .local v22, "latestRunTimeElapsedMillis":J
    :goto_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v14, v0

    .line 529
    .local v14, "jobPackage":Ljava/lang/String;
    invoke-static {v14, v13, v11, v12}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v9

    .line 531
    .local v9, "standbyBucket":I
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/job/JobSchedulerInternal;

    .line 532
    .local v6, "js":Lcom/android/server/job/JobSchedulerInternal;
    if-eqz v6, :cond_4

    .line 533
    invoke-interface {v6, v14, v13, v9}, Lcom/android/server/job/JobSchedulerInternal;->baseHeartbeatForApp(Ljava/lang/String;II)J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_4

    .line 534
    :cond_4
    move-wide v7, v1

    :goto_4
    nop

    .line 535
    .local v7, "currentHeartbeat":J
    new-instance v24, Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v0, v24

    invoke-static/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->resolveTargetSdkVersion(Landroid/app/job/JobInfo;)I

    move-result v3

    const/4 v10, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v25, v6

    .end local v6    # "js":Lcom/android/server/job/JobSchedulerInternal;
    .local v25, "js":Lcom/android/server/job/JobSchedulerInternal;
    move v6, v9

    move/from16 v26, v9

    .end local v9    # "standbyBucket":I
    .local v26, "standbyBucket":I
    move-object/from16 v9, p4

    move-wide/from16 v27, v11

    .end local v11    # "elapsedNow":J
    .local v27, "elapsedNow":J
    move-wide/from16 v11, v20

    move-object/from16 v29, v14

    .end local v14    # "jobPackage":Ljava/lang/String;
    .local v29, "jobPackage":Ljava/lang/String;
    move-wide/from16 v13, v22

    invoke-direct/range {v0 .. v19}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V

    return-object v24
.end method

.method private dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "work"    # Landroid/app/job/JobWorkItem;

    .line 1402
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1404
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1405
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1406
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1407
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Intent;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1409
    :cond_0
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v2

    .line 1410
    .local v2, "grants":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 1411
    move-object v3, v2

    check-cast v3, Lcom/android/server/job/GrantedUriPermissions;

    const-wide v4, 0x10b00000004L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1414
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1415
    return-void
.end method

.method private dumpJobWorkItem(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/job/JobWorkItem;I)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "work"    # Landroid/app/job/JobWorkItem;
    .param p4, "index"    # I

    .line 1392
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1394
    const-string/jumbo v0, "x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1395
    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1396
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  URI grants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/GrantedUriPermissions;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1399
    :cond_0
    return-void
.end method

.method private formatRunTime(Ljava/io/PrintWriter;JJJ)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "runtime"    # J
    .param p4, "defaultValue"    # J
    .param p6, "now"    # J

    .line 1226
    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    .line 1227
    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1229
    :cond_0
    sub-long v0, p2, p6

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1231
    :goto_0
    return-void
.end method

.method private formatRunTime(Ljava/lang/StringBuilder;JJJ)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "runtime"    # J
    .param p4, "defaultValue"    # J
    .param p6, "now"    # J

    .line 1234
    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    .line 1235
    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1237
    :cond_0
    sub-long v0, p2, p6

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1239
    :goto_0
    return-void
.end method

.method private getProtoConstraint(I)I
    .locals 2
    .param p1, "constraint"    # I

    .line 1326
    const/high16 v0, -0x80000000

    const/4 v1, 0x4

    if-eq p1, v0, :cond_a

    if-eq p1, v1, :cond_9

    const/16 v0, 0x8

    if-eq p1, v0, :cond_8

    const/high16 v1, 0x400000

    if-eq p1, v1, :cond_7

    const/high16 v1, 0x1000000

    if-eq p1, v1, :cond_6

    const/high16 v1, 0x2000000

    if-eq p1, v1, :cond_5

    const/high16 v1, 0x4000000

    if-eq p1, v1, :cond_4

    const/high16 v0, 0x10000000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1350
    const/4 v0, 0x0

    return v0

    .line 1330
    :cond_0
    return v0

    .line 1332
    :cond_1
    return v0

    .line 1338
    :cond_2
    const/4 v0, 0x5

    return v0

    .line 1334
    :cond_3
    const/4 v0, 0x7

    return v0

    .line 1336
    :cond_4
    return v0

    .line 1340
    :cond_5
    const/16 v0, 0x9

    return v0

    .line 1348
    :cond_6
    const/16 v0, 0xa

    return v0

    .line 1328
    :cond_7
    const/16 v0, 0xb

    return v0

    .line 1344
    :cond_8
    const/4 v0, 0x3

    return v0

    .line 1342
    :cond_9
    const/4 v0, 0x6

    return v0

    .line 1346
    :cond_a
    return v1
.end method

.method private isConstraintsSatisfied(I)Z
    .locals 4
    .param p1, "satisfiedConstraints"    # I

    .line 1145
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1147
    return v1

    .line 1150
    :cond_0
    move v2, p1

    .line 1151
    .local v2, "sat":I
    if-ne v0, v1, :cond_1

    .line 1153
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v3, -0x7ffffff1

    and-int/2addr v0, v3

    or-int/2addr v2, v0

    .line 1156
    :cond_1
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    and-int v3, v2, v0

    if-ne v3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isReady(I)Z
    .locals 2
    .param p1, "satisfiedConstraints"    # I

    .line 1116
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1117
    return v1

    .line 1124
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    if-nez v0, :cond_1

    .line 1125
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1124
    :goto_0
    return v1
.end method

.method private static resolveTargetSdkVersion(Landroid/app/job/JobInfo;)I
    .locals 2
    .param p0, "job"    # Landroid/app/job/JobInfo;

    .line 1440
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1441
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageTargetSdkVersion(Ljava/lang/String;)I

    move-result v0

    .line 1440
    return v0
.end method

.method private static ungrantWorkItem(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V
    .locals 1
    .param p0, "am"    # Landroid/app/IActivityManager;
    .param p1, "work"    # Landroid/app/job/JobWorkItem;

    .line 582
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v0, p0}, Lcom/android/server/job/GrantedUriPermissions;->revoke(Landroid/app/IActivityManager;)V

    .line 585
    :cond_0
    return-void
.end method

.method private static ungrantWorkList(Landroid/app/IActivityManager;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "am"    # Landroid/app/IActivityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IActivityManager;",
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;)V"
        }
    .end annotation

    .line 603
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobWorkItem;>;"
    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 605
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 606
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-static {p0, v2}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private updateEstimatedNetworkBytesLocked()V
    .locals 2

    .line 790
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->computeEstimatedNetworkBytesLocked()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->totalNetworkBytes:J

    .line 791
    return-void
.end method


# virtual methods
.method public addInternalFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 768
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 769
    return-void
.end method

.method public clearPersistedUtcTimes()V
    .locals 1

    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 931
    return-void
.end method

.method clearTrackingController(I)Z
    .locals 2
    .param p1, "which"    # I

    .line 1040
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int v1, v0, p1

    if-eqz v1, :cond_0

    .line 1041
    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    .line 1042
    const/4 v0, 0x1

    return v0

    .line 1044
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public completeWorkLocked(Landroid/app/IActivityManager;I)Z
    .locals 4
    .param p1, "am"    # Landroid/app/IActivityManager;
    .param p2, "workId"    # I

    .line 588
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 589
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 590
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 591
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    .line 592
    .local v2, "work":Landroid/app/job/JobWorkItem;
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 593
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 594
    invoke-static {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V

    .line 595
    const/4 v3, 0x1

    return v3

    .line 590
    .end local v2    # "work":Landroid/app/job/JobWorkItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dequeueWorkLocked()Landroid/app/job/JobWorkItem;
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    .line 560
    .local v0, "work":Landroid/app/job/JobWorkItem;
    if-eqz v0, :cond_1

    .line 561
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->bumpDeliveryCount()V

    .line 567
    :cond_1
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    .line 568
    return-object v0

    .line 570
    .end local v0    # "work":Landroid/app/job/JobWorkItem;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JZJ)V
    .locals 17
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "full"    # Z
    .param p5, "elapsedRealtimeMillis"    # J

    .line 1661
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1663
    .local v2, "token":J
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1664
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    const-wide v7, 0x10900000002L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1665
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    const-wide v9, 0x10500000003L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1666
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    const-wide v9, 0x10500000004L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1667
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    const-wide v9, 0x10900000005L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1668
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v4

    const-wide v9, 0x10300000018L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1670
    const-wide v11, 0x1080000000aL

    const-wide v13, 0x10800000002L

    const-wide/16 v15, 0x0

    if-eqz p4, :cond_a

    .line 1671
    const-wide v9, 0x10b00000006L

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 1673
    .local v9, "jiToken":J
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    const-wide v7, 0x10b00000001L

    invoke-virtual {v4, v1, v7, v8}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1675
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1676
    const-wide v7, 0x10300000003L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v13

    invoke-virtual {v1, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1677
    const-wide v7, 0x10300000004L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v13

    invoke-virtual {v1, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1679
    const-wide v7, 0x10800000005L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1680
    const-wide v7, 0x11100000006L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1681
    const-wide v7, 0x10500000007L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1683
    const-wide v7, 0x10800000008L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1684
    const-wide v7, 0x10800000009L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1685
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v4

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1687
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1688
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_1

    .line 1689
    const-wide v7, 0x20b0000000bL

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 1690
    .local v7, "tcuToken":J
    iget-object v13, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v13}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v13

    aget-object v13, v13, v4

    .line 1692
    .local v13, "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v14

    invoke-virtual {v1, v5, v6, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1693
    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v14

    .line 1694
    .local v14, "u":Landroid/net/Uri;
    if-eqz v14, :cond_0

    .line 1695
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide v11, 0x10900000002L

    invoke-virtual {v1, v11, v12, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_1

    .line 1694
    :cond_0
    const-wide v11, 0x10900000002L

    .line 1698
    :goto_1
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1688
    .end local v7    # "tcuToken":J
    .end local v13    # "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    .end local v14    # "u":Landroid/net/Uri;
    add-int/lit8 v4, v4, 0x1

    const-wide v5, 0x10500000001L

    const-wide v11, 0x1080000000aL

    goto :goto_0

    .line 1700
    .end local v4    # "i":I
    :cond_1
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v4

    cmp-long v4, v4, v15

    if-ltz v4, :cond_2

    .line 1701
    const-wide v4, 0x1030000000cL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1702
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v6

    .line 1701
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1704
    :cond_2
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v4

    cmp-long v4, v4, v15

    if-ltz v4, :cond_3

    .line 1705
    const-wide v4, 0x1030000000dL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1706
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v6

    .line 1705
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1709
    :cond_3
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->maybeIsEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1710
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    const-wide v5, 0x10b0000000eL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/PersistableBundle;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1712
    :cond_4
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->maybeIsEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1713
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    const-wide v5, 0x10b0000000fL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Bundle;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1715
    :cond_5
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1716
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    const-wide v5, 0x10b00000010L

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/ClipData;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1718
    :cond_6
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v4, :cond_7

    .line 1719
    const-wide v5, 0x10b00000011L

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1721
    :cond_7
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1722
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    const-wide v5, 0x10b00000012L

    invoke-virtual {v4, v1, v5, v6}, Landroid/net/NetworkRequest;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1724
    :cond_8
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->totalNetworkBytes:J

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_9

    .line 1725
    const-wide v6, 0x10300000013L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1727
    :cond_9
    const-wide v4, 0x10300000014L

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1728
    const-wide v4, 0x10300000015L

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1730
    const-wide v4, 0x10b00000016L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1731
    .local v4, "bpToken":J
    const-wide v6, 0x10e00000001L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1732
    const-wide v6, 0x10300000002L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1733
    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v11

    .line 1732
    invoke-virtual {v1, v6, v7, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1734
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1736
    const-wide v6, 0x10800000017L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1737
    const-wide v6, 0x10800000018L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1739
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1742
    .end local v4    # "bpToken":J
    .end local v9    # "jiToken":J
    :cond_a
    const-wide v4, 0x20e00000007L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1743
    if-eqz p4, :cond_b

    .line 1744
    const-wide v4, 0x20e00000008L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1745
    const-wide v4, 0x20e00000009L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v7, 0x1000000

    or-int/2addr v6, v7

    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v7, v7

    and-int/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1747
    iget-boolean v4, v0, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    const-wide v5, 0x1080000000aL

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1748
    const-wide v4, 0x1080000001aL

    iget-boolean v6, v0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1749
    const-wide v4, 0x1080000001bL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1750
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v6

    .line 1749
    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1754
    :cond_b
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const/4 v6, 0x0

    const-wide v7, 0x20e0000000bL

    if-eqz v4, :cond_c

    .line 1755
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1758
    :cond_c
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v9, 0x2

    and-int/2addr v4, v9

    if-eqz v4, :cond_d

    .line 1759
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1762
    :cond_d
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_e

    .line 1763
    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1766
    :cond_e
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_f

    .line 1767
    const/4 v4, 0x3

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1770
    :cond_f
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_10

    .line 1771
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1774
    :cond_10
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_11

    .line 1775
    const/4 v4, 0x5

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1778
    :cond_11
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_12

    .line 1779
    const/4 v4, 0x6

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1784
    :cond_12
    const-wide v4, 0x10b00000019L    # 5.665728762E-312

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1785
    .local v4, "icToken":J
    const-wide v7, 0x10800000001L

    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1786
    iget-boolean v7, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    const-wide v8, 0x10800000002L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1788
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1790
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v7, :cond_13

    .line 1791
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_13

    .line 1792
    const-wide v8, 0x2090000000cL

    iget-object v10, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1791
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1795
    .end local v7    # "k":I
    :cond_13
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v7, :cond_14

    .line 1796
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_14

    .line 1797
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 1798
    .local v8, "u":Landroid/net/Uri;
    const-wide v9, 0x2090000000dL

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1796
    .end local v8    # "u":Landroid/net/Uri;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1802
    .end local v7    # "i":I
    :cond_14
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz v7, :cond_15

    .line 1803
    const-wide v8, 0x10b0000000eL

    invoke-virtual {v7, v1, v8, v9}, Landroid/net/Network;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1806
    :cond_15
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v7, :cond_16

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_16

    .line 1807
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_16

    .line 1808
    const-wide v8, 0x20b0000000fL

    iget-object v10, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobWorkItem;

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    .line 1807
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1811
    .end local v7    # "i":I
    :cond_16
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v7, :cond_17

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_17

    .line 1812
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_17

    .line 1813
    const-wide v8, 0x20b00000010L

    iget-object v10, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobWorkItem;

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    .line 1812
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1817
    .end local v7    # "i":I
    :cond_17
    const-wide v7, 0x10e00000011L

    iget v9, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1818
    const-wide v7, 0x10300000012L

    iget-wide v9, v0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long v9, p5, v9

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1819
    iget-wide v7, v0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long v9, v7, v15

    const-wide v10, 0x11200000013L

    if-nez v9, :cond_18

    .line 1820
    invoke-virtual {v1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_6

    .line 1822
    :cond_18
    sub-long v7, v7, p5

    invoke-virtual {v1, v10, v11, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1825
    :goto_6
    iget-wide v7, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v9, v7, v9

    const-wide v10, 0x11200000014L

    if-nez v9, :cond_19

    .line 1826
    invoke-virtual {v1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_7

    .line 1828
    :cond_19
    sub-long v7, v7, p5

    invoke-virtual {v1, v10, v11, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1832
    :goto_7
    const-wide v6, 0x10500000015L

    iget v8, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1833
    const-wide v6, 0x10300000016L

    iget-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1834
    const-wide v6, 0x10300000017L

    iget-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1836
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1837
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V
    .locals 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "full"    # Z
    .param p4, "elapsedRealtimeMillis"    # J

    .line 1446
    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-wide/from16 v11, p4

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v9, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1447
    const-string v0, " tag="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1449
    const-string v0, "Source: uid="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v9, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1450
    const-string v0, " user="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1451
    const-string v0, " pkg="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    const/16 v0, 0x20

    const-string v1, "  "

    const-wide/16 v13, 0x0

    if-eqz p3, :cond_12

    .line 1453
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "JobInfo:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Service: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1455
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1457
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  PERIODIC: interval="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1458
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1459
    const-string v2, " flex="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1460
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1462
    :cond_0
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1463
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  PERSISTED"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    :cond_1
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1466
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Priority: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1467
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v2

    invoke-static {v2}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    :cond_2
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1470
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Flags: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1471
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1474
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Internal flags: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 1478
    const-string v2, " HAS_FOREGROUND_EXEMPTION"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1480
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1482
    :cond_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Requires: charging="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1483
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " batteryNotLow="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1484
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " deviceIdle="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1485
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1486
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1487
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Trigger content URIs:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 1489
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    aget-object v3, v3, v2

    .line 1490
    .local v3, "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {v3}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v3}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1488
    .end local v3    # "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1494
    .end local v2    # "i":I
    :cond_6
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-ltz v2, :cond_7

    .line 1495
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Trigger update delay: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1496
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1497
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1499
    :cond_7
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-ltz v2, :cond_8

    .line 1500
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Trigger max delay: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1502
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1505
    :cond_8
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->maybeIsEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1506
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Extras: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1507
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    :cond_9
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->maybeIsEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1510
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Transient extras: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1511
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    :cond_a
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1514
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Clip data: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1515
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1516
    .local v2, "b":Ljava/lang/StringBuilder;
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;)V

    .line 1517
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1519
    .end local v2    # "b":Ljava/lang/StringBuilder;
    :cond_b
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v2, :cond_c

    .line 1520
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Granted URI permissions:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1523
    :cond_c
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1524
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Network type: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1525
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1527
    :cond_d
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->totalNetworkBytes:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 1528
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Network bytes: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1529
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->totalNetworkBytes:J

    invoke-virtual {v9, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1531
    :cond_e
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-eqz v2, :cond_f

    .line 1532
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Minimum latency: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1533
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1534
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1536
    :cond_f
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-eqz v2, :cond_10

    .line 1537
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Max execution delay: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1538
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1539
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1541
    :cond_10
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Backoff: policy="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1542
    const-string v2, " initial="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1543
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1544
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1545
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Has early constraint"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    :cond_11
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1548
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Has late constraint"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1551
    :cond_12
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Required constraints:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1552
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {p0, v9, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 1553
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1554
    if-eqz p3, :cond_15

    .line 1555
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Satisfied constraints:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1556
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {p0, v9, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 1557
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1558
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Unsatisfied constraints:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1559
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iget v3, v8, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v3, v3

    and-int/2addr v2, v3

    invoke-virtual {p0, v9, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 1561
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1562
    iget-boolean v2, v8, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    if-eqz v2, :cond_13

    .line 1563
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Doze whitelisted: true"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    :cond_13
    iget-boolean v2, v8, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eqz v2, :cond_14

    .line 1566
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Uid: active"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1568
    :cond_14
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1569
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Is exempted from app standby"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1572
    :cond_15
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    if-eqz v2, :cond_1d

    .line 1573
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Tracking:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1574
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    const-string v2, " BATTERY"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1575
    :cond_16
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_17

    const-string v2, " CONNECTIVITY"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1576
    :cond_17
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_18

    const-string v2, " CONTENT"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1577
    :cond_18
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_19

    const-string v2, " IDLE"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1578
    :cond_19
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1a

    const-string v2, " STORAGE"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1579
    :cond_1a
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1b

    const-string v0, " TIME"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1580
    :cond_1b
    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1c

    const-string v0, " QUOTA"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1581
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1584
    :cond_1d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Implicit constraints:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  readyNotDozing: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1586
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1587
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  readyNotRestrictedInBg: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1588
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1589
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1590
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  readyDeadlineSatisfied: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1591
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1594
    :cond_1e
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_20

    .line 1595
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Changed authorities:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1596
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 1597
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1596
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1599
    .end local v0    # "i":I
    :cond_1f
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_20

    .line 1600
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Changed URIs:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 1602
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1601
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1606
    .end local v0    # "i":I
    :cond_20
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz v0, :cond_21

    .line 1607
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Network: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1609
    :cond_21
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 1610
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending work:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1611
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 1612
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, v9, v10, v1, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/job/JobWorkItem;I)V

    .line 1611
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1615
    .end local v0    # "i":I
    :cond_22
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 1616
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Executing work:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1617
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 1618
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, v9, v10, v1, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/job/JobWorkItem;I)V

    .line 1617
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1621
    .end local v0    # "i":I
    :cond_23
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Standby bucket: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    if-lez v0, :cond_24

    .line 1624
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Base heartbeat: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1625
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->baseHeartbeat:J

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 1627
    :cond_24
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long v0, v0, v13

    if-eqz v0, :cond_25

    .line 1628
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Deferred since: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1629
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    invoke-static {v0, v1, v11, v12, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1630
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1632
    :cond_25
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Enqueue time: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1633
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v0, v1, v11, v12, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1634
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1635
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Run time: earliest="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1636
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 1637
    const-string v0, ", latest="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1638
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 1639
    const-string v0, ", original latest="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1640
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 1642
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1643
    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v0, :cond_26

    .line 1644
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Num failures: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1646
    :cond_26
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1647
    .local v0, "t":Landroid/text/format/Time;
    const-string v1, "%Y-%m-%d %H:%M:%S"

    .line 1648
    .local v1, "format":Ljava/lang/String;
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    cmp-long v2, v2, v13

    const-string v3, "%Y-%m-%d %H:%M:%S"

    if-eqz v2, :cond_27

    .line 1649
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Last successful run: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1650
    iget-wide v4, v8, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1651
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1653
    :cond_27
    iget-wide v4, v8, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    cmp-long v2, v4, v13

    if-eqz v2, :cond_28

    .line 1654
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Last failed run: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1655
    iget-wide v4, v8, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1656
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    :cond_28
    return-void
.end method

.method dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "constraints"    # I

    .line 1356
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 1357
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1359
    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    .line 1360
    const/4 v0, 0x2

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1362
    :cond_1
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_2

    .line 1363
    const/4 v0, 0x3

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1365
    :cond_2
    const/high16 v0, -0x80000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_3

    .line 1366
    const/4 v0, 0x4

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1368
    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p4

    if-eqz v0, :cond_4

    .line 1369
    const/4 v0, 0x5

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1371
    :cond_4
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_5

    .line 1372
    const/4 v0, 0x6

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1374
    :cond_5
    const/high16 v0, 0x10000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_6

    .line 1375
    const/4 v0, 0x7

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1377
    :cond_6
    const/high16 v0, 0x4000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_7

    .line 1378
    const/16 v0, 0x8

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1380
    :cond_7
    const/high16 v0, 0x2000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_8

    .line 1381
    const/16 v0, 0x9

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1383
    :cond_8
    const/high16 v0, 0x1000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_9

    .line 1384
    const/16 v0, 0xa

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1386
    :cond_9
    const/high16 v0, 0x400000

    and-int/2addr v0, p4

    if-eqz v0, :cond_a

    .line 1387
    const/16 v0, 0xb

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1389
    :cond_a
    return-void
.end method

.method dumpConstraints(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "constraints"    # I

    .line 1284
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 1285
    const-string v0, " CHARGING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1287
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 1288
    const-string v0, " BATTERY_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    :cond_1
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_2

    .line 1291
    const-string v0, " STORAGE_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1293
    :cond_2
    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    .line 1294
    const-string v0, " TIMING_DELAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1296
    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_4

    .line 1297
    const-string v0, " DEADLINE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1299
    :cond_4
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_5

    .line 1300
    const-string v0, " IDLE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1302
    :cond_5
    const/high16 v0, 0x10000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_6

    .line 1303
    const-string v0, " CONNECTIVITY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1305
    :cond_6
    const/high16 v0, 0x4000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_7

    .line 1306
    const-string v0, " CONTENT_TRIGGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1308
    :cond_7
    const/high16 v0, 0x2000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_8

    .line 1309
    const-string v0, " DEVICE_NOT_DOZING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1311
    :cond_8
    const/high16 v0, 0x400000

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    .line 1312
    const-string v0, " BACKGROUND_NOT_RESTRICTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1314
    :cond_9
    const/high16 v0, 0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 1315
    const-string v0, " WITHIN_QUOTA"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1317
    :cond_a
    if-eqz p2, :cond_b

    .line 1318
    const-string v0, " [0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1319
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1320
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1322
    :cond_b
    return-void
.end method

.method public enqueueWorkLocked(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V
    .locals 7
    .param p1, "am"    # Landroid/app/IActivityManager;
    .param p2, "work"    # Landroid/app/job/JobWorkItem;

    .line 543
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 546
    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    invoke-virtual {p2, v0}, Landroid/app/job/JobWorkItem;->setWorkId(I)V

    .line 547
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 548
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 551
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 550
    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->createFromIntent(Landroid/app/IActivityManager;Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/job/JobWorkItem;->setGrants(Ljava/lang/Object;)V

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    .line 555
    return-void
.end method

.method public getBaseHeartbeat()J
    .locals 2

    .line 722
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->baseHeartbeat:J

    return-wide v0
.end method

.method public getBatteryName()Ljava/lang/String;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    return-object v0
.end method

.method getBucketName()Ljava/lang/String;
    .locals 1

    .line 1421
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-static {v0}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEarliestRunTime()J
    .locals 2

    .line 879
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getEstimatedNetworkBytes()J
    .locals 2

    .line 818
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->totalNetworkBytes:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    return v0
.end method

.method public getFractionRunTime()F
    .locals 12

    .line 906
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 907
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide v6, 0x7fffffffffffffffL

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v2, v8, v6

    if-nez v2, :cond_0

    .line 908
    return v3

    .line 909
    :cond_0
    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long v2, v8, v4

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 910
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v2, v0, v5

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    return v3

    .line 911
    :cond_2
    iget-wide v10, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v2, v10, v6

    if-nez v2, :cond_4

    .line 912
    cmp-long v2, v0, v8

    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    return v3

    .line 914
    :cond_4
    cmp-long v2, v0, v8

    if-gtz v2, :cond_5

    .line 915
    return v4

    .line 916
    :cond_5
    cmp-long v2, v0, v10

    if-ltz v2, :cond_6

    .line 917
    return v3

    .line 919
    :cond_6
    sub-long v2, v0, v8

    long-to-float v2, v2

    sub-long/2addr v10, v8

    long-to-float v3, v10

    div-float/2addr v2, v3

    return v2
.end method

.method public getInternalFlags()I
    .locals 1

    .line 764
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    return v0
.end method

.method public getJob()Landroid/app/job/JobInfo;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    return v0
.end method

.method public getLastFailedRunTime()J
    .locals 2

    .line 1056
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    return-wide v0
.end method

.method public getLastSuccessfulRunTime()J
    .locals 2

    .line 1052
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    return-wide v0
.end method

.method public getLatestRunTimeElapsed()J
    .locals 2

    .line 883
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getNumFailures()I
    .locals 1

    .line 694
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    return v0
.end method

.method public getOriginalLatestRunTimeElapsed()J
    .locals 2

    .line 887
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getPersistedUtcTimes()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 926
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v0

    return v0
.end method

.method public getSatisfiedConstraintFlags()I
    .locals 1

    .line 772
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    return v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getServiceToken()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return v0
.end method

.method public getSourcePackageName()Ljava/lang/String;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceTag()Ljava/lang/String;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUid()I
    .locals 1

    .line 706
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    return v0
.end method

.method public getSourceUserId()I
    .locals 1

    .line 710
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    return v0
.end method

.method public getStandbyBucket()I
    .locals 1

    .line 718
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSdkVersion()I
    .locals 1

    .line 684
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->targetSdkVersion:I

    return v0
.end method

.method public getTriggerContentMaxDelay()J
    .locals 4

    .line 867
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v0

    .line 868
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 869
    const-wide/32 v2, 0x1d4c0

    return-wide v2

    .line 871
    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getTriggerContentUpdateDelay()J
    .locals 4

    .line 859
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v0

    .line 860
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 861
    const-wide/16 v2, 0x2710

    return-wide v2

    .line 863
    :cond_0
    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUid()I
    .locals 1

    .line 744
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 714
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public getWhenStandbyDeferred()J
    .locals 2

    .line 731
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    return-wide v0
.end method

.method public hasBatteryNotLowConstraint()Z
    .locals 1

    .line 831
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChargingConstraint()Z
    .locals 2

    .line 827
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasConnectivityConstraint()Z
    .locals 2

    .line 823
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasContentTriggerConstraint()Z
    .locals 2

    .line 855
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeadlineConstraint()Z
    .locals 2

    .line 847
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExecutingWorkLocked()Z
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIdleConstraint()Z
    .locals 1

    .line 851
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPowerConstraint()Z
    .locals 1

    .line 835
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStorageNotLowConstraint()Z
    .locals 1

    .line 839
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimingDelayConstraint()Z
    .locals 2

    .line 843
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWorkLocked()Z
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasExecutingWorkLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isConstraintSatisfied(I)Z
    .locals 1
    .param p1, "constraint"    # I

    .line 1036
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConstraintsSatisfied()Z
    .locals 1

    .line 1141
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result v0

    return v0
.end method

.method public isPersisted()Z
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    return v0
.end method

.method public isPreparedLocked()Z
    .locals 1

    .line 672
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1063
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public matches(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .line 1160
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeAddForegroundExemption(Ljava/util/function/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 777
    .local p1, "uidForegroundChecker":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 782
    return-void

    .line 784
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 785
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->addInternalFlags(I)V

    .line 787
    :cond_2
    return-void

    .line 778
    :cond_3
    :goto_0
    return-void
.end method

.method public prepareLocked(Landroid/app/IActivityManager;)V
    .locals 8
    .param p1, "am"    # Landroid/app/IActivityManager;

    .line 638
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobSchedulerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void

    .line 642
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 646
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 647
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_1

    .line 648
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 649
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    .line 648
    move-object v1, p1

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->createFromClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    .line 651
    :cond_1
    return-void
.end method

.method public printUniqueId(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 688
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 689
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 691
    return-void
.end method

.method setBackgroundNotRestrictedConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 991
    const/high16 v0, 0x400000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 994
    const/4 v0, 0x1

    return v0

    .line 996
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setBatteryNotLowConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 940
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setChargingConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 935
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setConnectivityConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 970
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setConstraintSatisfied(IZ)Z
    .locals 5
    .param p1, "constraint"    # I
    .param p2, "state"    # Z

    .line 1020
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1021
    .local v0, "old":Z
    :goto_0
    if-ne v0, p2, :cond_1

    .line 1022
    return v2

    .line 1024
    :cond_1
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v4, p1

    and-int/2addr v3, v4

    if-eqz p2, :cond_2

    move v2, p1

    :cond_2
    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 1025
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const v3, -0x6bfffff1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 1032
    return v1
.end method

.method setContentTriggerConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 975
    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setDeadlineConstraintSatisfied(Z)Z
    .locals 3
    .param p1, "state"    # Z

    .line 955
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 958
    return v2

    .line 960
    :cond_1
    return v1
.end method

.method setDeviceNotDozingConstraintSatisfied(ZZ)Z
    .locals 3
    .param p1, "state"    # Z
    .param p2, "whitelisted"    # Z

    .line 980
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    .line 981
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 983
    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 984
    return v0

    .line 986
    :cond_2
    return v1
.end method

.method setIdleConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 965
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method public setOriginalLatestRunTimeElapsed(J)V
    .locals 0
    .param p1, "latestRunTimeElapsed"    # J

    .line 891
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    .line 892
    return-void
.end method

.method setQuotaConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 1001
    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1004
    const/4 v0, 0x1

    return v0

    .line 1006
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setStandbyBucket(I)V
    .locals 0
    .param p1, "newBucket"    # I

    .line 726
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 727
    return-void
.end method

.method setStorageNotLowConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 945
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setTimingDelayConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 950
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setTrackingController(I)V
    .locals 1
    .param p1, "which"    # I

    .line 1048
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    .line 1049
    return-void
.end method

.method setUidActive(Z)Z
    .locals 1
    .param p1, "newActiveState"    # Z

    .line 1011
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eq p1, v0, :cond_0

    .line 1012
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    .line 1013
    const/4 v0, 0x1

    return v0

    .line 1015
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWhenStandbyDeferred(J)V
    .locals 0
    .param p1, "now"    # J

    .line 736
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    .line 737
    return-void
.end method

.method public stopTrackingJobLocked(Landroid/app/IActivityManager;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "am"    # Landroid/app/IActivityManager;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 612
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 615
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    iput-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 618
    :cond_0
    iget-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iput-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    goto :goto_0

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 621
    iget-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 623
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 624
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 625
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    iput v0, p2, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 626
    invoke-direct {p2}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    goto :goto_1

    .line 629
    :cond_3
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Landroid/app/IActivityManager;Ljava/util/ArrayList;)V

    .line 630
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 631
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Landroid/app/IActivityManager;Ljava/util/ArrayList;)V

    .line 632
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 634
    :goto_1
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    .line 635
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1247
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1250
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1252
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1253
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortStringExceptUniqueId()Ljava/lang/String;
    .locals 2

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1263
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1265
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1166
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "JobStatus{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1170
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1172
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1173
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1176
    const-string v1, " s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1178
    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1180
    :cond_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 1181
    .local v10, "now":J
    const-string v1, " TIME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-wide v8, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    .line 1183
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v6, 0x7fffffffffffffffL

    invoke-direct/range {v2 .. v9}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    .line 1186
    .end local v10    # "now":J
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1187
    const-string v1, " NET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    :cond_2
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1190
    const-string v1, " CHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    :cond_3
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1193
    const-string v1, " BATNOTLOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    :cond_4
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1196
    const-string v1, " STORENOTLOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    :cond_5
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1199
    const-string v1, " IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    :cond_6
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1202
    const-string v1, " PERIODIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    :cond_7
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1205
    const-string v1, " PERSISTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    :cond_8
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-nez v1, :cond_9

    .line 1208
    const-string v1, " WAIT:DEV_NOT_DOZING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    :cond_9
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1211
    const-string v1, " URIS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    :cond_a
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v1, :cond_b

    .line 1215
    const-string v1, " failures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1218
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1219
    const-string v1, " READY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    :cond_c
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unprepareLocked(Landroid/app/IActivityManager;)V
    .locals 3
    .param p1, "am"    # Landroid/app/IActivityManager;

    .line 654
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-nez v0, :cond_1

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hasn\'t been prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobSchedulerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 657
    const-string v2, "Was already unprepared at "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    :cond_0
    return-void

    .line 661
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 663
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 665
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v0, :cond_2

    .line 666
    invoke-virtual {v0, p1}, Lcom/android/server/job/GrantedUriPermissions;->revoke(Landroid/app/IActivityManager;)V

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    .line 669
    :cond_2
    return-void
.end method

.method wouldBeReadyWithConstraint(I)Z
    .locals 7
    .param p1, "constraint"    # I

    .line 1071
    const/4 v0, 0x0

    .line 1072
    .local v0, "oldValue":Z
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 1073
    .local v1, "satisfied":I
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x2000000

    const/high16 v4, 0x1000000

    const/high16 v5, 0x400000

    const/4 v6, 0x1

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    .line 1091
    or-int/2addr v1, p1

    goto :goto_0

    .line 1079
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 1080
    iput-boolean v6, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 1081
    goto :goto_0

    .line 1083
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1084
    iput-boolean v6, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1085
    goto :goto_0

    .line 1087
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1088
    iput-boolean v6, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1089
    goto :goto_0

    .line 1075
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1076
    iput-boolean v6, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1077
    nop

    .line 1095
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v6

    .line 1097
    .local v6, "toReturn":Z
    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_1

    .line 1102
    :cond_4
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 1103
    goto :goto_1

    .line 1105
    :cond_5
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1106
    goto :goto_1

    .line 1108
    :cond_6
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    goto :goto_1

    .line 1099
    :cond_7
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1100
    nop

    .line 1111
    :goto_1
    return v6
.end method

.method public writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1274
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1276
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1277
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1278
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1280
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1281
    return-void
.end method

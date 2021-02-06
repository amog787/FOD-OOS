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

.field private static final DYNAMIC_RESTRICTED_CONSTRAINTS:I = 0x10000007

.field public static final INTERNAL_FLAG_HAS_FOREGROUND_EXEMPTION:I = 0x1

.field private static final MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

.field public static final MIN_TRIGGER_MAX_DELAY:J = 0x3e8L

.field public static final MIN_TRIGGER_UPDATE_DELAY:J = 0x1f4L

.field public static final NO_EARLIEST_RUNTIME:J = 0x0L

.field public static final NO_LATEST_RUNTIME:J = 0x7fffffffffffffffL

.field public static final OVERRIDE_FULL:I = 0x3

.field public static final OVERRIDE_NONE:I = 0x0

.field public static final OVERRIDE_SOFT:I = 0x2

.field public static final OVERRIDE_SORTING:I = 0x1

.field static final SOFT_OVERRIDE_CONSTRAINTS:I = -0x7ffffff1

.field private static final STATSD_CONSTRAINTS_TO_LOG:I = -0x3afffff4

.field private static final STATS_LOG_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "JobScheduler.JobStatus"

.field public static final TRACKING_BATTERY:I = 0x1

.field public static final TRACKING_CONNECTIVITY:I = 0x2

.field public static final TRACKING_CONTENT:I = 0x4

.field public static final TRACKING_IDLE:I = 0x8

.field public static final TRACKING_QUOTA:I = 0x40

.field public static final TRACKING_STORAGE:I = 0x10

.field public static final TRACKING_TIME:I = 0x20


# instance fields
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

.field private mDynamicConstraints:I

.field private mFirstForceBatchedTimeElapsed:J

.field private final mHasMediaBackupExemption:Z

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

.field private mReadyDynamicSatisfied:Z

.field private mReadyNotDozing:Z

.field private mReadyNotRestrictedInBg:Z

.field private mReadyWithinQuota:Z

.field private final mRequiredConstraintsOfInterest:I

.field private mSatisfiedConstraintsOfInterest:I

.field private mTotalNetworkDownloadBytes:J

.field private mTotalNetworkUploadBytes:J

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

.field private trackingControllers:I

.field public uidActive:Z

.field private unpreparedPoint:Ljava/lang/Throwable;

.field private uriPerms:Lcom/android/server/job/GrantedUriPermissions;

.field private whenStandbyDeferred:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJI)V
    .locals 20
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "callingUid"    # I
    .param p3, "sourcePackageName"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "standbyBucket"    # I
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "numFailures"    # I
    .param p8, "earliestRunTimeElapsedMillis"    # J
    .param p10, "latestRunTimeElapsedMillis"    # J
    .param p12, "lastSuccessfulRunTime"    # J
    .param p14, "lastFailedRunTime"    # J
    .param p16, "internalFlags"    # I

    .line 414
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 222
    const/4 v11, 0x0

    iput v11, v1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 223
    iput v11, v1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 228
    iput v11, v1, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 312
    const/4 v12, 0x1

    iput v12, v1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 315
    iput v11, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 353
    const-wide/16 v13, -0x1

    iput-wide v13, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 354
    iput-wide v13, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 415
    move-object/from16 v13, p1

    iput-object v13, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 416
    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 417
    iput v5, v1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 419
    const/4 v14, -0x1

    .line 420
    .local v14, "tempSourceUid":I
    const/4 v15, -0x1

    if-eq v4, v15, :cond_0

    if-eqz v3, :cond_0

    .line 422
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v3, v11, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v14, v0

    .line 426
    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 428
    :cond_0
    :goto_0
    if-ne v14, v15, :cond_1

    .line 429
    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 430
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 432
    iput-object v10, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    move-object/from16 v10, p6

    goto :goto_1

    .line 434
    :cond_1
    iput v14, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 435
    iput v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 436
    iput-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 437
    move-object/from16 v10, p6

    iput-object v10, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 440
    :goto_1
    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 442
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "*job*/"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    .line 445
    iput-wide v6, v1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 446
    iput-wide v8, v1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 447
    iput-wide v8, v1, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    .line 448
    move/from16 v15, p7

    iput v15, v1, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "requiresNetwork":Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getConstraintFlags()I

    move-result v16

    .line 452
    .local v16, "requiredConstraints":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 453
    const/high16 v17, 0x10000000

    or-int v16, v16, v17

    .line 454
    const/4 v0, 0x1

    .line 456
    :cond_3
    const-wide/16 v17, 0x0

    cmp-long v17, v6, v17

    if-eqz v17, :cond_4

    .line 457
    const/high16 v17, -0x80000000

    or-int v16, v16, v17

    .line 459
    :cond_4
    const-wide v17, 0x7fffffffffffffffL

    cmp-long v17, v8, v17

    if-eqz v17, :cond_5

    .line 460
    const/high16 v17, 0x40000000    # 2.0f

    or-int v16, v16, v17

    .line 462
    :cond_5
    const/16 v17, 0x0

    .line 463
    .local v17, "exemptedMediaUrisOnly":Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 464
    const/high16 v18, 0x4000000

    or-int v16, v16, v18

    .line 465
    const/16 v17, 0x1

    .line 466
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v11

    array-length v12, v11

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v12, :cond_7

    aget-object v19, v11, v2

    .line 467
    .local v19, "uri":Landroid/app/job/JobInfo$TriggerContentUri;
    sget-object v3, Lcom/android/server/job/controllers/JobStatus;->MEDIA_URIS_FOR_STANDBY_EXEMPTION:[Landroid/net/Uri;

    invoke-virtual/range {v19 .. v19}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 468
    const/16 v17, 0x0

    .line 469
    move/from16 v2, v16

    goto :goto_4

    .line 466
    .end local v19    # "uri":Landroid/app/job/JobInfo$TriggerContentUri;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, p3

    move/from16 v4, p4

    goto :goto_3

    :cond_7
    move/from16 v2, v16

    goto :goto_4

    .line 463
    :cond_8
    move/from16 v2, v16

    .line 473
    .end local v16    # "requiredConstraints":I
    .local v2, "requiredConstraints":I
    :goto_4
    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    .line 474
    const v3, -0x6bfffff1

    and-int/2addr v3, v2

    iput v3, v1, Lcom/android/server/job/controllers/JobStatus;->mRequiredConstraintsOfInterest:I

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_9

    move v3, v4

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    iput-boolean v3, v1, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 476
    const/4 v3, 0x5

    if-ne v5, v3, :cond_a

    .line 477
    const v3, 0x10000007

    invoke-direct {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    const/4 v3, 0x0

    goto :goto_6

    .line 479
    :cond_a
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 482
    :goto_6
    move-wide/from16 v11, p12

    iput-wide v11, v1, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    .line 483
    move-wide/from16 v3, p14

    iput-wide v3, v1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    .line 485
    move/from16 v16, v2

    move/from16 v2, p16

    .end local v2    # "requiredConstraints":I
    .restart local v16    # "requiredConstraints":I
    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 487
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v19

    if-eqz v19, :cond_b

    .line 493
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 495
    :cond_b
    const-class v2, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobSchedulerInternal;

    .line 496
    .local v2, "jsi":Lcom/android/server/job/JobSchedulerInternal;
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v3

    if-nez v3, :cond_c

    if-eqz v17, :cond_c

    if-eqz v0, :cond_c

    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 497
    invoke-interface {v2}, Lcom/android/server/job/JobSchedulerInternal;->getMediaBackupPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    :goto_7
    iput-boolean v3, v1, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    .line 498
    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;JJJJLandroid/util/Pair;I)V
    .locals 18
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "callingUid"    # I
    .param p3, "sourcePkgName"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "standbyBucket"    # I
    .param p6, "sourceTag"    # Ljava/lang/String;
    .param p7, "earliestRunTimeElapsedMillis"    # J
    .param p9, "latestRunTimeElapsedMillis"    # J
    .param p11, "lastSuccessfulRunTime"    # J
    .param p13, "lastFailedRunTime"    # J
    .param p16, "innerFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobInfo;",
            "I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "JJJJ",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .local p15, "persistedExecutionTimesUTC":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move/from16 v17, p16

    .line 532
    const/4 v8, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJI)V

    .line 542
    iput-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 543
    if-eqz v0, :cond_0

    .line 544
    sget-boolean v2, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 545
    const-string v2, "JobScheduler.JobStatus"

    const-string v3, "+ restored job with RTC times because of bad boot clock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 18
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    .line 504
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    .line 505
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v6

    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v8

    .line 507
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v11

    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v15

    .line 509
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v17

    .line 503
    invoke-direct/range {v1 .. v17}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJI)V

    .line 510
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 511
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v1, :cond_0

    .line 512
    sget-boolean v1, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 513
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v3, "JobScheduler.JobStatus"

    const-string v4, "Cloning job with persisted run times"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V
    .locals 17
    .param p1, "rescheduling"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "newEarliestRuntimeElapsedMillis"    # J
    .param p4, "newLatestRuntimeElapsedMillis"    # J
    .param p6, "backoffAttempt"    # I
    .param p7, "lastSuccessfulRunTime"    # J
    .param p9, "lastFailedRunTime"    # J

    move-object/from16 v0, p0

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move/from16 v7, p6

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    .line 555
    move-object/from16 v6, p1

    iget-object v1, v6, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    .line 556
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    .line 557
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v5

    .line 558
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v6, v16

    .line 560
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v16

    .line 555
    invoke-direct/range {v0 .. v16}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJI)V

    .line 561
    return-void
.end method

.method private addDynamicConstraints(I)V
    .locals 2
    .param p1, "constraints"    # I

    .line 1183
    const/high16 v0, 0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 1185
    const-string v0, "JobScheduler.JobStatus"

    const-string v1, "Tried to set quota as a dynamic constraint"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const v0, -0x1000001

    and-int/2addr p1, v0

    .line 1192
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1193
    const v0, -0x10000001

    and-int/2addr p1, v0

    .line 1195
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1196
    const v0, -0x4000001

    and-int/2addr p1, v0

    .line 1199
    :cond_2
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 1200
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v1, v0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 1202
    return-void
.end method

.method static bucketName(I)Ljava/lang/String;
    .locals 2
    .param p0, "standbyBucket"    # I

    .line 1610
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1617
    :cond_0
    const-string v0, "RESTRICTED"

    return-object v0

    .line 1615
    :cond_1
    const-string v0, "NEVER"

    return-object v0

    .line 1614
    :cond_2
    const-string v0, "RARE"

    return-object v0

    .line 1613
    :cond_3
    const-string v0, "FREQUENT"

    return-object v0

    .line 1612
    :cond_4
    const-string v0, "WORKING_SET"

    return-object v0

    .line 1611
    :cond_5
    const-string v0, "ACTIVE"

    return-object v0
.end method

.method public static createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;
    .locals 26
    .param p0, "job"    # Landroid/app/job/JobInfo;
    .param p1, "callingUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .line 573
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 575
    .local v0, "elapsedNow":J
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    const-wide v4, 0x757b12c00L

    .line 578
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 577
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 579
    .local v2, "period":J
    add-long v4, v0, v2

    .line 580
    .local v4, "latestRunTimeElapsedMillis":J
    nop

    .line 582
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 583
    .local v2, "earliestRunTimeElapsedMillis":J
    goto :goto_1

    .line 584
    .end local v2    # "earliestRunTimeElapsedMillis":J
    .end local v4    # "latestRunTimeElapsedMillis":J
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 586
    .restart local v2    # "earliestRunTimeElapsedMillis":J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 587
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    goto :goto_1

    :cond_2
    const-wide v4, 0x7fffffffffffffffL

    .line 589
    .restart local v4    # "latestRunTimeElapsedMillis":J
    :goto_1
    if-eqz p2, :cond_3

    move-object/from16 v6, p2

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_2
    move-object v14, v6

    .line 591
    .local v14, "jobPackage":Ljava/lang/String;
    move/from16 v15, p3

    invoke-static {v14, v15, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v23

    .local v23, "standbyBucket":I
    move/from16 v11, v23

    .line 593
    new-instance v24, Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v6, v24

    const/4 v13, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    move-object/from16 v25, v14

    .end local v14    # "jobPackage":Ljava/lang/String;
    .local v25, "jobPackage":Ljava/lang/String;
    move-wide v14, v2

    move-wide/from16 v16, v4

    invoke-direct/range {v6 .. v22}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;IJJJJI)V

    return-object v24
.end method

.method private dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "work"    # Landroid/app/job/JobWorkItem;

    .line 1584
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1586
    .local v0, "token":J
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1587
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1588
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1589
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1591
    :cond_0
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v2

    .line 1592
    .local v2, "grants":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 1593
    move-object v3, v2

    check-cast v3, Lcom/android/server/job/GrantedUriPermissions;

    const-wide v4, 0x10b00000004L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1596
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1597
    return-void
.end method

.method private dumpJobWorkItem(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/job/JobWorkItem;I)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "work"    # Landroid/app/job/JobWorkItem;
    .param p4, "index"    # I

    .line 1574
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1576
    const-string/jumbo v0, "x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1577
    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1578
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  URI grants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
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

    .line 1581
    :cond_0
    return-void
.end method

.method private formatRunTime(Ljava/io/PrintWriter;JJJ)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "runtime"    # J
    .param p4, "defaultValue"    # J
    .param p6, "now"    # J

    .line 1408
    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    .line 1409
    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1411
    :cond_0
    sub-long v0, p2, p6

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1413
    :goto_0
    return-void
.end method

.method private formatRunTime(Ljava/lang/StringBuilder;JJJ)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "runtime"    # J
    .param p4, "defaultValue"    # J
    .param p6, "now"    # J

    .line 1416
    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    .line 1417
    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1419
    :cond_0
    sub-long v0, p2, p6

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1421
    :goto_0
    return-void
.end method

.method private static formatTime(J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "time"    # J

    .line 1852
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getProtoConstraint(I)I
    .locals 2
    .param p1, "constraint"    # I

    .line 1508
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

    .line 1532
    const/4 v0, 0x0

    return v0

    .line 1512
    :cond_0
    return v0

    .line 1514
    :cond_1
    return v0

    .line 1520
    :cond_2
    const/4 v0, 0x5

    return v0

    .line 1516
    :cond_3
    const/4 v0, 0x7

    return v0

    .line 1518
    :cond_4
    return v0

    .line 1522
    :cond_5
    const/16 v0, 0x9

    return v0

    .line 1530
    :cond_6
    const/16 v0, 0xa

    return v0

    .line 1510
    :cond_7
    const/16 v0, 0xb

    return v0

    .line 1526
    :cond_8
    const/4 v0, 0x3

    return v0

    .line 1524
    :cond_9
    const/4 v0, 0x6

    return v0

    .line 1528
    :cond_a
    return v1
.end method

.method private hasConstraint(I)Z
    .locals 1
    .param p1, "constraint"    # I

    .line 972
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isConstraintsSatisfied(I)Z
    .locals 4
    .param p1, "satisfiedConstraints"    # I

    .line 1327
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1329
    return v1

    .line 1332
    :cond_0
    move v2, p1

    .line 1333
    .local v2, "sat":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 1335
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const v3, -0x7ffffff1

    and-int/2addr v0, v3

    or-int/2addr v2, v0

    .line 1338
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
    .locals 3
    .param p1, "satisfiedConstraints"    # I

    .line 1291
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    if-eqz v0, :cond_1

    .line 1292
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 1293
    :cond_1
    return v1

    .line 1300
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    if-nez v0, :cond_3

    .line 1301
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 1300
    :goto_0
    return v1
.end method

.method private removeDynamicConstraints(I)V
    .locals 2
    .param p1, "constraints"    # I

    .line 1211
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 1212
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v1, v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 1214
    return-void
.end method

.method private static ungrantWorkItem(Landroid/app/job/JobWorkItem;)V
    .locals 1
    .param p0, "work"    # Landroid/app/job/JobWorkItem;

    .line 640
    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v0}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    .line 643
    :cond_0
    return-void
.end method

.method private static ungrantWorkList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;)V"
        }
    .end annotation

    .line 661
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobWorkItem;>;"
    if-eqz p0, :cond_0

    .line 662
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 663
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 664
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/job/JobWorkItem;)V

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 667
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private updateEstimatedNetworkBytesLocked()V
    .locals 7

    .line 890
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 891
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 893
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 894
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 895
    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v1

    .line 900
    .local v1, "downloadBytes":J
    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 901
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    .line 904
    .end local v1    # "downloadBytes":J
    :cond_0
    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 908
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v1

    .line 909
    .local v1, "uploadBytes":J
    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 910
    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    .line 894
    .end local v1    # "uploadBytes":J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 915
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addInternalFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 868
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 869
    return-void
.end method

.method public areDynamicConstraintsSatisfied()Z
    .locals 1

    .line 1316
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    return v0
.end method

.method public clearPersistedUtcTimes()V
    .locals 1

    .line 1047
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 1048
    return-void
.end method

.method clearTrackingController(I)Z
    .locals 2
    .param p1, "which"    # I

    .line 1166
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int v1, v0, p1

    if-eqz v1, :cond_0

    .line 1167
    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    .line 1168
    const/4 v0, 0x1

    return v0

    .line 1170
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public completeWorkLocked(I)Z
    .locals 4
    .param p1, "workId"    # I

    .line 646
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 647
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 648
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 649
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    .line 650
    .local v2, "work":Landroid/app/job/JobWorkItem;
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 651
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 652
    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkItem(Landroid/app/job/JobWorkItem;)V

    .line 653
    const/4 v3, 0x1

    return v3

    .line 648
    .end local v2    # "work":Landroid/app/job/JobWorkItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 657
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dequeueWorkLocked()Landroid/app/job/JobWorkItem;
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 617
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    .line 618
    .local v0, "work":Landroid/app/job/JobWorkItem;
    if-eqz v0, :cond_1

    .line 619
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 620
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 622
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->bumpDeliveryCount()V

    .line 625
    :cond_1
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    .line 626
    return-object v0

    .line 628
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

    .line 1856
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1858
    .local v2, "token":J
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1859
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    const-wide v7, 0x10900000002L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1860
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    const-wide v9, 0x10500000003L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1861
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    const-wide v9, 0x10500000004L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1862
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    const-wide v9, 0x10900000005L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1864
    const-wide v11, 0x1080000000aL

    const-wide v13, 0x10800000002L

    const-wide/16 v15, 0x0

    if-eqz p4, :cond_b

    .line 1865
    const-wide v9, 0x10b00000006L

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 1867
    .local v9, "jiToken":J
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    const-wide v7, 0x10b00000001L

    invoke-virtual {v4, v1, v7, v8}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1869
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1870
    const-wide v7, 0x10300000003L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v13

    invoke-virtual {v1, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1871
    const-wide v7, 0x10300000004L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v13

    invoke-virtual {v1, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1873
    const-wide v7, 0x10800000005L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1874
    const-wide v7, 0x11100000006L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1875
    const-wide v7, 0x10500000007L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1876
    const-wide v7, 0x10300000018L

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1879
    const-wide v7, 0x10800000008L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1880
    const-wide v7, 0x10800000009L

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1881
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v4

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1883
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1884
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_1

    .line 1885
    const-wide v7, 0x20b0000000bL

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 1886
    .local v7, "tcuToken":J
    iget-object v13, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v13}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v13

    aget-object v13, v13, v4

    .line 1888
    .local v13, "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v14

    invoke-virtual {v1, v5, v6, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1889
    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v14

    .line 1890
    .local v14, "u":Landroid/net/Uri;
    if-eqz v14, :cond_0

    .line 1891
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide v11, 0x10900000002L

    invoke-virtual {v1, v11, v12, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_1

    .line 1890
    :cond_0
    const-wide v11, 0x10900000002L

    .line 1894
    :goto_1
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1884
    .end local v7    # "tcuToken":J
    .end local v13    # "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    .end local v14    # "u":Landroid/net/Uri;
    add-int/lit8 v4, v4, 0x1

    const-wide v5, 0x10500000001L

    const-wide v11, 0x1080000000aL

    goto :goto_0

    .line 1896
    .end local v4    # "i":I
    :cond_1
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v4

    cmp-long v4, v4, v15

    if-ltz v4, :cond_2

    .line 1897
    const-wide v4, 0x1030000000cL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1898
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v6

    .line 1897
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1900
    :cond_2
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v4

    cmp-long v4, v4, v15

    if-ltz v4, :cond_3

    .line 1901
    const-wide v4, 0x1030000000dL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1902
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v6

    .line 1901
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1905
    :cond_3
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1906
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    const-wide v5, 0x10b0000000eL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/PersistableBundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1908
    :cond_4
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1909
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    const-wide v5, 0x10b0000000fL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Bundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1911
    :cond_5
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1912
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    const-wide v5, 0x10b00000010L

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/ClipData;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1914
    :cond_6
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v4, :cond_7

    .line 1915
    const-wide v5, 0x10b00000011L

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1917
    :cond_7
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1918
    iget-object v4, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    const-wide v5, 0x10b00000012L

    invoke-virtual {v4, v1, v5, v6}, Landroid/net/NetworkRequest;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1920
    :cond_8
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_9

    .line 1921
    const-wide v11, 0x10300000019L

    invoke-virtual {v1, v11, v12, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1924
    :cond_9
    iget-wide v4, v0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_a

    .line 1925
    const-wide v6, 0x1030000001aL

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1928
    :cond_a
    const-wide v4, 0x10300000014L

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1929
    const-wide v4, 0x10300000015L

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1931
    const-wide v4, 0x10b00000016L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1932
    .local v4, "bpToken":J
    const-wide v6, 0x10e00000001L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1933
    const-wide v6, 0x10300000002L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1934
    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v11

    .line 1933
    invoke-virtual {v1, v6, v7, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1935
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1937
    const-wide v6, 0x10800000017L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1938
    const-wide v6, 0x10800000018L

    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1940
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1943
    .end local v4    # "bpToken":J
    .end local v9    # "jiToken":J
    :cond_b
    const-wide v4, 0x20e00000007L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1944
    const-wide v4, 0x20e0000001fL

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1945
    if-eqz p4, :cond_c

    .line 1946
    const-wide v4, 0x20e00000008L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1947
    const-wide v4, 0x20e00000009L

    iget v6, v0, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v7, 0x1000000

    or-int/2addr v6, v7

    iget v7, v0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v7, v7

    and-int/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1949
    iget-boolean v4, v0, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    const-wide v5, 0x1080000000aL

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1950
    const-wide v4, 0x1080000001aL

    iget-boolean v6, v0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1951
    const-wide v4, 0x1080000001bL

    iget-object v6, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 1952
    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v6

    .line 1951
    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1956
    :cond_c
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const/4 v6, 0x0

    const-wide v7, 0x20e0000000bL

    if-eqz v4, :cond_d

    .line 1957
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1960
    :cond_d
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v9, 0x2

    and-int/2addr v4, v9

    if-eqz v4, :cond_e

    .line 1961
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1964
    :cond_e
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_f

    .line 1965
    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1968
    :cond_f
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_10

    .line 1969
    const/4 v4, 0x3

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1972
    :cond_10
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_11

    .line 1973
    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1976
    :cond_11
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_12

    .line 1977
    const/4 v4, 0x5

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1980
    :cond_12
    iget v4, v0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_13

    .line 1981
    const/4 v4, 0x6

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1986
    :cond_13
    const-wide v4, 0x10b00000019L    # 5.665728762E-312

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1987
    .local v4, "icToken":J
    const-wide v7, 0x10800000001L

    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1988
    iget-boolean v7, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    const-wide v8, 0x10800000002L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1992
    const-wide v7, 0x10800000003L

    iget-boolean v9, v0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1994
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1996
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v7, :cond_14

    .line 1997
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_14

    .line 1998
    const-wide v8, 0x2090000000cL

    iget-object v10, v0, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1997
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2001
    .end local v7    # "k":I
    :cond_14
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v7, :cond_15

    .line 2002
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_15

    .line 2003
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 2004
    .local v8, "u":Landroid/net/Uri;
    const-wide v9, 0x2090000000dL

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2002
    .end local v8    # "u":Landroid/net/Uri;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2008
    .end local v7    # "i":I
    :cond_15
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz v7, :cond_16

    .line 2009
    const-wide v8, 0x10b0000000eL

    invoke-virtual {v7, v1, v8, v9}, Landroid/net/Network;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2012
    :cond_16
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v7, :cond_17

    .line 2013
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_17

    .line 2014
    const-wide v8, 0x20b0000000fL

    iget-object v10, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobWorkItem;

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    .line 2013
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2017
    .end local v7    # "i":I
    :cond_17
    iget-object v7, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v7, :cond_18

    .line 2018
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    iget-object v8, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_18

    .line 2019
    const-wide v8, 0x20b00000010L

    iget-object v10, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobWorkItem;

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    .line 2018
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2023
    .end local v7    # "i":I
    :cond_18
    const-wide v7, 0x10e00000011L

    iget v9, v0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2024
    const-wide v7, 0x10300000012L

    iget-wide v9, v0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long v9, p5, v9

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2025
    const-wide v7, 0x1030000001cL

    .line 2026
    iget-wide v9, v0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long v11, v9, v15

    if-nez v11, :cond_19

    move-wide v9, v15

    goto :goto_6

    :cond_19
    sub-long v9, p5, v9

    .line 2025
    :goto_6
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2027
    const-wide v7, 0x1030000001dL

    .line 2028
    iget-wide v9, v0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v11, v9, v15

    if-nez v11, :cond_1a

    .line 2029
    move-wide v9, v15

    goto :goto_7

    :cond_1a
    sub-long v9, p5, v9

    .line 2027
    :goto_7
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2030
    iget-wide v7, v0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long v9, v7, v15

    const-wide v10, 0x11200000013L

    if-nez v9, :cond_1b

    .line 2031
    invoke-virtual {v1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_8

    .line 2033
    :cond_1b
    sub-long v7, v7, p5

    invoke-virtual {v1, v10, v11, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2036
    :goto_8
    iget-wide v7, v0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v9, v7, v9

    const-wide v10, 0x11200000014L

    if-nez v9, :cond_1c

    .line 2037
    invoke-virtual {v1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_9

    .line 2039
    :cond_1c
    sub-long v7, v7, p5

    invoke-virtual {v1, v10, v11, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2042
    :goto_9
    const-wide v6, 0x1040000001eL

    iget-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2045
    const-wide v6, 0x10500000015L

    iget v8, v0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2046
    const-wide v6, 0x10300000016L

    iget-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2047
    const-wide v6, 0x10300000017L

    iget-wide v8, v0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2049
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2050
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V
    .locals 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "full"    # Z
    .param p4, "elapsedRealtimeMillis"    # J

    .line 1625
    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-wide/from16 v11, p4

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v9, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1626
    const-string v0, " tag="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1628
    const-string v0, "Source: uid="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v9, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1629
    const-string v0, " user="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1630
    const-string v0, " pkg="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    const/16 v0, 0x20

    const-string v1, "  "

    const-wide/16 v13, 0x0

    if-eqz p3, :cond_13

    .line 1632
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "JobInfo:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1633
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Service: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1634
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1635
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1636
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  PERIODIC: interval="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1637
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1638
    const-string v2, " flex="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1639
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1641
    :cond_0
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1642
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  PERSISTED"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1644
    :cond_1
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1645
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Priority: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1646
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v2

    invoke-static {v2}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1648
    :cond_2
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1649
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Flags: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1650
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1652
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1653
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Internal flags: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1654
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1656
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 1657
    const-string v2, " HAS_FOREGROUND_EXEMPTION"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1659
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1661
    :cond_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Requires: charging="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1662
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " batteryNotLow="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1663
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " deviceIdle="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1664
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1665
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1666
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Trigger content URIs:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1667
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 1668
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    aget-object v3, v3, v2

    .line 1669
    .local v3, "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1670
    invoke-virtual {v3}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v3}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1667
    .end local v3    # "trig":Landroid/app/job/JobInfo$TriggerContentUri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1673
    .end local v2    # "i":I
    :cond_6
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-ltz v2, :cond_7

    .line 1674
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Trigger update delay: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1675
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1676
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1678
    :cond_7
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-ltz v2, :cond_8

    .line 1679
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Trigger max delay: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1680
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1681
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1684
    :cond_8
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1685
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Extras: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1686
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1688
    :cond_9
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1689
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Transient extras: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1690
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1692
    :cond_a
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1693
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Clip data: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1694
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1695
    .local v2, "b":Ljava/lang/StringBuilder;
    iget-object v3, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1696
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1698
    .end local v2    # "b":Ljava/lang/StringBuilder;
    :cond_b
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v2, :cond_c

    .line 1699
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Granted URI permissions:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1702
    :cond_c
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1703
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Network type: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1704
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1706
    :cond_d
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 1707
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Network download bytes: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1708
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    invoke-virtual {v9, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1710
    :cond_e
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    .line 1711
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Network upload bytes: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1712
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    invoke-virtual {v9, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1714
    :cond_f
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-eqz v2, :cond_10

    .line 1715
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Minimum latency: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1716
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1717
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1719
    :cond_10
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-eqz v2, :cond_11

    .line 1720
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Max execution delay: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1721
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1722
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1724
    :cond_11
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Backoff: policy="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1725
    const-string v2, " initial="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1726
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1727
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1728
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Has early constraint"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1730
    :cond_12
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1731
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Has late constraint"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1734
    :cond_13
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Required constraints:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1735
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    invoke-virtual {p0, v9, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 1736
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1737
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1738
    const-string v2, "Dynamic constraints:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1739
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    invoke-virtual {p0, v9, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 1740
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1741
    if-eqz p3, :cond_16

    .line 1742
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Satisfied constraints:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1743
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    invoke-virtual {p0, v9, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 1744
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1745
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Unsatisfied constraints:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1746
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iget v3, v8, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v3, v3

    and-int/2addr v2, v3

    invoke-virtual {p0, v9, v2}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 1748
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1749
    iget-boolean v2, v8, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    if-eqz v2, :cond_14

    .line 1750
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Doze whitelisted: true"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1752
    :cond_14
    iget-boolean v2, v8, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eqz v2, :cond_15

    .line 1753
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Uid: active"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1755
    :cond_15
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1756
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Is exempted from app standby"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1759
    :cond_16
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    if-eqz v2, :cond_1e

    .line 1760
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Tracking:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1761
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_17

    const-string v2, " BATTERY"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1762
    :cond_17
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_18

    const-string v2, " CONNECTIVITY"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1763
    :cond_18
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_19

    const-string v2, " CONTENT"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1764
    :cond_19
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1a

    const-string v2, " IDLE"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1765
    :cond_1a
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1b

    const-string v2, " STORAGE"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1766
    :cond_1b
    iget v2, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1c

    const-string v0, " TIME"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1767
    :cond_1c
    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1d

    const-string v0, " QUOTA"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1768
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1771
    :cond_1e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Implicit constraints:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  readyNotDozing: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1773
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1774
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  readyNotRestrictedInBg: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1775
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1776
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1777
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  readyDeadlineSatisfied: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1778
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1780
    :cond_1f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1781
    const-string v0, "  readyDynamicSatisfied: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1782
    iget-boolean v0, v8, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1784
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_20

    .line 1785
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Changed authorities:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1786
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 1787
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1786
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1790
    .end local v0    # "i":I
    :cond_20
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_21

    .line 1791
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1792
    const-string v0, "Changed URIs:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1793
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 1794
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1796
    iget-object v2, v8, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1793
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1799
    .end local v0    # "i":I
    :cond_21
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz v0, :cond_22

    .line 1800
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Network: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1802
    :cond_22
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 1803
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending work:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1804
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 1805
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, v9, v10, v1, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/job/JobWorkItem;I)V

    .line 1804
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1808
    .end local v0    # "i":I
    :cond_23
    iget-object v0, v8, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 1809
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Executing work:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1810
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 1811
    iget-object v1, v8, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, v9, v10, v1, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpJobWorkItem(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/job/JobWorkItem;I)V

    .line 1810
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1814
    .end local v0    # "i":I
    :cond_24
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Standby bucket: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1815
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1816
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long v0, v0, v13

    if-eqz v0, :cond_25

    .line 1817
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Deferred since: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1818
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    invoke-static {v0, v1, v11, v12, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1819
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1821
    :cond_25
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v0, v0, v13

    if-eqz v0, :cond_26

    .line 1822
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1823
    const-string v0, "  Time since first force batch attempt: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1824
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    invoke-static {v0, v1, v11, v12, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1825
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1827
    :cond_26
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Enqueue time: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1828
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v0, v1, v11, v12, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1829
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1830
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Run time: earliest="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1831
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 1832
    const-string v0, ", latest="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1833
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 1834
    const-string v0, ", original latest="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1835
    iget-wide v2, v8, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/io/PrintWriter;JJJ)V

    .line 1837
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1838
    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v0, :cond_27

    .line 1839
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Num failures: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v8, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1841
    :cond_27
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    cmp-long v0, v0, v13

    if-eqz v0, :cond_28

    .line 1842
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Last successful run: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1843
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->formatTime(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1845
    :cond_28
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    cmp-long v0, v0, v13

    if-eqz v0, :cond_29

    .line 1846
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Last failed run: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1847
    iget-wide v0, v8, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->formatTime(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1849
    :cond_29
    return-void
.end method

.method dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "constraints"    # I

    .line 1538
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 1539
    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1541
    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    .line 1542
    const/4 v0, 0x2

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1544
    :cond_1
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_2

    .line 1545
    const/4 v0, 0x3

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1547
    :cond_2
    const/high16 v0, -0x80000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_3

    .line 1548
    const/4 v0, 0x4

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1550
    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p4

    if-eqz v0, :cond_4

    .line 1551
    const/4 v0, 0x5

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1553
    :cond_4
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_5

    .line 1554
    const/4 v0, 0x6

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1556
    :cond_5
    const/high16 v0, 0x10000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_6

    .line 1557
    const/4 v0, 0x7

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1559
    :cond_6
    const/high16 v0, 0x4000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_7

    .line 1560
    const/16 v0, 0x8

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1562
    :cond_7
    const/high16 v0, 0x2000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_8

    .line 1563
    const/16 v0, 0x9

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1565
    :cond_8
    const/high16 v0, 0x1000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_9

    .line 1566
    const/16 v0, 0xa

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1568
    :cond_9
    const/high16 v0, 0x400000

    and-int/2addr v0, p4

    if-eqz v0, :cond_a

    .line 1569
    const/16 v0, 0xb

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1571
    :cond_a
    return-void
.end method

.method dumpConstraints(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "constraints"    # I

    .line 1466
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 1467
    const-string v0, " CHARGING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1469
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 1470
    const-string v0, " BATTERY_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1472
    :cond_1
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_2

    .line 1473
    const-string v0, " STORAGE_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1475
    :cond_2
    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    .line 1476
    const-string v0, " TIMING_DELAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1478
    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_4

    .line 1479
    const-string v0, " DEADLINE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1481
    :cond_4
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_5

    .line 1482
    const-string v0, " IDLE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1484
    :cond_5
    const/high16 v0, 0x10000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_6

    .line 1485
    const-string v0, " CONNECTIVITY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1487
    :cond_6
    const/high16 v0, 0x4000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_7

    .line 1488
    const-string v0, " CONTENT_TRIGGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1490
    :cond_7
    const/high16 v0, 0x2000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_8

    .line 1491
    const-string v0, " DEVICE_NOT_DOZING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1493
    :cond_8
    const/high16 v0, 0x400000

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    .line 1494
    const-string v0, " BACKGROUND_NOT_RESTRICTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1496
    :cond_9
    const/high16 v0, 0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 1497
    const-string v0, " WITHIN_QUOTA"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1499
    :cond_a
    if-eqz p2, :cond_b

    .line 1500
    const-string v0, " [0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1501
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1502
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1504
    :cond_b
    return-void
.end method

.method public enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V
    .locals 5
    .param p1, "work"    # Landroid/app/job/JobWorkItem;

    .line 601
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 604
    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    invoke-virtual {p1, v0}, Landroid/app/job/JobWorkItem;->setWorkId(I)V

    .line 605
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 606
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 609
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    .line 608
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/job/GrantedUriPermissions;->createFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/job/JobWorkItem;->setGrants(Ljava/lang/Object;)V

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    .line 613
    return-void
.end method

.method public getBatteryName()Ljava/lang/String;
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    return-object v0
.end method

.method getBucketName()Ljava/lang/String;
    .locals 1

    .line 1603
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-static {v0}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEarliestRunTime()J
    .locals 2

    .line 996
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getEffectiveStandbyBucket()I
    .locals 2

    .line 778
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v0

    .line 779
    .local v0, "actualBucket":I
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/OpBGFrozenInjector;->isUidImperceptible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    return v0

    .line 784
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 790
    :cond_1
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/job/controllers/JobStatus;->mHasMediaBackupExemption:Z

    if-eqz v1, :cond_2

    .line 794
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 797
    :cond_2
    return v0

    .line 787
    :cond_3
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public getEstimatedNetworkDownloadBytes()J
    .locals 2

    .line 918
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    return-wide v0
.end method

.method public getEstimatedNetworkUploadBytes()J
    .locals 2

    .line 922
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    return-wide v0
.end method

.method public getFirstForceBatchedTimeElapsed()J
    .locals 2

    .line 832
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    return v0
.end method

.method public getFractionRunTime()F
    .locals 12

    .line 1023
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1024
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

    .line 1025
    return v3

    .line 1026
    :cond_0
    iget-wide v8, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    cmp-long v2, v8, v4

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 1027
    iget-wide v5, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v2, v0, v5

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    return v3

    .line 1028
    :cond_2
    iget-wide v10, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    cmp-long v2, v10, v6

    if-nez v2, :cond_4

    .line 1029
    cmp-long v2, v0, v8

    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    return v3

    .line 1031
    :cond_4
    cmp-long v2, v0, v8

    if-gtz v2, :cond_5

    .line 1032
    return v4

    .line 1033
    :cond_5
    cmp-long v2, v0, v10

    if-ltz v2, :cond_6

    .line 1034
    return v3

    .line 1036
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

    .line 864
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    return v0
.end method

.method public getJob()Landroid/app/job/JobInfo;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    return v0
.end method

.method public getLastFailedRunTime()J
    .locals 2

    .line 1221
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    return-wide v0
.end method

.method public getLastSuccessfulRunTime()J
    .locals 2

    .line 1217
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    return-wide v0
.end method

.method public getLatestRunTimeElapsed()J
    .locals 2

    .line 1000
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getNumFailures()I
    .locals 1

    .line 748
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    return v0
.end method

.method public getOriginalLatestRunTimeElapsed()J
    .locals 2

    .line 1004
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

    .line 1043
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v0

    return v0
.end method

.method public getSatisfiedConstraintFlags()I
    .locals 1

    .line 872
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    return v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getServiceToken()I
    .locals 1

    .line 386
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return v0
.end method

.method public getSourcePackageName()Ljava/lang/String;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceTag()Ljava/lang/String;
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUid()I
    .locals 1

    .line 760
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    return v0
.end method

.method public getSourceUserId()I
    .locals 1

    .line 764
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    return v0
.end method

.method public getStandbyBucket()I
    .locals 1

    .line 802
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerContentMaxDelay()J
    .locals 4

    .line 984
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v0

    .line 985
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 986
    const-wide/32 v2, 0x1d4c0

    return-wide v2

    .line 988
    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getTriggerContentUpdateDelay()J
    .locals 4

    .line 976
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v0

    .line 977
    .local v0, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 978
    const-wide/16 v2, 0x2710

    return-wide v2

    .line 980
    :cond_0
    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUid()I
    .locals 1

    .line 844
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 768
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public getWhenStandbyDeferred()J
    .locals 2

    .line 819
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    return-wide v0
.end method

.method public hasBatteryNotLowConstraint()Z
    .locals 1

    .line 937
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasChargingConstraint()Z
    .locals 1

    .line 933
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasConnectivityConstraint()Z
    .locals 2

    .line 929
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

    .line 964
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
    .locals 1

    .line 954
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasExecutingWorkLocked()Z
    .locals 1

    .line 636
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

    .line 958
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method hasPowerConstraint()Z
    .locals 1

    .line 942
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasStorageNotLowConstraint()Z
    .locals 1

    .line 946
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasTimingDelayConstraint()Z
    .locals 1

    .line 950
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    return v0
.end method

.method public hasWorkLocked()Z
    .locals 1

    .line 632
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

    .line 1162
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

    .line 1323
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result v0

    return v0
.end method

.method public isPersisted()Z
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    return v0
.end method

.method public isPreparedLocked()Z
    .locals 1

    .line 730
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1228
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public matches(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .line 1342
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

    .line 877
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

    .line 881
    :cond_0
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 882
    return-void

    .line 884
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 885
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->addInternalFlags(I)V

    .line 887
    :cond_2
    return-void

    .line 878
    :cond_3
    :goto_0
    return-void
.end method

.method public prepareLocked()V
    .locals 7

    .line 696
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-eqz v0, :cond_0

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void

    .line 700
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 704
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 705
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_1

    .line 706
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 707
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 706
    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->createFromClip(Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    .line 709
    :cond_1
    return-void
.end method

.method public printUniqueId(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 742
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 743
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 745
    return-void
.end method

.method setBackgroundNotRestrictedConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 1108
    const/high16 v0, 0x400000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1111
    const/4 v0, 0x1

    return v0

    .line 1113
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setBatteryNotLowConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 1057
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setChargingConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 1052
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setConnectivityConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 1087
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setConstraintSatisfied(IZ)Z
    .locals 5
    .param p1, "constraint"    # I
    .param p2, "state"    # Z

    .line 1137
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1138
    .local v0, "old":Z
    :goto_0
    if-ne v0, p2, :cond_1

    .line 1139
    return v2

    .line 1141
    :cond_1
    sget-boolean v3, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constraint "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    if-nez p2, :cond_2

    const-string v4, "NOT "

    goto :goto_1

    :cond_2
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "satisfied for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1142
    const-string v4, "JobScheduler.JobStatus"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_3
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int v4, p1

    and-int/2addr v3, v4

    if-eqz p2, :cond_4

    move v4, p1

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 1147
    const v4, -0x6bfffff1

    and-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 1148
    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v4, :cond_5

    and-int/2addr v3, v4

    if-ne v4, v3, :cond_5

    move v2, v1

    :cond_5
    iput-boolean v2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    .line 1158
    return v1
.end method

.method setContentTriggerConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 1092
    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setDeadlineConstraintSatisfied(Z)Z
    .locals 3
    .param p1, "state"    # Z

    .line 1072
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1074
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

    .line 1075
    return v2

    .line 1077
    :cond_1
    return v1
.end method

.method setDeviceNotDozingConstraintSatisfied(ZZ)Z
    .locals 3
    .param p1, "state"    # Z
    .param p2, "whitelisted"    # Z

    .line 1097
    iput-boolean p2, p0, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    .line 1098
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1100
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

    .line 1101
    return v0

    .line 1103
    :cond_2
    return v1
.end method

.method public setFirstForceBatchedTimeElapsed(J)V
    .locals 0
    .param p1, "now"    # J

    .line 836
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    .line 837
    return-void
.end method

.method setIdleConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 1082
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method public setOriginalLatestRunTimeElapsed(J)V
    .locals 0
    .param p1, "latestRunTimeElapsed"    # J

    .line 1008
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    .line 1009
    return-void
.end method

.method setQuotaConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 1118
    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1121
    const/4 v0, 0x1

    return v0

    .line 1123
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setStandbyBucket(I)V
    .locals 3
    .param p1, "newBucket"    # I

    .line 806
    const v0, 0x10000007

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 808
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    goto :goto_0

    .line 809
    :cond_0
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    if-ne v2, v1, :cond_1

    .line 811
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/JobStatus;->removeDynamicConstraints(I)V

    .line 814
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 815
    return-void
.end method

.method setStorageNotLowConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 1062
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setTimingDelayConstraintSatisfied(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 1067
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setTrackingController(I)V
    .locals 1
    .param p1, "which"    # I

    .line 1174
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/job/controllers/JobStatus;->trackingControllers:I

    .line 1175
    return-void
.end method

.method setUidActive(Z)Z
    .locals 1
    .param p1, "newActiveState"    # Z

    .line 1128
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    if-eq p1, v0, :cond_0

    .line 1129
    iput-boolean p1, p0, Lcom/android/server/job/controllers/JobStatus;->uidActive:Z

    .line 1130
    const/4 v0, 0x1

    return v0

    .line 1132
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWhenStandbyDeferred(J)V
    .locals 0
    .param p1, "now"    # J

    .line 824
    iput-wide p1, p0, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    .line 825
    return-void
.end method

.method public stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 670
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 673
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 676
    :cond_0
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 677
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    goto :goto_0

    .line 678
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 679
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 681
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 682
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 683
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    iput v0, p1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    .line 684
    invoke-direct {p1}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    goto :goto_1

    .line 687
    :cond_3
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Ljava/util/ArrayList;)V

    .line 688
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 689
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/job/controllers/JobStatus;->ungrantWorkList(Ljava/util/ArrayList;)V

    .line 690
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 692
    :goto_1
    invoke-direct {p0}, Lcom/android/server/job/controllers/JobStatus;->updateEstimatedNetworkBytesLocked()V

    .line 693
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1429
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1432
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1434
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1435
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortStringExceptUniqueId()Ljava/lang/String;
    .locals 2

    .line 1444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1445
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1447
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1348
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "JobStatus{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1352
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1354
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1355
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1358
    const-string v1, " s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1360
    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1362
    :cond_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 1363
    .local v10, "now":J
    const-string v1, " TIME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-wide v8, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    .line 1365
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    iget-wide v4, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    const-wide v6, 0x7fffffffffffffffL

    invoke-direct/range {v2 .. v9}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    .line 1368
    .end local v10    # "now":J
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1369
    const-string v1, " NET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    :cond_2
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1372
    const-string v1, " CHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    :cond_3
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1375
    const-string v1, " BATNOTLOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    :cond_4
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1378
    const-string v1, " STORENOTLOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    :cond_5
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1381
    const-string v1, " IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    :cond_6
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1384
    const-string v1, " PERIODIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    :cond_7
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1387
    const-string v1, " PERSISTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    :cond_8
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-nez v1, :cond_9

    .line 1390
    const-string v1, " WAIT:DEV_NOT_DOZING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    :cond_9
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1393
    const-string v1, " URIS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    :cond_a
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    if-eqz v1, :cond_b

    .line 1397
    const-string v1, " failures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1400
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1401
    const-string v1, " READY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    :cond_c
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unprepareLocked()V
    .locals 3

    .line 712
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-nez v0, :cond_1

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hasn\'t been prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.JobStatus"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 715
    const-string v2, "Was already unprepared at "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    :cond_0
    return-void

    .line 719
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    .line 721
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unpreparedPoint:Ljava/lang/Throwable;

    .line 723
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v0, :cond_2

    .line 724
    invoke-virtual {v0}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    .line 727
    :cond_2
    return-void
.end method

.method wouldBeReadyWithConstraint(I)Z
    .locals 10
    .param p1, "constraint"    # I

    .line 1236
    const/4 v0, 0x0

    .line 1237
    .local v0, "oldValue":Z
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 1238
    .local v1, "satisfied":I
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x2000000

    const/high16 v5, 0x1000000

    const/high16 v6, 0x400000

    const/4 v7, 0x1

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    .line 1256
    or-int/2addr v1, p1

    .line 1257
    iget v8, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v8, :cond_0

    and-int v9, v1, v8

    if-ne v8, v9, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    iput-boolean v8, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    goto :goto_1

    .line 1244
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 1245
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 1246
    goto :goto_1

    .line 1248
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1249
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1250
    goto :goto_1

    .line 1252
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1253
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1254
    goto :goto_1

    .line 1240
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1241
    iput-boolean v7, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1242
    nop

    .line 1262
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v8

    .line 1264
    .local v8, "toReturn":Z
    if-eq p1, v6, :cond_9

    if-eq p1, v5, :cond_8

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    .line 1278
    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v3, :cond_5

    iget v4, p0, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v4, v3

    if-ne v3, v4, :cond_5

    move v2, v7

    :cond_5
    iput-boolean v2, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    goto :goto_2

    .line 1269
    :cond_6
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyDeadlineSatisfied:Z

    .line 1270
    goto :goto_2

    .line 1272
    :cond_7
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    .line 1273
    goto :goto_2

    .line 1275
    :cond_8
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    .line 1276
    goto :goto_2

    .line 1266
    :cond_9
    iput-boolean v0, p0, Lcom/android/server/job/controllers/JobStatus;->mReadyNotRestrictedInBg:Z

    .line 1267
    nop

    .line 1282
    :goto_2
    return v8
.end method

.method public writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1456
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1458
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1459
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1460
    iget-object v2, p0, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1462
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1463
    return-void
.end method

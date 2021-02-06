.class public Lcom/android/server/usage/AppIdleHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    }
.end annotation


# static fields
.field static final APP_IDLE_FILENAME:Ljava/lang/String; = "app_idle_stats.xml"

.field private static final ATTR_BUCKETING_REASON:Ljava/lang/String; = "bucketReason"

.field private static final ATTR_BUCKET_ACTIVE_TIMEOUT_TIME:Ljava/lang/String; = "activeTimeoutTime"

.field private static final ATTR_BUCKET_WORKING_SET_TIMEOUT_TIME:Ljava/lang/String; = "workingSetTimeoutTime"

.field private static final ATTR_CURRENT_BUCKET:Ljava/lang/String; = "appLimitBucket"

.field private static final ATTR_ELAPSED_IDLE:Ljava/lang/String; = "elapsedIdleTime"

.field private static final ATTR_LAST_PREDICTED_TIME:Ljava/lang/String; = "lastPredictedTime"

.field private static final ATTR_LAST_RESTRICTION_ATTEMPT_ELAPSED:Ljava/lang/String; = "lastRestrictionAttemptElapsedTime"

.field private static final ATTR_LAST_RESTRICTION_ATTEMPT_REASON:Ljava/lang/String; = "lastRestrictionAttemptReason"

.field private static final ATTR_LAST_RUN_JOB_TIME:Ljava/lang/String; = "lastJobRunTime"

.field private static final ATTR_LAST_USED_BY_USER_ELAPSED:Ljava/lang/String; = "lastUsedByUserElapsedTime"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SCREEN_IDLE:Ljava/lang/String; = "screenIdleTime"

.field private static final DEBUG:Z

.field static final IDLE_BUCKET_CUTOFF:I = 0x28

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final STANDBY_BUCKET_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppIdleHistory"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGES:Ljava/lang/String; = "packages"


# instance fields
.field private mElapsedDuration:J

.field private mElapsedSnapshot:J

.field private mIdleHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mScreenOnDuration:J

.field private mScreenOnSnapshot:J

.field private final mStorageDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/usage/AppIdleHistory;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/io/File;J)V
    .locals 1
    .param p1, "storageDir"    # Ljava/io/File;
    .param p2, "elapsedRealtime"    # J

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 169
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 170
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 171
    iput-object p1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    .line 172
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->readScreenOnTime()V

    .line 173
    return-void
.end method

.method private dumpUser(Lcom/android/internal/util/IndentingPrintWriter;ILjava/util/List;)V
    .locals 19
    .param p1, "idpw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 763
    .local p3, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "User "

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 764
    invoke-virtual/range {p1 .. p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 765
    const-string v3, " App Standby States:"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 767
    iget-object v3, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 768
    .local v3, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 769
    .local v4, "elapsedRealtime":J
    invoke-virtual {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v6

    .line 770
    .local v6, "totalElapsedTime":J
    invoke-virtual {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v8

    .line 771
    .local v8, "screenOnTime":J
    if-nez v3, :cond_0

    return-void

    .line 772
    :cond_0
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 773
    .local v10, "P":I
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_0
    if-ge v11, v10, :cond_5

    .line 774
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 775
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 776
    .local v13, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v14, p3

    invoke-interface {v14, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 777
    move-object/from16 v16, v3

    goto/16 :goto_2

    .line 776
    :cond_1
    move-object/from16 v14, p3

    .line 779
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .end local v3    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    .local v16, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    const-string v3, "package="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " u="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " bucket="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " reason="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 783
    invoke-static {v15}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 781
    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 784
    const-string v3, " used="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 785
    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    sub-long v14, v6, v14

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 786
    const-string v3, " usedByUser="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 787
    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    sub-long v14, v6, v14

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 789
    const-string v3, " usedScr="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 790
    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    sub-long v14, v8, v14

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 791
    const-string v3, " lastPred="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 792
    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    sub-long v14, v6, v14

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 793
    const-string v3, " activeLeft="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 794
    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    sub-long/2addr v14, v6

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 796
    const-string v3, " wsLeft="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 797
    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    sub-long/2addr v14, v6

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 799
    const-string v3, " lastJob="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 800
    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long v14, v6, v14

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 801
    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-wide/16 v17, 0x0

    cmp-long v3, v14, v17

    if-lez v3, :cond_3

    .line 802
    const-string v3, " lastRestrictAttempt="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 803
    iget-wide v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    sub-long v14, v6, v14

    invoke-static {v14, v15, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " lastRestrictReason="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 806
    invoke-static {v14}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 805
    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 808
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " idle="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v2, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "y"

    goto :goto_1

    :cond_4
    const-string v14, "n"

    :goto_1
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 773
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    goto/16 :goto_0

    .end local v16    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    .restart local v3    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    :cond_5
    move-object/from16 v16, v3

    .line 811
    .end local v3    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    .end local v11    # "p":I
    .restart local v16    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 812
    const-string v3, "totalElapsedTime="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v11

    invoke-static {v11, v12, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 814
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 815
    const-string v3, "totalScreenOnTime="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v0, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v11

    invoke-static {v11, v12, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 817
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 818
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 819
    return-void
.end method

.method private getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "defValue"    # J

    .line 673
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    return-wide p3

    .line 675
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 3
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J
    .param p5, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;",
            "Ljava/lang/String;",
            "JZ)",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;"
        }
    .end annotation

    .line 336
    .local p1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 337
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 338
    new-instance v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {v1}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    move-object v0, v1

    .line 339
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 340
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 341
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 342
    const/16 v1, 0x32

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 343
    const/16 v1, 0x100

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 344
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 345
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 346
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_0
    return-object v0
.end method

.method private getUserHistory(I)Landroid/util/ArrayMap;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 326
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    if-nez v0, :cond_0

    .line 327
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 328
    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/AppIdleHistory;->readAppIdleTimes(ILandroid/util/ArrayMap;)V

    .line 331
    :cond_0
    return-object v0
.end method

.method private logAppStandbyBucketChanged(Ljava/lang/String;III)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bucket"    # I
    .param p4, "reason"    # I

    .line 565
    const v0, 0xff00

    and-int v5, p4, v0

    and-int/lit16 v6, p4, 0xff

    const/16 v1, 0x102

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIII)V

    .line 569
    sget-boolean v0, Lcom/android/server/usage/AppIdleHistory;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason=0x0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    const-string v1, "AppIdleHistory"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    return-void
.end method

.method private readAppIdleTimes(ILandroid/util/ArrayMap;)V
    .locals 18
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p2, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Unable to read app idle file for user "

    const-string v4, "AppIdleHistory"

    const/4 v5, 0x0

    .line 593
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v6, v0

    .line 594
    .local v6, "appIdleFile":Landroid/util/AtomicFile;
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v5, v0

    .line 595
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v7, v0

    .line 596
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 599
    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    .local v8, "type":I
    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v0, v10, :cond_0

    if-eq v8, v9, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    if-eq v8, v10, :cond_1

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 606
    return-void

    .line 608
    :cond_1
    :try_start_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "packages"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 668
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 609
    return-void

    .line 611
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    if-eq v0, v9, :cond_8

    .line 612
    if-ne v8, v10, :cond_7

    .line 613
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 614
    .local v11, "name":Ljava/lang/String;
    const-string v0, "package"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 615
    const-string v0, "name"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 616
    .local v13, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {v0}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    move-object v14, v0

    .line 617
    .local v14, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    const-string v0, "elapsedIdleTime"

    .line 618
    invoke-interface {v7, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 619
    const-string v0, "lastUsedByUserElapsedTime"

    iget-wide v9, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    invoke-direct {v1, v7, v0, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 622
    const-string v0, "screenIdleTime"

    .line 623
    invoke-interface {v7, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 624
    const-string v0, "lastPredictedTime"

    const-wide/16 v9, 0x0

    move-object v15, v13

    .end local v13    # "packageName":Ljava/lang/String;
    .local v15, "packageName":Ljava/lang/String;
    invoke-direct {v1, v7, v0, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 626
    const-string v0, "appLimitBucket"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 628
    .local v12, "currentBucketString":Ljava/lang/String;
    if-nez v12, :cond_3

    .line 629
    const/16 v0, 0xa

    goto :goto_2

    .line 630
    :cond_3
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 631
    const-string v0, "bucketReason"

    .line 632
    const/4 v13, 0x0

    invoke-interface {v7, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 633
    .local v13, "bucketingReason":Ljava/lang/String;
    const-string v0, "lastJobRunTime"

    const-wide/high16 v9, -0x8000000000000000L

    invoke-direct {v1, v7, v0, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 635
    const-string v0, "activeTimeoutTime"

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    const-wide/16 v9, 0x0

    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "currentBucketString":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    .local v17, "currentBucketString":Ljava/lang/String;
    invoke-direct {v1, v7, v0, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    .line 637
    const-string v0, "workingSetTimeoutTime"

    invoke-direct {v1, v7, v0, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    .line 639
    const/16 v0, 0x100

    iput v0, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 640
    const/16 v9, 0x10

    if-eqz v13, :cond_4

    .line 642
    nop

    .line 643
    :try_start_3
    invoke-static {v13, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 646
    goto :goto_3

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v10, "Unable to read bucketing reason"

    invoke-static {v4, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_3
    const-string v0, "lastRestrictionAttemptElapsedTime"

    .line 649
    const-wide/16 v10, 0x0

    invoke-direct {v1, v7, v0, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 650
    const-string v0, "lastRestrictionAttemptReason"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v10, v0

    .line 652
    .local v10, "lastRestrictReason":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 654
    nop

    .line 655
    :try_start_5
    invoke-static {v10, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 658
    goto :goto_4

    .line 656
    :catch_1
    move-exception v0

    .line 657
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v9, "Unable to read last restrict reason"

    invoke-static {v4, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_5
    :goto_4
    const/4 v0, -0x1

    iput v0, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 661
    move-object/from16 v9, p2

    move-object v11, v15

    .end local v15    # "packageName":Ljava/lang/String;
    .local v11, "packageName":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v9, v11, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    .line 665
    .end local v6    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v10    # "lastRestrictReason":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "bucketingReason":Ljava/lang/String;
    .end local v14    # "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "currentBucketString":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_7

    .line 614
    .restart local v6    # "appIdleFile":Landroid/util/AtomicFile;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    .local v11, "name":Ljava/lang/String;
    :cond_6
    move-object/from16 v9, p2

    move-object/from16 v16, v11

    .line 663
    .end local v11    # "name":Ljava/lang/String;
    :goto_5
    goto :goto_6

    .line 612
    :cond_7
    move-object/from16 v9, p2

    .line 611
    :goto_6
    const/4 v9, 0x1

    const/4 v10, 0x2

    goto/16 :goto_1

    :cond_8
    move-object/from16 v9, p2

    .line 668
    .end local v6    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    goto :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_9

    .line 665
    :catch_3
    move-exception v0

    move-object/from16 v9, p2

    .line 666
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 668
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 669
    nop

    .line 670
    return-void

    .line 668
    :catchall_1
    move-exception v0

    :goto_9
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 669
    throw v0
.end method

.method private readScreenOnTime()V
    .locals 4

    .line 205
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v0

    .line 206
    .local v0, "screenOnTimeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 209
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 210
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 211
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    :goto_0
    goto :goto_1

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    .line 217
    :goto_1
    return-void
.end method

.method private writeScreenOnTime()V
    .locals 6

    .line 220
    const-string v0, "\n"

    new-instance v1, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 221
    .local v1, "screenOnTimeFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 223
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 225
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 224
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 226
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 230
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public clearUsage(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 509
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 510
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    return-void
.end method

.method public dumpUsers(Lcom/android/internal/util/IndentingPrintWriter;[ILjava/util/List;)V
    .locals 3
    .param p1, "idpw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "userIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 755
    .local p3, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v0, p2

    .line 756
    .local v0, "numUsers":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 757
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 758
    aget v2, p2, v1

    invoke-direct {p0, p1, v2, p3}, Lcom/android/server/usage/AppIdleHistory;->dumpUser(Lcom/android/internal/util/IndentingPrintWriter;ILjava/util/List;)V

    .line 756
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 760
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 463
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 464
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 465
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 466
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-nez v0, :cond_0

    const/16 v1, 0x32

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    :goto_0
    return v1
.end method

.method public getAppStandbyBuckets(IZ)Ljava/util/ArrayList;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "appIdleEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 470
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 471
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 472
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 473
    .local v2, "buckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/AppStandbyInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 474
    new-instance v4, Landroid/app/usage/AppStandbyInfo;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 475
    if-eqz p2, :cond_0

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    iget v6, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    goto :goto_1

    :cond_0
    const/16 v6, 0xa

    :goto_1
    invoke-direct {v4, v5, v6}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 474
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 477
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public getAppStandbyReason(Ljava/lang/String;IJ)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 481
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 482
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 483
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 484
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 364
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 365
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 366
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 367
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    return-object v0
.end method

.method public getElapsedTime(J)J
    .locals 4
    .param p1, "elapsedRealtime"    # J

    .line 488
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getScreenOnTime(J)J
    .locals 4
    .param p1, "elapsedRealtime"    # J

    .line 192
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 193
    .local v0, "screenOnTime":J
    iget-boolean v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz v2, :cond_0

    .line 194
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 196
    :cond_0
    return-wide v0
.end method

.method getScreenOnTimeFile()Ljava/io/File;
    .locals 3

    .line 201
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string v2, "screen_on_time"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getThresholdIndex(Ljava/lang/String;IJ[J[J)I
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "screenTimeThresholds"    # [J
    .param p6, "elapsedTimeThresholds"    # [J

    .line 537
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move/from16 v11, p2

    invoke-direct {v6, v11}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v12

    .line 538
    .local v12, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 541
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-nez v0, :cond_0

    array-length v1, v10

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 543
    :cond_0
    invoke-virtual {v6, v8, v9}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    sub-long/2addr v1, v3

    .line 544
    .local v1, "screenOnDelta":J
    invoke-virtual {v6, v8, v9}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v3

    iget-wide v13, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    sub-long/2addr v3, v13

    .line 546
    .local v3, "elapsedDelta":J
    sget-boolean v5, Lcom/android/server/usage/AppIdleHistory;->DEBUG:Z

    const-string v13, "AppIdleHistory"

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " lastUsedScreen="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " lastUsedElapsed="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_1
    sget-boolean v5, Lcom/android/server/usage/AppIdleHistory;->DEBUG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " screenOn="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", elapsed="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_2
    array-length v5, v10

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    .line 552
    aget-wide v13, v10, v5

    cmp-long v13, v1, v13

    if-ltz v13, :cond_3

    aget-wide v13, p6, v5

    cmp-long v13, v3, v13

    if-ltz v13, :cond_3

    .line 554
    return v5

    .line 551
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 557
    .end local v5    # "i":I
    :cond_4
    const/4 v5, 0x0

    return v5
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;IJ)J
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 452
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 453
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 454
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 456
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-eqz v0, :cond_1

    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long/2addr v1, v3

    return-wide v1

    .line 457
    :cond_1
    :goto_0
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1
.end method

.method getUserFile(I)Ljava/io/File;
    .locals 5
    .param p1, "userId"    # I

    .line 577
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string v4, "users"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 578
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "app_idle_stats.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 577
    return-object v0
.end method

.method public isIdle(Ljava/lang/String;IJ)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 356
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 357
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 358
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 359
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v2, 0x28

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method noteRestrictionAttempt(Ljava/lang/String;IJI)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "reason"    # I

    .line 435
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 436
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 437
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 438
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 439
    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 440
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 352
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 353
    return-void
.end method

.method reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 13
    .param p1, "appUsageHistory"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "newBucket"    # I
    .param p5, "usageReason"    # I
    .param p6, "elapsedRealtime"    # J
    .param p8, "timeout"    # J

    .line 259
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    move-wide/from16 v3, p6

    move/from16 v5, p5

    or-int/lit16 v6, v5, 0x300

    .line 260
    .local v6, "bucketingReason":I
    invoke-static {v6}, Lcom/android/server/usage/AppStandbyController;->isUserUsage(I)Z

    move-result v7

    .line 262
    .local v7, "isUserUsage":Z
    iget v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_0

    if-nez v7, :cond_0

    .line 264
    const/16 v2, 0x2d

    .line 265
    .end local p4    # "newBucket":I
    .local v2, "newBucket":I
    iget v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_0

    .line 268
    .end local v2    # "newBucket":I
    .restart local p4    # "newBucket":I
    :cond_0
    cmp-long v8, p8, v3

    if-lez v8, :cond_3

    .line 270
    iget-wide v8, v0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v10, v0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v10, p8, v10

    add-long/2addr v8, v10

    .line 271
    .local v8, "timeoutTime":J
    const/16 v10, 0xa

    if-ne v2, v10, :cond_1

    .line 272
    iget-wide v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    goto :goto_0

    .line 274
    :cond_1
    const/16 v10, 0x14

    if-ne v2, v10, :cond_2

    .line 275
    iget-wide v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    goto :goto_0

    .line 278
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot set a timeout on bucket="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 284
    .end local v8    # "timeoutTime":J
    .end local p4    # "newBucket":I
    .restart local v2    # "newBucket":I
    :cond_3
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-eqz v8, :cond_5

    .line 285
    iget-wide v8, v0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v10, v0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v10, v3, v10

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 287
    if-eqz v7, :cond_4

    .line 288
    iget-wide v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    iput-wide v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 290
    :cond_4
    invoke-virtual {p0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 293
    :cond_5
    iget v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-le v8, v2, :cond_6

    .line 294
    iput v2, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 295
    move-object v8, p2

    move/from16 v9, p3

    invoke-direct {p0, p2, v9, v2, v6}, Lcom/android/server/usage/AppIdleHistory;->logAppStandbyBucketChanged(Ljava/lang/String;III)V

    goto :goto_1

    .line 293
    :cond_6
    move-object v8, p2

    move/from16 v9, p3

    .line 297
    :goto_1
    iput v6, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 299
    return-object v1
.end method

.method public reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newBucket"    # I
    .param p4, "usageReason"    # I
    .param p5, "nowElapsed"    # J
    .param p7, "timeout"    # J

    .line 318
    move-object v10, p0

    move/from16 v11, p2

    invoke-direct {p0, v11}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v12

    .line 319
    .local v12, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v12

    move-object v2, p1

    move-wide/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v13

    .line 320
    .local v13, "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move-object v1, v13

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    return-object v0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJII)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "bucket"    # I
    .param p6, "reason"    # I

    .line 372
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 373
    return-void
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJIIZ)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "bucket"    # I
    .param p6, "reason"    # I
    .param p7, "resetTimeout"    # Z

    .line 377
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 378
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 379
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 380
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v1, p5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 381
    .local v1, "changed":Z
    :goto_0
    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 382
    iput p6, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 384
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v2

    .line 386
    .local v2, "elapsed":J
    const v4, 0xff00

    and-int/2addr v4, p6

    const/16 v5, 0x500

    if-ne v4, v5, :cond_1

    .line 387
    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 388
    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    .line 390
    :cond_1
    if-eqz p7, :cond_2

    .line 391
    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    .line 392
    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    .line 394
    :cond_2
    if-eqz v1, :cond_3

    .line 395
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/android/server/usage/AppIdleHistory;->logAppStandbyBucketChanged(Ljava/lang/String;III)V

    .line 397
    :cond_3
    return-void
.end method

.method public setIdle(Ljava/lang/String;IZJ)I
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "elapsedRealtime"    # J

    .line 495
    if-eqz p3, :cond_0

    .line 496
    const/16 v0, 0x28

    .line 497
    .local v0, "newBucket":I
    const/16 v1, 0x400

    .local v1, "reason":I
    goto :goto_0

    .line 499
    .end local v0    # "newBucket":I
    .end local v1    # "reason":I
    :cond_0
    const/16 v0, 0xa

    .line 501
    .restart local v0    # "newBucket":I
    const/16 v1, 0x303

    .line 503
    .restart local v1    # "reason":I
    :goto_0
    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p4

    move v7, v0

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 505
    return v0
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 418
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 419
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 420
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 421
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 422
    return-void
.end method

.method shouldInformListeners(Ljava/lang/String;IJI)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "bucket"    # I

    .line 515
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 516
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 518
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    if-eq v1, p5, :cond_0

    .line 519
    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 520
    const/4 v1, 0x1

    return v1

    .line 522
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updateDisplay(ZJ)V
    .locals 4
    .param p1, "screenOn"    # Z
    .param p2, "elapsedRealtime"    # J

    .line 176
    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 178
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    .line 179
    if-eqz p1, :cond_1

    .line 180
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    goto :goto_0

    .line 182
    :cond_1
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 183
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 184
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 186
    :goto_0
    sget-boolean v0, Lcom/android/server/usage/AppIdleHistory;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenOnSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenOnDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppIdleHistory"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_2
    return-void
.end method

.method public updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .param p2, "elapsedTimeAdjusted"    # J
    .param p4, "bucket"    # I

    .line 406
    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 407
    iput p4, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    .line 408
    return-void
.end method

.method public userFileExists(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public writeAppIdleDurations()V
    .locals 6

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 238
    .local v0, "elapsedRealtime":J
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 239
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 240
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    .line 241
    return-void
.end method

.method public writeAppIdleTimes()V
    .locals 3

    .line 680
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 681
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 682
    iget-object v2, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(I)V

    .line 681
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 684
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public writeAppIdleTimes(I)V
    .locals 18
    .param p1, "userId"    # I

    .line 687
    const-string v0, "package"

    const-string v1, "packages"

    const-string v2, "AppIdleHistory"

    const/4 v3, 0x0

    .line 688
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 690
    .local v4, "appIdleFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v3, v5

    .line 691
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 693
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 694
    .local v6, "xml":Lcom/android/internal/util/FastXmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 695
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 696
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 698
    invoke-virtual {v6, v9, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 700
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v7

    .line 701
    .local v7, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 702
    .local v8, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_5

    .line 703
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 705
    .local v11, "packageName":Ljava/lang/String;
    if-nez v11, :cond_0

    .line 706
    const-string v12, "Skipping App Idle write for unexpected null package"

    invoke-static {v2, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    move/from16 v17, v10

    goto/16 :goto_2

    .line 709
    :cond_0
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 710
    .local v12, "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    invoke-virtual {v6, v9, v0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 711
    const-string v13, "name"

    invoke-virtual {v6, v9, v13, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 712
    const-string v13, "elapsedIdleTime"

    iget-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 713
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 712
    invoke-virtual {v6, v9, v13, v14}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 714
    const-string v13, "lastUsedByUserElapsedTime"

    iget-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 715
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 714
    invoke-virtual {v6, v9, v13, v14}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 716
    const-string v13, "screenIdleTime"

    iget-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 717
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 716
    invoke-virtual {v6, v9, v13, v14}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 718
    const-string v13, "lastPredictedTime"

    iget-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 719
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 718
    invoke-virtual {v6, v9, v13, v14}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    const-string v13, "appLimitBucket"

    iget v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 721
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 720
    invoke-virtual {v6, v9, v13, v14}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 722
    const-string v13, "bucketReason"

    iget v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 723
    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    .line 722
    invoke-virtual {v6, v9, v13, v14}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 724
    iget-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_1

    .line 725
    const-string v13, "activeTimeoutTime"

    move/from16 v17, v10

    .end local v10    # "i":I
    .local v17, "i":I
    iget-wide v9, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v13, v9}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 724
    .end local v17    # "i":I
    .restart local v10    # "i":I
    :cond_1
    move/from16 v17, v10

    .line 728
    .end local v10    # "i":I
    .restart local v17    # "i":I
    :goto_1
    iget-wide v9, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    cmp-long v9, v9, v15

    if-lez v9, :cond_2

    .line 729
    const-string v9, "workingSetTimeoutTime"

    iget-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v9, v13}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 732
    :cond_2
    iget-wide v9, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v9, v9, v15

    if-eqz v9, :cond_3

    .line 733
    const-string v9, "lastJobRunTime"

    iget-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v9, v13}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 736
    :cond_3
    iget-wide v9, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-wide/16 v15, 0x0

    cmp-long v9, v9, v15

    if-lez v9, :cond_4

    .line 737
    const-string v9, "lastRestrictionAttemptElapsedTime"

    iget-wide v14, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 738
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 737
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v9, v13}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 740
    :cond_4
    const-string v9, "lastRestrictionAttemptReason"

    iget v10, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 741
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 740
    const/4 v13, 0x0

    invoke-virtual {v6, v13, v9, v10}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 742
    invoke-virtual {v6, v13, v0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 702
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :goto_2
    add-int/lit8 v10, v17, 0x1

    const/4 v9, 0x0

    .end local v17    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_0

    :cond_5
    move/from16 v17, v10

    .line 745
    .end local v10    # "i":I
    const/4 v0, 0x0

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 746
    invoke-virtual {v6}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 747
    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "xml":Lcom/android/internal/util/FastXmlSerializer;
    .end local v7    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    .end local v8    # "N":I
    move/from16 v5, p1

    goto :goto_3

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing app idle file for user "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

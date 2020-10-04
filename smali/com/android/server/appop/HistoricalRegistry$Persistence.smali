.class final Lcom/android/server/appop/HistoricalRegistry$Persistence;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/HistoricalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Persistence"
.end annotation


# static fields
.field private static final ATTR_ACCESS_COUNT:Ljava/lang/String; = "ac"

.field private static final ATTR_ACCESS_DURATION:Ljava/lang/String; = "du"

.field private static final ATTR_BEGIN_TIME:Ljava/lang/String; = "beg"

.field private static final ATTR_END_TIME:Ljava/lang/String; = "end"

.field private static final ATTR_NAME:Ljava/lang/String; = "na"

.field private static final ATTR_OVERFLOW:Ljava/lang/String; = "ov"

.field private static final ATTR_REJECT_COUNT:Ljava/lang/String; = "rc"

.field private static final ATTR_VERSION:Ljava/lang/String; = "ver"

.field private static final CURRENT_VERSION:I = 0x2

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG_HISTORY:Ljava/lang/String; = "history"

.field private static final TAG_OP:Ljava/lang/String; = "op"

.field private static final TAG_OPS:Ljava/lang/String; = "ops"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_STATE:Ljava/lang/String; = "st"

.field private static final TAG_UID:Ljava/lang/String; = "uid"

.field private static final sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;


# instance fields
.field private final mBaseSnapshotInterval:J

.field private final mIntervalCompressionMultiplier:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 691
    const-class v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->LOG_TAG:Ljava/lang/String;

    .line 719
    new-instance v0, Lcom/android/internal/os/AtomicDirectory;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 720
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "appops"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "history"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicDirectory;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 719
    return-void
.end method

.method constructor <init>(JJ)V
    .locals 0
    .param p1, "baseSnapshotInterval"    # J
    .param p3, "intervalCompressionMultiplier"    # J

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput-wide p1, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 716
    iput-wide p3, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 717
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;[Ljava/lang/String;JJI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .param p1, "x1"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Ljava/lang/String;
    .param p5, "x5"    # J
    .param p7, "x6"    # J
    .param p9, "x7"    # I

    .line 688
    invoke-direct/range {p0 .. p9}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;[Ljava/lang/String;JJI)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 1
    .param p0, "x0"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "x1"    # D

    .line 688
    invoke-static {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    return-object v0
.end method

.method static clearHistoryDLocked()V
    .locals 1

    .line 744
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 745
    return-void
.end method

.method private collectHistoricalOpsBaseDLocked(ILjava/lang/String;[Ljava/lang/String;JJI)Ljava/util/LinkedList;
    .locals 16
    .param p1, "filterUid"    # I
    .param p2, "filterPackageName"    # Ljava/lang/String;
    .param p3, "filterOpNames"    # [Ljava/lang/String;
    .param p4, "filterBeginTimeMillis"    # J
    .param p6, "filterEndTimeMillis"    # J
    .param p8, "filterFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "JJI)",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 847
    const/4 v1, 0x0

    .line 849
    .local v1, "baseDir":Ljava/io/File;
    :try_start_0
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 855
    .end local v1    # "baseDir":Ljava/io/File;
    .local v3, "baseDir":Ljava/io/File;
    :try_start_1
    invoke-static {v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v15

    .line 856
    .local v15, "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v12, v0, [J

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, v12, v0

    .line 857
    .local v12, "globalContentOffsetMillis":[J
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    invoke-direct/range {v2 .. v15}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;[Ljava/lang/String;JJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v0

    .line 864
    .local v0, "ops":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    sget-object v1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    return-object v0

    .line 866
    .end local v0    # "ops":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v12    # "globalContentOffsetMillis":[J
    .end local v15    # "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v3    # "baseDir":Ljava/io/File;
    .restart local v1    # "baseDir":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object v3, v1

    .line 867
    .end local v1    # "baseDir":Ljava/io/File;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v3    # "baseDir":Ljava/io/File;
    :goto_0
    const-string v1, "Error reading historical app ops. Deleting history."

    invoke-static {v1, v0, v3}, Lcom/android/server/appop/HistoricalRegistry;->access$300(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 868
    sget-object v1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 870
    .end local v0    # "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;[Ljava/lang/String;JJI)V
    .locals 9
    .param p1, "currentOps"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterOpNames"    # [Ljava/lang/String;
    .param p5, "filterBeingMillis"    # J
    .param p7, "filterEndMillis"    # J
    .param p9, "filterFlags"    # I

    .line 832
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;[Ljava/lang/String;JJI)Ljava/util/LinkedList;

    move-result-object v0

    .line 835
    .local v0, "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v0, :cond_1

    .line 836
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 837
    .local v1, "readCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 838
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 839
    .local v3, "readOp":Landroid/app/AppOpsManager$HistoricalOps;
    move-object v4, p1

    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 837
    .end local v3    # "readOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v4, p1

    goto :goto_1

    .line 835
    .end local v1    # "readCount":I
    .end local v2    # "i":I
    :cond_1
    move-object v4, p1

    .line 842
    :goto_1
    return-void
.end method

.method private collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;[Ljava/lang/String;JJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;
    .locals 25
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterOpNames"    # [Ljava/lang/String;
    .param p5, "filterBeginTimeMillis"    # J
    .param p7, "filterEndTimeMillis"    # J
    .param p9, "filterFlags"    # I
    .param p10, "globalContentOffsetMillis"    # [J
    .param p12, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "JJI[J",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .local p11, "outOps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local p13, "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v11, p0

    move/from16 v12, p12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p12

    move-object/from16 v16, p13

    .line 881
    iget-wide v2, v11, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v2, v2

    int-to-double v4, v12

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    iget-wide v4, v11, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v17, v2, v4

    .local v17, "previousIntervalEndMillis":J
    move-wide/from16 v2, v17

    .line 883
    iget-wide v4, v11, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v4, v4

    add-int/lit8 v9, v12, 0x1

    int-to-double v9, v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    iget-wide v9, v11, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v9, v4

    .local v9, "currentIntervalEndMillis":J
    move-wide v4, v9

    .line 886
    move-wide/from16 v19, v9

    .end local v9    # "currentIntervalEndMillis":J
    .local v19, "currentIntervalEndMillis":J
    sub-long v9, p5, v17

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v21

    move-wide/from16 v11, v19

    .end local v19    # "currentIntervalEndMillis":J
    .end local p5    # "filterBeginTimeMillis":J
    .local v11, "currentIntervalEndMillis":J
    .local v21, "filterBeginTimeMillis":J
    move-wide/from16 v9, v21

    .line 887
    sub-long v19, p7, v17

    move-wide/from16 v23, v11

    .end local v11    # "currentIntervalEndMillis":J
    .end local p7    # "filterEndTimeMillis":J
    .local v19, "filterEndTimeMillis":J
    .local v23, "currentIntervalEndMillis":J
    move-wide/from16 v11, v19

    .line 890
    invoke-direct/range {v0 .. v16}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;[Ljava/lang/String;JJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v14

    .line 896
    .local v14, "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v14, :cond_0

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    return-object p11

    .line 901
    :cond_0
    add-int/lit8 v12, p12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, v21

    move-wide/from16 v7, v19

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;[Ljava/lang/String;JJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v0

    .line 907
    .end local p11    # "outOps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v0, "outOps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v0, :cond_2

    .line 908
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 909
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 910
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 911
    .local v3, "collectedOp":Landroid/app/AppOpsManager$HistoricalOps;
    move-wide/from16 v4, v23

    .end local v23    # "currentIntervalEndMillis":J
    .local v4, "currentIntervalEndMillis":J
    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 909
    .end local v3    # "collectedOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "currentIntervalEndMillis":J
    .restart local v23    # "currentIntervalEndMillis":J
    :cond_1
    move-wide/from16 v4, v23

    .end local v23    # "currentIntervalEndMillis":J
    .restart local v4    # "currentIntervalEndMillis":J
    goto :goto_1

    .line 907
    .end local v1    # "opCount":I
    .end local v2    # "i":I
    .end local v4    # "currentIntervalEndMillis":J
    .restart local v23    # "currentIntervalEndMillis":J
    :cond_2
    move-wide/from16 v4, v23

    .line 915
    .end local v23    # "currentIntervalEndMillis":J
    .restart local v4    # "currentIntervalEndMillis":J
    :goto_1
    if-eqz v14, :cond_4

    .line 916
    if-nez v0, :cond_3

    .line 917
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v1

    .line 920
    :cond_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    .line 921
    .restart local v1    # "opCount":I
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_4

    .line 922
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 926
    .end local v1    # "opCount":I
    .end local v2    # "i":I
    :cond_4
    return-object v0
.end method

.method private computeGlobalIntervalBeginMillis(I)J
    .locals 9
    .param p1, "depth"    # I

    .line 1475
    const-wide/16 v0, 0x0

    .line 1476
    .local v0, "beginTimeMillis":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_0

    .line 1477
    long-to-double v3, v0

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v5, v5

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-long v0, v3

    .line 1476
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1479
    .end local v2    # "i":I
    :cond_0
    iget-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method private static enforceOpsWellFormed(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 1444
    .local p0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-nez p0, :cond_0

    .line 1445
    return-void

    .line 1448
    :cond_0
    const/4 v0, 0x0

    .line 1449
    .local v0, "current":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1450
    .local v1, "opsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 1451
    move-object v3, v0

    .line 1452
    .local v3, "previous":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1453
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1457
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    .line 1461
    if-eqz v3, :cond_3

    .line 1462
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 1466
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    goto :goto_1

    .line 1467
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non increasing ops:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1463
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intersecting ops:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1450
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1458
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Begin after end:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1454
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Empty ops:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1472
    .end local v2    # "i":I
    .end local v3    # "previous":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_6
    return-void
.end method

.method private generateFile(Ljava/io/File;I)Ljava/io/File;
    .locals 5
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "depth"    # I

    .line 723
    invoke-direct {p0, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->computeGlobalIntervalBeginMillis(I)J

    move-result-wide v0

    .line 724
    .local v0, "globalBeginMillis":J
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;
    .locals 6
    .param p0, "historyDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1567
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1568
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 1569
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1571
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1572
    .local v1, "fileNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1573
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1572
    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1576
    :cond_1
    return-object v1
.end method

.method private handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V
    .locals 26
    .param p1, "newBaseDir"    # Ljava/io/File;
    .param p2, "oldBaseDir"    # Ljava/io/File;
    .param p5, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 933
    .local p3, "passedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local p4, "oldFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    iget-wide v0, v15, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v0, v0

    int-to-double v6, v3

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    iget-wide v6, v15, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v0, v6

    .line 935
    .local v0, "previousIntervalEndMillis":J
    iget-wide v6, v15, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v6, v6

    add-int/lit8 v8, v3, 0x1

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    iget-wide v8, v15, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v17, v6, v8

    .line 938
    .local v17, "currentIntervalEndMillis":J
    if-eqz v5, :cond_f

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    move-wide/from16 v20, v0

    move-object v6, v2

    move v7, v3

    move-object v8, v4

    move-object v9, v15

    goto/16 :goto_5

    .line 957
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    .line 958
    .local v14, "passedOpCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v14, :cond_1

    .line 959
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$HistoricalOps;

    .line 960
    .local v7, "passedOp":Landroid/app/AppOpsManager$HistoricalOps;
    neg-long v8, v0

    invoke-virtual {v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 958
    .end local v7    # "passedOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 968
    .end local v6    # "i":I
    :cond_1
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/high16 v9, -0x8000000000000000L

    const-wide v11, 0x7fffffffffffffffL

    const/16 v13, 0x1f

    const/16 v16, 0x0

    move/from16 v19, v14

    .end local v14    # "passedOpCount":I
    .local v19, "passedOpCount":I
    move-object/from16 v14, v16

    move-wide/from16 v20, v0

    .end local v0    # "previousIntervalEndMillis":J
    .local v20, "previousIntervalEndMillis":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v20

    move-wide/from16 v4, v17

    move/from16 v15, p5

    invoke-direct/range {v0 .. v16}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;[Ljava/lang/String;JJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v6

    .line 980
    .local v6, "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v6, :cond_3

    .line 981
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 982
    .local v0, "existingOpCount":I
    if-lez v0, :cond_2

    .line 984
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v7, p3

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 985
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v1

    .line 986
    .local v1, "elapsedTimeMillis":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 987
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 988
    .local v4, "existingOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v4, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 986
    .end local v4    # "existingOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 982
    .end local v1    # "elapsedTimeMillis":J
    .end local v3    # "i":I
    :cond_2
    move-object/from16 v7, p3

    goto :goto_2

    .line 980
    .end local v0    # "existingOpCount":I
    :cond_3
    move-object/from16 v7, p3

    .line 997
    :cond_4
    :goto_2
    move-wide/from16 v8, v20

    .line 1002
    .local v8, "slotDurationMillis":J
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object v10, v0

    .line 1003
    .local v10, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v6, :cond_5

    .line 1004
    invoke-interface {v10, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1012
    :cond_5
    const/4 v0, 0x0

    .line 1013
    .local v0, "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    const/4 v1, 0x0

    .line 1023
    .local v1, "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    const-wide/16 v2, 0x0

    .line 1024
    .local v2, "intervalOverflowMillis":J
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 1025
    .local v11, "opCount":I
    const/4 v4, 0x0

    move-object v12, v0

    move-object v15, v1

    move-wide v13, v2

    .end local v0    # "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v1    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v2    # "intervalOverflowMillis":J
    .local v4, "i":I
    .local v12, "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v13, "intervalOverflowMillis":J
    .local v15, "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_3
    if-ge v4, v11, :cond_d

    .line 1026
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1029
    .local v0, "op":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v1

    cmp-long v1, v1, v17

    if-gtz v1, :cond_6

    .line 1030
    move-object v1, v0

    .line 1031
    .local v1, "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    const/4 v2, 0x0

    .local v2, "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_4

    .line 1032
    .end local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_6
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v1

    cmp-long v1, v1, v17

    if-gez v1, :cond_8

    .line 1033
    move-object v1, v0

    .line 1034
    .restart local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v17

    .line 1035
    .end local v13    # "intervalOverflowMillis":J
    .local v2, "intervalOverflowMillis":J
    cmp-long v5, v2, v20

    if-lez v5, :cond_7

    .line 1036
    long-to-double v13, v2

    .line 1037
    move-object v5, v1

    move-wide/from16 v22, v2

    .end local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "intervalOverflowMillis":J
    .local v5, "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .local v22, "intervalOverflowMillis":J
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v13, v1

    .line 1038
    .local v13, "splitScale":D
    invoke-static {v0, v13, v14}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    .line 1039
    .local v2, "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v17

    .line 1040
    .end local v13    # "splitScale":D
    .end local v22    # "intervalOverflowMillis":J
    .local v24, "intervalOverflowMillis":J
    move-object v1, v5

    move-wide/from16 v13, v24

    goto :goto_4

    .line 1041
    .end local v5    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v24    # "intervalOverflowMillis":J
    .restart local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .local v2, "intervalOverflowMillis":J
    :cond_7
    move-object v5, v1

    move-wide/from16 v22, v2

    .end local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "intervalOverflowMillis":J
    .restart local v5    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v22    # "intervalOverflowMillis":J
    const/4 v2, 0x0

    move-wide/from16 v13, v22

    .local v2, "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_4

    .line 1044
    .end local v2    # "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v5    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v22    # "intervalOverflowMillis":J
    .local v13, "intervalOverflowMillis":J
    :cond_8
    const/4 v1, 0x0

    .line 1045
    .restart local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    move-object v2, v0

    .line 1047
    .restart local v2    # "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_4
    if-eqz v1, :cond_a

    .line 1048
    if-nez v12, :cond_9

    .line 1049
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    .line 1051
    :cond_9
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    :cond_a
    if-eqz v2, :cond_c

    .line 1054
    if-nez v15, :cond_b

    .line 1055
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v3

    .line 1057
    :cond_b
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    .end local v0    # "op":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1066
    .end local v4    # "i":I
    :cond_d
    move-object/from16 v5, p0

    move-object/from16 v4, p1

    move/from16 v3, p5

    invoke-direct {v5, v4, v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v2

    .line 1067
    .local v2, "newFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1069
    if-eqz v12, :cond_e

    .line 1070
    invoke-static {v12, v8, v9}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->normalizeSnapshotForSlotDuration(Ljava/util/List;J)V

    .line 1071
    invoke-direct {v5, v12, v13, v14, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpsDLocked(Ljava/util/List;JLjava/io/File;)V

    .line 1079
    :cond_e
    add-int/lit8 v16, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v22, v6

    move-object v6, v1

    .end local v6    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v22, "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object/from16 v1, p1

    move-object/from16 v23, v2

    .end local v2    # "newFile":Ljava/io/File;
    .local v23, "newFile":Ljava/io/File;
    move-object/from16 v2, p2

    move v7, v3

    move-object v3, v15

    move-wide/from16 v24, v8

    move-object v8, v4

    .end local v8    # "slotDurationMillis":J
    .local v24, "slotDurationMillis":J
    move-object/from16 v4, p4

    move-object v9, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 1081
    return-void

    .line 938
    .end local v10    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v11    # "opCount":I
    .end local v12    # "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v13    # "intervalOverflowMillis":J
    .end local v15    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v19    # "passedOpCount":I
    .end local v20    # "previousIntervalEndMillis":J
    .end local v22    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v23    # "newFile":Ljava/io/File;
    .end local v24    # "slotDurationMillis":J
    .local v0, "previousIntervalEndMillis":J
    :cond_f
    move-wide/from16 v20, v0

    move-object v6, v2

    move v7, v3

    move-object v8, v4

    move-object v9, v15

    .line 939
    .end local v0    # "previousIntervalEndMillis":J
    .restart local v20    # "previousIntervalEndMillis":J
    :goto_5
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 941
    move-object/from16 v10, p2

    invoke-direct {v9, v10, v7}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v11

    .line 942
    .local v11, "oldFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 943
    invoke-direct {v9, v8, v7}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    .line 944
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/nio/file/Files;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 946
    .end local v0    # "newFile":Ljava/io/File;
    :cond_10
    add-int/lit8 v5, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    goto :goto_6

    .line 939
    .end local v11    # "oldFile":Ljava/io/File;
    :cond_11
    move-object/from16 v10, p2

    .line 949
    :goto_6
    return-void
.end method

.method private static normalizeSnapshotForSlotDuration(Ljava/util/List;J)V
    .locals 15
    .param p1, "slotDurationMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;J)V"
        }
    .end annotation

    .line 1515
    .local p0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object v0, p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1516
    .local v1, "opCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "processedIdx":I
    :goto_0
    if-ltz v2, :cond_5

    .line 1517
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1518
    .local v3, "processedOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, p1

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1520
    .local v4, "slotBeginTimeMillis":J
    add-int/lit8 v8, v2, -0x1

    .local v8, "candidateIdx":I
    :goto_1
    if-ltz v8, :cond_4

    .line 1521
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1522
    .local v9, "candidateOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v9}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v10

    .line 1523
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    sub-long/2addr v10, v12

    .line 1524
    .local v10, "candidateSlotIntersectionMillis":J
    cmp-long v12, v10, v6

    if-gtz v12, :cond_0

    .line 1525
    goto :goto_3

    .line 1527
    :cond_0
    long-to-float v12, v10

    .line 1528
    invoke-virtual {v9}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v13

    long-to-float v13, v13

    div-float/2addr v12, v13

    .line 1529
    .local v12, "candidateSplitRatio":F
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-ltz v13, :cond_1

    .line 1530
    invoke-interface {p0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1531
    add-int/lit8 v2, v2, -0x1

    .line 1532
    invoke-virtual {v3, v9}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    goto :goto_2

    .line 1534
    :cond_1
    float-to-double v13, v12

    invoke-static {v9, v13, v14}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v13

    .line 1536
    .local v13, "endSplice":Landroid/app/AppOpsManager$HistoricalOps;
    if-eqz v13, :cond_2

    .line 1537
    invoke-virtual {v3, v13}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 1539
    :cond_2
    invoke-virtual {v9}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1540
    invoke-interface {p0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1541
    add-int/lit8 v2, v2, -0x1

    .line 1520
    .end local v9    # "candidateOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v10    # "candidateSlotIntersectionMillis":J
    .end local v12    # "candidateSplitRatio":F
    .end local v13    # "endSplice":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1516
    .end local v3    # "processedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v8    # "candidateIdx":I
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1551
    .end local v2    # "processedIdx":I
    .end local v4    # "slotBeginTimeMillis":J
    :cond_5
    return-void
.end method

.method private static opsToDebugString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1554
    .local p0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1555
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1556
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1557
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1559
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    .line 1560
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1556
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1563
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;ID)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 14
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filterFlags"    # I
    .param p7, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1269
    move-object/from16 v9, p4

    move-object/from16 v10, p5

    const-string/jumbo v0, "na"

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    .line 1270
    .local v11, "op":I
    if-eqz v10, :cond_0

    .line 1271
    invoke-static {v11}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    .line 1270
    invoke-static {v10, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1273
    const/4 v0, 0x0

    return-object v0

    .line 1275
    :cond_0
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    move-object v13, p1

    .line 1276
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v12, "depth":I
    .local v13, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_1
    :goto_0
    invoke-static {v9, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1277
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "st"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1278
    move-object v0, p0

    move-object v1, v13

    move/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v11

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readStateDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILorg/xmlpull/v1/XmlPullParser;ID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1280
    .local v0, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v13, :cond_2

    .line 1281
    move-object v1, v0

    move-object v13, v1

    .line 1283
    .end local v0    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_2
    goto :goto_0

    .line 1285
    :cond_3
    return-object v13
.end method

.method private readHistoricalOpsLocked(Ljava/io/File;ILjava/lang/String;[Ljava/lang/String;JJI[J)Ljava/util/List;
    .locals 19
    .param p1, "file"    # Ljava/io/File;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterOpNames"    # [Ljava/lang/String;
    .param p5, "filterBeginTimeMillis"    # J
    .param p7, "filterEndTimeMillis"    # J
    .param p9, "filterFlags"    # I
    .param p10, "cumulativeOverflowMillis"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "JJI[J)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1124
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1125
    .local v2, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v13, v0

    .line 1126
    .local v13, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1127
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v13, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1128
    const-string v3, "history"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1132
    const-string/jumbo v3, "ver"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    move v14, v3

    .line 1133
    .local v14, "version":I
    const/4 v3, 0x2

    if-lt v14, v3, :cond_6

    .line 1138
    const-string/jumbo v3, "ov"

    const-wide/16 v4, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    move-wide v15, v3

    .line 1139
    .local v15, "overflowMillis":J
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v12, v3

    move-object/from16 v17, v2

    .line 1140
    .end local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v12, "depth":I
    .local v17, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_0
    :try_start_2
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1141
    const-string/jumbo v2, "ops"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1142
    move-object/from16 v2, p0

    move-object v3, v0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move/from16 v18, v12

    .end local v12    # "depth":I
    .local v18, "depth":I
    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readeHistoricalOpsDLocked(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;[Ljava/lang/String;JJI[J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    .line 1145
    .local v2, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v2, :cond_0

    .line 1146
    goto :goto_2

    .line 1148
    :cond_0
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1149
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1150
    goto :goto_2

    .line 1152
    :cond_1
    if-nez v17, :cond_2

    .line 1153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v17, v3

    goto :goto_1

    .line 1152
    :cond_2
    move-object/from16 v3, v17

    .line 1155
    .end local v17    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v3, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_1
    :try_start_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1156
    move-object/from16 v17, v3

    move/from16 v12, v18

    .end local v2    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_0

    .line 1125
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "version":I
    .end local v15    # "overflowMillis":J
    .end local v18    # "depth":I
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v3

    goto :goto_3

    .line 1141
    .end local v3    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "depth":I
    .restart local v14    # "version":I
    .restart local v15    # "overflowMillis":J
    .restart local v17    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :cond_3
    move/from16 v18, v12

    .line 1140
    .end local v12    # "depth":I
    .restart local v18    # "depth":I
    :goto_2
    move/from16 v12, v18

    goto :goto_0

    .line 1158
    .end local v18    # "depth":I
    .restart local v12    # "depth":I
    :cond_4
    move/from16 v18, v12

    .end local v12    # "depth":I
    .restart local v18    # "depth":I
    if-eqz p10, :cond_5

    .line 1159
    const/4 v2, 0x0

    :try_start_4
    aget-wide v3, p10, v2

    add-long/2addr v3, v15

    aput-wide v3, p10, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1161
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "version":I
    .end local v15    # "overflowMillis":J
    .end local v18    # "depth":I
    :cond_5
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1164
    .end local v13    # "stream":Ljava/io/FileInputStream;
    nop

    .line 1172
    return-object v17

    .line 1125
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_3

    .line 1134
    .end local v17    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v14    # "version":I
    :cond_6
    :try_start_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping unsupported history version 1 for file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "filterUid":I
    .end local p3    # "filterPackageName":Ljava/lang/String;
    .end local p4    # "filterOpNames":[Ljava/lang/String;
    .end local p5    # "filterBeginTimeMillis":J
    .end local p7    # "filterEndTimeMillis":J
    .end local p9    # "filterFlags":I
    .end local p10    # "cumulativeOverflowMillis":[J
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1125
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "version":I
    .restart local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "filterUid":I
    .restart local p3    # "filterPackageName":Ljava/lang/String;
    .restart local p4    # "filterOpNames":[Ljava/lang/String;
    .restart local p5    # "filterBeginTimeMillis":J
    .restart local p7    # "filterEndTimeMillis":J
    .restart local p9    # "filterFlags":I
    .restart local p10    # "cumulativeOverflowMillis":[J
    :catchall_2
    move-exception v0

    move-object/from16 v17, v2

    move-object v2, v0

    .end local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "filterUid":I
    .end local p3    # "filterPackageName":Ljava/lang/String;
    .end local p4    # "filterOpNames":[Ljava/lang/String;
    .end local p5    # "filterBeginTimeMillis":J
    .end local p7    # "filterEndTimeMillis":J
    .end local p9    # "filterFlags":I
    .end local p10    # "cumulativeOverflowMillis":[J
    :goto_3
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1161
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "filterUid":I
    .restart local p3    # "filterPackageName":Ljava/lang/String;
    .restart local p4    # "filterOpNames":[Ljava/lang/String;
    .restart local p5    # "filterBeginTimeMillis":J
    .restart local p7    # "filterEndTimeMillis":J
    .restart local p9    # "filterFlags":I
    .restart local p10    # "cumulativeOverflowMillis":[J
    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v4, v0

    :try_start_9
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v17    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "filterUid":I
    .end local p3    # "filterPackageName":Ljava/lang/String;
    .end local p4    # "filterOpNames":[Ljava/lang/String;
    .end local p5    # "filterBeginTimeMillis":J
    .end local p7    # "filterEndTimeMillis":J
    .end local p9    # "filterFlags":I
    .end local p10    # "cumulativeOverflowMillis":[J
    :goto_4
    throw v3
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0

    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "filterUid":I
    .restart local p3    # "filterPackageName":Ljava/lang/String;
    .restart local p4    # "filterOpNames":[Ljava/lang/String;
    .restart local p5    # "filterBeginTimeMillis":J
    .restart local p7    # "filterEndTimeMillis":J
    .restart local p9    # "filterFlags":I
    .restart local p10    # "cumulativeOverflowMillis":[J
    :catch_0
    move-exception v0

    goto :goto_5

    .end local v17    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    .line 1162
    .end local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v17    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_5
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry$Persistence;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No history file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;[Ljava/lang/String;JJI[JILjava/util/Set;)Ljava/util/List;
    .locals 16
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "intervalBeginMillis"    # J
    .param p4, "intervalEndMillis"    # J
    .param p6, "filterUid"    # I
    .param p7, "filterPackageName"    # Ljava/lang/String;
    .param p8, "filterOpNames"    # [Ljava/lang/String;
    .param p9, "filterBeginTimeMillis"    # J
    .param p11, "filterEndTimeMillis"    # J
    .param p13, "filterFlags"    # I
    .param p14, "cumulativeOverflowMillis"    # [J
    .param p15, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "JJI",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "JJI[JI",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1090
    .local p16, "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p16

    move-object/from16 v13, p1

    move/from16 v14, p15

    invoke-direct {v11, v13, v14}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v15

    .line 1091
    .local v15, "file":Ljava/io/File;
    if-eqz v12, :cond_0

    .line 1092
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1094
    :cond_0
    cmp-long v0, p9, p11

    if-gez v0, :cond_7

    cmp-long v0, p11, p2

    if-gez v0, :cond_1

    goto :goto_3

    .line 1099
    :cond_1
    sub-long v0, p4, p2

    iget-wide v2, v11, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    div-long/2addr v0, v2

    add-long v0, p4, v0

    .line 1101
    if-eqz p14, :cond_2

    const/4 v2, 0x0

    aget-wide v2, p14, v2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    :goto_0
    add-long/2addr v0, v2

    cmp-long v0, p9, v0

    if-gez v0, :cond_4

    .line 1102
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 1111
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    move/from16 v9, p13

    move-object/from16 v10, p14

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;ILjava/lang/String;[Ljava/lang/String;JJI[J)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1103
    :cond_4
    :goto_1
    if-eqz v12, :cond_6

    invoke-interface/range {p16 .. p16}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 1108
    :cond_5
    const/4 v0, 0x0

    return-object v0

    .line 1105
    :cond_6
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1097
    :cond_7
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;ID)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 14
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "filterPackageName"    # Ljava/lang/String;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filterFlags"    # I
    .param p7, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1247
    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const-string/jumbo v0, "na"

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1248
    .local v11, "packageName":Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1249
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1250
    const/4 v0, 0x0

    return-object v0

    .line 1252
    :cond_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    move-object v13, p1

    .line 1253
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v12, "depth":I
    .local v13, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_1
    :goto_0
    invoke-static {v9, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1254
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "op"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1255
    move-object v0, p0

    move-object v1, v13

    move/from16 v2, p2

    move-object v3, v11

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;ID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1257
    .local v0, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v13, :cond_2

    .line 1258
    move-object v1, v0

    move-object v13, v1

    .line 1260
    .end local v0    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_2
    goto :goto_0

    .line 1262
    :cond_3
    return-object v13
.end method

.method private readHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;[Ljava/lang/String;ID)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 14
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "filterUid"    # I
    .param p4, "filterPackageName"    # Ljava/lang/String;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filterFlags"    # I
    .param p7, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1223
    move-object/from16 v9, p2

    move/from16 v10, p3

    const-string/jumbo v0, "na"

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    .line 1224
    .local v11, "uid":I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_0

    if-eq v10, v11, :cond_0

    .line 1225
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1226
    const/4 v0, 0x0

    return-object v0

    .line 1228
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    move-object v13, p1

    .line 1229
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v12, "depth":I
    .local v13, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_1
    :goto_0
    invoke-static {v9, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1230
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pkg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    move-object v0, p0

    move-object v1, v13

    move v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;ID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1234
    .local v0, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v13, :cond_2

    .line 1235
    move-object v1, v0

    move-object v13, v1

    .line 1237
    .end local v0    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_2
    goto :goto_0

    .line 1239
    :cond_3
    return-object v13
.end method

.method private readStateDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILorg/xmlpull/v1/XmlPullParser;ID)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 22
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # I
    .param p5, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p6, "filterFlags"    # I
    .param p7, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1291
    move-object/from16 v0, p5

    const-string/jumbo v1, "na"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v1

    .line 1292
    .local v1, "key":J
    invoke-static {v1, v2}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v3

    and-int v3, v3, p6

    .line 1293
    .local v3, "flags":I
    if-nez v3, :cond_0

    .line 1294
    const/4 v4, 0x0

    return-object v4

    .line 1296
    :cond_0
    invoke-static {v1, v2}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v12

    .line 1297
    .local v12, "uidState":I
    const-wide/16 v13, 0x0

    const-string v4, "ac"

    invoke-static {v0, v4, v13, v14}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1298
    .local v4, "accessCount":J
    cmp-long v6, v4, v13

    if-lez v6, :cond_3

    .line 1299
    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1300
    long-to-double v6, v4

    mul-double v6, v6, p7

    invoke-static {v6, v7}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v6

    double-to-long v4, v6

    move-wide v15, v4

    goto :goto_0

    .line 1299
    :cond_1
    move-wide v15, v4

    .line 1303
    .end local v4    # "accessCount":J
    .local v15, "accessCount":J
    :goto_0
    if-nez p1, :cond_2

    .line 1304
    new-instance v4, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v4, v13, v14, v13, v14}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object/from16 v17, v4

    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v4, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_1

    .line 1303
    .end local v4    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_2
    move-object/from16 v17, p1

    .line 1306
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v17, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_1
    move-object/from16 v4, v17

    move/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p3

    move v8, v12

    move v9, v3

    move-wide v10, v15

    invoke-virtual/range {v4 .. v11}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;IIJ)V

    goto :goto_2

    .line 1298
    .end local v15    # "accessCount":J
    .end local v17    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v4, "accessCount":J
    .restart local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_3
    move-object/from16 v17, p1

    move-wide v15, v4

    .line 1308
    .end local v4    # "accessCount":J
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v15    # "accessCount":J
    .restart local v17    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_2
    const-string/jumbo v4, "rc"

    invoke-static {v0, v4, v13, v14}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1309
    .local v4, "rejectCount":J
    cmp-long v6, v4, v13

    if-lez v6, :cond_6

    .line 1310
    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1311
    long-to-double v6, v4

    mul-double v6, v6, p7

    invoke-static {v6, v7}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v6

    double-to-long v4, v6

    move-wide/from16 v18, v4

    goto :goto_3

    .line 1310
    :cond_4
    move-wide/from16 v18, v4

    .line 1314
    .end local v4    # "rejectCount":J
    .local v18, "rejectCount":J
    :goto_3
    if-nez v17, :cond_5

    .line 1315
    new-instance v4, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v4, v13, v14, v13, v14}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object/from16 v17, v4

    .line 1317
    :cond_5
    move-object/from16 v4, v17

    move/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p3

    move v8, v12

    move v9, v3

    move-wide/from16 v10, v18

    invoke-virtual/range {v4 .. v11}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;IIJ)V

    goto :goto_4

    .line 1309
    .end local v18    # "rejectCount":J
    .restart local v4    # "rejectCount":J
    :cond_6
    move-wide/from16 v18, v4

    .line 1319
    .end local v4    # "rejectCount":J
    .restart local v18    # "rejectCount":J
    :goto_4
    const-string v4, "du"

    invoke-static {v0, v4, v13, v14}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1320
    .local v4, "accessDuration":J
    cmp-long v6, v4, v13

    if-lez v6, :cond_9

    .line 1321
    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1322
    long-to-double v6, v4

    mul-double v6, v6, p7

    invoke-static {v6, v7}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v6

    double-to-long v4, v6

    move-wide/from16 v20, v4

    goto :goto_5

    .line 1321
    :cond_7
    move-wide/from16 v20, v4

    .line 1325
    .end local v4    # "accessDuration":J
    .local v20, "accessDuration":J
    :goto_5
    if-nez v17, :cond_8

    .line 1326
    new-instance v4, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v4, v13, v14, v13, v14}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object/from16 v17, v4

    .line 1328
    :cond_8
    move-object/from16 v4, v17

    move/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p3

    move v8, v12

    move v9, v3

    move-wide/from16 v10, v20

    invoke-virtual/range {v4 .. v11}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;IIJ)V

    move-wide/from16 v4, v20

    .line 1330
    .end local v20    # "accessDuration":J
    .restart local v4    # "accessDuration":J
    :cond_9
    return-object v17
.end method

.method private readeHistoricalOpsDLocked(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;[Ljava/lang/String;JJI[J)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 22
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterOpNames"    # [Ljava/lang/String;
    .param p5, "filterBeginTimeMillis"    # J
    .param p7, "filterEndTimeMillis"    # J
    .param p9, "filterFlags"    # I
    .param p10, "cumulativeOverflowMillis"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1181
    move-object/from16 v9, p1

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    const-wide/16 v0, 0x0

    const-string v2, "beg"

    invoke-static {v9, v2, v0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1182
    const/4 v4, 0x0

    if-eqz p10, :cond_0

    aget-wide v5, p10, v4

    goto :goto_0

    :cond_0
    move-wide v5, v0

    :goto_0
    add-long v14, v2, v5

    .line 1183
    .local v14, "beginTimeMillis":J
    const-string v2, "end"

    invoke-static {v9, v2, v0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1184
    if-eqz p10, :cond_1

    aget-wide v4, p10, v4

    goto :goto_1

    :cond_1
    move-wide v4, v0

    :goto_1
    add-long v7, v2, v4

    .line 1186
    .local v7, "endTimeMillis":J
    cmp-long v2, v12, v14

    if-gez v2, :cond_2

    .line 1187
    const/4 v0, 0x0

    return-object v0

    .line 1190
    :cond_2
    cmp-long v2, v10, v7

    if-lez v2, :cond_3

    .line 1191
    new-instance v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v2, v0, v1, v0, v1}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    return-object v2

    .line 1193
    :cond_3
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1194
    .local v5, "filteredBeginTimeMillis":J
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 1199
    .local v3, "filteredEndTimeMillis":J
    sub-long v0, v3, v5

    long-to-double v0, v0

    move-wide/from16 v16, v3

    .end local v3    # "filteredEndTimeMillis":J
    .local v16, "filteredEndTimeMillis":J
    sub-long v2, v7, v14

    long-to-double v2, v2

    div-double v18, v0, v2

    .line 1201
    .local v18, "filterScale":D
    const/4 v0, 0x0

    .line 1202
    .local v0, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move-object v3, v0

    .line 1203
    .end local v0    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v3, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v4, "depth":I
    :goto_2
    invoke-static {v9, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1204
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1205
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    move-object v11, v3

    move-wide/from16 v9, v16

    .end local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v16    # "filteredEndTimeMillis":J
    .local v9, "filteredEndTimeMillis":J
    .local v11, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    move/from16 v3, p2

    move/from16 v16, v4

    .end local v4    # "depth":I
    .local v16, "depth":I
    move-object/from16 v4, p3

    move-wide v12, v5

    .end local v5    # "filteredBeginTimeMillis":J
    .local v12, "filteredBeginTimeMillis":J
    move-object/from16 v5, p4

    move/from16 v6, p9

    move-wide/from16 v20, v7

    .end local v7    # "endTimeMillis":J
    .local v20, "endTimeMillis":J
    move-wide/from16 v7, v18

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;[Ljava/lang/String;ID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1207
    .local v0, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v11, :cond_4

    .line 1208
    move-object v3, v0

    .end local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_3

    .line 1207
    .end local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_4
    move-object v3, v11

    .line 1210
    .end local v0    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_3
    move-wide v5, v12

    move/from16 v4, v16

    move-wide/from16 v7, v20

    move-wide/from16 v12, p7

    move-wide/from16 v16, v9

    move-object/from16 v9, p1

    move-wide/from16 v10, p5

    goto :goto_2

    .line 1204
    .end local v9    # "filteredEndTimeMillis":J
    .end local v12    # "filteredBeginTimeMillis":J
    .end local v20    # "endTimeMillis":J
    .restart local v4    # "depth":I
    .restart local v5    # "filteredBeginTimeMillis":J
    .restart local v7    # "endTimeMillis":J
    .local v16, "filteredEndTimeMillis":J
    :cond_5
    move-object v11, v3

    move-wide v12, v5

    move-wide/from16 v20, v7

    move-wide/from16 v9, v16

    move/from16 v16, v4

    .end local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "depth":I
    .end local v5    # "filteredBeginTimeMillis":J
    .end local v7    # "endTimeMillis":J
    .restart local v9    # "filteredEndTimeMillis":J
    .restart local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v12    # "filteredBeginTimeMillis":J
    .local v16, "depth":I
    .restart local v20    # "endTimeMillis":J
    move-wide/from16 v12, p7

    move-wide/from16 v16, v9

    move-object/from16 v9, p1

    move-wide/from16 v10, p5

    goto :goto_2

    .line 1212
    .end local v9    # "filteredEndTimeMillis":J
    .end local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v12    # "filteredBeginTimeMillis":J
    .end local v20    # "endTimeMillis":J
    .restart local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4    # "depth":I
    .restart local v5    # "filteredBeginTimeMillis":J
    .restart local v7    # "endTimeMillis":J
    .local v16, "filteredEndTimeMillis":J
    :cond_6
    move-object v11, v3

    move-wide v12, v5

    move-wide/from16 v20, v7

    move-wide/from16 v9, v16

    move/from16 v16, v4

    .end local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "depth":I
    .end local v5    # "filteredBeginTimeMillis":J
    .end local v7    # "endTimeMillis":J
    .restart local v9    # "filteredEndTimeMillis":J
    .restart local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v12    # "filteredBeginTimeMillis":J
    .local v16, "depth":I
    .restart local v20    # "endTimeMillis":J
    if-eqz v11, :cond_7

    .line 1213
    invoke-virtual {v11, v12, v13, v9, v10}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 1215
    :cond_7
    return-object v11
.end method

.method private static spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 1
    .param p0, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "spliceRatio"    # D

    .line 1500
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromBeginning(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1504
    .local v0, "splice":Landroid/app/AppOpsManager$HistoricalOps;
    return-object v0
.end method

.method private static spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .locals 1
    .param p0, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "spliceRatio"    # D

    .line 1487
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1491
    .local v0, "splice":Landroid/app/AppOpsManager$HistoricalOps;
    return-object v0
.end method

.method private writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOp;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "op"    # Landroid/app/AppOpsManager$HistoricalOp;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1403
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v0

    .line 1404
    .local v0, "keys":Landroid/util/LongSparseArray;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 1407
    :cond_0
    const-string/jumbo v1, "op"

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1408
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "na"

    invoke-interface {p2, v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1409
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 1410
    .local v3, "keyCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1411
    invoke-virtual {v0, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-direct {p0, p1, v5, v6, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeStateOnLocked(Landroid/app/AppOpsManager$HistoricalOp;JLorg/xmlpull/v1/XmlSerializer;)V

    .line 1410
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1413
    .end local v4    # "i":I
    :cond_1
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1414
    return-void

    .line 1405
    .end local v3    # "keyCount":I
    :cond_2
    :goto_1
    return-void
.end method

.method private writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1366
    const-string/jumbo v0, "ops"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1367
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "beg"

    invoke-interface {p2, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1368
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "end"

    invoke-interface {p2, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1369
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v2

    .line 1370
    .local v2, "uidCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1371
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v4

    .line 1372
    .local v4, "uidOp":Landroid/app/AppOpsManager$HistoricalUidOps;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalUidOps;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1370
    .end local v4    # "uidOp":Landroid/app/AppOpsManager$HistoricalUidOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1374
    .end local v3    # "i":I
    :cond_0
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1375
    return-void
.end method

.method private writeHistoricalOpsDLocked(Ljava/util/List;JLjava/io/File;)V
    .locals 7
    .param p2, "intervalOverflowMillis"    # J
    .param p4, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;J",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1335
    .local p1, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    const-string v0, "history"

    sget-object v1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/AtomicDirectory;->openWrite(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1337
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 1338
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1339
    const-string v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1341
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1342
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1343
    const-string/jumbo v3, "ver"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1344
    const-wide/16 v5, 0x0

    cmp-long v3, p2, v5

    if-eqz v3, :cond_0

    .line 1345
    const-string/jumbo v3, "ov"

    .line 1346
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 1345
    invoke-interface {v2, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1348
    :cond_0
    if-eqz p1, :cond_1

    .line 1349
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1350
    .local v3, "opsCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 1351
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1352
    .local v6, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-direct {p0, v6, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1350
    .end local v6    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1355
    .end local v3    # "opsCount":I
    .end local v5    # "i":I
    :cond_1
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1356
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1357
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicDirectory;->closeWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    nop

    .line 1362
    return-void

    .line 1358
    :catch_0
    move-exception v0

    .line 1359
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicDirectory;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1360
    throw v0
.end method

.method private writeHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalPackageOps;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "packageOps"    # Landroid/app/AppOpsManager$HistoricalPackageOps;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1391
    const-string/jumbo v0, "pkg"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1392
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-interface {p2, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1393
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v2

    .line 1394
    .local v2, "opCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1395
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 1396
    .local v4, "op":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOp;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1394
    .end local v4    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1398
    .end local v3    # "i":I
    :cond_0
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1399
    return-void
.end method

.method private writeHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalUidOps;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "uidOps"    # Landroid/app/AppOpsManager$HistoricalUidOps;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1379
    const-string/jumbo v0, "uid"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1380
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-interface {p2, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1381
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v2

    .line 1382
    .local v2, "packageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1383
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v4

    .line 1384
    .local v4, "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalPackageOps;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1382
    .end local v4    # "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1386
    .end local v3    # "i":I
    :cond_0
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1387
    return-void
.end method

.method private writeStateOnLocked(Landroid/app/AppOpsManager$HistoricalOp;JLorg/xmlpull/v1/XmlSerializer;)V
    .locals 16
    .param p1, "op"    # Landroid/app/AppOpsManager$HistoricalOp;
    .param p2, "key"    # J
    .param p4, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1418
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v2

    .line 1419
    .local v2, "uidState":I
    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v3

    .line 1421
    .local v3, "flags":I
    invoke-virtual {v0, v2, v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessCount(III)J

    move-result-wide v4

    .line 1422
    .local v4, "accessCount":J
    invoke-virtual {v0, v2, v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getRejectCount(III)J

    move-result-wide v6

    .line 1423
    .local v6, "rejectCount":J
    invoke-virtual {v0, v2, v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessDuration(III)J

    move-result-wide v8

    .line 1425
    .local v8, "accessDuration":J
    const-wide/16 v10, 0x0

    cmp-long v12, v4, v10

    if-gtz v12, :cond_0

    cmp-long v12, v6, v10

    if-gtz v12, :cond_0

    cmp-long v12, v8, v10

    if-gtz v12, :cond_0

    .line 1426
    return-void

    .line 1429
    :cond_0
    const-string/jumbo v12, "st"

    const/4 v13, 0x0

    invoke-interface {v1, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1430
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "na"

    invoke-interface {v1, v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1431
    cmp-long v14, v4, v10

    if-lez v14, :cond_1

    .line 1432
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "ac"

    invoke-interface {v1, v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1434
    :cond_1
    cmp-long v14, v6, v10

    if-lez v14, :cond_2

    .line 1435
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "rc"

    invoke-interface {v1, v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1437
    :cond_2
    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    .line 1438
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "du"

    invoke-interface {v1, v13, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1440
    :cond_3
    invoke-interface {v1, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1441
    return-void
.end method


# virtual methods
.method clearHistoryDLocked(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 728
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v0

    .line 730
    .local v0, "historicalOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-nez v0, :cond_0

    .line 731
    return-void

    .line 734
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 735
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 738
    .end local v1    # "index":I
    :cond_1
    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->clearHistoryDLocked()V

    .line 740
    invoke-virtual {p0, v0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 741
    return-void
.end method

.method getLastPersistTimeMillisDLocked()J
    .locals 11

    .line 793
    const/4 v0, 0x0

    .line 795
    .local v0, "baseDir":Ljava/io/File;
    const-wide/16 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    .line 796
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 797
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_5

    array-length v4, v3

    if-lez v4, :cond_5

    .line 798
    const/4 v4, 0x0

    .line 799
    .local v4, "shortestFile":Ljava/io/File;
    array-length v5, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    :goto_0
    const-string v7, ".xml"

    if-ge v6, v5, :cond_3

    :try_start_1
    aget-object v8, v3, v6

    .line 800
    .local v8, "candidate":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 801
    .local v9, "candidateName":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 802
    goto :goto_1

    .line 804
    :cond_0
    if-nez v4, :cond_1

    .line 805
    move-object v4, v8

    goto :goto_1

    .line 806
    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_2

    .line 807
    move-object v4, v8

    .line 799
    .end local v8    # "candidate":Ljava/io/File;
    .end local v9    # "candidateName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 810
    :cond_3
    if-nez v4, :cond_4

    .line 811
    return-wide v1

    .line 813
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 814
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 816
    .local v5, "shortestNameNoExtension":Ljava/lang/String;
    :try_start_2
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-wide v1

    .line 817
    :catch_0
    move-exception v6

    .line 818
    .local v6, "e":Ljava/lang/NumberFormatException;
    return-wide v1

    .line 821
    .end local v4    # "shortestFile":Ljava/io/File;
    .end local v5    # "shortestNameNoExtension":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    :try_start_3
    sget-object v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 825
    .end local v3    # "files":[Ljava/io/File;
    goto :goto_2

    .line 822
    :catchall_0
    move-exception v3

    .line 823
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "Error reading historical app ops. Deleting history."

    invoke-static {v4, v3, v0}, Lcom/android/server/appop/HistoricalRegistry;->access$300(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 824
    sget-object v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 826
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_2
    return-wide v1
.end method

.method persistHistoricalOpsDLocked(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 753
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :try_start_0
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startWrite()Ljava/io/File;

    move-result-object v2

    .line 754
    .local v2, "newBaseDir":Ljava/io/File;
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->getBackupDirectory()Ljava/io/File;

    move-result-object v3

    .line 760
    .local v3, "oldBaseDir":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v5

    .line 761
    .local v5, "oldFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 766
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishWrite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    .end local v2    # "newBaseDir":Ljava/io/File;
    .end local v3    # "oldBaseDir":Ljava/io/File;
    .end local v5    # "oldFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 767
    :catchall_0
    move-exception v0

    .line 768
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    const-string v2, "Failed to write historical app ops, restoring backup"

    invoke-static {v2, v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->access$300(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 769
    sget-object v1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicDirectory;->failWrite()V

    .line 771
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method readHistoryDLocked()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 781
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryRawDLocked()Ljava/util/List;

    move-result-object v0

    .line 783
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v0, :cond_0

    .line 784
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 785
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 786
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 785
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 789
    .end local v1    # "opCount":I
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method readHistoryRawDLocked()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 774
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x7fffffffffffffffL

    const/16 v8, 0x1f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;[Ljava/lang/String;JJI)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

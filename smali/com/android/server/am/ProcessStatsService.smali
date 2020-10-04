.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/procstats/IProcessStats$Stub;
.source "ProcessStatsService.java"


# static fields
.field static final DEBUG:Z = false

.field static final MAX_HISTORIC_STATES:I = 0x8

.field static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-"

.field static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field static WRITE_PERIOD:J


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mBaseDir:Ljava/io/File;

.field mCommitPending:Z

.field mFile:Landroid/util/AtomicFile;

.field mInjectedScreenState:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation
.end field

.field mLastMemOnlyState:I

.field mLastWriteTime:J

.field mMemFactorLowered:Z

.field mPendingWrite:Landroid/os/Parcel;

.field mPendingWriteCommitted:Z

.field mPendingWriteFile:Landroid/util/AtomicFile;

.field final mPendingWriteLock:Ljava/lang/Object;

.field mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field mShuttingDown:Z

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 2
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "file"    # Ljava/io/File;

    .line 92
    invoke-direct {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 81
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 94
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 95
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 96
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 97
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    .line 98
    new-instance v0, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method private dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "aggregateHours"    # I
    .param p5, "now"    # J

    .line 1204
    mul-int/lit8 v0, p4, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1206
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_0

    .line 1207
    return-void

    .line 1209
    :cond_0
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1210
    .local v1, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1211
    .local v2, "stream":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 1212
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1213
    return-void

    .line 1215
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1216
    .local v3, "token":J
    const/16 v5, 0xf

    invoke-virtual {v1, p1, p5, p6, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1217
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1218
    return-void
.end method

.method private dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "aggregateHours"    # J
    .param p4, "now"    # J
    .param p6, "reqPackage"    # Ljava/lang/String;
    .param p7, "isCompact"    # Z
    .param p8, "dumpDetails"    # Z
    .param p9, "dumpFullDetails"    # Z
    .param p10, "dumpAll"    # Z
    .param p11, "activeOnly"    # Z
    .param p12, "section"    # I

    .line 707
    move-object/from16 v10, p1

    const-wide/16 v0, 0x3c

    mul-long v2, p2, v0

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    sget-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    sub-long/2addr v2, v0

    move-object/from16 v11, p0

    invoke-virtual {v11, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 709
    .local v12, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v12, :cond_0

    .line 710
    const-string v0, "Unable to build stats!"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    return-void

    .line 713
    :cond_0
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v13, v0

    .line 714
    .local v13, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v12}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v14, v0

    .line 715
    .local v14, "stream":Ljava/io/InputStream;
    invoke-virtual {v13, v14}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 716
    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 717
    const-string v0, "Failure reading: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    return-void

    .line 720
    :cond_1
    if-eqz p7, :cond_2

    .line 721
    move-object/from16 v15, p6

    move/from16 v9, p12

    invoke-virtual {v13, v10, v15, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    goto :goto_1

    .line 723
    :cond_2
    move-object/from16 v15, p6

    move/from16 v9, p12

    if-nez p8, :cond_4

    if-eqz p9, :cond_3

    goto :goto_0

    .line 727
    :cond_3
    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-wide/from16 v3, p4

    move/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_1

    .line 724
    :cond_4
    :goto_0
    xor-int/lit8 v5, p9, 0x1

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-wide/from16 v3, p4

    move/from16 v6, p8

    move/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    .line 730
    :goto_1
    return-void
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 733
    const-string v0, "Process stats (procstats) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    const-string v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    const-string v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    const-string v0, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    const-string v0, "    [--start-testing] [--stop-testing] "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    const-string v0, "    [--pretend-screen-on] [--pretend-screen-off] [--stop-pretend-screen]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    const-string v0, "    [<package.name>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    const-string v0, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    const-string v0, "  -c: print only state in checkin format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    const-string v0, "  --csv: output data suitable for putting in a spreadsheet."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    const-string v0, "  --csv-screen: on, off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    const-string v0, "  --csv-mem: norm, mod, low, crit."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    const-string v0, "    service, home, prev, cached"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    const-string v0, "  --details: dump per-package details, not just summary."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    const-string v0, "  --full-details: dump all timing and active state details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    const-string v0, "  --current: only dump current state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    const-string v0, "  --hours: aggregate over about N last hours."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    const-string v0, "  --last: only show the last committed stats at index N (starting at 1)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    const-string v0, "  --max: for -a, max num of historical batches to print."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    const-string v0, "  --active: only show currently active processes/services."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    const-string v0, "  --commit: commit current stats to disk and reset to start new stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    const-string v0, "  --section: proc|pkg-proc|pkg-svc|pkg-asc|pkg-all|all "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 756
    const-string v0, "    options can be combined to select desired stats"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    const-string v0, "  --reset: reset current stats, without committing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    const-string v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 759
    const-string v0, "  --write: write current in-memory stats to disk."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    const-string v0, "  --read: replace current stats with last-written stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    const-string v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    const-string v0, "  --stop-testing: stop high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    const-string v0, "  --pretend-screen-on: pretend screen is on."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    const-string v0, "  --pretend-screen-off: pretend screen is off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    const-string v0, "  --stop-pretend-screen: forget \"pretend screen\" and use the real state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    const-string v0, "  -a: print everything."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    const-string v0, "  -h: print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method private dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 45
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 789
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 791
    .local v16, "now":J
    const/4 v0, 0x0

    .line 792
    .local v0, "isCheckin":Z
    const/4 v1, 0x0

    .line 793
    .local v1, "isCompact":Z
    const/4 v2, 0x0

    .line 794
    .local v2, "isCsv":Z
    const/4 v3, 0x0

    .line 795
    .local v3, "currentOnly":Z
    const/4 v4, 0x0

    .line 796
    .local v4, "dumpDetails":Z
    const/4 v5, 0x0

    .line 797
    .local v5, "dumpFullDetails":Z
    const/4 v6, 0x0

    .line 798
    .local v6, "dumpAll":Z
    const/4 v7, 0x0

    .line 799
    .local v7, "quit":Z
    const/4 v8, 0x0

    .line 800
    .local v8, "aggregateHours":I
    const/4 v9, 0x0

    .line 801
    .local v9, "lastIndex":I
    const/4 v10, 0x2

    .line 802
    .local v10, "maxNum":I
    const/4 v11, 0x0

    .line 803
    .local v11, "activeOnly":Z
    const/4 v12, 0x0

    .line 804
    .local v12, "reqPackage":Ljava/lang/String;
    const/16 v18, 0x0

    .line 805
    .local v18, "csvSepScreenStats":Z
    move/from16 v19, v0

    .end local v0    # "isCheckin":Z
    .local v19, "isCheckin":Z
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 806
    .local v0, "csvScreenStats":[I
    const/16 v20, 0x0

    .line 807
    .local v20, "csvSepMemStats":Z
    move/from16 v21, v8

    .end local v8    # "aggregateHours":I
    .local v21, "aggregateHours":I
    const/4 v8, 0x1

    move-object/from16 v22, v0

    .end local v0    # "csvScreenStats":[I
    .local v22, "csvScreenStats":[I
    new-array v0, v8, [I

    move/from16 v23, v7

    .end local v7    # "quit":Z
    .local v23, "quit":Z
    const/4 v7, 0x0

    const/16 v24, 0x3

    aput v24, v0, v7

    .line 808
    .local v0, "csvMemStats":[I
    const/16 v24, 0x1

    .line 809
    .local v24, "csvSepProcStats":Z
    sget-object v25, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 810
    .local v25, "csvProcStats":[I
    const/16 v26, 0xf

    .line 811
    .local v26, "section":I
    if-eqz v13, :cond_26

    .line 812
    const/16 v27, 0x0

    move/from16 v28, v24

    move/from16 v24, v18

    move/from16 v18, v10

    move-object v10, v0

    move/from16 v44, v2

    move v2, v1

    move/from16 v1, v27

    move/from16 v27, v20

    move/from16 v20, v11

    move v11, v9

    move v9, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move/from16 v3, v44

    .end local v0    # "csvMemStats":[I
    .local v1, "i":I
    .local v2, "isCompact":Z
    .local v3, "isCsv":Z
    .local v4, "currentOnly":Z
    .local v5, "dumpDetails":Z
    .local v6, "dumpFullDetails":Z
    .local v9, "dumpAll":Z
    .local v10, "csvMemStats":[I
    .local v11, "lastIndex":I
    .local v18, "maxNum":I
    .local v20, "activeOnly":Z
    .local v24, "csvSepScreenStats":Z
    .local v27, "csvSepMemStats":Z
    .local v28, "csvSepProcStats":Z
    :goto_0
    array-length v0, v13

    if-ge v1, v0, :cond_25

    .line 813
    aget-object v7, v13, v1

    .line 814
    .local v7, "arg":Ljava/lang/String;
    const-string v0, "--checkin"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 816
    :cond_0
    const-string v0, "-c"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    const/4 v0, 0x1

    move v2, v0

    .end local v2    # "isCompact":Z
    .local v0, "isCompact":Z
    goto/16 :goto_3

    .line 818
    .end local v0    # "isCompact":Z
    .restart local v2    # "isCompact":Z
    :cond_1
    const-string v0, "--csv"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 819
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 820
    :cond_2
    const-string v0, "--csv-screen"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 821
    add-int/lit8 v1, v1, 0x1

    .line 822
    array-length v0, v13

    if-lt v1, v0, :cond_3

    .line 823
    const-string v0, "Error: argument required for --csv-screen"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 825
    return-void

    .line 827
    :cond_3
    new-array v0, v8, [Z

    .line 828
    .local v0, "sep":[Z
    move/from16 v30, v2

    .end local v2    # "isCompact":Z
    .local v30, "isCompact":Z
    new-array v2, v8, [Ljava/lang/String;

    .line 829
    .local v2, "error":[Ljava/lang/String;
    sget-object v8, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    move/from16 v32, v3

    .end local v3    # "isCsv":Z
    .local v32, "isCsv":Z
    const/4 v3, 0x4

    move/from16 v33, v4

    .end local v4    # "currentOnly":Z
    .local v33, "currentOnly":Z
    aget-object v4, v13, v1

    invoke-static {v8, v3, v4, v0, v2}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v3

    .line 831
    .end local v22    # "csvScreenStats":[I
    .local v3, "csvScreenStats":[I
    if-nez v3, :cond_4

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in \""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v13, v1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\": "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 834
    return-void

    .line 836
    :cond_4
    const/4 v8, 0x0

    aget-boolean v0, v0, v8

    .line 837
    .end local v2    # "error":[Ljava/lang/String;
    .end local v24    # "csvSepScreenStats":Z
    .local v0, "csvSepScreenStats":Z
    move/from16 v24, v0

    move-object/from16 v22, v3

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_3

    .end local v0    # "csvSepScreenStats":Z
    .end local v30    # "isCompact":Z
    .end local v32    # "isCsv":Z
    .end local v33    # "currentOnly":Z
    .local v2, "isCompact":Z
    .local v3, "isCsv":Z
    .restart local v4    # "currentOnly":Z
    .restart local v22    # "csvScreenStats":[I
    .restart local v24    # "csvSepScreenStats":Z
    :cond_5
    move/from16 v30, v2

    move/from16 v32, v3

    move/from16 v33, v4

    .end local v2    # "isCompact":Z
    .end local v3    # "isCsv":Z
    .end local v4    # "currentOnly":Z
    .restart local v30    # "isCompact":Z
    .restart local v32    # "isCsv":Z
    .restart local v33    # "currentOnly":Z
    const-string v0, "--csv-mem"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 838
    add-int/lit8 v1, v1, 0x1

    .line 839
    array-length v0, v13

    if-lt v1, v0, :cond_6

    .line 840
    const-string v0, "Error: argument required for --csv-mem"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 842
    return-void

    .line 844
    :cond_6
    const/4 v2, 0x1

    new-array v0, v2, [Z

    .line 845
    .local v0, "sep":[Z
    new-array v3, v2, [Ljava/lang/String;

    .line 846
    .local v3, "error":[Ljava/lang/String;
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v8, v13, v1

    invoke-static {v4, v2, v8, v0, v3}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v4

    .line 848
    .end local v10    # "csvMemStats":[I
    .local v4, "csvMemStats":[I
    if-nez v4, :cond_7

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in \""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v13, v1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\": "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 851
    return-void

    .line 853
    :cond_7
    const/4 v8, 0x0

    aget-boolean v0, v0, v8

    .line 854
    .end local v3    # "error":[Ljava/lang/String;
    .end local v27    # "csvSepMemStats":Z
    .local v0, "csvSepMemStats":Z
    move/from16 v27, v0

    move-object v10, v4

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_3

    .end local v0    # "csvSepMemStats":Z
    .end local v4    # "csvMemStats":[I
    .restart local v10    # "csvMemStats":[I
    .restart local v27    # "csvSepMemStats":Z
    :cond_8
    const-string v0, "--csv-proc"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 855
    add-int/lit8 v1, v1, 0x1

    .line 856
    array-length v0, v13

    if-lt v1, v0, :cond_9

    .line 857
    const-string v0, "Error: argument required for --csv-proc"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 859
    return-void

    .line 861
    :cond_9
    const/4 v2, 0x1

    new-array v0, v2, [Z

    .line 862
    .local v0, "sep":[Z
    new-array v3, v2, [Ljava/lang/String;

    .line 863
    .restart local v3    # "error":[Ljava/lang/String;
    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget-object v8, v13, v1

    invoke-static {v4, v2, v8, v0, v3}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v4

    .line 865
    .end local v25    # "csvProcStats":[I
    .local v4, "csvProcStats":[I
    if-nez v4, :cond_a

    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in \""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v13, v1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\": "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 868
    return-void

    .line 870
    :cond_a
    const/4 v8, 0x0

    aget-boolean v0, v0, v8

    .line 871
    .end local v3    # "error":[Ljava/lang/String;
    .end local v28    # "csvSepProcStats":Z
    .local v0, "csvSepProcStats":Z
    move/from16 v28, v0

    move-object/from16 v25, v4

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_3

    .end local v0    # "csvSepProcStats":Z
    .end local v4    # "csvProcStats":[I
    .restart local v25    # "csvProcStats":[I
    .restart local v28    # "csvSepProcStats":Z
    :cond_b
    const-string v0, "--details"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 872
    const/4 v0, 0x1

    move v5, v0

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    .end local v5    # "dumpDetails":Z
    .local v0, "dumpDetails":Z
    goto/16 :goto_3

    .line 873
    .end local v0    # "dumpDetails":Z
    .restart local v5    # "dumpDetails":Z
    :cond_c
    const-string v0, "--full-details"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 874
    const/4 v0, 0x1

    move v6, v0

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    .end local v6    # "dumpFullDetails":Z
    .local v0, "dumpFullDetails":Z
    goto/16 :goto_3

    .line 875
    .end local v0    # "dumpFullDetails":Z
    .restart local v6    # "dumpFullDetails":Z
    :cond_d
    const-string v0, "--hours"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 876
    add-int/lit8 v1, v1, 0x1

    .line 877
    array-length v0, v13

    if-lt v1, v0, :cond_e

    .line 878
    const-string v0, "Error: argument required for --hours"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 880
    return-void

    .line 883
    :cond_e
    :try_start_0
    aget-object v0, v13, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v21, v0

    .line 888
    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_3

    .line 884
    :catch_0
    move-exception v0

    .line 885
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --hours argument not an int -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v13, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 887
    return-void

    .line 889
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    const-string v0, "--last"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 890
    add-int/lit8 v1, v1, 0x1

    .line 891
    array-length v0, v13

    if-lt v1, v0, :cond_10

    .line 892
    const-string v0, "Error: argument required for --last"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 894
    return-void

    .line 897
    :cond_10
    :try_start_1
    aget-object v0, v13, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v11, v0

    .line 902
    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_3

    .line 898
    :catch_1
    move-exception v0

    .line 899
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --last argument not an int -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v13, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 901
    return-void

    .line 903
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    const-string v0, "--max"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 904
    add-int/lit8 v1, v1, 0x1

    .line 905
    array-length v0, v13

    if-lt v1, v0, :cond_12

    .line 906
    const-string v0, "Error: argument required for --max"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 908
    return-void

    .line 911
    :cond_12
    :try_start_2
    aget-object v0, v13, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v18, v0

    .line 916
    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_3

    .line 912
    :catch_2
    move-exception v0

    .line 913
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --max argument not an int -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v13, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 914
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 915
    return-void

    .line 917
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    const-string v0, "--active"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 918
    const/4 v0, 0x1

    .line 919
    .end local v20    # "activeOnly":Z
    .local v0, "activeOnly":Z
    const/4 v4, 0x1

    move/from16 v20, v0

    move/from16 v2, v30

    move/from16 v3, v32

    .end local v33    # "currentOnly":Z
    .local v4, "currentOnly":Z
    goto/16 :goto_3

    .line 920
    .end local v0    # "activeOnly":Z
    .end local v4    # "currentOnly":Z
    .restart local v20    # "activeOnly":Z
    .restart local v33    # "currentOnly":Z
    :cond_14
    const-string v0, "--current"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 921
    const/4 v4, 0x1

    move/from16 v2, v30

    move/from16 v3, v32

    .end local v33    # "currentOnly":Z
    .restart local v4    # "currentOnly":Z
    goto/16 :goto_3

    .line 922
    .end local v4    # "currentOnly":Z
    .restart local v33    # "currentOnly":Z
    :cond_15
    const-string v0, "--commit"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 923
    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 924
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 925
    invoke-virtual {v14, v4, v4}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 926
    const-string v0, "Process stats committed."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 927
    const/16 v23, 0x1

    .line 928
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 929
    :cond_16
    const-string v0, "--section"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 930
    add-int/lit8 v1, v1, 0x1

    .line 931
    array-length v0, v13

    if-lt v1, v0, :cond_17

    .line 932
    const-string v0, "Error: argument required for --section"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 934
    return-void

    .line 936
    :cond_17
    aget-object v0, v13, v1

    invoke-static {v0}, Lcom/android/server/am/ProcessStatsService;->parseSectionOptions(Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    .end local v26    # "section":I
    .local v0, "section":I
    goto/16 :goto_3

    .line 937
    .end local v0    # "section":I
    .restart local v26    # "section":I
    :cond_18
    const-string v0, "--clear"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 938
    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 939
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 940
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v34, v1

    const/4 v1, 0x1

    const/4 v8, 0x0

    .end local v1    # "i":I
    .local v34, "i":I
    :try_start_6
    invoke-virtual {v0, v3, v4, v1, v8}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 941
    invoke-direct {v14, v8, v1, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 942
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_19

    .line 943
    move v1, v8

    .local v1, "fi":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_19

    .line 944
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 943
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 947
    .end local v1    # "fi":I
    :cond_19
    const-string v1, "All process stats cleared."

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    const/16 v23, 0x1

    .line 949
    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    move/from16 v1, v34

    goto/16 :goto_3

    .end local v34    # "i":I
    .local v1, "i":I
    :catchall_1
    move-exception v0

    move/from16 v34, v1

    .end local v1    # "i":I
    .restart local v34    # "i":I
    :goto_2
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 950
    .end local v34    # "i":I
    .restart local v1    # "i":I
    :cond_1a
    move/from16 v34, v1

    .end local v1    # "i":I
    .restart local v34    # "i":I
    const-string v0, "--write"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 951
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 953
    const-string v0, "Process stats written."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    const/16 v23, 0x1

    .line 955
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    move/from16 v1, v34

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 956
    :cond_1b
    const-string v0, "--read"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 957
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 958
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14, v0, v2}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 959
    const-string v0, "Process stats read."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 960
    const/16 v23, 0x1

    .line 961
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    move/from16 v1, v34

    goto/16 :goto_3

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 962
    :cond_1c
    const-string v0, "--start-testing"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 963
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 964
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    .line 965
    const-string v0, "Started high frequency sampling."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    const/16 v23, 0x1

    .line 967
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    move/from16 v1, v34

    goto/16 :goto_3

    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 968
    :cond_1d
    const-string v0, "--stop-testing"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 969
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 970
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    .line 971
    const-string v0, "Stopped high frequency sampling."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    const/16 v23, 0x1

    .line 973
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    move/from16 v1, v34

    goto/16 :goto_3

    :catchall_6
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 974
    :cond_1e
    const-string v0, "--pretend-screen-on"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 975
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 976
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 977
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 978
    const/16 v23, 0x1

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    move/from16 v1, v34

    goto/16 :goto_3

    .line 977
    :catchall_7
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 979
    :cond_1f
    const-string v0, "--pretend-screen-off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 980
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 981
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 982
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 983
    const/16 v23, 0x1

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    move/from16 v1, v34

    goto/16 :goto_3

    .line 982
    :catchall_8
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 984
    :cond_20
    const-string v0, "--stop-pretend-screen"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 985
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 986
    const/4 v0, 0x0

    iput-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 987
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 988
    const/16 v23, 0x1

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    move/from16 v1, v34

    goto :goto_3

    .line 987
    :catchall_9
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 989
    :cond_21
    const-string v0, "-h"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 990
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 991
    return-void

    .line 992
    :cond_22
    const-string v0, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 993
    const/4 v0, 0x1

    .line 994
    .end local v5    # "dumpDetails":Z
    .local v0, "dumpDetails":Z
    const/4 v1, 0x1

    move v5, v0

    move v9, v1

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    move/from16 v1, v34

    .end local v9    # "dumpAll":Z
    .local v1, "dumpAll":Z
    goto :goto_3

    .line 995
    .end local v0    # "dumpDetails":Z
    .end local v1    # "dumpAll":Z
    .restart local v5    # "dumpDetails":Z
    .restart local v9    # "dumpAll":Z
    :cond_23
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_24

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_24

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 998
    return-void

    .line 1001
    :cond_24
    move-object v0, v7

    .line 1006
    .end local v12    # "reqPackage":Ljava/lang/String;
    .local v0, "reqPackage":Ljava/lang/String;
    const/4 v1, 0x1

    move-object v12, v0

    move v5, v1

    move/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    move/from16 v1, v34

    .line 812
    .end local v0    # "reqPackage":Ljava/lang/String;
    .end local v7    # "arg":Ljava/lang/String;
    .end local v30    # "isCompact":Z
    .end local v32    # "isCsv":Z
    .end local v33    # "currentOnly":Z
    .end local v34    # "i":I
    .local v1, "i":I
    .restart local v2    # "isCompact":Z
    .local v3, "isCsv":Z
    .restart local v4    # "currentOnly":Z
    .restart local v12    # "reqPackage":Ljava/lang/String;
    :goto_3
    const/4 v7, 0x1

    add-int/2addr v1, v7

    move v8, v7

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_25
    move/from16 v34, v1

    move/from16 v30, v2

    move/from16 v32, v3

    move/from16 v33, v4

    .end local v1    # "i":I
    .end local v2    # "isCompact":Z
    .end local v3    # "isCsv":Z
    .end local v4    # "currentOnly":Z
    .restart local v30    # "isCompact":Z
    .restart local v32    # "isCsv":Z
    .restart local v33    # "currentOnly":Z
    .restart local v34    # "i":I
    move v7, v11

    move/from16 v8, v21

    move/from16 v21, v9

    move-object v11, v10

    move-object/from16 v10, v22

    move-object/from16 v9, v25

    move/from16 v22, v18

    move/from16 v25, v24

    move/from16 v18, v5

    move/from16 v24, v20

    move/from16 v20, v6

    move/from16 v6, v26

    goto :goto_4

    .line 811
    .end local v27    # "csvSepMemStats":Z
    .end local v28    # "csvSepProcStats":Z
    .end local v30    # "isCompact":Z
    .end local v32    # "isCsv":Z
    .end local v33    # "currentOnly":Z
    .end local v34    # "i":I
    .local v0, "csvMemStats":[I
    .local v1, "isCompact":Z
    .local v2, "isCsv":Z
    .local v3, "currentOnly":Z
    .local v4, "dumpDetails":Z
    .local v5, "dumpFullDetails":Z
    .local v6, "dumpAll":Z
    .local v9, "lastIndex":I
    .local v10, "maxNum":I
    .local v11, "activeOnly":Z
    .local v18, "csvSepScreenStats":Z
    .local v20, "csvSepMemStats":Z
    .local v24, "csvSepProcStats":Z
    :cond_26
    move/from16 v30, v1

    move/from16 v32, v2

    move/from16 v33, v3

    move v7, v9

    move/from16 v27, v20

    move/from16 v8, v21

    move/from16 v28, v24

    move-object/from16 v9, v25

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v24, v11

    move/from16 v25, v18

    move/from16 v6, v26

    move-object v11, v0

    move/from16 v18, v4

    move-object/from16 v44, v22

    move/from16 v22, v10

    move-object/from16 v10, v44

    .line 1011
    .end local v0    # "csvMemStats":[I
    .end local v1    # "isCompact":Z
    .end local v2    # "isCsv":Z
    .end local v3    # "currentOnly":Z
    .end local v4    # "dumpDetails":Z
    .end local v5    # "dumpFullDetails":Z
    .end local v26    # "section":I
    .local v6, "section":I
    .local v7, "lastIndex":I
    .restart local v8    # "aggregateHours":I
    .local v9, "csvProcStats":[I
    .local v10, "csvScreenStats":[I
    .local v11, "csvMemStats":[I
    .local v18, "dumpDetails":Z
    .local v20, "dumpFullDetails":Z
    .local v21, "dumpAll":Z
    .local v22, "maxNum":I
    .local v24, "activeOnly":Z
    .local v25, "csvSepScreenStats":Z
    .restart local v27    # "csvSepMemStats":Z
    .restart local v28    # "csvSepProcStats":Z
    .restart local v30    # "isCompact":Z
    .restart local v32    # "isCsv":Z
    .restart local v33    # "currentOnly":Z
    :goto_4
    if-eqz v23, :cond_27

    .line 1012
    return-void

    .line 1015
    :cond_27
    if-eqz v32, :cond_2b

    .line 1016
    const-string v0, "Processes running summed over"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1017
    if-nez v25, :cond_28

    .line 1018
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v1, v10

    if-ge v0, v1, :cond_28

    .line 1019
    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1020
    aget v1, v10, v0

    invoke-static {v15, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1018
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1023
    .end local v0    # "i":I
    :cond_28
    if-nez v27, :cond_29

    .line 1024
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    array-length v1, v11

    if-ge v0, v1, :cond_29

    .line 1025
    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1026
    aget v1, v11, v0

    invoke-static {v15, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1024
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1029
    .end local v0    # "i":I
    :cond_29
    if-nez v28, :cond_2a

    .line 1030
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    array-length v1, v9

    if-ge v0, v1, :cond_2a

    .line 1031
    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v2, v9, v0

    aget-object v1, v1, v2

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1030
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1035
    .end local v0    # "i":I
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1036
    iget-object v5, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    .line 1037
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, v25

    move-object/from16 v26, v5

    move-object v5, v10

    move/from16 v34, v6

    .end local v6    # "section":I
    .local v34, "section":I
    move/from16 v6, v27

    move/from16 v35, v7

    .end local v7    # "lastIndex":I
    .local v35, "lastIndex":I
    move-object v7, v11

    move/from16 v36, v8

    .end local v8    # "aggregateHours":I
    .local v36, "aggregateHours":I
    move/from16 v8, v28

    move-object/from16 v37, v9

    .end local v9    # "csvProcStats":[I
    .local v37, "csvProcStats":[I
    move-object/from16 v38, v10

    move-object/from16 v39, v11

    .end local v10    # "csvScreenStats":[I
    .end local v11    # "csvMemStats":[I
    .local v38, "csvScreenStats":[I
    .local v39, "csvMemStats":[I
    move-wide/from16 v10, v16

    move-object/from16 v40, v12

    .end local v12    # "reqPackage":Ljava/lang/String;
    .local v40, "reqPackage":Ljava/lang/String;
    :try_start_17
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z

    .line 1057
    monitor-exit v26
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1058
    return-void

    .line 1057
    :catchall_a
    move-exception v0

    goto :goto_8

    .end local v34    # "section":I
    .end local v35    # "lastIndex":I
    .end local v36    # "aggregateHours":I
    .end local v37    # "csvProcStats":[I
    .end local v38    # "csvScreenStats":[I
    .end local v39    # "csvMemStats":[I
    .end local v40    # "reqPackage":Ljava/lang/String;
    .restart local v6    # "section":I
    .restart local v7    # "lastIndex":I
    .restart local v8    # "aggregateHours":I
    .restart local v9    # "csvProcStats":[I
    .restart local v10    # "csvScreenStats":[I
    .restart local v11    # "csvMemStats":[I
    .restart local v12    # "reqPackage":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object/from16 v26, v5

    move/from16 v34, v6

    move/from16 v35, v7

    move/from16 v36, v8

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    move-object/from16 v39, v11

    move-object/from16 v40, v12

    .end local v6    # "section":I
    .end local v7    # "lastIndex":I
    .end local v8    # "aggregateHours":I
    .end local v9    # "csvProcStats":[I
    .end local v10    # "csvScreenStats":[I
    .end local v11    # "csvMemStats":[I
    .end local v12    # "reqPackage":Ljava/lang/String;
    .restart local v34    # "section":I
    .restart local v35    # "lastIndex":I
    .restart local v36    # "aggregateHours":I
    .restart local v37    # "csvProcStats":[I
    .restart local v38    # "csvScreenStats":[I
    .restart local v39    # "csvMemStats":[I
    .restart local v40    # "reqPackage":Ljava/lang/String;
    :goto_8
    :try_start_18
    monitor-exit v26
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1059
    .end local v34    # "section":I
    .end local v35    # "lastIndex":I
    .end local v36    # "aggregateHours":I
    .end local v37    # "csvProcStats":[I
    .end local v38    # "csvScreenStats":[I
    .end local v39    # "csvMemStats":[I
    .end local v40    # "reqPackage":Ljava/lang/String;
    .restart local v6    # "section":I
    .restart local v7    # "lastIndex":I
    .restart local v8    # "aggregateHours":I
    .restart local v9    # "csvProcStats":[I
    .restart local v10    # "csvScreenStats":[I
    .restart local v11    # "csvMemStats":[I
    .restart local v12    # "reqPackage":Ljava/lang/String;
    :cond_2b
    move/from16 v34, v6

    move/from16 v35, v7

    move/from16 v36, v8

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    move-object/from16 v39, v11

    move-object/from16 v40, v12

    .end local v6    # "section":I
    .end local v7    # "lastIndex":I
    .end local v8    # "aggregateHours":I
    .end local v9    # "csvProcStats":[I
    .end local v10    # "csvScreenStats":[I
    .end local v11    # "csvMemStats":[I
    .end local v12    # "reqPackage":Ljava/lang/String;
    .restart local v34    # "section":I
    .restart local v35    # "lastIndex":I
    .restart local v36    # "aggregateHours":I
    .restart local v37    # "csvProcStats":[I
    .restart local v38    # "csvScreenStats":[I
    .restart local v39    # "csvMemStats":[I
    .restart local v40    # "reqPackage":Ljava/lang/String;
    move/from16 v12, v36

    .end local v36    # "aggregateHours":I
    .local v12, "aggregateHours":I
    if-eqz v12, :cond_2c

    .line 1060
    const-string v0, "AGGREGATED OVER LAST "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " HOURS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    int-to-long v3, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, v16

    move-object/from16 v7, v40

    move/from16 v8, v30

    move/from16 v9, v18

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v26, v12

    .end local v12    # "aggregateHours":I
    .local v26, "aggregateHours":I
    move/from16 v12, v24

    move/from16 v13, v34

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    .line 1063
    return-void

    .line 1064
    .end local v26    # "aggregateHours":I
    .restart local v12    # "aggregateHours":I
    :cond_2c
    move/from16 v26, v12

    .end local v12    # "aggregateHours":I
    .restart local v26    # "aggregateHours":I
    move/from16 v13, v35

    .end local v35    # "lastIndex":I
    .local v13, "lastIndex":I
    if-lez v13, :cond_38

    .line 1065
    const-string v0, "LAST STATS AT INDEX "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-direct {v14, v1, v1, v8}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1067
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v13, v1, :cond_2d

    .line 1068
    const-string v1, "Only have "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " data sets"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    return-void

    .line 1071
    :cond_2d
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v11, v1

    .line 1072
    .local v11, "file":Landroid/util/AtomicFile;
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v12, v1

    .line 1073
    .local v12, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v14, v12, v11}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 1074
    iget-object v1, v12, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 1075
    if-nez v19, :cond_2e

    if-eqz v30, :cond_2f

    :cond_2e
    const-string v1, "err,"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1076
    :cond_2f
    const-string v1, "Failure reading "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    const-string v1, "; "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v12, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    return-void

    .line 1080
    :cond_30
    invoke-virtual {v11}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 1081
    .local v10, "fileStr":Ljava/lang/String;
    const-string v1, ".ci"

    invoke-virtual {v10, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v31

    .line 1082
    .local v31, "checkedIn":Z
    if-nez v19, :cond_37

    if-eqz v30, :cond_31

    move-object/from16 v29, v10

    goto/16 :goto_b

    .line 1086
    :cond_31
    const-string v1, "COMMITTED STATS FROM "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    iget-object v1, v12, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    if-eqz v31, :cond_32

    const-string v1, " (checked in)"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    :cond_32
    const-string v1, ":"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1090
    if-nez v18, :cond_34

    if-eqz v20, :cond_33

    goto :goto_9

    .line 1097
    :cond_33
    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, v40

    move-wide/from16 v4, v16

    move/from16 v6, v24

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    move-object/from16 v29, v10

    move/from16 v9, v34

    move-object/from16 v10, v40

    goto :goto_c

    .line 1091
    :cond_34
    :goto_9
    if-nez v20, :cond_35

    move v6, v8

    goto :goto_a

    :cond_35
    const/4 v6, 0x0

    :goto_a
    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, v40

    move-wide/from16 v4, v16

    move/from16 v7, v18

    move/from16 v8, v21

    move/from16 v9, v24

    move-object/from16 v29, v10

    .end local v10    # "fileStr":Ljava/lang/String;
    .local v29, "fileStr":Ljava/lang/String;
    move/from16 v10, v34

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    .line 1093
    if-eqz v21, :cond_36

    .line 1094
    const-string v1, "  mFile="

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v9, v34

    move-object/from16 v10, v40

    goto :goto_c

    .line 1093
    :cond_36
    move/from16 v9, v34

    move-object/from16 v10, v40

    goto :goto_c

    .line 1082
    .end local v29    # "fileStr":Ljava/lang/String;
    .restart local v10    # "fileStr":Ljava/lang/String;
    :cond_37
    move-object/from16 v29, v10

    .line 1084
    .end local v10    # "fileStr":Ljava/lang/String;
    .restart local v29    # "fileStr":Ljava/lang/String;
    :goto_b
    move/from16 v9, v34

    move-object/from16 v10, v40

    .end local v34    # "section":I
    .end local v40    # "reqPackage":Ljava/lang/String;
    .local v9, "section":I
    .local v10, "reqPackage":Ljava/lang/String;
    invoke-virtual {v12, v15, v10, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1100
    :goto_c
    return-void

    .line 1103
    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "section":I
    .end local v10    # "reqPackage":Ljava/lang/String;
    .end local v11    # "file":Landroid/util/AtomicFile;
    .end local v12    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v29    # "fileStr":Ljava/lang/String;
    .end local v31    # "checkedIn":Z
    .restart local v34    # "section":I
    .restart local v40    # "reqPackage":Ljava/lang/String;
    :cond_38
    move/from16 v9, v34

    move-object/from16 v10, v40

    const/4 v8, 0x1

    .end local v34    # "section":I
    .end local v40    # "reqPackage":Ljava/lang/String;
    .restart local v9    # "section":I
    .restart local v10    # "reqPackage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1104
    .local v1, "sepNeeded":Z
    if-nez v21, :cond_3a

    if-eqz v19, :cond_39

    goto :goto_d

    :cond_39
    move v11, v1

    move/from16 v35, v8

    const/16 v34, 0x0

    goto/16 :goto_1b

    .line 1105
    :cond_3a
    :goto_d
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1107
    if-nez v19, :cond_3b

    move v0, v8

    goto :goto_e

    :cond_3b
    const/4 v0, 0x0

    :goto_e
    const/4 v2, 0x0

    :try_start_19
    invoke-direct {v14, v2, v2, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1a

    move-object v11, v0

    .line 1108
    .local v11, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_48

    .line 1109
    if-eqz v19, :cond_3c

    const/4 v7, 0x0

    goto :goto_f

    :cond_3c
    :try_start_1a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v7, v0, v22

    :goto_f
    move v0, v7

    .line 1110
    .local v0, "start":I
    if-gez v0, :cond_3d

    .line 1111
    const/4 v0, 0x0

    move v12, v0

    goto :goto_10

    .line 1110
    :cond_3d
    move v12, v0

    .line 1113
    .end local v0    # "start":I
    .local v12, "start":I
    :goto_10
    move v0, v12

    move v7, v0

    .local v7, "i":I
    :goto_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_13

    if-ge v7, v0, :cond_47

    .line 1116
    :try_start_1b
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1117
    .local v0, "file":Landroid/util/AtomicFile;
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_12

    const/4 v6, 0x0

    :try_start_1c
    invoke-direct {v2, v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v4, v2

    .line 1118
    .local v4, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v14, v4, v0}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 1119
    iget-object v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    if-eqz v2, :cond_40

    .line 1120
    if-nez v19, :cond_3e

    if-eqz v30, :cond_3f

    :cond_3e
    :try_start_1d
    const-string v2, "err,"

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    :cond_3f
    const-string v2, "Failure reading "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1122
    const-string v2, "; "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1124
    new-instance v2, Ljava/io/File;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    .line 1125
    move/from16 v34, v6

    move v2, v7

    move/from16 v35, v8

    goto/16 :goto_19

    .line 1157
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    :catchall_c
    move-exception v0

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v35, v8

    goto/16 :goto_18

    .line 1127
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_40
    :try_start_1e
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 1128
    .local v5, "fileStr":Ljava/lang/String;
    const-string v2, ".ci"

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    move/from16 v29, v2

    .line 1129
    .local v29, "checkedIn":Z
    if-nez v19, :cond_45

    if-eqz v30, :cond_41

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v35, v8

    move/from16 v36, v9

    move-object/from16 v42, v10

    goto/16 :goto_15

    .line 1133
    :cond_41
    if-eqz v1, :cond_42

    .line 1134
    :try_start_1f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    move/from16 v31, v1

    goto :goto_12

    .line 1136
    :cond_42
    const/4 v1, 0x1

    move/from16 v31, v1

    .line 1138
    .end local v1    # "sepNeeded":Z
    .local v31, "sepNeeded":Z
    :goto_12
    :try_start_20
    const-string v1, "COMMITTED STATS FROM "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1139
    iget-object v1, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    .line 1140
    if-eqz v29, :cond_43

    :try_start_21
    const-string v1, " (checked in)"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    goto :goto_13

    .line 1157
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5    # "fileStr":Ljava/lang/String;
    .end local v29    # "checkedIn":Z
    :catchall_d
    move-exception v0

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v35, v8

    move/from16 v1, v31

    goto/16 :goto_18

    .line 1141
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v5    # "fileStr":Ljava/lang/String;
    .restart local v29    # "checkedIn":Z
    :cond_43
    :goto_13
    :try_start_22
    const-string v1, ":"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    .line 1145
    if-eqz v20, :cond_44

    .line 1146
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object v3, v10

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    .end local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5    # "fileStr":Ljava/lang/String;
    .local v40, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v41, "fileStr":Ljava/lang/String;
    move-wide/from16 v4, v16

    move/from16 v42, v6

    move/from16 v6, v34

    move/from16 v43, v7

    move/from16 v34, v42

    .end local v7    # "i":I
    .local v43, "i":I
    move/from16 v7, v35

    move/from16 v35, v8

    move/from16 v8, v36

    move/from16 v36, v9

    .end local v9    # "section":I
    .local v36, "section":I
    move/from16 v9, v24

    move-object/from16 v42, v10

    .end local v10    # "reqPackage":Ljava/lang/String;
    .local v42, "reqPackage":Ljava/lang/String;
    move/from16 v10, v36

    :try_start_23
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    goto :goto_14

    .line 1149
    .end local v36    # "section":I
    .end local v40    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v41    # "fileStr":Ljava/lang/String;
    .end local v42    # "reqPackage":Ljava/lang/String;
    .end local v43    # "i":I
    .restart local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v5    # "fileStr":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v9    # "section":I
    .restart local v10    # "reqPackage":Ljava/lang/String;
    :cond_44
    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v35, v8

    move/from16 v36, v9

    move-object/from16 v42, v10

    .end local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5    # "fileStr":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "section":I
    .end local v10    # "reqPackage":Ljava/lang/String;
    .restart local v36    # "section":I
    .restart local v40    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v41    # "fileStr":Ljava/lang/String;
    .restart local v42    # "reqPackage":Ljava/lang/String;
    .restart local v43    # "i":I
    move-object/from16 v1, v40

    move-object/from16 v2, p1

    move-object/from16 v3, v42

    move-wide/from16 v4, v16

    move/from16 v6, v24

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    .line 1152
    :goto_14
    move/from16 v1, v31

    move/from16 v9, v36

    move-object/from16 v2, v40

    move-object/from16 v10, v42

    goto :goto_16

    .line 1157
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v29    # "checkedIn":Z
    .end local v40    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v41    # "fileStr":Ljava/lang/String;
    :catchall_e
    move-exception v0

    move/from16 v1, v31

    move/from16 v9, v36

    move-object/from16 v10, v42

    goto :goto_18

    .end local v36    # "section":I
    .end local v42    # "reqPackage":Ljava/lang/String;
    .end local v43    # "i":I
    .restart local v7    # "i":I
    .restart local v9    # "section":I
    .restart local v10    # "reqPackage":Ljava/lang/String;
    :catchall_f
    move-exception v0

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v35, v8

    move/from16 v1, v31

    .end local v7    # "i":I
    .end local v9    # "section":I
    .end local v10    # "reqPackage":Ljava/lang/String;
    .restart local v36    # "section":I
    .restart local v42    # "reqPackage":Ljava/lang/String;
    .restart local v43    # "i":I
    goto :goto_18

    .line 1129
    .end local v31    # "sepNeeded":Z
    .end local v36    # "section":I
    .end local v42    # "reqPackage":Ljava/lang/String;
    .end local v43    # "i":I
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local v1    # "sepNeeded":Z
    .restart local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v5    # "fileStr":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v9    # "section":I
    .restart local v10    # "reqPackage":Ljava/lang/String;
    .restart local v29    # "checkedIn":Z
    :cond_45
    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v35, v8

    move/from16 v36, v9

    move-object/from16 v42, v10

    .line 1131
    .end local v4    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5    # "fileStr":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "section":I
    .end local v10    # "reqPackage":Ljava/lang/String;
    .restart local v36    # "section":I
    .restart local v40    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v41    # "fileStr":Ljava/lang/String;
    .restart local v42    # "reqPackage":Ljava/lang/String;
    .restart local v43    # "i":I
    :goto_15
    move/from16 v9, v36

    move-object/from16 v2, v40

    move-object/from16 v10, v42

    .end local v36    # "section":I
    .end local v40    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v42    # "reqPackage":Ljava/lang/String;
    .local v2, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v9    # "section":I
    .restart local v10    # "reqPackage":Ljava/lang/String;
    :try_start_24
    invoke-virtual {v2, v15, v10, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1152
    :goto_16
    if-eqz v19, :cond_46

    .line 1154
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v41

    .end local v41    # "fileStr":Ljava/lang/String;
    .local v6, "fileStr":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".ci"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    goto :goto_17

    .line 1152
    .end local v6    # "fileStr":Ljava/lang/String;
    .restart local v41    # "fileStr":Ljava/lang/String;
    :cond_46
    move-object/from16 v6, v41

    .line 1160
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v2    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v29    # "checkedIn":Z
    .end local v41    # "fileStr":Ljava/lang/String;
    :goto_17
    move/from16 v2, v43

    goto :goto_19

    .line 1157
    :catchall_10
    move-exception v0

    goto :goto_18

    .end local v43    # "i":I
    .restart local v7    # "i":I
    :catchall_11
    move-exception v0

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v35, v8

    goto :goto_18

    :catchall_12
    move-exception v0

    move/from16 v43, v7

    move/from16 v35, v8

    const/16 v34, 0x0

    .line 1158
    .end local v7    # "i":I
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v43    # "i":I
    :goto_18
    :try_start_25
    const-string v2, "**** FAILURE DUMPING STATE: "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v2, v43

    .end local v43    # "i":I
    .local v2, "i":I
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    .line 1113
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_19
    add-int/lit8 v7, v2, 0x1

    move/from16 v8, v35

    .end local v2    # "i":I
    .restart local v7    # "i":I
    goto/16 :goto_11

    :cond_47
    move v2, v7

    move/from16 v35, v8

    const/16 v34, 0x0

    .end local v7    # "i":I
    .restart local v2    # "i":I
    goto :goto_1a

    .line 1164
    .end local v2    # "i":I
    .end local v11    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "start":I
    :catchall_13
    move-exception v0

    move/from16 v29, v9

    move-object/from16 v31, v10

    move/from16 v35, v13

    goto/16 :goto_22

    .line 1108
    .restart local v11    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_48
    move/from16 v35, v8

    const/16 v34, 0x0

    .line 1164
    .end local v11    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1a
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1165
    move v11, v1

    .line 1167
    .end local v1    # "sepNeeded":Z
    .local v11, "sepNeeded":Z
    :goto_1b
    if-nez v19, :cond_51

    .line 1168
    iget-object v12, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_18

    .line 1169
    if-eqz v30, :cond_49

    .line 1170
    :try_start_27
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, v15, v10, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    move/from16 v29, v9

    move-object/from16 v31, v10

    move/from16 v34, v11

    goto/16 :goto_1f

    .line 1187
    :catchall_14
    move-exception v0

    move/from16 v29, v9

    move-object/from16 v31, v10

    move/from16 v35, v13

    goto/16 :goto_20

    .line 1172
    :cond_49
    if-eqz v11, :cond_4a

    .line 1173
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_14

    .line 1175
    :cond_4a
    :try_start_28
    const-string v0, "CURRENT STATS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_18

    .line 1176
    if-nez v18, :cond_4c

    if-eqz v20, :cond_4b

    goto :goto_1c

    .line 1183
    :cond_4b
    :try_start_29
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v2, p1

    move-object v3, v10

    move-wide/from16 v4, v16

    move/from16 v6, v24

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_14

    move/from16 v29, v9

    move-object/from16 v31, v10

    goto :goto_1e

    .line 1177
    :cond_4c
    :goto_1c
    :try_start_2a
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_18

    if-nez v20, :cond_4d

    move/from16 v6, v35

    goto :goto_1d

    :cond_4d
    move/from16 v6, v34

    :goto_1d
    move-object/from16 v2, p1

    move-object v3, v10

    move-wide/from16 v4, v16

    move/from16 v7, v18

    move/from16 v8, v21

    move/from16 v29, v9

    .end local v9    # "section":I
    .local v29, "section":I
    move/from16 v9, v24

    move-object/from16 v31, v10

    .end local v10    # "reqPackage":Ljava/lang/String;
    .local v31, "reqPackage":Ljava/lang/String;
    move/from16 v10, v29

    :try_start_2b
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_17

    .line 1179
    if-eqz v21, :cond_4e

    .line 1180
    :try_start_2c
    const-string v0, "  mFile="

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_15

    goto :goto_1e

    .line 1187
    :catchall_15
    move-exception v0

    move/from16 v35, v13

    goto :goto_20

    .line 1185
    :cond_4e
    :goto_1e
    const/4 v11, 0x1

    move/from16 v34, v11

    .line 1187
    .end local v11    # "sepNeeded":Z
    .local v34, "sepNeeded":Z
    :goto_1f
    :try_start_2d
    monitor-exit v12
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1188
    if-nez v33, :cond_50

    .line 1189
    if-eqz v34, :cond_4f

    .line 1190
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1192
    :cond_4f
    const-string v0, "AGGREGATED OVER LAST 24 HOURS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    const-wide/16 v3, 0x18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, v16

    move-object/from16 v7, v31

    move/from16 v8, v30

    move/from16 v9, v18

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v24

    move/from16 v35, v13

    .end local v13    # "lastIndex":I
    .restart local v35    # "lastIndex":I
    move/from16 v13, v29

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    .line 1195
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1196
    const-string v0, "AGGREGATED OVER LAST 3 HOURS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1197
    const-wide/16 v3, 0x3

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    goto :goto_21

    .line 1188
    .end local v35    # "lastIndex":I
    .restart local v13    # "lastIndex":I
    :cond_50
    move/from16 v35, v13

    .end local v13    # "lastIndex":I
    .restart local v35    # "lastIndex":I
    goto :goto_21

    .line 1187
    .end local v35    # "lastIndex":I
    .restart local v13    # "lastIndex":I
    :catchall_16
    move-exception v0

    move/from16 v35, v13

    move/from16 v11, v34

    .end local v13    # "lastIndex":I
    .restart local v35    # "lastIndex":I
    goto :goto_20

    .end local v34    # "sepNeeded":Z
    .end local v35    # "lastIndex":I
    .restart local v11    # "sepNeeded":Z
    .restart local v13    # "lastIndex":I
    :catchall_17
    move-exception v0

    move/from16 v35, v13

    .end local v13    # "lastIndex":I
    .restart local v35    # "lastIndex":I
    goto :goto_20

    .end local v29    # "section":I
    .end local v31    # "reqPackage":Ljava/lang/String;
    .end local v35    # "lastIndex":I
    .restart local v9    # "section":I
    .restart local v10    # "reqPackage":Ljava/lang/String;
    .restart local v13    # "lastIndex":I
    :catchall_18
    move-exception v0

    move/from16 v29, v9

    move-object/from16 v31, v10

    move/from16 v35, v13

    .end local v9    # "section":I
    .end local v10    # "reqPackage":Ljava/lang/String;
    .end local v13    # "lastIndex":I
    .restart local v29    # "section":I
    .restart local v31    # "reqPackage":Ljava/lang/String;
    .restart local v35    # "lastIndex":I
    :goto_20
    :try_start_2e
    monitor-exit v12
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_19
    move-exception v0

    goto :goto_20

    .line 1167
    .end local v29    # "section":I
    .end local v31    # "reqPackage":Ljava/lang/String;
    .end local v35    # "lastIndex":I
    .restart local v9    # "section":I
    .restart local v10    # "reqPackage":Ljava/lang/String;
    .restart local v13    # "lastIndex":I
    :cond_51
    move/from16 v29, v9

    move-object/from16 v31, v10

    move/from16 v35, v13

    .end local v9    # "section":I
    .end local v10    # "reqPackage":Ljava/lang/String;
    .end local v13    # "lastIndex":I
    .restart local v29    # "section":I
    .restart local v31    # "reqPackage":Ljava/lang/String;
    .restart local v35    # "lastIndex":I
    move/from16 v34, v11

    .line 1201
    .end local v11    # "sepNeeded":Z
    .restart local v34    # "sepNeeded":Z
    :goto_21
    return-void

    .line 1164
    .end local v29    # "section":I
    .end local v31    # "reqPackage":Ljava/lang/String;
    .end local v34    # "sepNeeded":Z
    .end local v35    # "lastIndex":I
    .restart local v1    # "sepNeeded":Z
    .restart local v9    # "section":I
    .restart local v10    # "reqPackage":Ljava/lang/String;
    .restart local v13    # "lastIndex":I
    :catchall_1a
    move-exception v0

    move/from16 v29, v9

    move-object/from16 v31, v10

    move/from16 v35, v13

    .end local v9    # "section":I
    .end local v10    # "reqPackage":Ljava/lang/String;
    .end local v13    # "lastIndex":I
    .restart local v29    # "section":I
    .restart local v31    # "reqPackage":Ljava/lang/String;
    .restart local v35    # "lastIndex":I
    :goto_22
    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x4
    .end array-data
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1221
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1225
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v8, v2

    .line 1227
    .local v8, "now":J
    const-wide v2, 0x10b00000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1228
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/16 v5, 0xf

    invoke-virtual {v4, v0, v8, v9, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1229
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1230
    .end local v2    # "token":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1233
    const-wide v3, 0x10b00000002L

    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, v0

    move-wide v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 1236
    const-wide v3, 0x10b00000003L

    const/16 v5, 0x18

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 1238
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1239
    return-void

    .line 1230
    .end local v8    # "now":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private getCommittedFiles(IZZ)Ljava/util/ArrayList;
    .locals 7
    .param p1, "minNum"    # I
    .param p2, "inclCurrent"    # Z
    .param p3, "inclCheckedIn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 393
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_4

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_2

    .line 396
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 397
    .local v1, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "currentFile":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 400
    aget-object v4, v0, v3

    .line 401
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, "fileStr":Ljava/lang/String;
    if-nez p3, :cond_1

    const-string v6, ".ci"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 405
    goto :goto_1

    .line 407
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 409
    goto :goto_1

    .line 411
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileStr":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 413
    .end local v3    # "i":I
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 414
    return-object v1

    .line 394
    .end local v1    # "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "currentFile":Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method static parseSectionOptions(Ljava/lang/String;)I
    .locals 9
    .param p0, "optionsStr"    # Ljava/lang/String;

    .line 489
    const-string v0, ","

    .line 490
    .local v0, "sep":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "sectionsStr":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_0

    .line 492
    const/16 v2, 0xf

    return v2

    .line 494
    :cond_0
    const/4 v2, 0x0

    .line 495
    .local v2, "res":I
    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS_STR:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 496
    .local v3, "optionStrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 497
    .local v6, "sectionStr":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 498
    .local v7, "optionIndex":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 499
    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS:[I

    aget v8, v8, v7

    or-int/2addr v2, v8

    .line 496
    .end local v6    # "sectionStr":Ljava/lang/String;
    .end local v7    # "optionIndex":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 502
    :cond_2
    return v2
.end method

.method static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .locals 10
    .param p0, "states"    # [Ljava/lang/String;
    .param p1, "mult"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "outSep"    # [Z
    .param p4, "outError"    # [Ljava/lang/String;

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 451
    .local v1, "lastPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_8

    .line 452
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v4

    .line 453
    .local v3, "c":C
    :goto_1
    const/16 v5, 0x2c

    if-eq v3, v5, :cond_1

    const/16 v6, 0x2b

    if-eq v3, v6, :cond_1

    const/16 v6, 0x20

    if-eq v3, v6, :cond_1

    if-eqz v3, :cond_1

    .line 454
    goto :goto_6

    .line 456
    :cond_1
    if-ne v3, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v4

    .line 457
    .local v5, "isSep":Z
    :goto_2
    const/4 v6, 0x0

    if-nez v1, :cond_3

    .line 459
    aput-boolean v5, p3, v4

    goto :goto_3

    .line 460
    :cond_3
    if-eqz v3, :cond_4

    aget-boolean v7, p3, v4

    if-eq v7, v5, :cond_4

    .line 461
    const-string v7, "inconsistent separators (can\'t mix \',\' with \'+\')"

    aput-object v7, p4, v4

    .line 462
    return-object v6

    .line 464
    :cond_4
    :goto_3
    add-int/lit8 v7, v2, -0x1

    if-ge v1, v7, :cond_7

    .line 465
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 466
    .local v7, "str":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    array-length v9, p0

    if-ge v8, v9, :cond_6

    .line 467
    aget-object v9, p0, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 468
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    const/4 v7, 0x0

    .line 470
    goto :goto_5

    .line 466
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 473
    .end local v8    # "j":I
    :cond_6
    :goto_5
    if-eqz v7, :cond_7

    .line 474
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid word \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, p4, v4

    .line 475
    return-object v6

    .line 478
    .end local v7    # "str":Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .line 451
    .end local v3    # "c":C
    .end local v5    # "isSep":Z
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    .end local v2    # "i":I
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 482
    .local v2, "finalRes":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 483
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v4, p1

    aput v4, v2, v3

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 485
    .end local v3    # "i":I
    :cond_9
    return-object v2
.end method

.method private protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "stats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "section"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 609
    .local v6, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v7, Lcom/android/server/am/ProcessStatsService$3;

    const-string v2, "ProcessStats pipe output"

    move-object v0, v7

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 622
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 623
    const/4 v1, 0x0

    aget-object v1, v6, v1

    return-object v1
.end method

.method private updateFile()V
    .locals 5

    .line 283
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 286
    return-void
.end method

.method private writeStateLocked(Z)V
    .locals 2
    .param p1, "sync"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 237
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v0, :cond_0

    .line 238
    return-void

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 241
    .local v0, "commitPending":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 242
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 243
    return-void
.end method


# virtual methods
.method public addSysMemUsageLocked(JJJJJ)V
    .locals 12
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 195
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 196
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 773
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ProcessStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    return-void

    .line 776
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 778
    .local v0, "ident":J
    :try_start_0
    array-length v2, p3

    if-lez v2, :cond_1

    const-string v2, "--proto"

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 779
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 781
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 785
    nop

    .line 786
    return-void

    .line 784
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .locals 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "sepScreenStates"    # Z
    .param p4, "screenStates"    # [I
    .param p5, "sepMemStates"    # Z
    .param p6, "memStates"    # [I
    .param p7, "sepProcStates"    # Z
    .param p8, "procStates"    # [I
    .param p9, "now"    # J
    .param p11, "reqPackage"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v9, 0x0

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move-object/from16 v8, p11

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 436
    .local v1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 437
    if-eqz p2, :cond_0

    .line 438
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    :cond_0
    move-object/from16 v10, p1

    move-object v11, v1

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, p8

    move-wide/from16 v18, p9

    invoke-static/range {v10 .. v19}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    .line 442
    const/4 v2, 0x1

    return v2

    .line 444
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getCommittedStats(JIZLjava/util/List;)J
    .locals 20
    .param p1, "highWaterMarkMs"    # J
    .param p3, "section"    # I
    .param p4, "doAggregate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)J"
        }
    .end annotation

    .line 547
    .local p5, "committedStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p5

    const-string/jumbo v4, "state-"

    const-string v5, "ProcessStatsService"

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v7, v0

    .line 551
    .local v7, "mergedStats":Lcom/android/internal/app/procstats/ProcessStats;
    move-wide/from16 v8, p1

    .line 552
    .local v8, "newHighWaterMark":J
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 554
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {v1, v6, v6, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 555
    .local v10, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_6

    .line 556
    const-string/jumbo v11, "yyyy-MM-dd-HH-mm-ss"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    move-wide/from16 v12, p1

    :try_start_1
    invoke-static {v11, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 558
    .local v11, "highWaterMarkStr":Ljava/lang/String;
    new-instance v14, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v14, v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v6, v14

    .line 559
    .local v6, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v0

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_4

    .line 560
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v15, v0

    .line 562
    .local v15, "fileName":Ljava/lang/String;
    nop

    .line 563
    :try_start_2
    invoke-virtual {v15, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 564
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int v0, v0, v16

    move-object/from16 v16, v4

    :try_start_3
    const-string v4, ".bin"

    .line 565
    invoke-virtual {v15, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 562
    invoke-virtual {v15, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "startTimeStr":Ljava/lang/String;
    invoke-virtual {v0, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    .line 567
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v0

    .end local v0    # "startTimeStr":Ljava/lang/String;
    .local v17, "startTimeStr":Ljava/lang/String;
    const/high16 v0, 0x10000000

    invoke-static {v4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 570
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 571
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    .line 572
    invoke-virtual {v6, v4}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 573
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 574
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "highWaterMarkStr":Ljava/lang/String;
    .local v18, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "highWaterMarkStr":Ljava/lang/String;
    :try_start_4
    iget-wide v10, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v10, v10, v8

    if-lez v10, :cond_0

    .line 575
    iget-wide v10, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    move-wide v8, v10

    .line 577
    :cond_0
    if-eqz p4, :cond_1

    .line 578
    invoke-virtual {v7, v6}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    goto :goto_1

    .line 580
    :cond_1
    invoke-direct {v1, v6, v2}, Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    :goto_1
    iget-object v10, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 583
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure reading process stats: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 584
    goto :goto_6

    .line 589
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v17    # "startTimeStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 587
    :catch_1
    move-exception v0

    goto :goto_5

    .line 566
    .end local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "highWaterMarkStr":Ljava/lang/String;
    .local v0, "startTimeStr":Ljava/lang/String;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "highWaterMarkStr":Ljava/lang/String;
    :cond_2
    move-object/from16 v17, v0

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 591
    .end local v0    # "startTimeStr":Ljava/lang/String;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "highWaterMarkStr":Ljava/lang/String;
    .restart local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "highWaterMarkStr":Ljava/lang/String;
    :cond_3
    goto :goto_6

    .line 589
    .end local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "highWaterMarkStr":Ljava/lang/String;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "highWaterMarkStr":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_2

    .line 587
    :catch_3
    move-exception v0

    goto :goto_3

    .line 589
    :catch_4
    move-exception v0

    move-object/from16 v16, v4

    :goto_2
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "highWaterMarkStr":Ljava/lang/String;
    .restart local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "highWaterMarkStr":Ljava/lang/String;
    goto :goto_4

    .line 587
    .end local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "highWaterMarkStr":Ljava/lang/String;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "highWaterMarkStr":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v16, v4

    :goto_3
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "highWaterMarkStr":Ljava/lang/String;
    .restart local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "highWaterMarkStr":Ljava/lang/String;
    goto :goto_5

    .line 590
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_4
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure to read and parse commit file "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 588
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure opening procstat file "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    nop

    .line 559
    .end local v0    # "e":Ljava/io/IOException;
    .end local v15    # "fileName":Ljava/lang/String;
    :goto_6
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v4, v16

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    goto/16 :goto_0

    .end local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "highWaterMarkStr":Ljava/lang/String;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "highWaterMarkStr":Ljava/lang/String;
    :cond_4
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 593
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "highWaterMarkStr":Ljava/lang/String;
    .end local v14    # "i":I
    .restart local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "highWaterMarkStr":Ljava/lang/String;
    if-eqz p4, :cond_5

    .line 594
    invoke-direct {v1, v7, v2}, Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 596
    :cond_5
    nop

    .line 601
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 596
    return-wide v8

    .line 598
    .end local v6    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v18    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "highWaterMarkStr":Ljava/lang/String;
    :catch_6
    move-exception v0

    goto :goto_8

    .line 555
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    move-wide/from16 v12, p1

    move-object/from16 v18, v10

    .line 601
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    :goto_7
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 602
    goto :goto_9

    .line 601
    :catchall_0
    move-exception v0

    move-wide/from16 v12, p1

    goto :goto_a

    .line 598
    :catch_7
    move-exception v0

    move-wide/from16 v12, p1

    .line 599
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_6
    const-string v4, "Failure opening procstat file"

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 601
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 603
    :goto_9
    return-wide v8

    .line 601
    :catchall_1
    move-exception v0

    :goto_a
    iget-object v4, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getCurrentMemoryState()I
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 700
    iget v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 701
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .line 506
    .local p1, "historic":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 509
    .local v0, "current":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 511
    .local v2, "now":J
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 512
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 513
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 514
    .end local v2    # "now":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 515
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 517
    if-eqz p1, :cond_0

    .line 518
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v5, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 519
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 520
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 522
    :try_start_2
    new-instance v1, Ljava/io/File;

    .line 523
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    .line 522
    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 524
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 527
    nop

    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 525
    :catch_0
    move-exception v1

    .line 526
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "ProcessStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure opening procstat file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 520
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 532
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 533
    nop

    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    return-object v1

    .line 514
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getMemFactorLocked()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # J
    .param p5, "processName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # J
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "className"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 16
    .param p1, "minTime"    # J

    .line 627
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 631
    .local v3, "current":Landroid/os/Parcel;
    iget-object v4, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 632
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 633
    .local v5, "now":J
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 634
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 635
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 636
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v8, v10

    .line 638
    .end local v5    # "now":J
    .local v8, "curTime":J
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 639
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 641
    cmp-long v0, v8, p1

    if-gez v0, :cond_2

    .line 643
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {v1, v7, v7, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v4

    .line 644
    .local v4, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 645
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 646
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats;

    .line 647
    .local v5, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v0

    .line 649
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    iget-wide v10, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v12, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v10, v12

    cmp-long v0, v10, p1

    if-gez v0, :cond_1

    .line 651
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v10, Ljava/io/File;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 652
    .local v0, "file":Landroid/util/AtomicFile;
    add-int/lit8 v6, v6, -0x1

    .line 653
    new-instance v10, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v10, v7}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 654
    .local v10, "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v1, v10, v0}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 655
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-nez v11, :cond_0

    .line 656
    invoke-virtual {v5, v10}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 657
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    .local v11, "sb":Ljava/lang/StringBuilder;
    const-string v12, "Added stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string v12, ", over "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    iget-wide v12, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v14, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v12, v14

    invoke-static {v12, v13, v11}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 663
    const-string v12, "ProcessStatsService"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    nop

    .line 669
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v10    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 665
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local v10    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_0
    const-string v11, "ProcessStatsService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failure reading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "; "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    goto :goto_0

    .line 670
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v10    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v3, v0

    .line 671
    invoke-virtual {v5, v3, v7}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 674
    .end local v4    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 675
    .local v0, "outData":[B
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 676
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 677
    .local v4, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v5, Lcom/android/server/am/ProcessStatsService$4;

    const-string v6, "ProcessStats pipe output"

    invoke-direct {v5, v1, v6, v4, v0}, Lcom/android/server/am/ProcessStatsService$4;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    .line 688
    .local v5, "thr":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 689
    aget-object v2, v4, v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    iget-object v6, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 689
    return-object v2

    .line 693
    .end local v0    # "outData":[B
    .end local v4    # "fds":[Landroid/os/ParcelFileDescriptor;
    .end local v5    # "thr":Ljava/lang/Thread;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "ProcessStatsService"

    const-string v5, "Failed building output pipe"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 693
    nop

    .end local v0    # "e":Ljava/io/IOException;
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 694
    nop

    .line 695
    return-object v2

    .line 693
    :goto_1
    iget-object v2, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 638
    .end local v8    # "curTime":J
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isMemFactorLowered()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 118
    const-string v1, "ProcessStatsService"

    const-string v2, "Process Stats Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :cond_0
    throw v0
.end method

.method performWriteState(J)V
    .locals 8
    .param p1, "initialTime"    # J

    .line 292
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 294
    .local v1, "data":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 295
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 296
    if-nez v1, :cond_0

    .line 297
    monitor-exit v0

    return-void

    .line 299
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 300
    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 301
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 302
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 305
    .local v3, "startTime":J
    const/4 v0, 0x0

    .line 307
    .local v0, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v0, v5

    .line 308
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 309
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 310
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 311
    const-string/jumbo v5, "procstats"

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    add-long/2addr v6, p1

    .line 311
    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 314
    :catch_0
    move-exception v5

    .line 315
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "ProcessStatsService"

    const-string v7, "Error writing process statistics"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    .end local v5    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 320
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 321
    nop

    .line 322
    return-void

    .line 318
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 320
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 302
    .end local v0    # "stream":Ljava/io/FileOutputStream;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "startTime":J
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    .locals 5
    .param p1, "stats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "file"    # Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 327
    const-string v0, "ProcessStatsService"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 328
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 329
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 330
    iget-object v3, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring existing stats; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    return v1

    .line 386
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :cond_0
    nop

    .line 387
    const/4 v0, 0x1

    return v0

    .line 382
    :catchall_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 384
    const-string v3, "Error reading process statistics"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    return v1
.end method

.method public setMemFactorLocked(IZJ)Z
    .locals 11
    .param p1, "memFactor"    # I
    .param p2, "screenOn"    # Z
    .param p3, "now"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 150
    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    .line 151
    iput p1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 152
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 155
    :cond_1
    if-eqz p2, :cond_2

    .line 156
    add-int/lit8 p1, p1, 0x4

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-eq p1, v0, :cond_8

    .line 159
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 160
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    aget-wide v3, v0, v1

    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v5, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    aput-wide v3, v0, v1

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput p1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 164
    iput-wide p3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 165
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 166
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 167
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "ipkg":I
    :goto_1
    if-ltz v1, :cond_7

    .line 168
    nop

    .line 169
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 170
    .local v3, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "iuid":I
    :goto_2
    if-ltz v4, :cond_6

    .line 171
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    .line 172
    .local v5, "vers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .local v6, "iver":I
    :goto_3
    if-ltz v6, :cond_5

    .line 173
    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 174
    .local v7, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v8, v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 175
    .local v8, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v2

    .local v9, "isvc":I
    :goto_4
    if-ltz v9, :cond_4

    .line 176
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ServiceState;

    .line 177
    .local v10, "service":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual {v10, p1, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->setMemFactor(IJ)V

    .line 175
    .end local v10    # "service":Lcom/android/internal/app/procstats/ServiceState;
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 172
    .end local v7    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v8    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    .end local v9    # "isvc":I
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 170
    .end local v5    # "vers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v6    # "iver":I
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 167
    .end local v3    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v4    # "iuid":I
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 182
    .end local v1    # "ipkg":I
    :cond_7
    return v2

    .line 184
    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_8
    return v1
.end method

.method public shouldWriteNowLocked(J)Z
    .locals 8
    .param p1, "now"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 205
    iget-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    sget-wide v2, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v4, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sget-wide v6, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 210
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 212
    :cond_0
    return v1

    .line 214
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public shutdownLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 219
    const-string v0, "ProcessStatsService"

    const-string v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 221
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    .line 223
    return-void
.end method

.method public trimHistoricStatesWriteLocked()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 419
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 420
    .local v2, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 421
    return-void

    .line 423
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 424
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 425
    .local v3, "file":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pruning old procstats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProcessStatsService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 427
    .end local v3    # "file":Ljava/lang/String;
    goto :goto_0

    .line 428
    :cond_1
    return-void
.end method

.method public updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "versionCode"    # J
    .param p6, "processName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 128
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    invoke-virtual {v0, v1, p6}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 129
    return-void
.end method

.method public updateTrackingAssociationsLocked(IJ)V
    .locals 1
    .param p1, "curSeq"    # I
    .param p2, "now"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->updateTrackingAssociationsLocked(IJ)V

    .line 201
    return-void
.end method

.method public writeStateAsyncLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 228
    return-void
.end method

.method public writeStateLocked(ZZ)V
    .locals 8
    .param p1, "sync"    # Z
    .param p2, "commit"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 250
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v3, :cond_2

    .line 251
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 252
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 253
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v1, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 254
    if-eqz p2, :cond_1

    .line 255
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/2addr v6, v5

    iput v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 257
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 258
    new-instance v3, Landroid/util/AtomicFile;

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 259
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 261
    :cond_2
    if-eqz p2, :cond_3

    .line 262
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 263
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    .line 264
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v5, v4}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 266
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 269
    .local v3, "totalTime":J
    if-nez p1, :cond_4

    .line 270
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;J)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    monitor-exit v0

    return-void

    .line 277
    .end local v1    # "now":J
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    .line 280
    return-void

    .line 277
    .end local v3    # "totalTime":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public writeStateSyncLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAm"
        }
    .end annotation

    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 233
    return-void
.end method

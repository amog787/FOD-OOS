.class public final Lcom/android/server/stats/pull/ProcfsMemoryUtil;
.super Ljava/lang/Object;
.source "ProcfsMemoryUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    }
.end annotation


# static fields
.field private static final CMDLINE_OUT:[I

.field private static final STATUS_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1000

    aput v2, v0, v1

    sput-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->CMDLINE_OUT:[I

    .line 26
    const-string v0, "Uid:"

    const-string v1, "VmHWM:"

    const-string v2, "VmRSS:"

    const-string v3, "RssAnon:"

    const-string v4, "VmSwap:"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcessCmdlines()Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    const/16 v0, 0x400

    new-array v0, v0, [I

    .line 79
    .local v0, "pids":[I
    const-string v1, "/proc"

    invoke-static {v1, v0}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v0

    .line 81
    new-instance v1, Landroid/util/SparseArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 82
    .local v1, "cmdlines":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    .line 83
    .local v4, "pid":I
    if-gez v4, :cond_0

    .line 84
    goto :goto_2

    .line 86
    :cond_0
    invoke-static {v4}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "cmdline":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 82
    .end local v4    # "pid":I
    .end local v5    # "cmdline":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_2
    :goto_2
    return-object v1
.end method

.method public static readCmdlineFromProcfs(I)Ljava/lang/String;
    .locals 4
    .param p0, "pid"    # I

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 68
    .local v0, "cmdline":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/cmdline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->CMDLINE_OUT:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    const-string v1, ""

    return-object v1

    .line 71
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    .locals 8
    .param p0, "pid"    # I

    .line 42
    sget-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [J

    .line 43
    .local v0, "output":[J
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    .line 44
    const/4 v4, 0x3

    aput-wide v2, v0, v4

    .line 45
    const/4 v5, 0x4

    aput-wide v2, v0, v5

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    invoke-static {v6, v7, v0}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 47
    aget-wide v6, v0, v1

    cmp-long v6, v6, v2

    if-eqz v6, :cond_1

    aget-wide v6, v0, v4

    cmp-long v6, v6, v2

    if-eqz v6, :cond_1

    aget-wide v6, v0, v5

    cmp-long v2, v6, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v2, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    invoke-direct {v2}, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;-><init>()V

    .line 52
    .local v2, "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    aget-wide v6, v0, v1

    long-to-int v1, v6

    iput v1, v2, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 53
    const/4 v1, 0x1

    aget-wide v6, v0, v1

    long-to-int v1, v6

    iput v1, v2, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    .line 54
    const/4 v1, 0x2

    aget-wide v6, v0, v1

    long-to-int v1, v6

    iput v1, v2, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    .line 55
    aget-wide v3, v0, v4

    long-to-int v1, v3

    iput v1, v2, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    .line 56
    aget-wide v3, v0, v5

    long-to-int v1, v3

    iput v1, v2, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    .line 57
    return-object v2

    .line 49
    .end local v2    # "snapshot":Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

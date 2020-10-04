.class public final Lcom/android/server/am/MemoryStatUtil;
.super Ljava/lang/Object;
.source "MemoryStatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemoryStatUtil$IonAllocations;,
        Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    }
.end annotation


# static fields
.field static final BYTES_IN_KILOBYTE:I = 0x400

.field private static final CACHE_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final DEBUG_SYSTEM_ION_HEAP_FILE:Ljava/lang/String; = "/sys/kernel/debug/ion/heaps/system"

.field private static final DEVICE_HAS_PER_APP_MEMCG:Z

.field private static final ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

.field static final JIFFY_NANOS:J

.field private static final MEMORY_STAT_FILE_FMT:Ljava/lang/String; = "/dev/memcg/apps/uid_%d/pid_%d/memory.stat"

.field private static final PGFAULT:Ljava/util/regex/Pattern;

.field private static final PGFAULT_INDEX:I = 0x9

.field private static final PGMAJFAULT:Ljava/util/regex/Pattern;

.field private static final PGMAJFAULT_INDEX:I = 0xb

.field private static final PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final PROCFS_ANON_RSS_IN_KILOBYTES:Ljava/util/regex/Pattern;

.field private static final PROCFS_RSS_IN_KILOBYTES:Ljava/util/regex/Pattern;

.field private static final PROCFS_SWAP_IN_KILOBYTES:Ljava/util/regex/Pattern;

.field private static final PROC_CMDLINE_FILE_FMT:Ljava/lang/String; = "/proc/%d/cmdline"

.field private static final PROC_STATUS_FILE_FMT:Ljava/lang/String; = "/proc/%d/status"

.field private static final PROC_STAT_FILE_FMT:Ljava/lang/String; = "/proc/%d/stat"

.field private static final RSS_HIGH_WATERMARK_IN_KILOBYTES:Ljava/util/regex/Pattern;

.field private static final RSS_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final START_TIME_INDEX:I = 0x15

.field private static final SWAP_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v2, v0

    sput-wide v2, Lcom/android/server/am/MemoryStatUtil;->JIFFY_NANOS:J

    .line 53
    nop

    .line 54
    const-string/jumbo v0, "ro.config.per_app_memcg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MemoryStatUtil;->DEVICE_HAS_PER_APP_MEMCG:Z

    .line 67
    const-string/jumbo v0, "total_pgfault (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PGFAULT:Ljava/util/regex/Pattern;

    .line 68
    const-string/jumbo v0, "total_pgmajfault (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PGMAJFAULT:Ljava/util/regex/Pattern;

    .line 69
    const-string/jumbo v0, "total_rss (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->RSS_IN_BYTES:Ljava/util/regex/Pattern;

    .line 70
    const-string/jumbo v0, "total_cache (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->CACHE_IN_BYTES:Ljava/util/regex/Pattern;

    .line 71
    const-string/jumbo v0, "total_swap (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->SWAP_IN_BYTES:Ljava/util/regex/Pattern;

    .line 73
    nop

    .line 74
    const-string v0, "VmHWM:\\s*(\\d+)\\s*kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->RSS_HIGH_WATERMARK_IN_KILOBYTES:Ljava/util/regex/Pattern;

    .line 75
    nop

    .line 76
    const-string v0, "VmRSS:\\s*(\\d+)\\s*kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PROCFS_RSS_IN_KILOBYTES:Ljava/util/regex/Pattern;

    .line 77
    nop

    .line 78
    const-string v0, "RssAnon:\\s*(\\d+)\\s*kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PROCFS_ANON_RSS_IN_KILOBYTES:Ljava/util/regex/Pattern;

    .line 79
    nop

    .line 80
    const-string v0, "VmSwap:\\s*(\\d+)\\s*kB"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PROCFS_SWAP_IN_KILOBYTES:Ljava/util/regex/Pattern;

    .line 82
    nop

    .line 83
    const-string v0, "\n\\s*total\\s*(\\d+)\\s*\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    .line 84
    nop

    .line 85
    const-string v0, "\n\\s+\\S+\\s+(\\d+)\\s+(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    .line 84
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasMemcg()Z
    .locals 1

    .line 323
    sget-boolean v0, Lcom/android/server/am/MemoryStatUtil;->DEVICE_HAS_PER_APP_MEMCG:Z

    return v0
.end method

.method static parseCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cmdline"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 260
    if-nez p0, :cond_0

    .line 261
    const-string v0, ""

    return-object v0

    .line 263
    :cond_0
    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 264
    .local v0, "firstNullByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 265
    return-object p0

    .line 267
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static parseIonHeapSizeFromDebugfs(Ljava/lang/String;)J
    .locals 2
    .param p0, "contents"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 276
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    sget-object v0, Lcom/android/server/am/MemoryStatUtil;->ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 277
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static parseMemoryStatFromMemcg(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .locals 3
    .param p0, "memoryStatContents"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 188
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    invoke-direct {v0}, Lcom/android/server/am/MemoryStatUtil$MemoryStat;-><init>()V

    .line 193
    .local v0, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->PGFAULT:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    .line 194
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->PGMAJFAULT:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    .line 195
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->RSS_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    .line 196
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->CACHE_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    .line 197
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->SWAP_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 198
    return-object v0

    .line 189
    .end local v0    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static parseMemoryStatFromProcfs(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .locals 7
    .param p0, "procStatContents"    # Ljava/lang/String;
    .param p1, "procStatusContents"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 208
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 215
    :cond_1
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "splits":[Ljava/lang/String;
    array-length v2, v1

    const/16 v3, 0x18

    if-ge v2, v3, :cond_2

    .line 217
    return-object v0

    .line 221
    :cond_2
    :try_start_0
    new-instance v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    invoke-direct {v2}, Lcom/android/server/am/MemoryStatUtil$MemoryStat;-><init>()V

    .line 222
    .local v2, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    const/16 v3, 0x9

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    .line 223
    const/16 v3, 0xb

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    .line 224
    sget-object v3, Lcom/android/server/am/MemoryStatUtil;->PROCFS_RSS_IN_KILOBYTES:Ljava/util/regex/Pattern;

    .line 225
    invoke-static {v3, p1}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x400

    mul-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    .line 226
    sget-object v3, Lcom/android/server/am/MemoryStatUtil;->PROCFS_ANON_RSS_IN_KILOBYTES:Ljava/util/regex/Pattern;

    .line 227
    invoke-static {v3, p1}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->anonRssInBytes:J

    .line 228
    sget-object v3, Lcom/android/server/am/MemoryStatUtil;->PROCFS_SWAP_IN_KILOBYTES:Ljava/util/regex/Pattern;

    .line 229
    invoke-static {v3, p1}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 230
    const/16 v3, 0x15

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-wide v5, Lcom/android/server/am/MemoryStatUtil;->JIFFY_NANOS:J

    mul-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->startTimeNanos:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    return-object v2

    .line 232
    .end local v2    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ActivityManager"

    const-string v4, "Failed to parse value"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    return-object v0

    .line 212
    .end local v1    # "splits":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    :goto_0
    return-object v0

    .line 209
    :cond_4
    :goto_1
    return-object v0
.end method

.method static parseProcessIonHeapSizesFromDebugfs(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "contents"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/am/MemoryStatUtil$IonAllocations;",
            ">;"
        }
    .end annotation

    .line 288
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 292
    :cond_0
    sget-object v0, Lcom/android/server/am/MemoryStatUtil;->PROCESS_ION_HEAP_SIZE_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 293
    .local v0, "m":Ljava/util/regex/Matcher;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 294
    .local v1, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MemoryStatUtil$IonAllocations;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 297
    .local v3, "pid":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 298
    .local v4, "sizeInBytes":J
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MemoryStatUtil$IonAllocations;

    .line 299
    .local v6, "allocations":Lcom/android/server/am/MemoryStatUtil$IonAllocations;
    if-nez v6, :cond_1

    .line 300
    new-instance v7, Lcom/android/server/am/MemoryStatUtil$IonAllocations;

    invoke-direct {v7}, Lcom/android/server/am/MemoryStatUtil$IonAllocations;-><init>()V

    move-object v6, v7

    .line 301
    invoke-virtual {v1, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    :cond_1
    iput v3, v6, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->pid:I

    .line 304
    iget-wide v7, v6, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->totalSizeInBytes:J

    add-long/2addr v7, v4

    iput-wide v7, v6, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->totalSizeInBytes:J

    .line 305
    iget v7, v6, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->count:I

    add-int/2addr v7, v2

    iput v7, v6, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->count:I

    .line 306
    iget-wide v7, v6, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->maxSizeInBytes:J

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->maxSizeInBytes:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "pid":I
    .end local v4    # "sizeInBytes":J
    .end local v6    # "allocations":Lcom/android/server/am/MemoryStatUtil$IonAllocations;
    goto :goto_1

    .line 307
    :catch_0
    move-exception v2

    .line 308
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ActivityManager"

    const-string v4, "Failed to parse value"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    goto :goto_0

    .line 312
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/MemoryStatUtil$IonAllocations;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 314
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MemoryStatUtil$IonAllocations;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 316
    .end local v3    # "i":I
    :cond_3
    return-object v2

    .line 289
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MemoryStatUtil$IonAllocations;>;"
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/MemoryStatUtil$IonAllocations;>;"
    :cond_4
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static parseVmHWMFromProcfs(Ljava/lang/String;)J
    .locals 4
    .param p0, "procStatusContents"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 244
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    sget-object v0, Lcom/android/server/am/MemoryStatUtil;->RSS_HIGH_WATERMARK_IN_KILOBYTES:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0

    .line 245
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static readCmdlineFromProcfs(I)Ljava/lang/String;
    .locals 4
    .param p0, "pid"    # I

    .line 143
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/proc/%d/cmdline"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/MemoryStatUtil;->parseCmdlineFromProcfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static readFileContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 171
    return-object v2

    .line 175
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "ActivityManager"

    const-string v4, "Failed to read file:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    return-object v2
.end method

.method public static readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 101
    invoke-static {}, Lcom/android/server/am/MemoryStatUtil;->hasMemcg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromMemcg(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromProcfs(I)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static readMemoryStatFromMemcg(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .locals 4
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 111
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "/dev/memcg/apps/uid_%d/pid_%d/memory.stat"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "statPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/MemoryStatUtil;->parseMemoryStatFromMemcg(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v1

    return-object v1
.end method

.method public static readMemoryStatFromProcfs(I)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .locals 5
    .param p0, "pid"    # I

    .line 122
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "/proc/%d/stat"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "statPath":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "/proc/%d/status"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "statusPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/MemoryStatUtil;->parseMemoryStatFromProcfs(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v2

    return-object v2
.end method

.method public static readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/MemoryStatUtil$IonAllocations;",
            ">;"
        }
    .end annotation

    .line 164
    const-string v0, "/sys/kernel/debug/ion/heaps/system"

    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->parseProcessIonHeapSizesFromDebugfs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readRssHighWaterMarkFromProcfs(I)J
    .locals 4
    .param p0, "pid"    # I

    .line 132
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/proc/%d/status"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "statusPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/MemoryStatUtil;->parseVmHWMFromProcfs(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static readSystemIonHeapSizeFromDebugfs()J
    .locals 2

    .line 154
    const-string v0, "/sys/kernel/debug/ion/heaps/system"

    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->parseIonHeapSizeFromDebugfs(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J
    .locals 6
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "input"    # Ljava/lang/String;

    .line 331
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 333
    .local v0, "m":Ljava/util/regex/Matcher;
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide v1

    .line 334
    :catch_0
    move-exception v3

    .line 335
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "ActivityManager"

    const-string v5, "Failed to parse value"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    return-wide v1
.end method

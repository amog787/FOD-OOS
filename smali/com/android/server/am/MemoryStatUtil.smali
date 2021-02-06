.class public final Lcom/android/server/am/MemoryStatUtil;
.super Ljava/lang/Object;
.source "MemoryStatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    }
.end annotation


# static fields
.field private static final CACHE_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final DEVICE_HAS_PER_APP_MEMCG:Z

.field private static final MEMORY_STAT_FILE_FMT:Ljava/lang/String; = "/dev/memcg/apps/uid_%d/pid_%d/memory.stat"

.field static final PAGE_SIZE:I

.field private static final PGFAULT:Ljava/util/regex/Pattern;

.field private static final PGFAULT_INDEX:I = 0x9

.field private static final PGMAJFAULT:Ljava/util/regex/Pattern;

.field private static final PGMAJFAULT_INDEX:I = 0xb

.field private static final PROC_STAT_FILE_FMT:Ljava/lang/String; = "/proc/%d/stat"

.field private static final RSS_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final RSS_IN_PAGES_INDEX:I = 0x17

.field private static final SWAP_IN_BYTES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/am/MemoryStatUtil;->PAGE_SIZE:I

    .line 47
    nop

    .line 48
    const-string/jumbo v0, "ro.config.per_app_memcg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MemoryStatUtil;->DEVICE_HAS_PER_APP_MEMCG:Z

    .line 55
    const-string/jumbo v0, "total_pgfault (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PGFAULT:Ljava/util/regex/Pattern;

    .line 56
    const-string/jumbo v0, "total_pgmajfault (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PGMAJFAULT:Ljava/util/regex/Pattern;

    .line 57
    const-string/jumbo v0, "total_rss (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->RSS_IN_BYTES:Ljava/util/regex/Pattern;

    .line 58
    const-string/jumbo v0, "total_cache (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->CACHE_IN_BYTES:Ljava/util/regex/Pattern;

    .line 59
    const-string/jumbo v0, "total_swap (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->SWAP_IN_BYTES:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasMemcg()Z
    .locals 1

    .line 163
    sget-boolean v0, Lcom/android/server/am/MemoryStatUtil;->DEVICE_HAS_PER_APP_MEMCG:Z

    return v0
.end method

.method static parseMemoryStatFromMemcg(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .locals 3
    .param p0, "memoryStatContents"    # Ljava/lang/String;

    .line 121
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    invoke-direct {v0}, Lcom/android/server/am/MemoryStatUtil$MemoryStat;-><init>()V

    .line 126
    .local v0, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->PGFAULT:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    .line 127
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->PGMAJFAULT:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    .line 128
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->RSS_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    .line 129
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->CACHE_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    .line 130
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->SWAP_IN_BYTES:Ljava/util/regex/Pattern;

    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 131
    return-object v0

    .line 122
    .end local v0    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static parseMemoryStatFromProcfs(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .locals 7
    .param p0, "procStatContents"    # Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "splits":[Ljava/lang/String;
    array-length v2, v1

    const/16 v3, 0x18

    if-ge v2, v3, :cond_1

    .line 145
    return-object v0

    .line 148
    :cond_1
    :try_start_0
    new-instance v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    invoke-direct {v2}, Lcom/android/server/am/MemoryStatUtil$MemoryStat;-><init>()V

    .line 149
    .local v2, "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    const/16 v3, 0x9

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    .line 150
    const/16 v3, 0xb

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    .line 151
    const/16 v3, 0x17

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sget v5, Lcom/android/server/am/MemoryStatUtil;->PAGE_SIZE:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    return-object v2

    .line 153
    .end local v2    # "memoryStat":Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ActivityManager"

    const-string v4, "Failed to parse value"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    return-object v0

    .line 141
    .end local v1    # "splits":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static readFileContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "ActivityManager"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 103
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-object v3

    .line 108
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Failed to read file:"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    return-object v3
.end method

.method public static readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 75
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

    .line 85
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

    .line 86
    .local v0, "statPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/MemoryStatUtil;->parseMemoryStatFromMemcg(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v1

    return-object v1
.end method

.method public static readMemoryStatFromProcfs(I)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .locals 4
    .param p0, "pid"    # I

    .line 96
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/proc/%d/stat"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "statPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/MemoryStatUtil;->readFileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/MemoryStatUtil;->parseMemoryStatFromProcfs(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v1

    return-object v1
.end method

.method private static tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J
    .locals 6
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "input"    # Ljava/lang/String;

    .line 171
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 173
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

    .line 174
    :catch_0
    move-exception v3

    .line 175
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "ActivityManager"

    const-string v5, "Failed to parse value"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    return-wide v1
.end method

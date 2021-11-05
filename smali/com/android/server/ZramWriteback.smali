.class public final Lcom/android/server/ZramWriteback;
.super Landroid/app/job/JobService;
.source "ZramWriteback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ZramWriteback$ZramWBConfigUpdater;
    }
.end annotation


# static fields
.field private static final AFTER_WRITEBACK:I = 0x1

.field private static final BDEV_SYS:Ljava/lang/String; = "/sys/block/zram%d/backing_dev"

.field private static final BEFORE_WRITEBACK:I = 0x0

.field private static final DEBUG:Z = false

.field private static final FIRST_WB_DELAY_PROP:Ljava/lang/String; = "ro.zram.first_wb_delay_mins"

.field private static final FORCE_WRITEBACK_PROP:Ljava/lang/String; = "zram.force_writeback"

.field private static final IDLE_SYS:Ljava/lang/String; = "/sys/block/zram%d/idle"

.field private static final IDLE_SYS_ALL_PAGES:Ljava/lang/String; = "all"

.field private static final LIMIT_ENABLE_SYS:Ljava/lang/String; = "/sys/block/zram%d/writeback_limit_enable"

.field private static final LIMIT_SYS:Ljava/lang/String; = "/sys/block/zram%d/writeback_limit"

.field private static final MARK_IDLE_DELAY_PROP:Ljava/lang/String; = "ro.zram.mark_idle_delay_mins"

.field private static final MARK_IDLE_JOB_ID:I = 0x32b

.field private static final MAX_ZRAM_DEVICES:I = 0x100

.field private static final MDM_ID:Ljava/lang/String; = "W5EBKWNONY"

.field private static final MM_STATS_SYS:Ljava/lang/String; = "/sys/block/zram%d/mm_stat"

.field private static final PERIODIC_WB_DELAY_PROP:Ljava/lang/String; = "ro.zram.periodic_wb_delay_hours"

.field private static final REFRESH_WRITEBACK_LIMIT:I = 0x32d

.field private static final TAG:Ljava/lang/String; = "ZramWriteback"

.field private static final WB_STATS_MAX_FILE_SIZE:I = 0x80

.field private static final WB_STATS_SYS:Ljava/lang/String; = "/sys/block/zram%d/bd_stat"

.field private static final WB_SYS:Ljava/lang/String; = "/sys/block/zram%d/writeback"

.field private static final WB_SYS_IDLE_PAGES:Ljava/lang/String; = "idle"

.field private static final WRITEBACK_IDLE_JOB_ID:I = 0x32c

.field private static isConfigInit:Z

.field private static mConfigLock:Ljava/lang/Object;

.field private static mContext:Landroid/content/Context;

.field private static mInitLock:Ljava/lang/Object;

.field private static sZramDeviceId:I

.field private static final sZramWriteback:Landroid/content/ComponentName;

.field private static writebackFirstMarkInMinute:I

.field private static writebackFirstWBInMinute:I

.field private static writebackLimitInMB:I

.field private static writebackLimitRefreshInMinute:I

.field private static writebackPeriodInMinute:I


# instance fields
.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mZramWBConfigUpdater:Lcom/android/server/ZramWriteback$ZramWBConfigUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/ZramWriteback;

    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    .line 82
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/ZramWriteback;->mInitLock:Ljava/lang/Object;

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/ZramWriteback;->mConfigLock:Ljava/lang/Object;

    .line 86
    sput-boolean v0, Lcom/android/server/ZramWriteback;->isConfigInit:Z

    .line 87
    const/16 v0, 0x1c00

    sput v0, Lcom/android/server/ZramWriteback;->writebackLimitInMB:I

    .line 88
    const/16 v0, 0x5a0

    sput v0, Lcom/android/server/ZramWriteback;->writebackPeriodInMinute:I

    .line 89
    const/16 v1, 0x1e

    sput v1, Lcom/android/server/ZramWriteback;->writebackFirstMarkInMinute:I

    .line 90
    const/16 v1, 0xb4

    sput v1, Lcom/android/server/ZramWriteback;->writebackFirstWBInMinute:I

    .line 91
    sput v0, Lcom/android/server/ZramWriteback;->writebackLimitRefreshInMinute:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/server/ZramWriteback;->mConfigLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ZramWriteback;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ZramWriteback;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/ZramWriteback;->resolveConfigFromJSON_locked(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/server/ZramWriteback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 49
    sget v0, Lcom/android/server/ZramWriteback;->writebackLimitInMB:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ZramWriteback;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ZramWriteback;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/ZramWriteback;->setWritebackLimit_locked(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ZramWriteback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ZramWriteback;

    .line 49
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->markAndFlushPages()V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .line 49
    invoke-static {p0}, Lcom/android/server/ZramWriteback;->schedNextWriteback(Landroid/content/Context;)V

    return-void
.end method

.method private flushIdlePages()V
    .locals 4

    .line 317
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget v1, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/sys/block/zram%d/writeback"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "wbPath":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "idle"

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZramWriteback"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private getMmStatsInfo(I)Ljava/lang/String;
    .locals 5
    .param p1, "zramID"    # I

    .line 223
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/sys/block/zram%d/mm_stat"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "mmStatsPath":Ljava/lang/String;
    const-string v1, ""

    .line 226
    .local v1, "mmStats":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    const-string v4, ""

    .line 227
    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 231
    goto :goto_0

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read writeback stats from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZramWriteback"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 232
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-object v1
.end method

.method private getWbLimitInfo(I)Ljava/lang/String;
    .locals 5
    .param p1, "zramID"    # I

    .line 236
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/sys/block/zram%d/writeback_limit"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "wbLimitPath":Ljava/lang/String;
    const-string v1, ""

    .line 239
    .local v1, "wbLimit":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    const-string v4, ""

    .line 240
    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 244
    goto :goto_0

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read writeback stats from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZramWriteback"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 245
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-object v1
.end method

.method private getWbStatsInfo(I)Ljava/lang/String;
    .locals 5
    .param p1, "zramID"    # I

    .line 210
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/sys/block/zram%d/bd_stat"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "wbStatsPath":Ljava/lang/String;
    const-string v1, ""

    .line 213
    .local v1, "wbStats":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    const-string v4, ""

    .line 214
    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 218
    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read writeback stats from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZramWriteback"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 219
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-object v1
.end method

.method private getWrittenPageCount()I
    .locals 4

    .line 327
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget v1, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/sys/block/zram%d/bd_stat"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "wbStatsPath":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    const-string v3, ""

    .line 330
    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "wbStats":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 332
    .end local v1    # "wbStats":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read writeback stats from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZramWriteback"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v1    # "e":Ljava/io/IOException;
    const/4 v1, -0x1

    return v1
.end method

.method private getZramInfo(II)Ljava/util/HashMap;
    .locals 16
    .param p1, "zramID"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    const-string v1, "ZramWriteback"

    const-string v0, "\\s+"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ZramWriteback;->getWbStatsInfo(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "wbStatsList":[Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ZramWriteback;->getMmStatsInfo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "mmStatsList":[Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/ZramWriteback;->getWbLimitInfo(I)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "wbLimit":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 258
    .local v5, "bootTime":J
    const-wide/16 v7, 0x3e8

    div-long v7, v5, v7

    const-wide/16 v9, 0xe10

    div-long/2addr v7, v9

    const-wide/16 v9, 0x18

    div-long/2addr v7, v9

    .line 260
    .local v7, "bootDay":J
    const-string v9, "enableWB"

    invoke-static {}, Lcom/android/server/ZramWriteback;->isWritebackEnabled()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string/jumbo v9, "stat"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v9, "bootDay"

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    array-length v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x6

    const-string/jumbo v11, "samePages"

    const-string/jumbo v12, "memLimit"

    const-string/jumbo v13, "memUsedTotal"

    const/4 v15, 0x2

    const-string v14, "-1"

    if-lt v9, v10, :cond_0

    .line 265
    :try_start_1
    aget-object v9, v0, v15

    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const/4 v9, 0x3

    aget-object v10, v0, v9

    invoke-virtual {v2, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const/4 v9, 0x5

    aget-object v9, v0, v9

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {v2, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {v2, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :goto_0
    array-length v9, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v10, 0x4

    const/4 v12, 0x0

    const-string v13, "bdWrite"

    const-string v15, "bdReads"

    const-string v11, "bdCount"

    if-lt v9, v10, :cond_1

    .line 275
    :try_start_2
    aget-object v9, v3, v12

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-virtual {v2, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v9, "bdFreed"

    const/4 v10, 0x3

    aget-object v10, v3, v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 279
    :cond_1
    array-length v9, v3

    const/4 v10, 0x3

    if-lt v9, v10, :cond_2

    .line 280
    aget-object v9, v3, v12

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-virtual {v2, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 284
    :cond_2
    invoke-virtual {v2, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string/jumbo v10, "wbLimit"

    if-eqz v9, :cond_3

    .line 290
    :try_start_3
    invoke-virtual {v2, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 292
    :cond_3
    invoke-virtual {v2, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 298
    .end local v0    # "mmStatsList":[Ljava/lang/String;
    .end local v3    # "wbStatsList":[Ljava/lang/String;
    .end local v4    # "wbLimit":Ljava/lang/String;
    .end local v5    # "bootTime":J
    .end local v7    # "bootDay":J
    :goto_2
    goto :goto_3

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get zram info, reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-object v2
.end method

.method private static isWritebackEnabled()Z
    .locals 7

    .line 362
    const-string v0, "ZramWriteback"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/block/zram%d/backing_dev"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    sget v6, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    .line 363
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    const-string v5, ""

    invoke-static {v2, v3, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "backingDev":Ljava/lang/String;
    const-string/jumbo v3, "none"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 365
    return v4

    .line 367
    :cond_0
    const-string v3, "Writeback device is not set"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    nop

    .end local v2    # "backingDev":Ljava/lang/String;
    goto :goto_0

    .line 369
    :catch_0
    move-exception v2

    .line 370
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Writeback is not enabled on zram"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return v1
.end method

.method private markAndFlushPages()V
    .locals 3

    .line 340
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->getWrittenPageCount()I

    move-result v0

    .line 344
    .local v0, "pageCount":I
    sget v1, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/ZramWriteback;->getZramInfo(II)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ZramWriteback;->uploadMDM(Ljava/util/HashMap;)V

    .line 347
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->flushIdlePages()V

    .line 348
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->markPagesAsIdle()V

    .line 352
    sget v1, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/ZramWriteback;->getZramInfo(II)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ZramWriteback;->uploadMDM(Ljava/util/HashMap;)V

    .line 355
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total pages written to disk is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->getWrittenPageCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZramWriteback"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    return-void
.end method

.method private markPagesAsIdle()V
    .locals 4

    .line 307
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget v1, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/sys/block/zram%d/idle"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "idlePath":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "all"

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZramWriteback"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private resolveConfigFromJSON_locked(Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 142
    const-string/jumbo v0, "name"

    const-string v1, "[OnlineConfig] zramWB resolveConfigFromJSON finished"

    const-string v2, "ZramWriteback"

    if-nez p1, :cond_0

    .line 143
    const-string v0, "[OnlineConfig] zramWB resolveConfigFromJSON jsonArray is null, return"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 147
    :cond_0
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 148
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 149
    .local v4, "json":Lorg/json/JSONObject;
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ZramWBLimit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v6, "value"

    if-eqz v5, :cond_1

    .line 150
    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/ZramWriteback;->writebackLimitInMB:I

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] zramWB ZramWBLimit writebackLimitInMB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/ZramWriteback;->writebackLimitInMB:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 152
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "ZramWBPeriodic"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/ZramWriteback;->writebackPeriodInMinute:I

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] zramWB writebackPeriodInMinute:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/ZramWriteback;->writebackPeriodInMinute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "ZramWBFirstMark"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/ZramWriteback;->writebackFirstMarkInMinute:I

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] zramWB writebackFirstMarkInMinute:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/ZramWriteback;->writebackFirstMarkInMinute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    :cond_3
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "ZramWBFirstWB"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 159
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/ZramWriteback;->writebackFirstWBInMinute:I

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] zramWB writebackFirstWBInMinute:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/ZramWriteback;->writebackFirstWBInMinute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v4    # "json":Lorg/json/JSONObject;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 170
    .end local v3    # "index":I
    :cond_5
    :goto_2
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    goto :goto_3

    .line 170
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] zramWB Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 163
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] zramWB JSONException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Lorg/json/JSONException;
    goto :goto_2

    .line 172
    :goto_3
    return-void

    .line 170
    :goto_4
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    throw v0
.end method

.method private static schedNextWriteback(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 376
    const-string/jumbo v0, "ro.zram.periodic_wb_delay_hours"

    const/16 v1, 0x18

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 377
    .local v0, "nextWbDelay":I
    const-string/jumbo v1, "zram.force_writeback"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 378
    .local v1, "forceWb":Z
    const-string/jumbo v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 382
    .local v2, "js":Landroid/app/job/JobScheduler;
    sget-object v3, Lcom/android/server/ZramWriteback;->mConfigLock:Ljava/lang/Object;

    monitor-enter v3

    .line 383
    :try_start_0
    sget v4, Lcom/android/server/ZramWriteback;->writebackPeriodInMinute:I

    if-eqz v4, :cond_0

    .line 384
    sget v4, Lcom/android/server/ZramWriteback;->writebackPeriodInMinute:I

    div-int/lit8 v4, v4, 0x3c

    move v0, v4

    .line 385
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    const/16 v4, 0x32c

    sget-object v5, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    invoke-direct {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v0

    .line 389
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 390
    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 391
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 388
    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 392
    return-void

    .line 385
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static scheduleZramWriteback(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 440
    const-string/jumbo v0, "ro.zram.mark_idle_delay_mins"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 441
    .local v0, "markIdleDelay":I
    const-string/jumbo v1, "ro.zram.first_wb_delay_mins"

    const/16 v2, 0xb4

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 442
    .local v1, "firstWbDelay":I
    const-string/jumbo v2, "zram.force_writeback"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 444
    .local v2, "forceWb":Z
    const-string/jumbo v3, "jobscheduler"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobScheduler;

    .line 448
    .local v3, "js":Landroid/app/job/JobScheduler;
    sget-object v4, Lcom/android/server/ZramWriteback;->mInitLock:Ljava/lang/Object;

    monitor-enter v4

    .line 449
    :try_start_0
    sget-boolean v5, Lcom/android/server/ZramWriteback;->isConfigInit:Z

    if-nez v5, :cond_0

    .line 450
    sput-object p0, Lcom/android/server/ZramWriteback;->mContext:Landroid/content/Context;

    .line 451
    new-instance v5, Lcom/android/server/ZramWriteback;

    invoke-direct {v5}, Lcom/android/server/ZramWriteback;-><init>()V

    .line 452
    .local v5, "mZramWriteback":Lcom/android/server/ZramWriteback;
    invoke-virtual {v5, p0}, Lcom/android/server/ZramWriteback;->registerOnlineConfig(Landroid/content/Context;)V

    .line 453
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/server/ZramWriteback;->isConfigInit:Z

    .line 455
    .end local v5    # "mZramWriteback":Lcom/android/server/ZramWriteback;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 457
    sget-object v5, Lcom/android/server/ZramWriteback;->mConfigLock:Ljava/lang/Object;

    monitor-enter v5

    .line 458
    :try_start_1
    sget v4, Lcom/android/server/ZramWriteback;->writebackFirstMarkInMinute:I

    if-eqz v4, :cond_1

    .line 459
    sget v4, Lcom/android/server/ZramWriteback;->writebackFirstMarkInMinute:I

    move v0, v4

    .line 460
    :cond_1
    sget v4, Lcom/android/server/ZramWriteback;->writebackFirstWBInMinute:I

    if-eqz v4, :cond_2

    .line 461
    sget v4, Lcom/android/server/ZramWriteback;->writebackFirstWBInMinute:I

    move v1, v4

    .line 462
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    const/16 v5, 0x32b

    sget-object v6, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    invoke-direct {v4, v5, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v0

    .line 468
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v0

    .line 469
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 470
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v4

    .line 467
    invoke-virtual {v3, v4}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 475
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    const/16 v5, 0x32c

    sget-object v6, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    invoke-direct {v4, v5, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v1

    .line 476
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 477
    xor-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    .line 478
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v4

    .line 475
    invoke-virtual {v3, v4}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 479
    return-void

    .line 462
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 455
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method private setWritebackLimit_locked(Landroid/content/Context;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "limit"    # I

    .line 177
    const-string v0, "ZramWriteback"

    const-string v1, "/sys/block/zram%d/writeback_limit_enable"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    .line 178
    const-wide/16 v4, 0x8

    .line 179
    .local v4, "MB_to_pages":J
    int-to-long v6, p2

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 181
    .local v6, "limit_l":J
    long-to-int v8, v4

    shl-long/2addr v6, v8

    .line 183
    new-instance v8, Ljava/io/File;

    const-string v9, "/sys/block/zram%d/writeback_limit"

    new-array v10, v3, [Ljava/lang/Object;

    sget v11, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    new-instance v8, Ljava/io/File;

    new-array v3, v3, [Ljava/lang/Object;

    sget v9, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-static {v8, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 187
    .local v1, "js":Landroid/app/job/JobScheduler;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const/16 v3, 0x32d

    sget-object v8, Lcom/android/server/ZramWriteback;->sZramWriteback:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v8}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget v8, Lcom/android/server/ZramWriteback;->writebackLimitRefreshInMinute:I

    int-to-long v8, v8

    .line 188
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget v8, Lcom/android/server/ZramWriteback;->writebackLimitRefreshInMinute:I

    int-to-long v8, v8

    .line 189
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 191
    nop

    .end local v1    # "js":Landroid/app/job/JobScheduler;
    .end local v4    # "MB_to_pages":J
    .end local v6    # "limit_l":J
    goto :goto_0

    .line 192
    :cond_0
    new-instance v4, Ljava/io/File;

    new-array v3, v3, [Ljava/lang/Object;

    sget v5, Lcom/android/server/ZramWriteback;->sZramDeviceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-static {v4, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 193
    const-string v1, "ZramWB disable writebackLimit!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    goto :goto_1

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZramWB Failed to write, caused by:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 199
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private uploadMDM(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p1, "mapInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v0, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "appid"

    const-string v2, "W5EBKWNONY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    sget-object v2, Lcom/android/server/ZramWriteback;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "zram_writeback"

    invoke-virtual {v1, v2, v3, p1, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 397
    invoke-static {}, Lcom/android/server/ZramWriteback;->isWritebackEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 398
    invoke-virtual {p0, p1, v1}, Lcom/android/server/ZramWriteback;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 399
    return v1

    .line 404
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v2, 0x32d

    if-ne v0, v2, :cond_1

    .line 405
    sget-object v0, Lcom/android/server/ZramWriteback;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_0
    sget v2, Lcom/android/server/ZramWriteback;->writebackLimitInMB:I

    invoke-direct {p0, p0, v2}, Lcom/android/server/ZramWriteback;->setWritebackLimit_locked(Landroid/content/Context;I)V

    .line 407
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    invoke-virtual {p0, p1, v1}, Lcom/android/server/ZramWriteback;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 409
    return v1

    .line 407
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 413
    :cond_1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const/16 v2, 0x32b

    if-ne v0, v2, :cond_2

    .line 414
    invoke-direct {p0}, Lcom/android/server/ZramWriteback;->markPagesAsIdle()V

    .line 415
    invoke-virtual {p0, p1, v1}, Lcom/android/server/ZramWriteback;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 416
    return v1

    .line 418
    :cond_2
    new-instance v0, Lcom/android/server/ZramWriteback$1;

    const-string v1, "ZramWriteback_WritebackIdlePages"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/ZramWriteback$1;-><init>(Lcom/android/server/ZramWriteback;Ljava/lang/String;Landroid/app/job/JobParameters;)V

    .line 425
    invoke-virtual {v0}, Lcom/android/server/ZramWriteback$1;->start()V

    .line 427
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method registerOnlineConfig(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    new-instance v0, Lcom/android/server/ZramWriteback$ZramWBConfigUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/ZramWriteback$ZramWBConfigUpdater;-><init>(Lcom/android/server/ZramWriteback;Lcom/android/server/ZramWriteback$1;)V

    iput-object v0, p0, Lcom/android/server/ZramWriteback;->mZramWBConfigUpdater:Lcom/android/server/ZramWriteback$ZramWBConfigUpdater;

    .line 113
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ZramWriteback;->mZramWBConfigUpdater:Lcom/android/server/ZramWriteback$ZramWBConfigUpdater;

    const-string v3, "SETTING_ZRAM_WRITEBACK"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ZramWriteback;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 114
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 115
    const-string v0, "ZramWriteback"

    const-string v1, "[OnlineConfig] zramWB registerOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

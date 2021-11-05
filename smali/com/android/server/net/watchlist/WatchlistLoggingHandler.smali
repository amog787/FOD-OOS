.class Lcom/android/server/net/watchlist/WatchlistLoggingHandler;
.super Landroid/os/Handler;
.source "WatchlistLoggingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/watchlist/WatchlistLoggingHandler$WatchlistEventKeys;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DROPBOX_TAG:Ljava/lang/String; = "network_watchlist_report"

.field static final FORCE_REPORT_RECORDS_NOW_FOR_TEST_MSG:I = 0x3

.field static final LOG_WATCHLIST_EVENT_MSG:I = 0x1

.field private static final ONE_DAY_MS:J

.field static final REPORT_RECORDS_IF_NECESSARY_MSG:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

.field private final mDropBoxManager:Landroid/os/DropBoxManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mPrimaryUserId:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    const-class v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    .line 71
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->ONE_DAY_MS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 96
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 99
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    .line 100
    invoke-static {p1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 101
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 102
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistSettings;->getInstance()Lcom/android/server/net/watchlist/WatchlistSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;

    .line 103
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/DropBoxManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 104
    invoke-direct {p0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getPrimaryUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 105
    return-void
.end method

.method private addEncodedReportToDropBox([B)V
    .locals 3
    .param p1, "encodedReport"    # [B

    .line 328
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    const-string/jumbo v1, "network_watchlist_report"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 329
    return-void
.end method

.method static getAllSubDomains(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;

    .line 427
    if-nez p0, :cond_0

    .line 428
    const/4 v0, 0x0

    return-object v0

    .line 430
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v0, "subDomainList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 433
    .local v2, "index":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 434
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 435
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 436
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 440
    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private getDigestFromUid(I)[B
    .locals 3
    .param p1, "uid"    # I

    .line 337
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/net/watchlist/-$$Lambda$WatchlistLoggingHandler$GBD0dX6RhipHIkM0Z_B5jLlwfHQ;

    invoke-direct {v2, p0, p1}, Lcom/android/server/net/watchlist/-$$Lambda$WatchlistLoggingHandler$GBD0dX6RhipHIkM0Z_B5jLlwfHQ;-><init>(Lcom/android/server/net/watchlist/WatchlistLoggingHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static getLastMidnightTime()J
    .locals 2

    .line 444
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getMidnightTimestamp(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static getMidnightTimestamp(I)J
    .locals 3
    .param p0, "daysBefore"    # I

    .line 448
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 450
    .local v0, "date":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 451
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 452
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 453
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 454
    neg-int v1, p0

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 455
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private getPrimaryUserId()I
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 144
    invoke-virtual {v0}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 145
    .local v0, "primaryUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 146
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    return v1

    .line 148
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method private handleNetworkEvent(Ljava/lang/String;[Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "ipAddresses"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "timestamp"    # J

    .line 204
    iget v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getPrimaryUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 209
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    if-eq v0, v1, :cond_1

    .line 213
    return-void

    .line 215
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->searchAllSubDomainsInWatchlist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "cncDomain":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 217
    invoke-direct {p0, p3, v0, p4, p5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->insertRecord(ILjava/lang/String;J)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->searchIpInWatchlist([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "cncIp":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 221
    invoke-direct {p0, p3, v1, p4, p5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->insertRecord(ILjava/lang/String;J)V

    .line 224
    .end local v1    # "cncIp":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method private insertRecord(ILjava/lang/String;J)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "cncHost"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 230
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;->isConfigSecure()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isPackageTestOnly(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getDigestFromUid(I)[B

    move-result-object v0

    .line 238
    .local v0, "digest":[B
    if-nez v0, :cond_1

    .line 239
    return-void

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->insertNewRecord([BLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    sget-object v1, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to insert record for uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_2
    return-void
.end method

.method private isHostInWatchlist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 397
    if-nez p1, :cond_0

    .line 398
    const/4 v0, 0x0

    return v0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->containsDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isIpInWatchlist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ipAddr"    # Ljava/lang/String;

    .line 389
    if-nez p1, :cond_0

    .line 390
    const/4 v0, 0x0

    return v0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->containsIp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPackageTestOnly(I)Z
    .locals 5
    .param p1, "uid"    # I

    .line 157
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 166
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 167
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 159
    .local v1, "packageNames":[Ljava/lang/String;
    :cond_2
    :goto_0
    :try_start_1
    sget-object v2, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    return v0

    .line 163
    .end local v1    # "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private searchAllSubDomainsInWatchlist(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "host"    # Ljava/lang/String;

    .line 411
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 412
    return-object v0

    .line 414
    :cond_0
    invoke-static {p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getAllSubDomains(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "subDomains":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 416
    .local v4, "subDomain":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isHostInWatchlist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 417
    return-object v4

    .line 415
    .end local v4    # "subDomain":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 420
    :cond_2
    return-object v0
.end method

.method private searchIpInWatchlist([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "ipAddresses"    # [Ljava/lang/String;

    .line 379
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 380
    .local v2, "ipAddress":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isIpInWatchlist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    return-object v2

    .line 379
    .end local v2    # "ipAddress":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private shouldReportNetworkWatchlist(J)Z
    .locals 6
    .param p1, "lastRecordTime"    # J

    .line 247
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "network_watchlist_last_report_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 249
    .local v0, "lastReportTime":J
    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 250
    sget-object v2, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v4, "Last report time is larger than current time, reset report"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->cleanup(J)Z

    .line 252
    return v3

    .line 254
    :cond_0
    sget-wide v4, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->ONE_DAY_MS:J

    add-long/2addr v4, v0

    cmp-long v2, p1, v4

    if-ltz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private tryAggregateRecords(J)V
    .locals 10
    .param p1, "lastRecordTime"    # J

    .line 258
    const-string v0, "Milliseconds spent on tryAggregateRecords(): "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 261
    .local v1, "startTime":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->shouldReportNetworkWatchlist(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 262
    sget-object v3, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v4, "No need to aggregate record yet."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 298
    .local v3, "endTime":J
    sget-object v5, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v3, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v3    # "endTime":J
    return-void

    .line 265
    :cond_0
    :try_start_1
    sget-object v3, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v4, "Start aggregating watchlist records."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    const-string/jumbo v4, "network_watchlist_report"

    invoke-virtual {v3, v4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 267
    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "network_watchlist_last_report_time"

    invoke-static {v3, v4, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    const/4 v3, 0x0

    .line 274
    .local v3, "aggregatedResult":Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getAggregatedRecords(J)Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;

    move-result-object v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v4

    .line 277
    goto :goto_0

    .line 275
    :catch_0
    move-exception v4

    .line 276
    .local v4, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :try_start_3
    sget-object v5, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot get result since "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v4    # "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :goto_0
    if-nez v3, :cond_1

    .line 280
    sget-object v4, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v5, "Cannot get result from database"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 298
    .local v4, "endTime":J
    sget-object v6, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v4, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v4    # "endTime":J
    return-void

    .line 285
    :cond_1
    :try_start_4
    invoke-virtual {p0, v3}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getAllDigestsForReport(Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/List;

    move-result-object v4

    .line 286
    .local v4, "digestsForReport":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;

    invoke-virtual {v5}, Lcom/android/server/net/watchlist/WatchlistSettings;->getPrivacySecretKey()[B

    move-result-object v5

    .line 287
    .local v5, "secretKey":[B
    iget-object v6, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-static {v6, v5, v4, v3}, Lcom/android/server/net/watchlist/ReportEncoder;->encodeWatchlistReport(Lcom/android/server/net/watchlist/WatchlistConfig;[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)[B

    move-result-object v6

    .line 289
    .local v6, "encodedResult":[B
    if-eqz v6, :cond_2

    .line 290
    invoke-direct {p0, v6}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->addEncodedReportToDropBox([B)V

    .line 292
    .end local v3    # "aggregatedResult":Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;
    .end local v4    # "digestsForReport":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "secretKey":[B
    .end local v6    # "encodedResult":[B
    :cond_2
    goto :goto_1

    .line 293
    :cond_3
    sget-object v3, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v4, "Network Watchlist dropbox tag is not enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_1
    iget-object v3, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->cleanup(J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 298
    .local v3, "endTime":J
    sget-object v5, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v3, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v3    # "endTime":J
    nop

    .line 300
    return-void

    .line 297
    :catchall_0
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 298
    .local v4, "endTime":J
    sget-object v6, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v4, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v4    # "endTime":J
    throw v3
.end method


# virtual methods
.method public asyncNetworkEvent(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ipAddresses"    # [Ljava/lang/String;
    .param p3, "uid"    # I

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 189
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "host"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v2, "ipAddresses"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 192
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "timestamp"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    return-void
.end method

.method public forceReportWatchlistForTest(J)V
    .locals 2
    .param p1, "lastReportTime"    # J

    .line 179
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 180
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    return-void
.end method

.method getAllDigestsForReport(Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/List;
    .locals 6
    .param p1, "record"    # Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 314
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestCNCList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 315
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 316
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 317
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v4}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getDigestFromUid(I)[B

    move-result-object v4

    .line 318
    .local v4, "digest":[B
    if-eqz v4, :cond_0

    .line 319
    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v4    # "digest":[B
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestCNCList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 324
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 132
    sget-object v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "WatchlistLoggingHandler received an unknown of message."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 126
    .local v0, "lastRecordTime":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->tryAggregateRecords(J)V

    .line 127
    .end local v0    # "lastRecordTime":J
    goto :goto_0

    .line 128
    :cond_1
    sget-object v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Msg.obj needs to be a Long object."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    goto :goto_0

    .line 121
    :cond_2
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getLastMidnightTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->tryAggregateRecords(J)V

    .line 122
    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, "data":Landroid/os/Bundle;
    nop

    .line 113
    const-string v1, "host"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    const-string/jumbo v1, "ipAddresses"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 115
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 116
    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 112
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->handleNetworkEvent(Ljava/lang/String;[Ljava/lang/String;IJ)V

    .line 118
    nop

    .line 136
    .end local v0    # "data":Landroid/os/Bundle;
    :goto_0
    return-void
.end method

.method public synthetic lambda$getDigestFromUid$0$WatchlistLoggingHandler(ILjava/lang/Integer;)[B
    .locals 10
    .param p1, "uid"    # I
    .param p2, "key"    # Ljava/lang/Integer;

    .line 338
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 340
    .local v1, "userId":I
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 341
    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 343
    .local v5, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v7, 0xc0000

    invoke-virtual {v6, v5, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 347
    .local v6, "apkPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 348
    sget-object v7, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot find apkPath for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    goto :goto_1

    .line 351
    :cond_0
    invoke-static {v6}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 354
    sget-object v7, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping incremental path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    nop

    .line 341
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "apkPath":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 357
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "apkPath":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 358
    .end local v6    # "apkPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 359
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot get digest from uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    return-object v3

    .line 367
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public reportWatchlistIfNecessary()V
    .locals 1

    .line 174
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 175
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    return-void
.end method

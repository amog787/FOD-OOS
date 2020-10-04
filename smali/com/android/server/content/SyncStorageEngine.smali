.class public Lcom/android/server/content/SyncStorageEngine;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStorageEngine$MyHandler;,
        Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;,
        Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;,
        Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;,
        Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;,
        Lcom/android/server/content/SyncStorageEngine$DayStats;,
        Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;,
        Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;,
        Lcom/android/server/content/SyncStorageEngine$EndPoint;,
        Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x3

.field private static final DEFAULT_FLEX_PERCENT_SYNC:D = 0.04

.field private static final DEFAULT_MIN_FLEX_ALLOWED_SECS:J = 0x5L

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field public static final SOURCES:[Ljava/lang/String;

.field public static final SOURCE_FEED:I = 0x5

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_OTHER:I = 0x0

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field private static final SYNC_ENABLED_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final TAG_FILE:Ljava/lang/String; = "SyncManagerFile"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static final XML_ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ATTR_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen-for-tickles"

.field private static final XML_ATTR_NEXT_AUTHORITY_ID:Ljava/lang/String; = "nextAuthorityId"

.field private static final XML_ATTR_SYNC_RANDOM_OFFSET:Ljava/lang/String; = "offsetInSeconds"

.field private static final XML_ATTR_USER:Ljava/lang/String; = "user"

.field private static final XML_TAG_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listenForTickles"

.field private static mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

.field private static sAuthorityRenames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Landroid/util/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/AccountAndUser;",
            "Lcom/android/server/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCurrentSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/content/SyncInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

.field private mDefaultMasterSyncAutomatically:Z

.field private mGrantSyncAdaptersAccountAccess:Z

.field private final mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

.field private volatile mIsClockValid:Z

.field private final mLogger:Lcom/android/server/content/SyncLogger;

.field private mMasterSyncAutomatically:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAuthorityId:I

.field private mNextHistoryId:I

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Landroid/util/AtomicFile;

.field private final mStatusFile:Landroid/util/AtomicFile;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRandomOffset:I

.field private mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

.field private final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 137
    const-string v0, "OTHER"

    const-string v1, "LOCAL"

    const-string v2, "POLL"

    const-string v3, "USER"

    const-string v4, "PERIODIC"

    const-string v5, "FEED"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    .line 169
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataDir"    # Ljava/io/File;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 434
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 437
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 440
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 446
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 450
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    .line 453
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 456
    const/16 v1, 0x1c

    new-array v1, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 487
    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 488
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 500
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;-><init>(Lcom/android/server/content/SyncStorageEngine;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 501
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 502
    sput-object p0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 503
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 505
    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 507
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    .line 510
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 511
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "sync"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 512
    .local v2, "syncDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 514
    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    .line 516
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string v5, "accounts.xml"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, "sync-accounts"

    invoke-direct {v3, v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 517
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "status.bin"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, "sync-status"

    invoke-direct {v3, v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 518
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "stats.bin"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v5, "sync-stats"

    invoke-direct {v3, v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 520
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 521
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 522
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 524
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v3}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 526
    .local v3, "size":I
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Loaded "

    aput-object v6, v5, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v8, " items"

    aput-object v8, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 527
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 528
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v0

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 527
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 531
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;
    .locals 1

    .line 82
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/content/SyncStorageEngine;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/content/SyncStorageEngine;

    .line 82
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/content/SyncStorageEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncStorageEngine;

    .line 82
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/content/SyncStorageEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/content/SyncStorageEngine;

    .line 82
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    return-void
.end method

.method public static calculateDefaultFlexTime(J)J
    .locals 4
    .param p0, "syncTimeSeconds"    # J

    .line 615
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 619
    const-wide/16 v0, 0x0

    return-wide v0

    .line 620
    :cond_0
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 621
    long-to-double v0, p0

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    .line 624
    :cond_1
    const-wide/16 v0, 0xd80

    return-wide v0
.end method

.method private createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 3
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .line 1522
    if-gez p2, :cond_0

    .line 1523
    iget p2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1524
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1525
    const/4 p3, 0x1

    .line 1527
    :cond_0
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created a new AuthorityInfo for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_1
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 1531
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1532
    if-eqz p3, :cond_2

    .line 1533
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1535
    :cond_2
    return-object v0
.end method

.method private createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .locals 3
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .line 1451
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    .line 1452
    .local v0, "syncStatusInfo":Landroid/content/SyncStatusInfo;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v1, p1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-direct {v2, v0}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "tag"    # Ljava/lang/String;

    .line 1475
    new-instance v0, Landroid/accounts/AccountAndUser;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1476
    .local v0, "au":Landroid/accounts/AccountAndUser;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1477
    .local v1, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "SyncManager"

    if-nez v1, :cond_1

    .line 1478
    if-eqz p2, :cond_0

    .line 1479
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": unknown account "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_0
    return-object v3

    .line 1485
    :cond_1
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1486
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v5, :cond_3

    .line 1487
    if-eqz p2, :cond_2

    .line 1488
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": unknown provider "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_2
    return-object v3

    .line 1494
    :cond_3
    return-object v5
.end method

.method private getCurrentDayLocked()I
    .locals 5

    .line 1456
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1457
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1458
    .local v0, "dayOfYear":I
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1459
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    .line 1460
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1461
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1462
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    .line 1464
    :cond_0
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    add-int/2addr v1, v0

    return v1
.end method

.method private getCurrentSyncs(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1326
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1327
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCurrentSyncsLocked(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1355
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1356
    .local v0, "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    if-nez v0, :cond_0

    .line 1357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1358
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1360
    :cond_0
    return-object v0
.end method

.method private getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .line 1505
    const/4 v0, 0x0

    .line 1506
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v1, Landroid/accounts/AccountAndUser;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v1, v2, v3}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1507
    .local v1, "au":Landroid/accounts/AccountAndUser;
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1508
    .local v2, "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v2, :cond_0

    .line 1509
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    invoke-direct {v3, v1}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    move-object v2, v3

    .line 1510
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    :cond_0
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1513
    if-nez v0, :cond_1

    .line 1514
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1515
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    :cond_1
    return-object v0
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .locals 2
    .param p1, "authorityId"    # I

    .line 1567
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    .line 1568
    .local v0, "status":Landroid/content/SyncStatusInfo;
    if-nez v0, :cond_0

    .line 1569
    new-instance v1, Landroid/content/SyncStatusInfo;

    invoke-direct {v1, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    move-object v0, v1

    .line 1570
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1572
    :cond_0
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .locals 2

    .line 546
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_0

    .line 549
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0

    .line 547
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;

    .line 538
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_0

    .line 539
    return-void

    .line 541
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 542
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 543
    return-void
.end method

.method private maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .locals 2
    .param p1, "syncDir"    # Ljava/io/File;

    .line 1724
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "pending.bin"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1725
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1726
    return-void

    .line 1728
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1730
    return-void
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .locals 10

    .line 1737
    const/4 v0, 0x0

    .line 1739
    .local v0, "writeNeeded":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1740
    .local v1, "authoritiesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1741
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_3

    .line 1742
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1744
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    sget-object v6, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1745
    .local v6, "newAuthorityName":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1746
    goto :goto_1

    .line 1751
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1755
    iget-boolean v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-nez v7, :cond_1

    .line 1756
    goto :goto_1

    .line 1760
    :cond_1
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v9, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v7, v8, v6, v9}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1764
    .local v7, "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string v8, "cleanup"

    invoke-direct {p0, v7, v8}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1765
    goto :goto_1

    .line 1768
    :cond_2
    const/4 v8, -0x1

    .line 1769
    invoke-direct {p0, v7, v8, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v4

    .line 1770
    .local v4, "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1771
    const/4 v0, 0x1

    .line 1741
    .end local v4    # "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "newAuthorityName":Ljava/lang/String;
    .end local v7    # "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1774
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1775
    .local v5, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8, v4}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1780
    const/4 v0, 0x1

    .line 1781
    .end local v5    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    goto :goto_2

    .line 1783
    :cond_4
    return v0
.end method

.method public static newTestInstance(Landroid/content/Context;)Lcom/android/server/content/SyncStorageEngine;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 534
    new-instance v0, Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    return-object v0
.end method

.method private parseAuthority(Lorg/xmlpull/v1/XmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 22
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "version"    # I
    .param p3, "validator"    # Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    .line 1803
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string v4, "SyncManager"

    const/4 v5, 0x0

    .line 1804
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v6, -0x1

    .line 1806
    .local v6, "id":I
    const/4 v7, 0x0

    :try_start_0
    const-string v0, "id"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v0

    .line 1811
    :goto_0
    goto :goto_1

    .line 1809
    :catch_0
    move-exception v0

    .line 1810
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v8, "the id of the authority is null"

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1807
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1808
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v8, "error parsing the id of the authority"

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1812
    :goto_1
    if-ltz v6, :cond_f

    .line 1813
    const-string v0, "authority"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1814
    .local v8, "authorityName":Ljava/lang/String;
    const-string v0, "enabled"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1815
    .local v9, "enabled":Ljava/lang/String;
    const-string/jumbo v0, "syncable"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1816
    .local v0, "syncable":Ljava/lang/String;
    const-string v10, "account"

    invoke-interface {v2, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1817
    .local v10, "accountName":Ljava/lang/String;
    const-string/jumbo v11, "type"

    invoke-interface {v2, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1818
    .local v11, "accountType":Ljava/lang/String;
    const-string/jumbo v12, "user"

    invoke-interface {v2, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1819
    .local v12, "user":Ljava/lang/String;
    const-string/jumbo v13, "package"

    invoke-interface {v2, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1820
    .local v13, "packageName":Ljava/lang/String;
    const-string v14, "class"

    invoke-interface {v2, v7, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1821
    .local v7, "className":Ljava/lang/String;
    if-nez v12, :cond_0

    const/4 v15, 0x0

    goto :goto_2

    :cond_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1822
    .local v15, "userId":I
    :goto_2
    const/4 v14, -0x1

    if-nez v11, :cond_1

    if-nez v13, :cond_1

    .line 1823
    const-string v11, "com.google"

    .line 1824
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_3

    .line 1826
    :cond_1
    move-object v14, v0

    .end local v0    # "syncable":Ljava/lang/String;
    .local v14, "syncable":Ljava/lang/String;
    :goto_3
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1827
    .end local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v5, 0x2

    const-string v2, "SyncManagerFile"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    const-string v5, " syncable="

    move-object/from16 v19, v12

    .end local v12    # "user":Ljava/lang/String;
    .local v19, "user":Ljava/lang/String;
    const-string v12, " enabled="

    if-eqz v18, :cond_2

    .line 1828
    move-object/from16 v18, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding authority: account="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accountType="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " auth="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " package="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " class="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1827
    :cond_2
    move-object/from16 v18, v4

    .line 1838
    :goto_4
    if-nez v0, :cond_8

    .line 1839
    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1840
    const-string v4, "Creating authority entry"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_3
    if-eqz v10, :cond_7

    if-eqz v8, :cond_7

    .line 1843
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v4, v8, v15}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1846
    .local v2, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4, v15}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAccountValid(Landroid/accounts/Account;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1847
    invoke-virtual {v3, v8, v15}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAuthorityValid(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1848
    const/4 v1, 0x0

    move-object/from16 v4, p0

    invoke-direct {v4, v2, v6, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1855
    if-lez p2, :cond_4

    .line 1856
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1865
    .end local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_4
    move-object v1, v0

    const/16 v16, 0x0

    const/16 v20, 0x1

    goto :goto_7

    .line 1847
    .restart local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_5
    move-object/from16 v4, p0

    goto :goto_5

    .line 1846
    :cond_6
    move-object/from16 v4, p0

    .line 1859
    :goto_5
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v21, "35028827"

    const/16 v16, 0x0

    aput-object v21, v1, v16

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v20, 0x1

    aput-object v21, v1, v20

    move-object/from16 v21, v0

    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v21, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " provider:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " user:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v1, v3

    const v0, 0x534e4554

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_6

    .line 1842
    .end local v2    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v21    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_7
    const/16 v16, 0x0

    const/16 v20, 0x1

    move-object/from16 v4, p0

    move-object/from16 v21, v0

    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v21    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    goto :goto_6

    .line 1838
    .end local v21    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_8
    const/16 v16, 0x0

    const/16 v20, 0x1

    move-object/from16 v4, p0

    move-object/from16 v21, v0

    .line 1865
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v21    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_6
    move-object/from16 v1, v21

    .end local v21    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_7
    if-eqz v1, :cond_e

    .line 1866
    if-eqz v9, :cond_a

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    move/from16 v0, v16

    goto :goto_9

    :cond_a
    :goto_8
    move/from16 v0, v20

    :goto_9
    iput-boolean v0, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1868
    if-nez v14, :cond_b

    .line 1869
    const/4 v0, -0x1

    goto :goto_a

    :cond_b
    :try_start_1
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_a
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1880
    :goto_b
    goto :goto_d

    .line 1870
    :catch_2
    move-exception v0

    .line 1873
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "unknown"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1874
    const/4 v2, -0x1

    iput v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_b

    .line 1876
    :cond_c
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1877
    move/from16 v2, v20

    goto :goto_c

    :cond_d
    move/from16 v2, v16

    :goto_c
    iput v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_b

    .line 1882
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure adding authority: auth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1812
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "authorityName":Ljava/lang/String;
    .end local v9    # "enabled":Ljava/lang/String;
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "syncable":Ljava/lang/String;
    .end local v15    # "userId":I
    .end local v19    # "user":Ljava/lang/String;
    .restart local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_f
    move-object v4, v1

    move-object v1, v5

    .line 1888
    .end local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_d
    return-object v1
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1932
    const-string v0, "error parsing bundle value"

    const-string v1, "SyncManager"

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1933
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "type"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1934
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v5, "value1"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1935
    .local v5, "value1":Ljava/lang/String;
    const-string/jumbo v6, "value2"

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1938
    .local v2, "value2":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "long"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1939
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1940
    :cond_0
    const-string v6, "integer"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1941
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1942
    :cond_1
    const-string v6, "double"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1943
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p2, v3, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 1944
    :cond_2
    const-string v6, "float"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1945
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1946
    :cond_3
    const-string v6, "boolean"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1947
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1948
    :cond_4
    const-string/jumbo v6, "string"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1949
    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1950
    :cond_5
    const-string v6, "account"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1951
    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v5, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1955
    :catch_0
    move-exception v6

    .line 1956
    .local v6, "e":Ljava/lang/NullPointerException;
    invoke-static {v1, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1953
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v6

    .line 1954
    .local v6, "e":Ljava/lang/NumberFormatException;
    invoke-static {v1, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1957
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_0
    nop

    .line 1958
    :goto_1
    return-void
.end method

.method private parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1787
    const-string v0, "SyncManager"

    const/4 v1, 0x0

    const-string/jumbo v2, "user"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1788
    .local v2, "user":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1790
    .local v3, "userId":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    .line 1795
    :goto_0
    goto :goto_1

    .line 1793
    :catch_0
    move-exception v4

    .line 1794
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "the user in listen-for-tickles is null"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1791
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    .line 1792
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v5, "error parsing the user for listen-for-tickles"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1796
    :goto_1
    const-string v0, "enabled"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1797
    .local v0, "enabled":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v1, 0x1

    .line 1798
    .local v1, "listen":Z
    :goto_3
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1799
    return-void
.end method

.method private parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .locals 18
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1895
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "SyncManager"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1896
    .local v7, "extras":Landroid/os/Bundle;
    const/4 v4, 0x0

    const-string/jumbo v0, "period"

    invoke-interface {v1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1897
    .local v12, "periodValue":Ljava/lang/String;
    const-string v0, "flex"

    invoke-interface {v1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1901
    .local v13, "flexValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-wide v14, v4

    .line 1908
    .local v14, "period":J
    nop

    .line 1910
    :try_start_1
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1920
    .local v3, "flextime":J
    move-wide/from16 v16, v3

    goto :goto_0

    .line 1916
    .end local v3    # "flextime":J
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 1917
    .local v0, "expected":Ljava/lang/NullPointerException;
    invoke-static {v14, v15}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v4

    .line 1918
    .local v4, "flextime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No flex time specified for this sync, using a default. period: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " flex: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v16, v4

    goto :goto_0

    .line 1911
    .end local v0    # "expected":Ljava/lang/NullPointerException;
    .end local v4    # "flextime":J
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 1912
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v14, v15}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v4

    .line 1913
    .restart local v4    # "flextime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error formatting value parsed for periodic sync flex: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", using default: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    move-wide/from16 v16, v4

    .line 1922
    .end local v4    # "flextime":J
    .local v16, "flextime":J
    :goto_0
    new-instance v0, Landroid/content/PeriodicSync;

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v4, v0

    move-wide v8, v14

    move-wide/from16 v10, v16

    invoke-direct/range {v4 .. v11}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1927
    .local v0, "periodicSync":Landroid/content/PeriodicSync;
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1928
    return-object v0

    .line 1905
    .end local v0    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v14    # "period":J
    .end local v16    # "flextime":J
    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 1906
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "the period of a periodic sync is null"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1907
    return-object v4

    .line 1902
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 1903
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "error parsing the period of a periodic sync"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1904
    return-object v4
.end method

.method private readAccountInfoLocked()V
    .locals 22

    .line 1611
    move-object/from16 v1, p0

    const-string v2, "No initial accounts"

    const-string v3, "Error reading accounts"

    const-string v0, "SyncManagerFile"

    const-string v4, "SyncManager"

    const/4 v5, -0x1

    .line 1612
    .local v5, "highestAuthorityId":I
    const/4 v6, 0x0

    .line 1614
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    move-object v6, v7

    .line 1615
    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1616
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v8, v0

    .line 1619
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1620
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v9, v0

    .line 1621
    .local v9, "eventType":I
    :goto_0
    const/4 v10, 0x1

    if-eq v9, v7, :cond_1

    if-eq v9, v10, :cond_1

    .line 1623
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v9, v0

    goto :goto_0

    .line 1625
    :cond_1
    if-ne v9, v10, :cond_3

    .line 1626
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1706
    add-int/lit8 v0, v5, 0x1

    iget v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1707
    if-eqz v6, :cond_2

    .line 1709
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1711
    goto :goto_1

    .line 1710
    :catch_0
    move-exception v0

    .line 1627
    :cond_2
    :goto_1
    return-void

    .line 1630
    :cond_3
    :try_start_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 1631
    .local v11, "tagName":Ljava/lang/String;
    const-string v0, "accounts"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1632
    const-string/jumbo v0, "listen-for-tickles"

    const/4 v12, 0x0

    invoke-interface {v8, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 1633
    .local v13, "listen":Ljava/lang/String;
    const-string/jumbo v0, "version"

    invoke-interface {v8, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v0

    .line 1636
    .local v14, "versionString":Ljava/lang/String;
    if-nez v14, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :try_start_3
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1639
    .local v0, "version":I
    :goto_2
    move v7, v0

    goto :goto_3

    .line 1637
    .end local v0    # "version":I
    :catch_1
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 1638
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    move v7, v0

    .line 1641
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v7, "version":I
    :goto_3
    const/4 v15, 0x3

    if-ge v7, v15, :cond_5

    .line 1642
    :try_start_4
    iput-boolean v10, v1, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    .line 1645
    :cond_5
    const-string/jumbo v0, "nextAuthorityId"

    invoke-interface {v8, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v18, v0

    .line 1647
    .local v18, "nextIdString":Ljava/lang/String;
    if-nez v18, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :try_start_5
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1648
    .local v0, "id":I
    :goto_4
    iget v10, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1651
    .end local v0    # "id":I
    goto :goto_5

    .line 1649
    :catch_2
    move-exception v0

    .line 1652
    :goto_5
    :try_start_6
    const-string/jumbo v0, "offsetInSeconds"

    invoke-interface {v8, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v10, v0

    .line 1654
    .local v10, "offsetString":Ljava/lang/String;
    if-nez v10, :cond_7

    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    :try_start_7
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_6
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1657
    goto :goto_7

    .line 1655
    :catch_3
    move-exception v0

    .line 1656
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v12, 0x0

    :try_start_8
    iput v12, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    .line 1658
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_7
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    if-nez v0, :cond_8

    .line 1659
    new-instance v0, Ljava/util/Random;

    move v12, v9

    move-object/from16 v20, v10

    .end local v9    # "eventType":I
    .end local v10    # "offsetString":Ljava/lang/String;
    .local v12, "eventType":I
    .local v20, "offsetString":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v0, v9, v10}, Ljava/util/Random;-><init>(J)V

    .line 1660
    .local v0, "random":Ljava/util/Random;
    const v9, 0x15180

    invoke-virtual {v0, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    iput v9, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    goto :goto_8

    .line 1658
    .end local v0    # "random":Ljava/util/Random;
    .end local v12    # "eventType":I
    .end local v20    # "offsetString":Ljava/lang/String;
    .restart local v9    # "eventType":I
    .restart local v10    # "offsetString":Ljava/lang/String;
    :cond_8
    move v12, v9

    move-object/from16 v20, v10

    .line 1662
    .end local v9    # "eventType":I
    .end local v10    # "offsetString":Ljava/lang/String;
    .restart local v12    # "eventType":I
    .restart local v20    # "offsetString":Ljava/lang/String;
    :goto_8
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    if-eqz v13, :cond_a

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_9

    :cond_9
    const/4 v9, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v9, 0x1

    :goto_a
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1663
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1664
    .end local v12    # "eventType":I
    .local v0, "eventType":I
    const/4 v9, 0x0

    .line 1665
    .local v9, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v10, 0x0

    .line 1666
    .local v10, "periodicSync":Landroid/content/PeriodicSync;
    new-instance v12, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    iget-object v15, v1, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-direct {v12, v15}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;-><init>(Landroid/content/Context;)V

    .line 1668
    .local v12, "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    :goto_b
    const/4 v15, 0x2

    if-ne v0, v15, :cond_10

    .line 1669
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, v16

    .line 1670
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    move-object/from16 v21, v13

    const/4 v13, 0x2

    .end local v13    # "listen":Ljava/lang/String;
    .local v21, "listen":Ljava/lang/String;
    if-ne v15, v13, :cond_e

    .line 1671
    const-string v13, "authority"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1672
    invoke-direct {v1, v8, v7, v12}, Lcom/android/server/content/SyncStorageEngine;->parseAuthority(Lorg/xmlpull/v1/XmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v13

    move-object v9, v13

    .line 1673
    const/4 v10, 0x0

    .line 1674
    if-eqz v9, :cond_c

    .line 1675
    iget v13, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-le v13, v5, :cond_b

    .line 1676
    iget v13, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move v5, v13

    const/16 v16, 0x2

    const/16 v17, 0x0

    goto/16 :goto_c

    .line 1675
    :cond_b
    const/16 v16, 0x2

    const/16 v17, 0x0

    goto :goto_c

    .line 1679
    :cond_c
    const/4 v15, 0x3

    new-array v13, v15, [Ljava/lang/Object;

    const-string v15, "26513719"

    const/16 v17, 0x0

    aput-object v15, v13, v17

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v19, 0x1

    aput-object v15, v13, v19

    const-string v15, "Malformed authority"

    const/16 v16, 0x2

    aput-object v15, v13, v16

    const v15, 0x534e4554

    invoke-static {v15, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_c

    .line 1682
    :cond_d
    const/16 v16, 0x2

    const/16 v17, 0x0

    const-string/jumbo v13, "listenForTickles"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1683
    invoke-direct {v1, v8}, Lcom/android/server/content/SyncStorageEngine;->parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    .line 1685
    :cond_e
    move/from16 v16, v13

    const/16 v17, 0x0

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    const/4 v15, 0x3

    if-ne v13, v15, :cond_f

    .line 1686
    const-string/jumbo v13, "periodicSync"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    if-eqz v9, :cond_11

    .line 1687
    invoke-direct {v1, v8, v9}, Lcom/android/server/content/SyncStorageEngine;->parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    move-result-object v13

    move-object v10, v13

    goto :goto_c

    .line 1689
    :cond_f
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    const/4 v15, 0x4

    if-ne v13, v15, :cond_11

    if-eqz v10, :cond_11

    .line 1690
    const-string v13, "extra"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1691
    iget-object v13, v10, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-direct {v1, v8, v13}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    goto :goto_c

    .line 1668
    .end local v21    # "listen":Ljava/lang/String;
    .restart local v13    # "listen":Ljava/lang/String;
    :cond_10
    move-object/from16 v21, v13

    move/from16 v16, v15

    const/16 v17, 0x0

    .line 1695
    .end local v13    # "listen":Ljava/lang/String;
    .restart local v21    # "listen":Ljava/lang/String;
    :cond_11
    :goto_c
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v0, v13

    .line 1696
    const/4 v13, 0x1

    if-ne v0, v13, :cond_12

    goto :goto_d

    :cond_12
    move-object/from16 v13, v21

    goto/16 :goto_b

    .line 1631
    .end local v0    # "eventType":I
    .end local v7    # "version":I
    .end local v10    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v12    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .end local v14    # "versionString":Ljava/lang/String;
    .end local v18    # "nextIdString":Ljava/lang/String;
    .end local v20    # "offsetString":Ljava/lang/String;
    .end local v21    # "listen":Ljava/lang/String;
    .local v9, "eventType":I
    :cond_13
    move v12, v9

    .line 1706
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "eventType":I
    .end local v11    # "tagName":Ljava/lang/String;
    :goto_d
    add-int/lit8 v0, v5, 0x1

    iget v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1707
    if-eqz v6, :cond_14

    .line 1709
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1711
    :goto_e
    goto :goto_f

    .line 1710
    :catch_4
    move-exception v0

    goto :goto_e

    .line 1715
    :cond_14
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    .line 1716
    return-void

    .line 1706
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_13

    .line 1701
    :catch_5
    move-exception v0

    move-object v7, v0

    .line 1702
    .local v7, "e":Ljava/io/IOException;
    if-nez v6, :cond_15

    :try_start_a
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1703
    :cond_15
    invoke-static {v4, v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1706
    :goto_10
    add-int/lit8 v0, v5, 0x1

    iget v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1707
    if-eqz v6, :cond_16

    .line 1709
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 1711
    goto :goto_11

    .line 1710
    :catch_6
    move-exception v0

    .line 1704
    :cond_16
    :goto_11
    return-void

    .line 1698
    .end local v7    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    move-object v2, v0

    .line 1699
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_c
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1706
    add-int/lit8 v0, v5, 0x1

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1707
    if-eqz v6, :cond_17

    .line 1709
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 1711
    goto :goto_12

    .line 1710
    :catch_8
    move-exception v0

    .line 1700
    :cond_17
    :goto_12
    return-void

    .line 1706
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_13
    add-int/lit8 v0, v5, 0x1

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1707
    if-eqz v6, :cond_18

    .line 1709
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 1711
    goto :goto_14

    .line 1710
    :catch_9
    move-exception v0

    .line 1711
    :cond_18
    :goto_14
    throw v2
.end method

.method private readStatisticsLocked()V
    .locals 9

    .line 2130
    const-string v0, "SyncManager"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v1

    .line 2131
    .local v1, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2132
    .local v2, "in":Landroid/os/Parcel;
    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2133
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2135
    move v3, v4

    .line 2136
    .local v3, "index":I
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v5, v4

    .local v5, "token":I
    if-eqz v4, :cond_4

    .line 2137
    const/16 v4, 0x65

    const/16 v6, 0x64

    if-eq v5, v4, :cond_1

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 2154
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown stats token: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    goto :goto_2

    .line 2139
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2140
    .local v4, "day":I
    if-ne v5, v6, :cond_2

    .line 2141
    add-int/lit16 v6, v4, -0x7d9

    add-int/lit16 v4, v6, 0x37a5

    .line 2143
    :cond_2
    new-instance v6, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v6, v4}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2144
    .local v6, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2145
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2146
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2147
    invoke-virtual {v2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2148
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v7, v7

    if-ge v3, v7, :cond_3

    .line 2149
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aput-object v6, v7, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2150
    add-int/lit8 v3, v3, 0x1

    .line 2152
    .end local v4    # "day":I
    .end local v6    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_3
    goto :goto_0

    .line 2160
    .end local v1    # "data":[B
    .end local v2    # "in":Landroid/os/Parcel;
    .end local v3    # "index":I
    .end local v5    # "token":I
    :cond_4
    :goto_2
    goto :goto_3

    .line 2158
    :catch_0
    move-exception v1

    .line 2159
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "No initial statistics"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method private readStatusLocked()V
    .locals 10

    .line 2024
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    const-string v2, "SyncManagerFile"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v3

    .line 2029
    .local v3, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2030
    .local v4, "in":Landroid/os/Parcel;
    array-length v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2031
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2033
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move v7, v5

    .local v7, "token":I
    if-eqz v5, :cond_4

    .line 2034
    const/16 v5, 0x64

    if-ne v7, v5, :cond_3

    .line 2035
    new-instance v5, Landroid/content/SyncStatusInfo;

    invoke-direct {v5, v4}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 2036
    .local v5, "status":Landroid/content/SyncStatusInfo;
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v9, v5, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_2

    .line 2037
    iput-boolean v6, v5, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2038
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2039
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding status for id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_1
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v9, v5, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v8, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2043
    .end local v5    # "status":Landroid/content/SyncStatusInfo;
    :cond_2
    goto :goto_0

    .line 2045
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2051
    .end local v3    # "data":[B
    .end local v4    # "in":Landroid/os/Parcel;
    .end local v7    # "token":I
    :cond_4
    goto :goto_1

    .line 2049
    :catch_0
    move-exception v1

    .line 2050
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "No initial status"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authorityName"    # Ljava/lang/String;
    .param p4, "doWrite"    # Z

    .line 1551
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    new-instance v1, Landroid/accounts/AccountAndUser;

    invoke-direct {v1, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1552
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz v0, :cond_1

    .line 1553
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1554
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_1

    .line 1555
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v2, :cond_0

    .line 1556
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v2, v3}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1558
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1559
    if-eqz p4, :cond_1

    .line 1560
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1564
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    return-void
.end method

.method private requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "syncExemptionFlag"    # I
    .param p7, "callingUid"    # I
    .param p8, "callingPid"    # I

    .line 2111
    move-object v0, p1

    move-object v1, p4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v3, :cond_1

    .line 2113
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move v10, p2

    invoke-direct {v4, p1, p4, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move v5, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v3 .. v9}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;III)V

    move-object/from16 v3, p5

    goto :goto_0

    .line 2111
    :cond_0
    move-object v2, p0

    :cond_1
    move v10, p2

    .line 2117
    move-object/from16 v3, p5

    invoke-static {p1, p4, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2119
    :goto_0
    return-void
.end method

.method private requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;III)V
    .locals 9
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .param p2, "reason"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "syncExemptionFlag"    # I
    .param p5, "callingUid"    # I
    .param p6, "callingPid"    # I

    .line 2091
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v2, :cond_0

    .line 2093
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;III)V

    goto :goto_0

    .line 2096
    :cond_0
    new-instance v0, Landroid/content/SyncRequest$Builder;

    invoke-direct {v0}, Landroid/content/SyncRequest$Builder;-><init>()V

    .line 2098
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 2099
    invoke-virtual {v0, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 2100
    .local v0, "req":Landroid/content/SyncRequest$Builder;
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    .line 2101
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    .line 2103
    .end local v0    # "req":Landroid/content/SyncRequest$Builder;
    :goto_0
    return-void
.end method

.method private setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "nextSyncTime"    # J
    .param p6, "nextDelay"    # J

    .line 856
    const/4 v0, 0x0

    .line 857
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 858
    .local v2, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz p1, :cond_0

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v3, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v3, v3, Landroid/accounts/AccountAndUser;->userId:I

    if-eq p2, v3, :cond_0

    .line 860
    goto :goto_0

    .line 862
    :cond_0
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 863
    .local v4, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p3, :cond_1

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 864
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 865
    goto :goto_1

    .line 867
    :cond_1
    iget-wide v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v5, v5, p4

    if-nez v5, :cond_2

    iget-wide v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v5, v5, p6

    if-eqz v5, :cond_3

    .line 869
    :cond_2
    iput-wide p4, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 870
    iput-wide p6, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 871
    const/4 v0, 0x1

    .line 873
    .end local v4    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    goto :goto_1

    .line 874
    .end local v2    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_4
    goto :goto_0

    .line 875
    :cond_5
    return v0
.end method

.method private setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;III)V
    .locals 13
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "syncable"    # I
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .line 771
    move-object v8, p0

    move-object v9, p1

    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Set syncable "

    aput-object v3, v1, v2

    const/4 v10, 0x1

    aput-object v9, v1, v10

    const/4 v3, 0x2

    const-string v4, " value="

    aput-object v4, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    const/4 v4, 0x4

    const-string v5, " cuid="

    aput-object v5, v1, v4

    .line 772
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v1, v5

    const/4 v4, 0x6

    const-string v5, " cpid="

    aput-object v5, v1, v4

    .line 773
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v1, v5

    .line 771
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 774
    iget-object v1, v8, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 775
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v2

    .line 776
    .local v11, "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    move v2, p2

    if-ge v2, v0, :cond_0

    .line 777
    const/4 v0, -0x1

    move v12, v0

    .end local p2    # "syncable":I
    .local v0, "syncable":I
    goto :goto_0

    .line 776
    .end local v0    # "syncable":I
    .restart local p2    # "syncable":I
    :cond_0
    move v12, v2

    .line 779
    .end local p2    # "syncable":I
    .local v12, "syncable":I
    :goto_0
    :try_start_1
    const-string v0, "SyncManager"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIsSyncable: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_1
    iget v0, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v0, v12, :cond_3

    .line 783
    const-string v0, "SyncManager"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 784
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsSyncable: already set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", doing nothing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_2
    monitor-exit v1

    return-void

    .line 788
    :cond_3
    iput v12, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 789
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 790
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 791
    if-ne v12, v10, :cond_4

    .line 792
    const/4 v3, -0x5

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v11

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;III)V

    .line 795
    :cond_4
    iget v0, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v10, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 796
    return-void

    .line 790
    .end local v11    # "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v12    # "syncable":I
    .restart local p2    # "syncable":I
    :catchall_0
    move-exception v0

    move v2, p2

    move v12, v2

    .end local p2    # "syncable":I
    .restart local v12    # "syncable":I
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private writeAccountInfoLocked()V
    .locals 14

    .line 1964
    const-string/jumbo v0, "listenForTickles"

    const-string v1, "accounts"

    const-string v2, "authority"

    const-string v3, "SyncManagerFile"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1965
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing new "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :cond_0
    const/4 v3, 0x0

    .line 1970
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 1971
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1972
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1973
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1974
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1976
    invoke-interface {v4, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1977
    const-string/jumbo v5, "version"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1978
    const-string/jumbo v5, "nextAuthorityId"

    iget v6, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1979
    const-string/jumbo v5, "offsetInSeconds"

    iget v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1982
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    .local v5, "M":I
    const/4 v6, 0x0

    .local v6, "m":I
    :goto_0
    const-string v8, "enabled"

    const-string/jumbo v9, "user"

    if-ge v6, v5, :cond_1

    .line 1984
    :try_start_1
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 1985
    .local v10, "userId":I
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 1986
    .local v11, "listen":Ljava/lang/Boolean;
    invoke-interface {v4, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1987
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v7, v9, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1988
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1989
    invoke-interface {v4, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1983
    nop

    .end local v10    # "userId":I
    .end local v11    # "listen":Ljava/lang/Boolean;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1992
    .end local v6    # "m":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1993
    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_2

    .line 1994
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1995
    .local v10, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v11, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1996
    .local v11, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-interface {v4, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1997
    const-string v12, "id"

    iget v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v7, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1998
    iget v12, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v7, v9, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1999
    iget-boolean v12, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v7, v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2000
    const-string v12, "account"

    iget-object v13, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v13, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v4, v7, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2001
    const-string/jumbo v12, "type"

    iget-object v13, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v13, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v4, v7, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2002
    iget-object v12, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v4, v7, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2003
    const-string/jumbo v12, "syncable"

    iget v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v7, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2004
    invoke-interface {v4, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1993
    nop

    .end local v10    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2006
    .end local v6    # "i":I
    :cond_2
    invoke-interface {v4, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2007
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2008
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2014
    .end local v0    # "N":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "M":I
    goto :goto_2

    .line 2009
    :catch_0
    move-exception v0

    .line 2010
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "SyncManager"

    const-string v2, "Error writing accounts"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2011
    if-eqz v3, :cond_3

    .line 2012
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2015
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-void
.end method

.method private writeStatisticsLocked()V
    .locals 8

    .line 2167
    const/4 v0, 0x2

    const-string v1, "SyncManagerFile"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const-string v2, "SyncManager"

    if-eqz v1, :cond_0

    .line 2168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing new "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->removeMessages(I)V

    .line 2175
    const/4 v0, 0x0

    .line 2177
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 2178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2179
    .local v1, "out":Landroid/os/Parcel;
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v3, v3

    .line 2180
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 2181
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v5, v5, v4

    .line 2182
    .local v5, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v5, :cond_1

    .line 2183
    goto :goto_1

    .line 2185
    :cond_1
    const/16 v6, 0x65

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2186
    iget v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2187
    iget v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2188
    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2189
    iget v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2190
    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2180
    .end local v5    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2192
    .end local v4    # "i":I
    :cond_2
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2193
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 2194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2196
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2202
    .end local v1    # "out":Landroid/os/Parcel;
    .end local v3    # "N":I
    goto :goto_2

    .line 2197
    :catch_0
    move-exception v1

    .line 2198
    .local v1, "e1":Ljava/io/IOException;
    const-string v3, "Error writing stats"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2199
    if-eqz v0, :cond_3

    .line 2200
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2203
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-void
.end method

.method private writeStatusLocked()V
    .locals 7

    .line 2058
    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->removeMessages(I)V

    .line 2066
    const/4 v0, 0x0

    .line 2068
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 2069
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2070
    .local v1, "out":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2071
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_1

    .line 2072
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 2073
    .local v5, "status":Landroid/content/SyncStatusInfo;
    const/16 v6, 0x64

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    invoke-virtual {v5, v1, v4}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2071
    .end local v5    # "status":Landroid/content/SyncStatusInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2076
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2077
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 2078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2080
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2086
    .end local v1    # "out":Landroid/os/Parcel;
    .end local v2    # "N":I
    goto :goto_1

    .line 2081
    :catch_0
    move-exception v1

    .line 2082
    .local v1, "e1":Ljava/io/IOException;
    const-string v2, "SyncManager"

    const-string v3, "Error writing status"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2083
    if-eqz v0, :cond_2

    .line 2084
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2087
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .locals 10
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1094
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1095
    :try_start_0
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveSync: account= auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_0
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1102
    .local v1, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 1106
    .local v2, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v9, Landroid/content/SyncInfo;

    iget v4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-wide v7, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    move-object v3, v9

    .line 1111
    .local v3, "syncInfo":Landroid/content/SyncInfo;
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v4}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    nop

    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange(I)V

    .line 1114
    return-object v3

    .line 1112
    .end local v3    # "syncInfo":Landroid/content/SyncInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addStatusChangeListener(IILandroid/content/ISyncStatusObserver;)V
    .locals 5
    .param p1, "mask"    # I
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 594
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 595
    :try_start_0
    invoke-static {p2, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v1

    .line 596
    .local v1, "cookie":J
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 597
    nop

    .end local v1    # "cookie":J
    monitor-exit v0

    .line 598
    return-void

    .line 597
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearAllBackoffsLocked()V
    .locals 12

    .line 879
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 880
    .local v0, "changedUserIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 882
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 883
    .local v3, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 884
    .local v5, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 886
    :cond_0
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 887
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearAllBackoffsLocked: authority:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " account:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v10, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " user:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v10, v10, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " backoffTime was: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " backoffDelay was: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_1
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 895
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 896
    iget-object v6, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v6, v6, Landroid/accounts/AccountAndUser;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 898
    .end local v5    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    goto :goto_1

    .line 899
    .end local v3    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_3
    goto/16 :goto_0

    .line 900
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_2
    if-lez v1, :cond_5

    .line 903
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 902
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 905
    .end local v1    # "i":I
    :cond_5
    return-void

    .line 900
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public clearAndReadState()V
    .locals 2

    .line 1591
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1592
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1593
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1594
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1595
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1596
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1598
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 1599
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 1600
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 1601
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1602
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1603
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1604
    monitor-exit v0

    .line 1605
    return-void

    .line 1604
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 2
    .param p1, "authorityId"    # I

    .line 991
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 992
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v0

    return-object v1

    .line 993
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAuthorityCount()I
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 986
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 987
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 800
    :try_start_0
    const-string v1, "getBackoff"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 801
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_0

    .line 802
    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 804
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 805
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .locals 3
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .line 1367
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1368
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1371
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1372
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentSyncsCopy(IZ)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "canAccessAccounts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1337
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1338
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v1

    .line 1339
    .local v1, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1340
    .local v2, "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncInfo;

    .line 1342
    .local v4, "sync":Landroid/content/SyncInfo;
    if-nez p2, :cond_0

    .line 1343
    iget v5, v4, Landroid/content/SyncInfo;->authorityId:I

    iget-object v6, v4, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    iget-wide v7, v4, Landroid/content/SyncInfo;->startTime:J

    invoke-static {v5, v6, v7, v8}, Landroid/content/SyncInfo;->createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;

    move-result-object v5

    .local v5, "copy":Landroid/content/SyncInfo;
    goto :goto_1

    .line 1346
    .end local v5    # "copy":Landroid/content/SyncInfo;
    :cond_0
    new-instance v5, Landroid/content/SyncInfo;

    invoke-direct {v5, v4}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V

    .line 1348
    .restart local v5    # "copy":Landroid/content/SyncInfo;
    :goto_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    nop

    .end local v4    # "sync":Landroid/content/SyncInfo;
    .end local v5    # "copy":Landroid/content/SyncInfo;
    goto :goto_0

    .line 1350
    :cond_1
    monitor-exit v0

    return-object v2

    .line 1351
    .end local v1    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .end local v2    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .locals 5

    .line 1442
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1443
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v1, v1

    new-array v1, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1444
    .local v1, "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1445
    monitor-exit v0

    return-object v1

    .line 1446
    .end local v1    # "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J
    .locals 4
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 908
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 909
    :try_start_0
    const-string v1, "getDelayUntil"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 910
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_0

    .line 911
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 913
    :cond_0
    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v0

    return-wide v2

    .line 914
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .line 732
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 733
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 734
    :try_start_0
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v3, "get authority syncable"

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 737
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_0

    .line 738
    monitor-exit v0

    return v1

    .line 740
    :cond_0
    iget v1, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return v1

    .line 743
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 744
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_3

    .line 745
    add-int/lit8 v2, v2, -0x1

    .line 746
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 747
    .local v3, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 748
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 749
    iget v1, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return v1

    .line 751
    .end local v3    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    goto :goto_0

    .line 752
    :cond_3
    monitor-exit v0

    return v1

    .line 753
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMasterSyncAutomatically(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 978
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 979
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 980
    .local v1, "auto":Ljava/lang/Boolean;
    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    monitor-exit v0

    return v2

    .line 981
    .end local v1    # "auto":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    .locals 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1382
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1386
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1387
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1388
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 1389
    .local v4, "cur":Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1390
    .local v5, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v5, :cond_1

    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1391
    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1392
    monitor-exit v0

    return-object v4

    .line 1387
    .end local v4    # "cur":Landroid/content/SyncStatusInfo;
    .end local v5    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1395
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0

    return-object v1

    .line 1396
    .end local v2    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1383
    :cond_3
    :goto_1
    return-object v1
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .line 666
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 667
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 668
    :try_start_0
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v4, "getSyncAutomatically"

    invoke-direct {p0, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 671
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    monitor-exit v0

    return v1

    .line 674
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 675
    .local v3, "i":I
    :goto_1
    if-lez v3, :cond_3

    .line 676
    add-int/lit8 v3, v3, -0x1

    .line 677
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 678
    .local v4, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v6, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v5, :cond_2

    .line 680
    monitor-exit v0

    return v1

    .line 682
    .end local v4    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    goto :goto_1

    .line 683
    :cond_3
    monitor-exit v0

    return v2

    .line 684
    .end local v3    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1427
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1428
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1429
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1430
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1432
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    return-object v2

    .line 1433
    .end local v1    # "N":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSyncRandomOffset()I
    .locals 1

    .line 590
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    return v0
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J
    .locals 8
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "now"    # J

    .line 1145
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1146
    :try_start_0
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertStartSyncEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_0
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string v3, "insertStartSyncEvent"

    invoke-direct {p0, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1150
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_1

    .line 1151
    const-wide/16 v2, -0x1

    monitor-exit v0

    return-wide v2

    .line 1153
    :cond_1
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v3}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 1154
    .local v3, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    .line 1155
    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1156
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 1157
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    const/4 v5, 0x0

    if-gez v4, :cond_2

    iput v5, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 1158
    :cond_2
    iput-wide p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1159
    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1160
    iget v4, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 1161
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iput-object v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 1162
    iput v5, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1163
    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    .line 1164
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1165
    :goto_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_3

    .line 1166
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1168
    :cond_3
    iget v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v4, v4

    .line 1169
    .local v4, "id":J
    const-string v6, "SyncManager"

    invoke-static {v6, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "returning historyId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1172
    const/16 v0, 0x8

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 1173
    return-wide v4

    .line 1170
    .end local v4    # "id":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isClockValid()Z
    .locals 1

    .line 2221
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    return v0
.end method

.method public isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1001
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1002
    :try_start_0
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 1003
    .local v2, "syncInfo":Landroid/content/SyncInfo;
    iget v3, v2, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 1004
    .local v3, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1005
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1007
    .end local v2    # "syncInfo":Landroid/content/SyncInfo;
    .end local v3    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_0
    goto :goto_0

    .line 1008
    :cond_1
    monitor-exit v0

    .line 1009
    const/4 v0, 0x0

    return v0

    .line 1008
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1401
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1402
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1403
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1404
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 1405
    .local v3, "cur":Landroid/content/SyncStatusInfo;
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1406
    .local v4, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v4, :cond_0

    .line 1407
    goto :goto_1

    .line 1409
    :cond_0
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1410
    goto :goto_1

    .line 1412
    :cond_1
    iget-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v5, :cond_2

    .line 1413
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1403
    .end local v3    # "cur":Landroid/content/SyncStatusInfo;
    .end local v4    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1416
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1417
    .end local v1    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    .locals 3
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pendingValue"    # Z

    .line 1013
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1014
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1017
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_0

    .line 1018
    monitor-exit v0

    return-void

    .line 1020
    :cond_0
    iget v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v2

    .line 1021
    .local v2, "status":Landroid/content/SyncStatusInfo;
    iput-boolean p2, v2, Landroid/content/SyncStatusInfo;->pending:Z

    .line 1022
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "status":Landroid/content/SyncStatusInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    const/4 v0, 0x2

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 1024
    return-void

    .line 1022
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public queueBackup()V
    .locals 1

    .line 2210
    const-string v0, "android"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 2211
    return-void
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .locals 4
    .param p1, "syncInfo"    # Landroid/content/SyncInfo;
    .param p2, "userId"    # I

    .line 1121
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1122
    :try_start_0
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1123
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveSync: account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange(I)V

    .line 1131
    return-void

    .line 1128
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1539
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1540
    :try_start_0
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1541
    monitor-exit v0

    .line 1542
    return-void

    .line 1541
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeStaleAccounts([Landroid/accounts/Account;I)V
    .locals 9
    .param p1, "currentAccounts"    # [Landroid/accounts/Account;
    .param p2, "userId"    # I

    .line 1031
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1032
    :try_start_0
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    const-string v1, "SyncManager"

    const-string v3, "Updating for new accounts..."

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1036
    .local v1, "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1037
    .local v3, "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1038
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1039
    .local v4, "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v5, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-eq v5, p2, :cond_1

    .line 1040
    goto :goto_0

    .line 1042
    :cond_1
    if-eqz p1, :cond_2

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 1043
    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1045
    :cond_2
    const-string v5, "SyncManager"

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1046
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_3
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1049
    .local v6, "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1050
    .end local v6    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    goto :goto_1

    .line 1051
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1053
    .end local v4    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_5
    goto :goto_0

    .line 1056
    :cond_6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1057
    .local v2, "i":I
    if-lez v2, :cond_d

    .line 1058
    :goto_2
    if-lez v2, :cond_c

    .line 1059
    add-int/lit8 v2, v2, -0x1

    .line 1060
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1061
    .local v4, "ident":I
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1062
    .local v5, "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v6, :cond_7

    .line 1063
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v6, v7}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1065
    :cond_7
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1066
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1067
    .local v6, "j":I
    :cond_8
    :goto_3
    if-lez v6, :cond_9

    .line 1068
    add-int/lit8 v6, v6, -0x1

    .line 1069
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    if-ne v7, v4, :cond_8

    .line 1070
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    .line 1073
    :cond_9
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v7

    .line 1074
    :cond_a
    :goto_4
    if-lez v6, :cond_b

    .line 1075
    add-int/lit8 v6, v6, -0x1

    .line 1076
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v7, v4, :cond_a

    .line 1077
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 1080
    .end local v4    # "ident":I
    .end local v5    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "j":I
    :cond_b
    goto :goto_2

    .line 1081
    :cond_c
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1082
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1083
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1085
    .end local v1    # "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    .end local v2    # "i":I
    .end local v3    # "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    :cond_d
    monitor-exit v0

    .line 1086
    return-void

    .line 1085
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 601
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 602
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 603
    monitor-exit v0

    .line 604
    return-void

    .line 603
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportActiveChange(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1137
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 1138
    return-void
.end method

.method reportChange(II)V
    .locals 8
    .param p1, "which"    # I
    .param p2, "callingUserId"    # I

    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 631
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 632
    .local v2, "i":I
    :cond_0
    :goto_0
    if-lez v2, :cond_3

    .line 633
    add-int/lit8 v2, v2, -0x1

    .line 634
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 635
    .local v3, "cookie":J
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v5

    .line 636
    .local v5, "userId":I
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v6

    .line 637
    .local v6, "mask":I
    and-int v7, p1, v6

    if-eqz v7, :cond_0

    if-eq p2, v5, :cond_1

    .line 638
    goto :goto_0

    .line 640
    :cond_1
    if-nez v0, :cond_2

    .line 641
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v7

    .line 643
    :cond_2
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/content/ISyncStatusObserver;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    nop

    .end local v3    # "cookie":J
    .end local v5    # "userId":I
    .end local v6    # "mask":I
    goto :goto_0

    .line 645
    :cond_3
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 646
    .end local v2    # "i":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    const/4 v1, 0x2

    const-string v2, "SyncManager"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_4
    if-eqz v0, :cond_5

    .line 653
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 654
    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_5

    .line 655
    add-int/lit8 v1, v1, -0x1

    .line 657
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ISyncStatusObserver;

    invoke-interface {v2, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 658
    :catch_0
    move-exception v2

    .line 660
    :goto_2
    goto :goto_1

    .line 663
    .end local v1    # "i":I
    :cond_5
    return-void

    .line 646
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public resetTodayStats(Z)V
    .locals 5
    .param p1, "force"    # Z

    .line 2225
    if-eqz p1, :cond_0

    .line 2226
    const-string v0, "SyncManager"

    const-string v1, "Force resetting today stats."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2229
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2230
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2231
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 2232
    .local v3, "cur":Landroid/content/SyncStatusInfo;
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 2230
    .end local v3    # "cur":Landroid/content/SyncStatusInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2234
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 2235
    .end local v1    # "N":I
    monitor-exit v0

    .line 2236
    return-void

    .line 2235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method restoreAllPeriodicSyncs()Z
    .locals 12

    .line 937
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 938
    return v1

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 941
    nop

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 942
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 943
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/PeriodicSync;

    .line 944
    .local v4, "periodicSync":Landroid/content/PeriodicSync;
    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v4, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    iget-wide v8, v4, Landroid/content/PeriodicSync;->period:J

    iget-wide v10, v4, Landroid/content/PeriodicSync;->flexTime:J

    invoke-interface/range {v5 .. v11}, Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;->onPeriodicSyncAdded(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;JJ)V

    .line 946
    .end local v4    # "periodicSync":Landroid/content/PeriodicSync;
    goto :goto_1

    .line 947
    :cond_1
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 941
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 949
    .end local v1    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 950
    monitor-exit v0

    .line 951
    const/4 v0, 0x1

    return v0

    .line 950
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V
    .locals 16
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "nextSyncTime"    # J
    .param p4, "nextDelay"    # J

    .line 813
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBackoff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> nextSyncTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", nextDelay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_0
    iget-object v15, v9, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v15

    .line 819
    :try_start_0
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 828
    :cond_1
    const/4 v0, -0x1

    .line 829
    invoke-direct {v9, v10, v0, v7}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 830
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v1, v1, v11

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v1, v1, v13

    if-nez v1, :cond_2

    .line 832
    const/4 v1, 0x0

    move v0, v7

    .local v1, "changed":Z
    goto :goto_1

    .line 834
    .end local v1    # "changed":Z
    :cond_2
    iput-wide v11, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 835
    iput-wide v13, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 836
    const/4 v1, 0x1

    move v0, v7

    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v1    # "changed":Z
    goto :goto_1

    .line 822
    .end local v1    # "changed":Z
    :cond_3
    :goto_0
    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v3, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v4, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v1, p0

    move-wide/from16 v5, p2

    move v0, v7

    move-wide/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z

    move-result v1

    .line 839
    .restart local v1    # "changed":Z
    :goto_1
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    if-eqz v1, :cond_4

    .line 841
    iget v2, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v9, v0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 843
    :cond_4
    return-void

    .line 839
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setClockValid()V
    .locals 2

    .line 2214
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    if-nez v0, :cond_0

    .line 2215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 2216
    const-string v0, "SyncManager"

    const-string v1, "Clock is valid now."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :cond_0
    return-void
.end method

.method public setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntil"    # J

    .line 918
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDelayUntil: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> delayUntil "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 923
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 924
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_1

    .line 925
    monitor-exit v0

    return-void

    .line 927
    :cond_1
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 928
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v2, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 930
    return-void

    .line 928
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "syncable"    # I
    .param p5, "callingUid"    # I
    .param p6, "callingPid"    # I

    .line 758
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-direct {p0, v0, p4, p5, p6}, Lcom/android/server/content/SyncStorageEngine;->setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;III)V

    .line 760
    return-void
.end method

.method public setMasterSyncAutomatically(ZIIII)V
    .locals 13
    .param p1, "flag"    # Z
    .param p2, "userId"    # I
    .param p3, "syncExemptionFlag"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPid"    # I

    .line 956
    move-object v10, p0

    move v11, p2

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Set master enabled="

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v12, 0x1

    aput-object v2, v1, v12

    const/4 v2, 0x2

    const-string v3, " user="

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string v3, " cuid="

    aput-object v3, v1, v2

    .line 957
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    const-string v3, " cpid="

    aput-object v3, v1, v2

    .line 958
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 956
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 959
    iget-object v1, v10, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 960
    :try_start_0
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 961
    .local v0, "auto":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 962
    monitor-exit v1

    return-void

    .line 964
    :cond_0
    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 965
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 966
    .end local v0    # "auto":Ljava/lang/Boolean;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    if-eqz p1, :cond_1

    .line 968
    const/4 v2, 0x0

    const/4 v4, -0x7

    const/4 v5, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v1, p0

    move v3, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V

    .line 972
    :cond_1
    invoke-virtual {p0, v12, p2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 973
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 974
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    .line 975
    return-void

    .line 966
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    .line 559
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-nez v0, :cond_0

    .line 560
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    .line 562
    :cond_0
    return-void
.end method

.method protected setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 553
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-nez v0, :cond_0

    .line 554
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 556
    :cond_0
    return-void
.end method

.method protected setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    .line 565
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    if-nez v0, :cond_0

    .line 566
    sput-object p1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    .line 568
    :cond_0
    return-void
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    .locals 16
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "sync"    # Z
    .param p5, "syncExemptionFlag"    # I
    .param p6, "callingUid"    # I
    .param p7, "callingPid"    # I

    .line 689
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSyncAutomatically:  provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_0
    iget-object v1, v10, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Set sync auto account="

    aput-object v4, v2, v3

    const/4 v15, 0x1

    aput-object v11, v2, v15

    const-string v4, " user="

    aput-object v4, v2, v0

    const/4 v4, 0x3

    .line 694
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, " authority="

    aput-object v5, v2, v4

    const/4 v4, 0x5

    aput-object v13, v2, v4

    const/4 v4, 0x6

    const-string v5, " value="

    aput-object v5, v2, v4

    const/4 v4, 0x7

    .line 696
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, " cuid="

    aput-object v5, v2, v4

    const/16 v4, 0x9

    .line 697
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string v5, " cpid="

    aput-object v5, v2, v4

    const/16 v4, 0xb

    .line 698
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 693
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 700
    iget-object v1, v10, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 701
    :try_start_0
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, v11, v13, v12}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 702
    const/4 v4, -0x1

    invoke-direct {v10, v2, v4, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 706
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v3, v14, :cond_2

    .line 707
    const-string v3, "SyncManager"

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    const-string v0, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSyncAutomatically: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", doing nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_1
    monitor-exit v1

    return-void

    .line 715
    :cond_2
    if-eqz v14, :cond_3

    iget v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v3, v0, :cond_3

    .line 716
    iput v4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 718
    :cond_3
    iput-boolean v14, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 719
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 720
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    if-eqz v14, :cond_4

    .line 723
    const/4 v4, -0x6

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;III)V

    .line 727
    :cond_4
    invoke-virtual {v10, v15, v12}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    .line 729
    return-void

    .line 720
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shouldGrantSyncAdaptersAccountAccess()Z
    .locals 1

    .line 1584
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    return v0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJI)V
    .locals 21
    .param p1, "historyId"    # J
    .param p3, "elapsedTime"    # J
    .param p5, "resultMessage"    # Ljava/lang/String;
    .param p6, "downstreamActivity"    # J
    .param p8, "upstreamActivity"    # J
    .param p10, "userId"    # I

    .line 1178
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 1179
    :try_start_0
    const-string v0, "SyncManager"

    const/4 v8, 0x2

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    const-string v0, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stopSyncEvent: historyId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_0
    const/4 v0, 0x0

    .line 1183
    .local v0, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1184
    .local v9, "i":I
    :goto_0
    if-lez v9, :cond_2

    .line 1185
    add-int/lit8 v9, v9, -0x1

    .line 1186
    iget-object v10, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    move-object v0, v10

    .line 1187
    iget v10, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v10, v10

    cmp-long v10, v10, v2

    if-nez v10, :cond_1

    .line 1188
    goto :goto_1

    .line 1190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1193
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 1194
    const-string v8, "SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stopSyncEvent: no history for id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    monitor-exit v7

    return-void

    .line 1198
    :cond_3
    iput-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 1199
    const/4 v10, 0x1

    iput v10, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1200
    iput-object v6, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 1201
    move-wide/from16 v11, p6

    iput-wide v11, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1202
    move-wide/from16 v13, p8

    :try_start_1
    iput-wide v13, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1204
    iget v15, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    invoke-direct {v1, v15}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v15

    .line 1206
    .local v15, "status":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v15, v8, v10}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 1208
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1209
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1210
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget-wide v2, v8, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v2, v4

    iput-wide v2, v8, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1211
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    move v3, v9

    .end local v9    # "i":I
    .local v3, "i":I
    iget-wide v8, v2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v8, v4

    iput-wide v8, v2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1212
    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    if-eqz v2, :cond_9

    const/4 v8, 0x1

    if-eq v2, v8, :cond_8

    const/4 v8, 0x2

    if-eq v2, v8, :cond_7

    const/4 v8, 0x3

    if-eq v2, v8, :cond_6

    const/4 v8, 0x4

    if-eq v2, v8, :cond_5

    const/4 v8, 0x5

    if-eq v2, v8, :cond_4

    goto :goto_2

    .line 1234
    :cond_4
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1235
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    goto :goto_2

    .line 1230
    :cond_5
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1231
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1232
    goto :goto_2

    .line 1222
    :cond_6
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1223
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1224
    goto :goto_2

    .line 1218
    :cond_7
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1219
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1220
    goto :goto_2

    .line 1214
    :cond_8
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1215
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1216
    goto :goto_2

    .line 1226
    :cond_9
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1227
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1228
    nop

    .line 1239
    :goto_2
    const/4 v2, 0x0

    .line 1240
    .local v2, "writeStatisticsNow":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v8

    .line 1241
    .local v8, "day":I
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    if-nez v9, :cond_a

    .line 1242
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v10, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v10, v8}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    const/16 v17, 0x0

    aput-object v10, v9, v17

    move/from16 v18, v2

    move/from16 v19, v3

    const/4 v3, 0x0

    goto :goto_3

    .line 1243
    :cond_a
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    if-eq v8, v9, :cond_b

    .line 1244
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    iget-object v10, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move/from16 v18, v2

    .end local v2    # "writeStatisticsNow":Z
    .local v18, "writeStatisticsNow":Z
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v2, v2

    move/from16 v19, v3

    const/4 v3, 0x1

    .end local v3    # "i":I
    .local v19, "i":I
    sub-int/2addr v2, v3

    const/4 v11, 0x0

    invoke-static {v9, v11, v10, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1245
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v3, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v3, v8}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    const/4 v9, 0x0

    aput-object v3, v2, v9

    .line 1246
    const/4 v2, 0x1

    const/4 v3, 0x0

    .end local v18    # "writeStatisticsNow":Z
    .restart local v2    # "writeStatisticsNow":Z
    goto :goto_4

    .line 1247
    .end local v19    # "i":I
    .restart local v3    # "i":I
    :cond_b
    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "writeStatisticsNow":Z
    .end local v3    # "i":I
    .restart local v18    # "writeStatisticsNow":Z
    .restart local v19    # "i":I
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 1249
    .end local v18    # "writeStatisticsNow":Z
    .end local v19    # "i":I
    .restart local v2    # "writeStatisticsNow":Z
    .restart local v3    # "i":I
    :goto_3
    move/from16 v2, v18

    .end local v3    # "i":I
    .restart local v19    # "i":I
    :goto_4
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v3, v9, v3

    .line 1251
    .local v3, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-wide v9, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long/2addr v9, v4

    .line 1252
    .local v9, "lastSyncTime":J
    const/4 v11, 0x0

    .line 1253
    .local v11, "writeStatusNow":Z
    const-string/jumbo v12, "success"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-wide/16 v17, 0x0

    if-eqz v12, :cond_e

    .line 1255
    move/from16 v20, v11

    .end local v11    # "writeStatusNow":Z
    .local v20, "writeStatusNow":Z
    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    cmp-long v11, v11, v17

    if-eqz v11, :cond_c

    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v11, v11, v17

    if-eqz v11, :cond_d

    .line 1256
    :cond_c
    const/4 v11, 0x1

    .end local v20    # "writeStatusNow":Z
    .restart local v11    # "writeStatusNow":Z
    move/from16 v20, v11

    .line 1258
    .end local v11    # "writeStatusNow":Z
    .restart local v20    # "writeStatusNow":Z
    :cond_d
    iget v11, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v15, v11, v9, v10}, Landroid/content/SyncStatusInfo;->setLastSuccess(IJ)V

    .line 1259
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1260
    iget-wide v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v11, v4

    iput-wide v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    goto :goto_5

    .line 1261
    .end local v20    # "writeStatusNow":Z
    .restart local v11    # "writeStatusNow":Z
    :cond_e
    move/from16 v20, v11

    .end local v11    # "writeStatusNow":Z
    .restart local v20    # "writeStatusNow":Z
    const-string v11, "canceled"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 1262
    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v11, v11, v17

    if-nez v11, :cond_f

    .line 1263
    const/4 v11, 0x1

    move/from16 v20, v11

    .line 1265
    :cond_f
    iget-object v11, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v11, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1266
    iget-object v11, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v11, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1268
    iget v11, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v15, v11, v9, v10, v6}, Landroid/content/SyncStatusInfo;->setLastFailure(IJLjava/lang/String;)V

    .line 1270
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1271
    iget-wide v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v11, v4

    iput-wide v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_5

    .line 1274
    :cond_10
    iget-object v11, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v11, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1275
    iget-object v11, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v11, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1276
    const/16 v20, 0x1

    .line 1278
    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1279
    .local v11, "event":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    .end local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .local v17, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    const-string v3, ""

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Source="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v3, v3, v6

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Elapsed="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    invoke-static {v11, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 1282
    const-string v3, " Reason="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    const/4 v3, 0x0

    iget v6, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    invoke-static {v3, v6}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    if-eqz v3, :cond_13

    .line 1285
    const-string v3, " Exemption="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_12

    const/4 v6, 0x2

    if-eq v3, v6, :cond_11

    .line 1294
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1291
    :cond_11
    const-string/jumbo v3, "top"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    goto :goto_6

    .line 1288
    :cond_12
    const-string v3, "fg"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    :cond_13
    :goto_6
    const-string v3, " Extras="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    invoke-static {v3, v11}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 1301
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/content/SyncStatusInfo;->addEvent(Ljava/lang/String;)V

    .line 1303
    if-eqz v20, :cond_14

    .line 1304
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    goto :goto_7

    .line 1305
    :cond_14
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1306
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    iget-object v6, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v4, 0x927c0

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1309
    :cond_15
    :goto_7
    if-eqz v2, :cond_16

    .line 1310
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    goto :goto_8

    .line 1311
    :cond_16
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1312
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0x1b7740

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1315
    .end local v0    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v2    # "writeStatisticsNow":Z
    .end local v8    # "day":I
    .end local v9    # "lastSyncTime":J
    .end local v11    # "event":Ljava/lang/StringBuilder;
    .end local v15    # "status":Landroid/content/SyncStatusInfo;
    .end local v17    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v19    # "i":I
    .end local v20    # "writeStatusNow":Z
    :cond_17
    :goto_8
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1317
    const/16 v0, 0x8

    move/from16 v2, p10

    invoke-virtual {v1, v0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 1318
    return-void

    .line 1315
    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-wide/from16 v13, p8

    :goto_9
    move/from16 v2, p10

    :goto_a
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_a
.end method

.method public writeAllState()V
    .locals 2

    .line 1576
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1578
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1579
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1580
    monitor-exit v0

    .line 1581
    return-void

    .line 1580
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

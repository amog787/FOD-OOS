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

.field private static final ACCOUNT_INFO_FILE_NAME:Ljava/lang/String; = "accounts.xml"

.field private static final DEFAULT_FLEX_PERCENT_SYNC:D = 0.04

.field private static final DEFAULT_MIN_FLEX_ALLOWED_SECS:J = 0x5L

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field private static final DELETE_LEGACY_PARCEL_FILES:Z = true

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field private static final LEGACY_STATISTICS_FILE_NAME:Ljava/lang/String; = "stats.bin"

.field private static final LEGACY_STATUS_FILE_NAME:Ljava/lang/String; = "status.bin"

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

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

.field private static final STATISTICS_FILE_NAME:Ljava/lang/String; = "stats"

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field private static final STATUS_FILE_NAME:Ljava/lang/String; = "status"

.field private static final SYNC_DIR_NAME:Ljava/lang/String; = "sync"

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

.field final mAuthorities:Landroid/util/SparseArray;
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

.field final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

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

.field private mSyncDir:Ljava/io/File;

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

.field final mSyncStatus:Landroid/util/SparseArray;
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

    .line 142
    const-string v0, "OTHER"

    const-string v1, "LOCAL"

    const-string v2, "POLL"

    const-string v3, "USER"

    const-string v4, "PERIODIC"

    const-string v5, "FEED"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    .line 174
    const-string v1, "contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataDir"    # Ljava/io/File;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 443
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 446
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 453
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 457
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    .line 460
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 463
    const/16 v1, 0x1c

    new-array v1, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 506
    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 507
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 519
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/content/SyncStorageEngine$MyHandler;-><init>(Lcom/android/server/content/SyncStorageEngine;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    .line 520
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 521
    sput-object p0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 522
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 524
    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 526
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    .line 529
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 530
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "sync"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    .line 531
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 533
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    .line 535
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string v5, "accounts.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "sync-accounts"

    invoke-direct {v2, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 537
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v5, "status"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "sync-status"

    invoke-direct {v2, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 538
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v5, "stats"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "sync-stats"

    invoke-direct {v2, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 540
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 541
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 542
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 544
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v2}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 546
    .local v2, "size":I
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Loaded "

    aput-object v5, v4, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v7, " items"

    aput-object v7, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 547
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 548
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v0

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 547
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;
    .locals 1

    .line 87
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    return-object v0
.end method

.method public static calculateDefaultFlexTime(J)J
    .locals 4
    .param p0, "syncTimeSeconds"    # J

    .line 635
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 639
    const-wide/16 v0, 0x0

    return-wide v0

    .line 640
    :cond_0
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 641
    long-to-double v0, p0

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    .line 644
    :cond_1
    const-wide/16 v0, 0xd80

    return-wide v0
.end method

.method private createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 3
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .line 1542
    if-gez p2, :cond_0

    .line 1543
    iget p2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1544
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1545
    const/4 p3, 0x1

    .line 1547
    :cond_0
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created a new AuthorityInfo for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_1
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 1551
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1552
    if-eqz p3, :cond_2

    .line 1553
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1555
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

    .line 1471
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    .line 1472
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

    .line 1495
    new-instance v0, Landroid/accounts/AccountAndUser;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1496
    .local v0, "au":Landroid/accounts/AccountAndUser;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1497
    .local v1, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "SyncManager"

    if-nez v1, :cond_1

    .line 1498
    if-eqz p2, :cond_0

    .line 1499
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": unknown account "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_0
    return-object v3

    .line 1505
    :cond_1
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1506
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v5, :cond_3

    .line 1507
    if-eqz p2, :cond_2

    .line 1508
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1509
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

    .line 1512
    :cond_2
    return-object v3

    .line 1514
    :cond_3
    return-object v5
.end method

.method private getCurrentDayLocked()I
    .locals 5

    .line 1476
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1477
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1478
    .local v0, "dayOfYear":I
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1479
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    .line 1480
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1481
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1482
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    .line 1484
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

    .line 1346
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1347
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1348
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

    .line 1375
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1376
    .local v0, "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    if-nez v0, :cond_0

    .line 1377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1378
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1380
    :cond_0
    return-object v0
.end method

.method private getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .line 1525
    const/4 v0, 0x0

    .line 1526
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v1, Landroid/accounts/AccountAndUser;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v1, v2, v3}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1527
    .local v1, "au":Landroid/accounts/AccountAndUser;
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1528
    .local v2, "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v2, :cond_0

    .line 1529
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    invoke-direct {v3, v1}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    move-object v2, v3

    .line 1530
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    :cond_0
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1533
    if-nez v0, :cond_1

    .line 1534
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1535
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    :cond_1
    return-object v0
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .locals 2
    .param p1, "authorityId"    # I

    .line 1587
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    .line 1588
    .local v0, "status":Landroid/content/SyncStatusInfo;
    if-nez v0, :cond_0

    .line 1589
    new-instance v1, Landroid/content/SyncStatusInfo;

    invoke-direct {v1, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    move-object v0, v1

    .line 1590
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1592
    :cond_0
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .locals 2

    .line 566
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_0

    .line 569
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0

    .line 567
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

    .line 558
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v0, :cond_0

    .line 559
    return-void

    .line 561
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 562
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 563
    return-void
.end method

.method private maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .locals 2
    .param p1, "syncDir"    # Ljava/io/File;

    .line 1744
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "pending.bin"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1745
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1746
    return-void

    .line 1748
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1750
    return-void
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .locals 10

    .line 1757
    const/4 v0, 0x0

    .line 1759
    .local v0, "writeNeeded":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1760
    .local v1, "authoritiesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1761
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_3

    .line 1762
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1764
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    sget-object v6, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1765
    .local v6, "newAuthorityName":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1766
    goto :goto_1

    .line 1771
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    iget-boolean v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-nez v7, :cond_1

    .line 1776
    goto :goto_1

    .line 1780
    :cond_1
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v9, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v7, v8, v6, v9}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1784
    .local v7, "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string v8, "cleanup"

    invoke-direct {p0, v7, v8}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1785
    goto :goto_1

    .line 1788
    :cond_2
    const/4 v8, -0x1

    .line 1789
    invoke-direct {p0, v7, v8, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v4

    .line 1790
    .local v4, "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1791
    const/4 v0, 0x1

    .line 1761
    .end local v4    # "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "newAuthorityName":Ljava/lang/String;
    .end local v7    # "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1794
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

    .line 1795
    .local v5, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8, v4}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1800
    const/4 v0, 0x1

    .line 1801
    .end local v5    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    goto :goto_2

    .line 1803
    :cond_4
    return v0
.end method

.method public static newTestInstance(Landroid/content/Context;)Lcom/android/server/content/SyncStorageEngine;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 554
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

    .line 1823
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const-string v4, "SyncManager"

    const/4 v5, 0x0

    .line 1824
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v6, -0x1

    .line 1826
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

    .line 1831
    :goto_0
    goto :goto_1

    .line 1829
    :catch_0
    move-exception v0

    .line 1830
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v8, "the id of the authority is null"

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1827
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1828
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v8, "error parsing the id of the authority"

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1832
    :goto_1
    if-ltz v6, :cond_f

    .line 1833
    const-string v0, "authority"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1834
    .local v8, "authorityName":Ljava/lang/String;
    const-string v0, "enabled"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1835
    .local v9, "enabled":Ljava/lang/String;
    const-string/jumbo v0, "syncable"

    invoke-interface {v2, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1836
    .local v0, "syncable":Ljava/lang/String;
    const-string v10, "account"

    invoke-interface {v2, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1837
    .local v10, "accountName":Ljava/lang/String;
    const-string/jumbo v11, "type"

    invoke-interface {v2, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1838
    .local v11, "accountType":Ljava/lang/String;
    const-string/jumbo v12, "user"

    invoke-interface {v2, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1839
    .local v12, "user":Ljava/lang/String;
    const-string/jumbo v13, "package"

    invoke-interface {v2, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1840
    .local v13, "packageName":Ljava/lang/String;
    const-string v14, "class"

    invoke-interface {v2, v7, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1841
    .local v7, "className":Ljava/lang/String;
    if-nez v12, :cond_0

    const/4 v15, 0x0

    goto :goto_2

    :cond_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1842
    .local v15, "userId":I
    :goto_2
    const/4 v14, -0x1

    if-nez v11, :cond_1

    if-nez v13, :cond_1

    .line 1843
    const-string v11, "com.google"

    .line 1844
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v11

    move-object v11, v0

    goto :goto_3

    .line 1846
    :cond_1
    move-object v14, v11

    move-object v11, v0

    .end local v0    # "syncable":Ljava/lang/String;
    .local v11, "syncable":Ljava/lang/String;
    .local v14, "accountType":Ljava/lang/String;
    :goto_3
    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1847
    .end local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const-string v5, "SyncManagerFile"

    const/4 v2, 0x2

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    const-string v2, " syncable="

    move-object/from16 v19, v12

    .end local v12    # "user":Ljava/lang/String;
    .local v19, "user":Ljava/lang/String;
    const-string v12, " enabled="

    if-eqz v18, :cond_2

    .line 1848
    move-object/from16 v18, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding authority: account="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accountType="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1847
    :cond_2
    move-object/from16 v18, v4

    .line 1858
    :goto_4
    if-nez v0, :cond_8

    .line 1859
    const/4 v4, 0x2

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1860
    const-string v4, "Creating authority entry"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_3
    if-eqz v10, :cond_7

    if-eqz v8, :cond_7

    .line 1863
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v10, v14}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v8, v15}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1866
    .local v4, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v5, v15}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAccountValid(Landroid/accounts/Account;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1867
    invoke-virtual {v3, v8, v15}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAuthorityValid(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1868
    const/4 v1, 0x0

    move-object/from16 v5, p0

    invoke-direct {v5, v4, v6, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1875
    if-lez p2, :cond_4

    .line 1876
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1885
    .end local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_4
    move-object v1, v0

    const/16 v16, 0x0

    const/16 v20, 0x1

    goto :goto_7

    .line 1867
    .restart local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_5
    move-object/from16 v5, p0

    goto :goto_5

    .line 1866
    :cond_6
    move-object/from16 v5, p0

    .line 1879
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

    iget-object v3, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

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

    .line 1862
    .end local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v21    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_7
    move-object/from16 v21, v0

    const/16 v16, 0x0

    const/16 v20, 0x1

    move-object/from16 v5, p0

    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v21    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    goto :goto_6

    .line 1858
    .end local v21    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_8
    move-object/from16 v21, v0

    const/16 v16, 0x0

    const/16 v20, 0x1

    move-object/from16 v5, p0

    .line 1885
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v21    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_6
    move-object/from16 v1, v21

    .end local v21    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_7
    if-eqz v1, :cond_e

    .line 1886
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

    .line 1888
    if-nez v11, :cond_b

    .line 1889
    const/4 v0, -0x1

    goto :goto_a

    :cond_b
    :try_start_1
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_a
    iput v0, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1900
    :goto_b
    goto :goto_d

    .line 1890
    :catch_2
    move-exception v0

    .line 1893
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "unknown"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1894
    const/4 v2, -0x1

    iput v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_b

    .line 1896
    :cond_c
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1897
    move/from16 v2, v20

    goto :goto_c

    :cond_d
    move/from16 v2, v16

    :goto_c
    iput v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_b

    .line 1902
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure adding authority: auth="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "authorityName":Ljava/lang/String;
    .end local v9    # "enabled":Ljava/lang/String;
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "syncable":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "accountType":Ljava/lang/String;
    .end local v15    # "userId":I
    .end local v19    # "user":Ljava/lang/String;
    :goto_d
    move-object v5, v1

    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_f
    return-object v5
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1952
    const-string v0, "error parsing bundle value"

    const-string v1, "SyncManager"

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1953
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "type"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1954
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v5, "value1"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1955
    .local v5, "value1":Ljava/lang/String;
    const-string/jumbo v6, "value2"

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1958
    .local v2, "value2":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "long"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1959
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1960
    :cond_0
    const-string/jumbo v6, "integer"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1961
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1962
    :cond_1
    const-string v6, "double"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1963
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p2, v3, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 1964
    :cond_2
    const-string v6, "float"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1965
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1966
    :cond_3
    const-string v6, "boolean"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1967
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1968
    :cond_4
    const-string/jumbo v6, "string"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1969
    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1970
    :cond_5
    const-string v6, "account"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1971
    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v5, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1975
    :catch_0
    move-exception v6

    .line 1976
    .local v6, "e":Ljava/lang/NullPointerException;
    invoke-static {v1, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1973
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v6

    .line 1974
    .local v6, "e":Ljava/lang/NumberFormatException;
    invoke-static {v1, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1977
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_0
    nop

    .line 1978
    :goto_1
    return-void
.end method

.method private parseLastEventInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2237
    const-wide/16 v0, 0x0

    .line 2238
    .local v0, "time":J
    const/4 v2, 0x0

    .line 2240
    .local v2, "message":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 2245
    :cond_0
    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 2246
    goto :goto_1

    .line 2242
    :cond_1
    const-wide v3, 0x10300000001L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v0

    .line 2243
    nop

    .line 2248
    :goto_1
    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    new-instance v3, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-object v3
.end method

.method private parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 1807
    const-string v0, "SyncManager"

    const/4 v1, 0x0

    const-string/jumbo v2, "user"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1808
    .local v2, "user":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1810
    .local v3, "userId":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    .line 1815
    :goto_0
    goto :goto_1

    .line 1813
    :catch_0
    move-exception v4

    .line 1814
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "the user in listen-for-tickles is null"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1811
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    .line 1812
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v5, "error parsing the user for listen-for-tickles"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1816
    :goto_1
    const-string v0, "enabled"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1817
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

    .line 1818
    .local v1, "listen":Z
    :goto_3
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1819
    return-void
.end method

.method private parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .locals 18
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1915
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "SyncManager"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1916
    .local v7, "extras":Landroid/os/Bundle;
    const/4 v4, 0x0

    const-string/jumbo v0, "period"

    invoke-interface {v1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1917
    .local v12, "periodValue":Ljava/lang/String;
    const-string v0, "flex"

    invoke-interface {v1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1921
    .local v13, "flexValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-wide v14, v4

    .line 1928
    .local v14, "period":J
    nop

    .line 1930
    :try_start_1
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1940
    .local v3, "flextime":J
    move-wide/from16 v16, v3

    goto :goto_0

    .line 1936
    .end local v3    # "flextime":J
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 1937
    .local v0, "expected":Ljava/lang/NullPointerException;
    invoke-static {v14, v15}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v4

    .line 1938
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

    .line 1931
    .end local v0    # "expected":Ljava/lang/NullPointerException;
    .end local v4    # "flextime":J
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 1932
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v14, v15}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v4

    .line 1933
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

    .line 1940
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    move-wide/from16 v16, v4

    .line 1942
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

    .line 1947
    .local v0, "periodicSync":Landroid/content/PeriodicSync;
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1948
    return-object v0

    .line 1925
    .end local v0    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v14    # "period":J
    .end local v16    # "flextime":J
    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 1926
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "the period of a periodic sync is null"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1927
    return-object v4

    .line 1922
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 1923
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "error parsing the period of a periodic sync"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1924
    return-object v4
.end method

.method private readAccountInfoLocked()V
    .locals 22

    .line 1631
    move-object/from16 v1, p0

    const-string v2, "No initial accounts"

    const-string v3, "Error reading accounts"

    const-string v0, "SyncManagerFile"

    const-string v4, "SyncManager"

    const/4 v5, -0x1

    .line 1632
    .local v5, "highestAuthorityId":I
    const/4 v6, 0x0

    .line 1634
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    move-object v6, v7

    .line 1635
    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1636
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

    .line 1638
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v8, v0

    .line 1639
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1640
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v9, v0

    .line 1641
    .local v9, "eventType":I
    :goto_0
    const/4 v10, 0x1

    if-eq v9, v7, :cond_1

    if-eq v9, v10, :cond_1

    .line 1643
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v9, v0

    goto :goto_0

    .line 1645
    :cond_1
    if-ne v9, v10, :cond_3

    .line 1646
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    add-int/lit8 v0, v5, 0x1

    iget v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1727
    if-eqz v6, :cond_2

    .line 1729
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1731
    goto :goto_1

    .line 1730
    :catch_0
    move-exception v0

    .line 1647
    :cond_2
    :goto_1
    return-void

    .line 1650
    :cond_3
    :try_start_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 1651
    .local v11, "tagName":Ljava/lang/String;
    const-string v0, "accounts"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1652
    const-string/jumbo v0, "listen-for-tickles"

    const/4 v12, 0x0

    invoke-interface {v8, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 1653
    .local v13, "listen":Ljava/lang/String;
    const-string/jumbo v0, "version"

    invoke-interface {v8, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v0

    .line 1656
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

    .line 1659
    .local v0, "version":I
    :goto_2
    move v7, v0

    goto :goto_3

    .line 1657
    .end local v0    # "version":I
    :catch_1
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 1658
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/16 v16, 0x0

    move/from16 v7, v16

    .line 1661
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v7, "version":I
    :goto_3
    const/4 v15, 0x3

    if-ge v7, v15, :cond_5

    .line 1662
    :try_start_4
    iput-boolean v10, v1, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    .line 1665
    :cond_5
    const-string/jumbo v0, "nextAuthorityId"

    invoke-interface {v8, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v18, v0

    .line 1667
    .local v18, "nextIdString":Ljava/lang/String;
    if-nez v18, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :try_start_5
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1668
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

    .line 1671
    .end local v0    # "id":I
    goto :goto_5

    .line 1669
    :catch_2
    move-exception v0

    .line 1672
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

    .line 1674
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

    .line 1677
    goto :goto_7

    .line 1675
    :catch_3
    move-exception v0

    .line 1676
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v12, 0x0

    :try_start_8
    iput v12, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    .line 1678
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_7
    iget v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    if-nez v0, :cond_8

    .line 1679
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

    .line 1680
    .local v0, "random":Ljava/util/Random;
    const v9, 0x15180

    invoke-virtual {v0, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    iput v9, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    goto :goto_8

    .line 1678
    .end local v0    # "random":Ljava/util/Random;
    .end local v12    # "eventType":I
    .end local v20    # "offsetString":Ljava/lang/String;
    .restart local v9    # "eventType":I
    .restart local v10    # "offsetString":Ljava/lang/String;
    :cond_8
    move v12, v9

    move-object/from16 v20, v10

    .line 1682
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

    .line 1683
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1684
    .end local v12    # "eventType":I
    .local v0, "eventType":I
    const/4 v9, 0x0

    .line 1685
    .local v9, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v10, 0x0

    .line 1686
    .local v10, "periodicSync":Landroid/content/PeriodicSync;
    new-instance v12, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    iget-object v15, v1, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-direct {v12, v15}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;-><init>(Landroid/content/Context;)V

    .line 1688
    .local v12, "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    :goto_b
    const/4 v15, 0x2

    if-ne v0, v15, :cond_10

    .line 1689
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, v17

    .line 1690
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    move-object/from16 v21, v13

    const/4 v13, 0x2

    .end local v13    # "listen":Ljava/lang/String;
    .local v21, "listen":Ljava/lang/String;
    if-ne v15, v13, :cond_e

    .line 1691
    const-string v13, "authority"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1692
    invoke-direct {v1, v8, v7, v12}, Lcom/android/server/content/SyncStorageEngine;->parseAuthority(Lorg/xmlpull/v1/XmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v13

    move-object v9, v13

    .line 1693
    const/4 v10, 0x0

    .line 1694
    if-eqz v9, :cond_c

    .line 1695
    iget v13, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-le v13, v5, :cond_b

    .line 1696
    iget v13, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move v5, v13

    const/16 v16, 0x0

    const/16 v17, 0x2

    goto/16 :goto_c

    .line 1695
    :cond_b
    const/16 v16, 0x0

    const/16 v17, 0x2

    goto :goto_c

    .line 1699
    :cond_c
    const/4 v15, 0x3

    new-array v13, v15, [Ljava/lang/Object;

    const-string v15, "26513719"

    const/16 v16, 0x0

    aput-object v15, v13, v16

    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v19, 0x1

    aput-object v15, v13, v19

    const-string v15, "Malformed authority"

    const/16 v17, 0x2

    aput-object v15, v13, v17

    const v15, 0x534e4554

    invoke-static {v15, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_c

    .line 1702
    :cond_d
    const/16 v16, 0x0

    const/16 v17, 0x2

    const-string/jumbo v13, "listenForTickles"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1703
    invoke-direct {v1, v8}, Lcom/android/server/content/SyncStorageEngine;->parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_c

    .line 1705
    :cond_e
    move/from16 v17, v13

    const/16 v16, 0x0

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    const/4 v15, 0x3

    if-ne v13, v15, :cond_f

    .line 1706
    const-string/jumbo v13, "periodicSync"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    if-eqz v9, :cond_11

    .line 1707
    invoke-direct {v1, v8, v9}, Lcom/android/server/content/SyncStorageEngine;->parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    move-result-object v13

    move-object v10, v13

    goto :goto_c

    .line 1709
    :cond_f
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    const/4 v15, 0x4

    if-ne v13, v15, :cond_11

    if-eqz v10, :cond_11

    .line 1710
    const-string v13, "extra"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1711
    iget-object v13, v10, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-direct {v1, v8, v13}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    goto :goto_c

    .line 1688
    .end local v21    # "listen":Ljava/lang/String;
    .restart local v13    # "listen":Ljava/lang/String;
    :cond_10
    move-object/from16 v21, v13

    move/from16 v17, v15

    const/16 v16, 0x0

    .line 1715
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

    .line 1716
    const/4 v13, 0x1

    if-ne v0, v13, :cond_12

    goto :goto_d

    :cond_12
    move-object/from16 v13, v21

    goto/16 :goto_b

    .line 1651
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

    .line 1726
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "eventType":I
    .end local v11    # "tagName":Ljava/lang/String;
    :goto_d
    add-int/lit8 v0, v5, 0x1

    iget v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1727
    if-eqz v6, :cond_14

    .line 1729
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1731
    :goto_e
    goto :goto_f

    .line 1730
    :catch_4
    move-exception v0

    goto :goto_e

    .line 1735
    :cond_14
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    .line 1736
    return-void

    .line 1726
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_13

    .line 1721
    :catch_5
    move-exception v0

    move-object v7, v0

    .line 1722
    .local v7, "e":Ljava/io/IOException;
    if-nez v6, :cond_15

    :try_start_a
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1723
    :cond_15
    invoke-static {v4, v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1726
    :goto_10
    add-int/lit8 v0, v5, 0x1

    iget v2, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1727
    if-eqz v6, :cond_16

    .line 1729
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 1731
    goto :goto_11

    .line 1730
    :catch_6
    move-exception v0

    .line 1724
    :cond_16
    :goto_11
    return-void

    .line 1718
    .end local v7    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v0

    move-object v2, v0

    .line 1719
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_c
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1726
    add-int/lit8 v0, v5, 0x1

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1727
    if-eqz v6, :cond_17

    .line 1729
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 1731
    goto :goto_12

    .line 1730
    :catch_8
    move-exception v0

    .line 1720
    :cond_17
    :goto_12
    return-void

    .line 1726
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_13
    add-int/lit8 v0, v5, 0x1

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1727
    if-eqz v6, :cond_18

    .line 1729
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 1731
    goto :goto_14

    .line 1730
    :catch_9
    move-exception v0

    .line 1733
    :cond_18
    :goto_14
    throw v2
.end method

.method private readDayStatsLocked(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2501
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2502
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    const/4 v1, 0x0

    .line 2504
    .local v1, "statsCount":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 2506
    :cond_0
    const-wide v2, 0x20b00000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 2507
    .local v2, "token":J
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readIndividualDayStatsLocked(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-result-object v4

    .line 2508
    .local v4, "stats":Lcom/android/server/content/SyncStorageEngine$DayStats;
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2509
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aput-object v4, v5, v1

    .line 2510
    add-int/lit8 v1, v1, 0x1

    .line 2511
    array-length v5, v5

    if-ne v1, v5, :cond_1

    .line 2512
    return-void

    .line 2516
    .end local v2    # "token":J
    .end local v4    # "stats":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private readIndividualDayStatsLocked(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/content/SyncStorageEngine$DayStats;
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2523
    const-wide v0, 0x10500000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2525
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .local v2, "stats":Lcom/android/server/content/SyncStorageEngine$DayStats;
    goto :goto_0

    .line 2528
    .end local v2    # "stats":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_0
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2532
    .restart local v2    # "stats":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 2555
    :cond_1
    const-wide v3, 0x10300000005L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2556
    goto :goto_1

    .line 2552
    :cond_2
    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    iput v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2553
    goto :goto_1

    .line 2549
    :cond_3
    const-wide v3, 0x10300000003L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2550
    goto :goto_1

    .line 2546
    :cond_4
    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    iput v3, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2547
    goto :goto_1

    .line 2535
    :cond_5
    const-string v3, "SyncManager"

    const-string v4, "Failed to read the day via fast-path; some data might not have been read."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 2538
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2539
    .local v3, "temp":Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget v4, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2540
    iget-wide v4, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iput-wide v4, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2541
    iget v4, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2542
    iget-wide v4, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iput-wide v4, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2543
    move-object v2, v3

    .line 2544
    nop

    .line 2558
    .end local v3    # "temp":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :goto_1
    goto :goto_0

    :cond_6
    return-object v2
.end method

.method private readStatisticsLocked()V
    .locals 3

    .line 2486
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->upgradeStatisticsIfNeededLocked()V

    .line 2488
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2489
    return-void

    .line 2492
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2493
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readDayStatsLocked(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2494
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2497
    .end local v0    # "in":Ljava/io/FileInputStream;
    :cond_1
    goto :goto_1

    .line 2492
    .restart local v0    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/content/SyncStorageEngine;
    :cond_2
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2495
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/content/SyncStorageEngine;
    :catch_0
    move-exception v0

    .line 2496
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SyncManager"

    const-string v2, "Unable to read day stats file."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2498
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private readStatsParcelLocked(Ljava/io/File;)V
    .locals 10
    .param p1, "parcel"    # Ljava/io/File;

    .line 2436
    const-string v0, "SyncManager"

    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2437
    .local v1, "parcelFile":Landroid/util/AtomicFile;
    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v2

    .line 2438
    .local v2, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2439
    .local v3, "in":Landroid/os/Parcel;
    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2440
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2442
    const/4 v4, 0x0

    .line 2443
    .local v4, "index":I
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move v6, v5

    .local v6, "token":I
    if-eqz v5, :cond_4

    .line 2444
    const/16 v5, 0x65

    const/16 v7, 0x64

    if-eq v6, v5, :cond_1

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 2460
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown stats token: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    goto :goto_2

    .line 2445
    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2446
    .local v5, "day":I
    if-ne v6, v7, :cond_2

    .line 2447
    add-int/lit16 v7, v5, -0x7d9

    add-int/lit16 v5, v7, 0x37a5

    .line 2449
    :cond_2
    new-instance v7, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v7, v5}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2450
    .local v7, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2451
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2452
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2453
    invoke-virtual {v3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2454
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v8, v8

    if-ge v4, v8, :cond_3

    .line 2455
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aput-object v7, v8, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2456
    add-int/lit8 v4, v4, 0x1

    .line 2458
    .end local v5    # "day":I
    .end local v7    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_3
    goto :goto_0

    .line 2466
    .end local v1    # "parcelFile":Landroid/util/AtomicFile;
    .end local v2    # "data":[B
    .end local v3    # "in":Landroid/os/Parcel;
    .end local v4    # "index":I
    .end local v6    # "token":I
    :cond_4
    :goto_2
    goto :goto_3

    .line 2464
    :catch_0
    move-exception v1

    .line 2465
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "No initial statistics"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return-void
.end method

.method private readStatusInfoLocked(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2103
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2105
    .local v0, "proto":Landroid/util/proto/ProtoInputStream;
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 2107
    :cond_0
    const-wide v1, 0x20b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 2108
    .local v1, "token":J
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/content/SyncStatusInfo;

    move-result-object v3

    .line 2109
    .local v3, "status":Landroid/content/SyncStatusInfo;
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2110
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 2111
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2112
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2116
    .end local v1    # "token":J
    .end local v3    # "status":Landroid/content/SyncStatusInfo;
    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private readStatusParcelLocked(Ljava/io/File;)V
    .locals 9
    .param p1, "parcel"    # Ljava/io/File;

    .line 2042
    const-string v0, "SyncManager"

    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2043
    .local v1, "parcelFile":Landroid/util/AtomicFile;
    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v2

    .line 2044
    .local v2, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2045
    .local v3, "in":Landroid/os/Parcel;
    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2046
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2048
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v6, v4

    .local v6, "token":I
    if-eqz v4, :cond_2

    .line 2049
    const/16 v4, 0x64

    if-ne v6, v4, :cond_1

    .line 2051
    :try_start_1
    new-instance v4, Landroid/content/SyncStatusInfo;

    invoke-direct {v4, v3}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 2052
    .local v4, "status":Landroid/content/SyncStatusInfo;
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v8, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_0

    .line 2053
    iput-boolean v5, v4, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2054
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v8, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v7, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2058
    .end local v4    # "status":Landroid/content/SyncStatusInfo;
    :cond_0
    goto :goto_0

    .line 2056
    :catch_0
    move-exception v4

    .line 2057
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "Unable to parse some sync status."

    invoke-static {v0, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2058
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 2061
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown status token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2067
    .end local v1    # "parcelFile":Landroid/util/AtomicFile;
    .end local v2    # "data":[B
    .end local v3    # "in":Landroid/os/Parcel;
    .end local v6    # "token":I
    :cond_2
    goto :goto_1

    .line 2065
    :catch_1
    move-exception v1

    .line 2066
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "No initial status"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private readSyncStatusInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/content/SyncStatusInfo;
    .locals 10
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2123
    const-wide v0, 0x10500000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2125
    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .local v2, "status":Landroid/content/SyncStatusInfo;
    goto :goto_0

    .line 2128
    .end local v2    # "status":Landroid/content/SyncStatusInfo;
    :cond_0
    new-instance v2, Landroid/content/SyncStatusInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 2131
    .restart local v2    # "status":Landroid/content/SyncStatusInfo;
    :goto_0
    const/4 v3, 0x0

    .line 2132
    .local v3, "successTimesCount":I
    const/4 v4, 0x0

    .line 2133
    .local v4, "failureTimesCount":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2135
    .local v5, "lastEventInformation":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;>;"
    :goto_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    const-string v7, "SyncManager"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    .line 2219
    :pswitch_0
    const-wide v8, 0x20300000012L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v8

    .line 2221
    .local v8, "failureTime":J
    iget-object v6, v2, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    array-length v6, v6

    if-ne v4, v6, :cond_1

    .line 2222
    const-string v6, "Attempted to read more per source last failure times than expected; data might be corrupted."

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    goto/16 :goto_2

    .line 2226
    :cond_1
    iget-object v6, v2, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    aput-wide v8, v6, v4

    .line 2227
    add-int/lit8 v4, v4, 0x1

    .line 2228
    goto/16 :goto_2

    .line 2208
    .end local v8    # "failureTime":J
    :pswitch_1
    const-wide v8, 0x20300000011L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v8

    .line 2210
    .local v8, "successTime":J
    iget-object v6, v2, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    array-length v6, v6

    if-ne v3, v6, :cond_2

    .line 2211
    const-string v6, "Attempted to read more per source last success times than expected; data might be corrupted."

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    goto/16 :goto_2

    .line 2215
    :cond_2
    iget-object v6, v2, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    aput-wide v8, v6, v3

    .line 2216
    add-int/lit8 v3, v3, 0x1

    .line 2217
    goto/16 :goto_2

    .line 2202
    .end local v8    # "successTime":J
    :pswitch_2
    const-wide v6, 0x10b00000010L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2204
    .local v6, "yesterdayStatsToken":J
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {p0, p1, v8}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2205
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2206
    goto/16 :goto_2

    .line 2196
    .end local v6    # "yesterdayStatsToken":J
    :pswitch_3
    const-wide v6, 0x10b0000000fL

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2198
    .local v6, "todayStatsToken":J
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {p0, p1, v8}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2199
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2200
    goto/16 :goto_2

    .line 2190
    .end local v6    # "todayStatsToken":J
    :pswitch_4
    const-wide v6, 0x10b0000000eL

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2192
    .local v6, "totalStatsToken":J
    iget-object v8, v2, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {p0, p1, v8}, Lcom/android/server/content/SyncStorageEngine;->readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2193
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2194
    goto/16 :goto_2

    .line 2186
    .end local v6    # "totalStatsToken":J
    :pswitch_5
    const-wide v6, 0x1030000000dL

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    .line 2188
    goto/16 :goto_2

    .line 2178
    :pswitch_6
    const-wide v6, 0x20b0000000cL

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 2179
    .local v6, "eventToken":J
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->parseLastEventInfoLocked(Landroid/util/proto/ProtoInputStream;)Landroid/util/Pair;

    move-result-object v8

    .line 2180
    .local v8, "lastEventInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v8, :cond_3

    .line 2181
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2183
    :cond_3
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 2184
    goto/16 :goto_2

    .line 2174
    .end local v6    # "eventToken":J
    .end local v8    # "lastEventInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :pswitch_7
    const-wide v6, 0x2030000000bL

    .line 2175
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    .line 2174
    invoke-virtual {v2, v6, v7}, Landroid/content/SyncStatusInfo;->addPeriodicSyncTime(J)V

    .line 2176
    goto/16 :goto_2

    .line 2171
    :pswitch_8
    const-wide v6, 0x1080000000aL

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v6

    iput-boolean v6, v2, Landroid/content/SyncStatusInfo;->initialize:Z

    .line 2172
    goto :goto_2

    .line 2168
    :pswitch_9
    const-wide v6, 0x10800000009L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v6

    iput-boolean v6, v2, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2169
    goto :goto_2

    .line 2164
    :pswitch_a
    const-wide v6, 0x10300000008L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 2166
    goto :goto_2

    .line 2160
    :pswitch_b
    const-wide v6, 0x10900000007L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 2162
    goto :goto_2

    .line 2156
    :pswitch_c
    const-wide v6, 0x10500000006L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    iput v6, v2, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 2158
    goto :goto_2

    .line 2152
    :pswitch_d
    const-wide v6, 0x10300000005L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 2154
    goto :goto_2

    .line 2148
    :pswitch_e
    const-wide v6, 0x10500000004L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    iput v6, v2, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 2150
    goto :goto_2

    .line 2144
    :pswitch_f
    const-wide v6, 0x10300000003L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 2146
    goto :goto_2

    .line 2138
    :pswitch_10
    const-string v6, "Failed to read the authority id via fast-path; some data might not have been read."

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    new-instance v6, Landroid/content/SyncStatusInfo;

    .line 2141
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v7

    invoke-direct {v6, v7, v2}, Landroid/content/SyncStatusInfo;-><init>(ILandroid/content/SyncStatusInfo;)V

    move-object v2, v6

    .line 2142
    nop

    .line 2231
    :goto_2
    goto/16 :goto_1

    .line 2230
    :cond_4
    invoke-virtual {v2, v5}, Landroid/content/SyncStatusInfo;->populateLastEventsInformation(Ljava/util/ArrayList;)V

    .line 2231
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readSyncStatusStatsLocked(Landroid/util/proto/ProtoInputStream;Landroid/content/SyncStatusInfo$Stats;)V
    .locals 2
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "stats"    # Landroid/content/SyncStatusInfo$Stats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2256
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 2292
    :pswitch_1
    const-wide v0, 0x1050000000aL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 2294
    goto/16 :goto_1

    .line 2288
    :pswitch_2
    const-wide v0, 0x10500000009L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 2290
    goto :goto_1

    .line 2284
    :pswitch_3
    const-wide v0, 0x10500000008L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 2286
    goto :goto_1

    .line 2280
    :pswitch_4
    const-wide v0, 0x10500000007L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 2282
    goto :goto_1

    .line 2276
    :pswitch_5
    const-wide v0, 0x10500000006L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 2278
    goto :goto_1

    .line 2272
    :pswitch_6
    const-wide v0, 0x10500000005L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 2274
    goto :goto_1

    .line 2269
    :pswitch_7
    const-wide v0, 0x10500000004L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 2270
    goto :goto_1

    .line 2265
    :pswitch_8
    const-wide v0, 0x10500000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 2267
    goto :goto_1

    .line 2262
    :pswitch_9
    const-wide v0, 0x10500000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 2263
    goto :goto_1

    .line 2258
    :pswitch_a
    const-wide v0, 0x10300000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v0

    iput-wide v0, p2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 2260
    goto :goto_1

    .line 2296
    :pswitch_b
    return-void

    :goto_1
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authorityName"    # Ljava/lang/String;
    .param p4, "doWrite"    # Z

    .line 1571
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    new-instance v1, Landroid/accounts/AccountAndUser;

    invoke-direct {v1, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1572
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz v0, :cond_1

    .line 1573
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1574
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_1

    .line 1575
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v2, :cond_0

    .line 1576
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v2, v3}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1578
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1579
    if-eqz p4, :cond_1

    .line 1580
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1584
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

    .line 2420
    move-object v0, p1

    move-object v1, p4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v3, :cond_1

    .line 2422
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

    .line 2420
    :cond_0
    move-object v2, p0

    :cond_1
    move v10, p2

    .line 2426
    move-object/from16 v3, p5

    invoke-static {p1, p4, v3}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2428
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

    .line 2400
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v2, :cond_0

    .line 2402
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;III)V

    goto :goto_0

    .line 2405
    :cond_0
    new-instance v0, Landroid/content/SyncRequest$Builder;

    invoke-direct {v0}, Landroid/content/SyncRequest$Builder;-><init>()V

    .line 2407
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 2408
    invoke-virtual {v0, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 2409
    .local v0, "req":Landroid/content/SyncRequest$Builder;
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    .line 2410
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    .line 2412
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

    .line 876
    const/4 v0, 0x0

    .line 877
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

    .line 878
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

    .line 880
    goto :goto_0

    .line 882
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

    .line 883
    .local v4, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p3, :cond_1

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 884
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 885
    goto :goto_1

    .line 887
    :cond_1
    iget-wide v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v5, v5, p4

    if-nez v5, :cond_2

    iget-wide v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v5, v5, p6

    if-eqz v5, :cond_3

    .line 889
    :cond_2
    iput-wide p4, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 890
    iput-wide p6, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 891
    const/4 v0, 0x1

    .line 893
    .end local v4    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    goto :goto_1

    .line 894
    .end local v2    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_4
    goto :goto_0

    .line 895
    :cond_5
    return v0
.end method

.method private setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;III)V
    .locals 13
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "syncable"    # I
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .line 791
    move-object v8, p0

    move-object v9, p1

    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Set syncable "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v10, 0x1

    aput-object v9, v1, v10

    const-string v2, " value="

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const/4 v2, 0x4

    const-string v5, " cuid="

    aput-object v5, v1, v2

    .line 792
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    const/4 v2, 0x6

    const-string v5, " cpid="

    aput-object v5, v1, v2

    .line 793
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v1, v5

    .line 791
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 794
    iget-object v1, v8, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 795
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v2

    .line 796
    .local v11, "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    move v2, p2

    if-ge v2, v0, :cond_0

    .line 797
    const/4 v0, -0x1

    move v12, v0

    .end local p2    # "syncable":I
    .local v0, "syncable":I
    goto :goto_0

    .line 796
    .end local v0    # "syncable":I
    .restart local p2    # "syncable":I
    :cond_0
    move v12, v2

    .line 799
    .end local p2    # "syncable":I
    .local v12, "syncable":I
    :goto_0
    :try_start_1
    const-string v0, "SyncManager"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsSyncable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_1
    iget v0, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v0, v12, :cond_3

    .line 803
    const-string v0, "SyncManager"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 804
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

    .line 806
    :cond_2
    monitor-exit v1

    return-void

    .line 808
    :cond_3
    iput v12, v11, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 809
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 810
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 811
    if-ne v12, v10, :cond_4

    .line 812
    const/4 v3, -0x5

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v11

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;III)V

    .line 815
    :cond_4
    iget v0, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v10, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 816
    return-void

    .line 810
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

.method private upgradeStatisticsIfNeededLocked()V
    .locals 3

    .line 2470
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v2, "stats.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2471
    .local v0, "parcelStats":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2472
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readStatsParcelLocked(Ljava/io/File;)V

    .line 2473
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 2477
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2478
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2480
    :cond_1
    return-void
.end method

.method private upgradeStatusIfNeededLocked()V
    .locals 3

    .line 2071
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncDir:Ljava/io/File;

    const-string/jumbo v2, "status.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2072
    .local v0, "parcelStatus":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2073
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readStatusParcelLocked(Ljava/io/File;)V

    .line 2074
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 2078
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2079
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2081
    :cond_1
    return-void
.end method

.method private writeAccountInfoLocked()V
    .locals 14

    .line 1984
    const-string/jumbo v0, "listenForTickles"

    const-string v1, "accounts"

    const-string v2, "authority"

    const-string v3, "SyncManagerFile"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1985
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

    .line 1987
    :cond_0
    const/4 v3, 0x0

    .line 1990
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 1991
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1992
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1993
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1994
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1996
    invoke-interface {v4, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1997
    const-string/jumbo v5, "version"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1998
    const-string/jumbo v5, "nextAuthorityId"

    iget v6, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1999
    const-string/jumbo v5, "offsetInSeconds"

    iget v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2002
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2003
    .local v5, "M":I
    const/4 v6, 0x0

    .local v6, "m":I
    :goto_0
    const-string v8, "enabled"

    const-string/jumbo v9, "user"

    if-ge v6, v5, :cond_1

    .line 2004
    :try_start_1
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 2005
    .local v10, "userId":I
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 2006
    .local v11, "listen":Ljava/lang/Boolean;
    invoke-interface {v4, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2007
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v7, v9, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2008
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2009
    invoke-interface {v4, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2003
    nop

    .end local v10    # "userId":I
    .end local v11    # "listen":Ljava/lang/Boolean;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2012
    .end local v6    # "m":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2013
    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_2

    .line 2014
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2015
    .local v10, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v11, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2016
    .local v11, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-interface {v4, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2017
    const-string v12, "id"

    iget v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v7, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2018
    iget v12, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v7, v9, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2019
    iget-boolean v12, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v7, v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2020
    const-string v12, "account"

    iget-object v13, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v13, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v4, v7, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2021
    const-string/jumbo v12, "type"

    iget-object v13, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v13, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v4, v7, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2022
    iget-object v12, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-interface {v4, v7, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2023
    const-string/jumbo v12, "syncable"

    iget v13, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v7, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2024
    invoke-interface {v4, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2013
    nop

    .end local v10    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2026
    .end local v6    # "i":I
    :cond_2
    invoke-interface {v4, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2027
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2028
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2034
    .end local v0    # "N":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "M":I
    goto :goto_2

    .line 2029
    :catch_0
    move-exception v0

    .line 2030
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "SyncManager"

    const-string v2, "Error writing accounts"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2031
    if-eqz v3, :cond_3

    .line 2032
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2035
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-void
.end method

.method private writeDayStatsLocked(Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2592
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2593
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v1, v1

    .line 2594
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2595
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v3, v3, v2

    .line 2596
    .local v3, "stats":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v3, :cond_0

    .line 2597
    goto :goto_1

    .line 2599
    :cond_0
    const-wide v4, 0x20b00000001L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2601
    .local v4, "token":J
    const-wide v6, 0x10500000001L

    iget v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2602
    const-wide v6, 0x10500000002L

    iget v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2603
    const-wide v6, 0x10300000003L

    iget-wide v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2604
    const-wide v6, 0x10500000004L

    iget v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2605
    const-wide v6, 0x10300000005L

    iget-wide v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2606
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2594
    .end local v3    # "stats":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v4    # "token":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2608
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2609
    return-void
.end method

.method private writeStatusInfoLocked(Ljava/io/OutputStream;)V
    .locals 22
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 2329
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2330
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 2331
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 2332
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 2333
    .local v5, "info":Landroid/content/SyncStatusInfo;
    const-wide v6, 0x20b00000001L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 2335
    .local v6, "token":J
    const-wide v8, 0x10500000002L

    iget v10, v5, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2336
    const-wide v8, 0x10300000003L

    iget-wide v10, v5, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2337
    const-wide v8, 0x10500000004L

    iget v10, v5, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2338
    const-wide v8, 0x10300000005L

    iget-wide v10, v5, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2339
    const-wide v8, 0x10500000006L

    iget v10, v5, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2340
    const-wide v8, 0x10900000007L

    iget-object v10, v5, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2341
    const-wide v8, 0x10300000008L

    iget-wide v10, v5, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2342
    const-wide v8, 0x10800000009L

    iget-boolean v10, v5, Landroid/content/SyncStatusInfo;->pending:Z

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2343
    const-wide v8, 0x1080000000aL

    iget-boolean v10, v5, Landroid/content/SyncStatusInfo;->initialize:Z

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2344
    invoke-virtual {v5}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTimesSize()I

    move-result v8

    .line 2345
    .local v8, "periodicSyncTimesSize":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v8, :cond_0

    .line 2346
    const-wide v10, 0x2030000000bL

    .line 2347
    invoke-virtual {v5, v9}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v12

    .line 2346
    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2345
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2349
    .end local v9    # "j":I
    :cond_0
    invoke-virtual {v5}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v9

    .line 2350
    .local v9, "lastEventsSize":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    if-ge v10, v9, :cond_1

    .line 2351
    const-wide v11, 0x20b0000000cL

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 2352
    .local v11, "eventToken":J
    const-wide v13, 0x10300000001L

    .line 2353
    move v15, v3

    .end local v3    # "size":I
    .local v15, "size":I
    invoke-virtual {v5, v10}, Landroid/content/SyncStatusInfo;->getEventTime(I)J

    move-result-wide v2

    .line 2352
    invoke-virtual {v1, v13, v14, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2354
    const-wide v2, 0x10900000002L

    invoke-virtual {v5, v10}, Landroid/content/SyncStatusInfo;->getEvent(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v2, v3, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2355
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2350
    .end local v11    # "eventToken":J
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p1

    move v3, v15

    goto :goto_2

    .end local v15    # "size":I
    .restart local v3    # "size":I
    :cond_1
    move v15, v3

    .line 2357
    .end local v3    # "size":I
    .end local v10    # "j":I
    .restart local v15    # "size":I
    const-wide v2, 0x1030000000dL

    iget-wide v10, v5, Landroid/content/SyncStatusInfo;->lastTodayResetTime:J

    invoke-virtual {v1, v2, v3, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2359
    const-wide v2, 0x10b0000000eL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2360
    .local v2, "totalStatsToken":J
    iget-object v10, v5, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0, v1, v10}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2361
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2362
    const-wide v10, 0x10b0000000fL

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 2363
    .local v10, "todayStatsToken":J
    iget-object v12, v5, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0, v1, v12}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2364
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2365
    const-wide v12, 0x10b00000010L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 2367
    .local v12, "yesterdayStatsToken":J
    iget-object v14, v5, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    invoke-direct {v0, v1, v14}, Lcom/android/server/content/SyncStorageEngine;->writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V

    .line 2368
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2370
    iget-object v14, v5, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    array-length v14, v14

    .line 2371
    .local v14, "lastSuccessTimesSize":I
    const/16 v16, 0x0

    move/from16 v0, v16

    .local v0, "j":I
    :goto_3
    if-ge v0, v14, :cond_2

    .line 2372
    move-wide/from16 v16, v2

    .end local v2    # "totalStatsToken":J
    .local v16, "totalStatsToken":J
    const-wide v2, 0x20300000011L

    move/from16 v18, v8

    .end local v8    # "periodicSyncTimesSize":I
    .local v18, "periodicSyncTimesSize":I
    iget-object v8, v5, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    move/from16 v19, v9

    .end local v9    # "lastEventsSize":I
    .local v19, "lastEventsSize":I
    aget-wide v8, v8, v0

    invoke-virtual {v1, v2, v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2371
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v2, v16

    move/from16 v8, v18

    move/from16 v9, v19

    goto :goto_3

    .end local v16    # "totalStatsToken":J
    .end local v18    # "periodicSyncTimesSize":I
    .end local v19    # "lastEventsSize":I
    .restart local v2    # "totalStatsToken":J
    .restart local v8    # "periodicSyncTimesSize":I
    .restart local v9    # "lastEventsSize":I
    :cond_2
    move-wide/from16 v16, v2

    move/from16 v18, v8

    move/from16 v19, v9

    .line 2375
    .end local v0    # "j":I
    .end local v2    # "totalStatsToken":J
    .end local v8    # "periodicSyncTimesSize":I
    .end local v9    # "lastEventsSize":I
    .restart local v16    # "totalStatsToken":J
    .restart local v18    # "periodicSyncTimesSize":I
    .restart local v19    # "lastEventsSize":I
    iget-object v0, v5, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    array-length v0, v0

    .line 2376
    .local v0, "lastFailureTimesSize":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    if-ge v2, v0, :cond_3

    .line 2377
    const-wide v8, 0x20300000012L

    iget-object v3, v5, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    move-wide/from16 v20, v10

    .end local v10    # "todayStatsToken":J
    .local v20, "todayStatsToken":J
    aget-wide v10, v3, v2

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2376
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v10, v20

    goto :goto_4

    .end local v20    # "todayStatsToken":J
    .restart local v10    # "todayStatsToken":J
    :cond_3
    move-wide/from16 v20, v10

    .line 2380
    .end local v2    # "j":I
    .end local v10    # "todayStatsToken":J
    .restart local v20    # "todayStatsToken":J
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2331
    .end local v0    # "lastFailureTimesSize":I
    .end local v5    # "info":Landroid/content/SyncStatusInfo;
    .end local v6    # "token":J
    .end local v12    # "yesterdayStatsToken":J
    .end local v14    # "lastSuccessTimesSize":I
    .end local v16    # "totalStatsToken":J
    .end local v18    # "periodicSyncTimesSize":I
    .end local v19    # "lastEventsSize":I
    .end local v20    # "todayStatsToken":J
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v3, v15

    goto/16 :goto_0

    .line 2382
    .end local v4    # "i":I
    .end local v15    # "size":I
    .restart local v3    # "size":I
    :cond_4
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2383
    return-void
.end method

.method private writeStatusStatsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/content/SyncStatusInfo$Stats;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "stats"    # Landroid/content/SyncStatusInfo$Stats;

    .line 2386
    iget-wide v0, p2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2387
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2388
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2389
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    const-wide v1, 0x10500000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2390
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    const-wide v1, 0x10500000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2391
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    const-wide v1, 0x10500000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2392
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    const-wide v1, 0x10500000007L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2393
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    const-wide v1, 0x10500000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2394
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    const-wide v1, 0x10500000009L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2395
    iget v0, p2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    const-wide v1, 0x1050000000aL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2396
    return-void
.end method


# virtual methods
.method public addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .locals 10
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 1114
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1115
    :try_start_0
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1116
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

    .line 1119
    invoke-virtual {v3}, Lcom/android/server/content/SyncOperation;->getExtrasAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1116
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_0
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1122
    .local v1, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 1126
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

    .line 1131
    .local v3, "syncInfo":Landroid/content/SyncInfo;
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v4}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    nop

    .end local v1    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1133
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange(I)V

    .line 1134
    return-object v3

    .line 1132
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

    .line 614
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 615
    :try_start_0
    invoke-static {p2, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v1

    .line 616
    .local v1, "cookie":J
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 617
    nop

    .end local v1    # "cookie":J
    monitor-exit v0

    .line 618
    return-void

    .line 617
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearAllBackoffsLocked()V
    .locals 12

    .line 899
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 900
    .local v0, "changedUserIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 902
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

    .line 903
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

    .line 904
    .local v5, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    iget-wide v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 906
    :cond_0
    const-string v6, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 907
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

    .line 914
    :cond_1
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 915
    iput-wide v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 916
    iget-object v6, v3, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v6, v6, Landroid/accounts/AccountAndUser;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 918
    .end local v5    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    goto :goto_1

    .line 919
    .end local v3    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_3
    goto/16 :goto_0

    .line 920
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_2
    if-lez v1, :cond_5

    .line 923
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 922
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 925
    .end local v1    # "i":I
    :cond_5
    return-void

    .line 920
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

    .line 1611
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1612
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1613
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1614
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1615
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1616
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1618
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 1619
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 1620
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 1621
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1622
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1623
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1624
    monitor-exit v0

    .line 1625
    return-void

    .line 1624
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

    .line 1011
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1012
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v0

    return-object v1

    .line 1013
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAuthorityCount()I
    .locals 2

    .line 1005
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1006
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1007
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

    .line 819
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 820
    :try_start_0
    const-string v1, "getBackoff"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 821
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_0

    .line 822
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

    .line 824
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 825
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

    .line 1387
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1388
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1391
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1392
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

    .line 1357
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1358
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v1

    .line 1359
    .local v1, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1360
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

    .line 1362
    .local v4, "sync":Landroid/content/SyncInfo;
    if-nez p2, :cond_0

    .line 1363
    iget v5, v4, Landroid/content/SyncInfo;->authorityId:I

    iget-object v6, v4, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    iget-wide v7, v4, Landroid/content/SyncInfo;->startTime:J

    invoke-static {v5, v6, v7, v8}, Landroid/content/SyncInfo;->createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;

    move-result-object v5

    .local v5, "copy":Landroid/content/SyncInfo;
    goto :goto_1

    .line 1366
    .end local v5    # "copy":Landroid/content/SyncInfo;
    :cond_0
    new-instance v5, Landroid/content/SyncInfo;

    invoke-direct {v5, v4}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V

    .line 1368
    .restart local v5    # "copy":Landroid/content/SyncInfo;
    :goto_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1369
    nop

    .end local v4    # "sync":Landroid/content/SyncInfo;
    .end local v5    # "copy":Landroid/content/SyncInfo;
    goto :goto_0

    .line 1370
    :cond_1
    monitor-exit v0

    return-object v2

    .line 1371
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

    .line 1462
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1463
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v1, v1

    new-array v1, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1464
    .local v1, "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1465
    monitor-exit v0

    return-object v1

    .line 1466
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

    .line 928
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 929
    :try_start_0
    const-string v1, "getDelayUntil"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 930
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_0

    .line 931
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 933
    :cond_0
    iget-wide v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v0

    return-wide v2

    .line 934
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

    .line 752
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 753
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 754
    :try_start_0
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v3, "get authority syncable"

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 757
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_0

    .line 758
    monitor-exit v0

    return v1

    .line 760
    :cond_0
    iget v1, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return v1

    .line 763
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 764
    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_3

    .line 765
    add-int/lit8 v2, v2, -0x1

    .line 766
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 767
    .local v3, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 768
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 769
    iget v1, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v0

    return v1

    .line 771
    .end local v3    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    goto :goto_0

    .line 772
    :cond_3
    monitor-exit v0

    return v1

    .line 773
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

    .line 998
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 999
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1000
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

    .line 1001
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

    .line 1402
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1406
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1407
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1408
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 1409
    .local v4, "cur":Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v4, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1410
    .local v5, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v5, :cond_1

    iget-object v6, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1411
    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1412
    monitor-exit v0

    return-object v4

    .line 1407
    .end local v4    # "cur":Landroid/content/SyncStatusInfo;
    .end local v5    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1415
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0

    return-object v1

    .line 1416
    .end local v2    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1403
    :cond_3
    :goto_1
    return-object v1
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .line 686
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 687
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 688
    :try_start_0
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v4, "getSyncAutomatically"

    invoke-direct {p0, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 691
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

    .line 694
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 695
    .local v3, "i":I
    :goto_1
    if-lez v3, :cond_3

    .line 696
    add-int/lit8 v3, v3, -0x1

    .line 697
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 698
    .local v4, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v6, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v5, :cond_2

    .line 700
    monitor-exit v0

    return v1

    .line 702
    .end local v4    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    goto :goto_1

    .line 703
    :cond_3
    monitor-exit v0

    return v2

    .line 704
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

    .line 1446
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1447
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1448
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1449
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1450
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1452
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    return-object v2

    .line 1453
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

    .line 610
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    return v0
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J
    .locals 8
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "now"    # J

    .line 1165
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1166
    :try_start_0
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertStartSyncEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_0
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v3, "insertStartSyncEvent"

    invoke-direct {p0, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1170
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_1

    .line 1171
    const-wide/16 v2, -0x1

    monitor-exit v0

    return-wide v2

    .line 1173
    :cond_1
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v3}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 1174
    .local v3, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    .line 1175
    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1176
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 1177
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    const/4 v5, 0x0

    if-gez v4, :cond_2

    iput v5, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 1178
    :cond_2
    iput-wide p2, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1179
    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1180
    iget v4, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 1181
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->getClonedExtras()Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 1182
    iput v5, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1183
    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iput v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    .line 1184
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1185
    :goto_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_3

    .line 1186
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1188
    :cond_3
    iget v4, v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v4, v4

    .line 1189
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

    .line 1190
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    const/16 v0, 0x8

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 1193
    return-wide v4

    .line 1190
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

    .line 2627
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    return v0
.end method

.method public isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1021
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1022
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

    .line 1023
    .local v2, "syncInfo":Landroid/content/SyncInfo;
    iget v3, v2, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 1024
    .local v3, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1025
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1027
    .end local v2    # "syncInfo":Landroid/content/SyncInfo;
    .end local v3    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_0
    goto :goto_0

    .line 1028
    :cond_1
    monitor-exit v0

    .line 1029
    const/4 v0, 0x0

    return v0

    .line 1028
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

    .line 1421
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1422
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1423
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1424
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 1425
    .local v3, "cur":Landroid/content/SyncStatusInfo;
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1426
    .local v4, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v4, :cond_0

    .line 1427
    goto :goto_1

    .line 1429
    :cond_0
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1430
    goto :goto_1

    .line 1432
    :cond_1
    iget-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v5, :cond_2

    .line 1433
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 1423
    .end local v3    # "cur":Landroid/content/SyncStatusInfo;
    .end local v4    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1436
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1437
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

    .line 1033
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1034
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1037
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_0

    .line 1038
    monitor-exit v0

    return-void

    .line 1040
    :cond_0
    iget v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v2

    .line 1041
    .local v2, "status":Landroid/content/SyncStatusInfo;
    iput-boolean p2, v2, Landroid/content/SyncStatusInfo;->pending:Z

    .line 1042
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "status":Landroid/content/SyncStatusInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    const/4 v0, 0x2

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 1044
    return-void

    .line 1042
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

    .line 2616
    const-string v0, "android"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 2617
    return-void
.end method

.method readStatusLocked()V
    .locals 3

    .line 2088
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->upgradeStatusIfNeededLocked()V

    .line 2090
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2091
    return-void

    .line 2094
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2095
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->readStatusInfoLocked(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2096
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2099
    .end local v0    # "in":Ljava/io/FileInputStream;
    :cond_1
    goto :goto_1

    .line 2094
    .restart local v0    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/content/SyncStorageEngine;
    :cond_2
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2097
    .end local v0    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/content/SyncStorageEngine;
    :catch_0
    move-exception v0

    .line 2098
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SyncManager"

    const-string v2, "Unable to read status info file."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2100
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .locals 4
    .param p1, "syncInfo"    # Landroid/content/SyncInfo;
    .param p2, "userId"    # I

    .line 1141
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1142
    :try_start_0
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
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

    .line 1147
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    invoke-virtual {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange(I)V

    .line 1151
    return-void

    .line 1148
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

    .line 1559
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1560
    :try_start_0
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1561
    monitor-exit v0

    .line 1562
    return-void

    .line 1561
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

    .line 1051
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1052
    :try_start_0
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1053
    const-string v1, "SyncManager"

    const-string v3, "Updating for new accounts..."

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1056
    .local v1, "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1057
    .local v3, "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1058
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1059
    .local v4, "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v5, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-eq v5, p2, :cond_1

    .line 1060
    goto :goto_0

    .line 1062
    :cond_1
    if-eqz p1, :cond_2

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 1063
    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1065
    :cond_2
    const-string v5, "SyncManager"

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1066
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

    .line 1068
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

    .line 1069
    .local v6, "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1070
    .end local v6    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    goto :goto_1

    .line 1071
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1073
    .end local v4    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_5
    goto :goto_0

    .line 1076
    :cond_6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1077
    .local v2, "i":I
    if-lez v2, :cond_d

    .line 1078
    :goto_2
    if-lez v2, :cond_c

    .line 1079
    add-int/lit8 v2, v2, -0x1

    .line 1080
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1081
    .local v4, "ident":I
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1082
    .local v5, "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v6, :cond_7

    .line 1083
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    iget-object v7, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v6, v7}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1085
    :cond_7
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1086
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1087
    .local v6, "j":I
    :cond_8
    :goto_3
    if-lez v6, :cond_9

    .line 1088
    add-int/lit8 v6, v6, -0x1

    .line 1089
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    if-ne v7, v4, :cond_8

    .line 1090
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    .line 1093
    :cond_9
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v7

    .line 1094
    :cond_a
    :goto_4
    if-lez v6, :cond_b

    .line 1095
    add-int/lit8 v6, v6, -0x1

    .line 1096
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget v7, v7, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v7, v4, :cond_a

    .line 1097
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 1100
    .end local v4    # "ident":I
    .end local v5    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "j":I
    :cond_b
    goto :goto_2

    .line 1101
    :cond_c
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1102
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1103
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1105
    .end local v1    # "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    .end local v2    # "i":I
    .end local v3    # "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    :cond_d
    monitor-exit v0

    .line 1106
    return-void

    .line 1105
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

    .line 621
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 623
    monitor-exit v0

    .line 624
    return-void

    .line 623
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

    .line 1157
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 1158
    return-void
.end method

.method reportChange(II)V
    .locals 8
    .param p1, "which"    # I
    .param p2, "callingUserId"    # I

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 651
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 652
    .local v2, "i":I
    :cond_0
    :goto_0
    if-lez v2, :cond_3

    .line 653
    add-int/lit8 v2, v2, -0x1

    .line 654
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 655
    .local v3, "cookie":J
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v5

    .line 656
    .local v5, "userId":I
    invoke-static {v3, v4}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v6

    .line 657
    .local v6, "mask":I
    and-int v7, p1, v6

    if-eqz v7, :cond_0

    if-eq p2, v5, :cond_1

    .line 658
    goto :goto_0

    .line 660
    :cond_1
    if-nez v0, :cond_2

    .line 661
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v7

    .line 663
    :cond_2
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/content/ISyncStatusObserver;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    nop

    .end local v3    # "cookie":J
    .end local v5    # "userId":I
    .end local v6    # "mask":I
    goto :goto_0

    .line 665
    :cond_3
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 666
    .end local v2    # "i":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    const/4 v1, 0x2

    const-string v2, "SyncManager"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 669
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

    .line 672
    :cond_4
    if-eqz v0, :cond_5

    .line 673
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 674
    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_5

    .line 675
    add-int/lit8 v1, v1, -0x1

    .line 677
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ISyncStatusObserver;

    invoke-interface {v2, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 678
    :catch_0
    move-exception v2

    .line 680
    :goto_2
    goto :goto_1

    .line 683
    .end local v1    # "i":I
    :cond_5
    return-void

    .line 666
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

    .line 2631
    if-eqz p1, :cond_0

    .line 2632
    const-string v0, "SyncManager"

    const-string v1, "Force resetting today stats."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2635
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2636
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2637
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStatusInfo;

    .line 2638
    .local v3, "cur":Landroid/content/SyncStatusInfo;
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 2636
    .end local v3    # "cur":Landroid/content/SyncStatusInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2640
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 2641
    .end local v1    # "N":I
    monitor-exit v0

    .line 2642
    return-void

    .line 2641
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method restoreAllPeriodicSyncs()Z
    .locals 12

    .line 957
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    if-nez v0, :cond_0

    .line 958
    const/4 v0, 0x0

    return v0

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 961
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 962
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 963
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

    .line 964
    .local v4, "periodicSync":Landroid/content/PeriodicSync;
    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v4, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    iget-wide v8, v4, Landroid/content/PeriodicSync;->period:J

    iget-wide v10, v4, Landroid/content/PeriodicSync;->flexTime:J

    invoke-interface/range {v5 .. v11}, Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;->onPeriodicSyncAdded(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;JJ)V

    .line 966
    .end local v4    # "periodicSync":Landroid/content/PeriodicSync;
    goto :goto_1

    .line 967
    :cond_1
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 961
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 969
    .end local v1    # "i":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 970
    monitor-exit v0

    .line 971
    const/4 v0, 0x1

    return v0

    .line 970
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

    .line 833
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
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

    .line 838
    :cond_0
    iget-object v15, v9, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v15

    .line 839
    :try_start_0
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 848
    :cond_1
    const/4 v0, -0x1

    .line 849
    invoke-direct {v9, v10, v0, v7}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 850
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v1, v1, v11

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v1, v1, v13

    if-nez v1, :cond_2

    .line 852
    const/4 v1, 0x0

    move v0, v7

    .local v1, "changed":Z
    goto :goto_1

    .line 854
    .end local v1    # "changed":Z
    :cond_2
    iput-wide v11, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 855
    iput-wide v13, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 856
    const/4 v1, 0x1

    move v0, v7

    .restart local v1    # "changed":Z
    goto :goto_1

    .line 842
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
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

    .line 859
    .restart local v1    # "changed":Z
    :goto_1
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    if-eqz v1, :cond_4

    .line 861
    iget v2, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v9, v0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 863
    :cond_4
    return-void

    .line 859
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

    .line 2620
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    if-nez v0, :cond_0

    .line 2621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    .line 2622
    const-string v0, "SyncManager"

    const-string v1, "Clock is valid now."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    :cond_0
    return-void
.end method

.method public setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntil"    # J

    .line 938
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
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

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 943
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 944
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_1

    .line 945
    monitor-exit v0

    return-void

    .line 947
    :cond_1
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 948
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p0, v2, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 950
    return-void

    .line 948
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

    .line 778
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-direct {p0, v0, p4, p5, p6}, Lcom/android/server/content/SyncStorageEngine;->setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;III)V

    .line 780
    return-void
.end method

.method public setMasterSyncAutomatically(ZIIII)V
    .locals 13
    .param p1, "flag"    # Z
    .param p2, "userId"    # I
    .param p3, "syncExemptionFlag"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPid"    # I

    .line 976
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

    .line 977
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    const-string v3, " cpid="

    aput-object v3, v1, v2

    .line 978
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 976
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 979
    iget-object v1, v10, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 980
    :try_start_0
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 981
    .local v0, "auto":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 982
    monitor-exit v1

    return-void

    .line 984
    :cond_0
    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 985
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 986
    .end local v0    # "auto":Ljava/lang/Boolean;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    if-eqz p1, :cond_1

    .line 988
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

    .line 992
    :cond_1
    invoke-virtual {p0, v12, p2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 993
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 994
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    .line 995
    return-void

    .line 986
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

    .line 579
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-nez v0, :cond_0

    .line 580
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    .line 582
    :cond_0
    return-void
.end method

.method protected setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 573
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-nez v0, :cond_0

    .line 574
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 576
    :cond_0
    return-void
.end method

.method protected setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    .line 585
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    if-nez v0, :cond_0

    .line 586
    sput-object p1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    .line 588
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

    .line 709
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSyncAutomatically:  provider "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SyncManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_0
    iget-object v0, v10, Lcom/android/server/content/SyncStorageEngine;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Set sync auto account="

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v15, 0x1

    aput-object v11, v2, v15

    const-string v3, " user="

    aput-object v3, v2, v1

    const/4 v3, 0x3

    .line 714
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, " authority="

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v13, v2, v3

    const/4 v3, 0x6

    const-string v5, " value="

    aput-object v5, v2, v3

    const/4 v3, 0x7

    .line 716
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x8

    const-string v5, " cuid="

    aput-object v5, v2, v3

    const/16 v3, 0x9

    .line 717
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0xa

    const-string v5, " cpid="

    aput-object v5, v2, v3

    const/16 v3, 0xb

    .line 718
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 713
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 720
    iget-object v2, v10, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 721
    :try_start_0
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, v11, v13, v12}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 722
    const/4 v3, -0x1

    invoke-direct {v10, v0, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 726
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v4, v14, :cond_2

    .line 727
    const-string v3, "SyncManager"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSyncAutomatically: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", doing nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_1
    monitor-exit v2

    return-void

    .line 735
    :cond_2
    if-eqz v14, :cond_3

    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v4, v1, :cond_3

    .line 736
    iput v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 738
    :cond_3
    iput-boolean v14, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 740
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    if-eqz v14, :cond_4

    .line 743
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

    .line 747
    :cond_4
    invoke-virtual {v10, v15, v12}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    .line 749
    return-void

    .line 740
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shouldGrantSyncAdaptersAccountAccess()Z
    .locals 1

    .line 1604
    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    return v0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJI)V
    .locals 23
    .param p1, "historyId"    # J
    .param p3, "elapsedTime"    # J
    .param p5, "resultMessage"    # Ljava/lang/String;
    .param p6, "downstreamActivity"    # J
    .param p8, "upstreamActivity"    # J
    .param p10, "userId"    # I

    .line 1198
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    iget-object v7, v1, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 1199
    :try_start_0
    const-string v0, "SyncManager"

    const/4 v8, 0x2

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    const-string v0, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stopSyncEvent: historyId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_0
    const/4 v0, 0x0

    .line 1203
    .local v0, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1204
    .local v9, "i":I
    :goto_0
    if-lez v9, :cond_2

    .line 1205
    add-int/lit8 v9, v9, -0x1

    .line 1206
    iget-object v10, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    move-object v0, v10

    .line 1207
    iget v10, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v10, v10

    cmp-long v10, v10, v2

    if-nez v10, :cond_1

    .line 1208
    goto :goto_1

    .line 1210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1213
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 1214
    const-string v8, "SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stopSyncEvent: no history for id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    monitor-exit v7

    return-void

    .line 1218
    :cond_3
    iput-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 1219
    const/4 v10, 0x1

    iput v10, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1220
    iput-object v6, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 1221
    move-wide/from16 v11, p6

    iput-wide v11, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1222
    move-wide/from16 v13, p8

    :try_start_1
    iput-wide v13, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1224
    iget v15, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    invoke-direct {v1, v15}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v15

    .line 1226
    .local v15, "status":Landroid/content/SyncStatusInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->isClockValid()Z

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v15, v8, v10}, Landroid/content/SyncStatusInfo;->maybeResetTodayStats(ZZ)V

    .line 1228
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1229
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v8, Landroid/content/SyncStatusInfo$Stats;->numSyncs:I

    .line 1230
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget-wide v2, v8, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v2, v4

    iput-wide v2, v8, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1231
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    move v3, v9

    .end local v9    # "i":I
    .local v3, "i":I
    iget-wide v8, v2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    add-long/2addr v8, v4

    iput-wide v8, v2, Landroid/content/SyncStatusInfo$Stats;->totalElapsedTime:J

    .line 1232
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

    .line 1254
    :cond_4
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    .line 1255
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceFeed:I

    goto :goto_2

    .line 1250
    :cond_5
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1251
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePeriodic:I

    .line 1252
    goto :goto_2

    .line 1242
    :cond_6
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1243
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceUser:I

    .line 1244
    goto :goto_2

    .line 1238
    :cond_7
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1239
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourcePoll:I

    .line 1240
    goto :goto_2

    .line 1234
    :cond_8
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1235
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceLocal:I

    .line 1236
    goto :goto_2

    .line 1246
    :cond_9
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1247
    iget-object v2, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/content/SyncStatusInfo$Stats;->numSourceOther:I

    .line 1248
    nop

    .line 1259
    :goto_2
    const/4 v2, 0x0

    .line 1260
    .local v2, "writeStatisticsNow":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v8

    .line 1261
    .local v8, "day":I
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    if-nez v9, :cond_a

    .line 1262
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v10, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v10, v8}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    const/16 v17, 0x0

    aput-object v10, v9, v17

    move/from16 v18, v2

    move/from16 v19, v3

    const/4 v3, 0x0

    goto :goto_3

    .line 1263
    :cond_a
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    if-eq v8, v9, :cond_b

    .line 1264
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

    .line 1265
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v3, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v3, v8}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    const/4 v9, 0x0

    aput-object v3, v2, v9

    .line 1266
    const/4 v2, 0x1

    const/4 v3, 0x0

    .end local v18    # "writeStatisticsNow":Z
    .restart local v2    # "writeStatisticsNow":Z
    goto :goto_4

    .line 1267
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

    .line 1269
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

    .line 1271
    .local v3, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-wide v9, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long/2addr v9, v4

    .line 1272
    .local v9, "lastSyncTime":J
    const/4 v11, 0x0

    .line 1273
    .local v11, "writeStatusNow":Z
    const-string/jumbo v12, "success"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-wide/16 v17, 0x0

    if-eqz v12, :cond_e

    .line 1275
    move/from16 v20, v11

    .end local v11    # "writeStatusNow":Z
    .local v20, "writeStatusNow":Z
    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    cmp-long v11, v11, v17

    if-eqz v11, :cond_d

    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v11, v11, v17

    if-eqz v11, :cond_c

    goto :goto_5

    :cond_c
    move/from16 v11, v20

    goto :goto_6

    .line 1276
    :cond_d
    :goto_5
    const/4 v11, 0x1

    .line 1278
    .end local v20    # "writeStatusNow":Z
    .restart local v11    # "writeStatusNow":Z
    :goto_6
    iget v12, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v15, v12, v9, v10}, Landroid/content/SyncStatusInfo;->setLastSuccess(IJ)V

    .line 1279
    iget v12, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    const/16 v16, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1280
    move/from16 v17, v11

    .end local v11    # "writeStatusNow":Z
    .local v17, "writeStatusNow":Z
    iget-wide v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v11, v4

    iput-wide v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    move-wide/from16 v21, v9

    move/from16 v11, v17

    move/from16 v17, v8

    goto :goto_8

    .line 1281
    .end local v17    # "writeStatusNow":Z
    .restart local v11    # "writeStatusNow":Z
    :cond_e
    move/from16 v20, v11

    .end local v11    # "writeStatusNow":Z
    .restart local v20    # "writeStatusNow":Z
    const-string v11, "canceled"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 1282
    iget-wide v11, v15, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v11, v11, v17

    if-nez v11, :cond_f

    .line 1283
    const/4 v11, 0x1

    .end local v20    # "writeStatusNow":Z
    .restart local v11    # "writeStatusNow":Z
    goto :goto_7

    .line 1282
    .end local v11    # "writeStatusNow":Z
    .restart local v20    # "writeStatusNow":Z
    :cond_f
    move/from16 v11, v20

    .line 1285
    .end local v20    # "writeStatusNow":Z
    .restart local v11    # "writeStatusNow":Z
    :goto_7
    iget-object v12, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    move/from16 v17, v8

    .end local v8    # "day":I
    .local v17, "day":I
    iget v8, v12, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    const/16 v16, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v12, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1286
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v12, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v8, Landroid/content/SyncStatusInfo$Stats;->numFailures:I

    .line 1288
    iget v8, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    invoke-virtual {v15, v8, v9, v10, v6}, Landroid/content/SyncStatusInfo;->setLastFailure(IJLjava/lang/String;)V

    .line 1290
    iget v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    const/4 v12, 0x1

    add-int/2addr v8, v12

    iput v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1291
    move-wide/from16 v21, v9

    .end local v9    # "lastSyncTime":J
    .local v21, "lastSyncTime":J
    iget-wide v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v8, v4

    iput-wide v8, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_8

    .line 1294
    .end local v11    # "writeStatusNow":Z
    .end local v17    # "day":I
    .end local v21    # "lastSyncTime":J
    .restart local v8    # "day":I
    .restart local v9    # "lastSyncTime":J
    .restart local v20    # "writeStatusNow":Z
    :cond_10
    move/from16 v17, v8

    move-wide/from16 v21, v9

    .end local v8    # "day":I
    .end local v9    # "lastSyncTime":J
    .restart local v17    # "day":I
    .restart local v21    # "lastSyncTime":J
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    iget v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iput v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1295
    iget-object v8, v15, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    iget v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/content/SyncStatusInfo$Stats;->numCancels:I

    .line 1296
    const/4 v11, 0x1

    .line 1298
    .end local v20    # "writeStatusNow":Z
    .restart local v11    # "writeStatusNow":Z
    :goto_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1299
    .local v8, "event":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " Source="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v12, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v10, v10, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " Elapsed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    invoke-static {v8, v4, v5}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 1302
    const-string v9, " Reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    const/4 v9, 0x0

    iget v10, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    invoke-static {v9, v10}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    iget v9, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    if-eqz v9, :cond_13

    .line 1305
    const-string v9, " Exemption="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    iget v9, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_12

    const/4 v10, 0x2

    if-eq v9, v10, :cond_11

    .line 1314
    iget v9, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->syncExemptionFlag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1311
    :cond_11
    const-string/jumbo v9, "top"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    goto :goto_9

    .line 1308
    :cond_12
    const-string v9, "fg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    :cond_13
    :goto_9
    const-string v9, " Extras="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    iget-object v9, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    invoke-static {v9, v8}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 1321
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/content/SyncStatusInfo;->addEvent(Ljava/lang/String;)V

    .line 1323
    if-eqz v11, :cond_14

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    move-object v5, v3

    goto :goto_a

    .line 1325
    :cond_14
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_15

    .line 1326
    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    iget-object v12, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v12, v10}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    move-object v5, v3

    .end local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .local v5, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    const-wide/32 v3, 0x927c0

    invoke-virtual {v9, v10, v3, v4}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    .line 1325
    .end local v5    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_15
    move-object v5, v3

    .line 1329
    .end local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v5    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :goto_a
    if-eqz v2, :cond_16

    .line 1330
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    goto :goto_b

    .line 1331
    :cond_16
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1332
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    iget-object v9, v1, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v9, v4}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v9, 0x1b7740

    invoke-virtual {v3, v4, v9, v10}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1335
    .end local v0    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v2    # "writeStatisticsNow":Z
    .end local v5    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v8    # "event":Ljava/lang/StringBuilder;
    .end local v11    # "writeStatusNow":Z
    .end local v15    # "status":Landroid/content/SyncStatusInfo;
    .end local v17    # "day":I
    .end local v19    # "i":I
    .end local v21    # "lastSyncTime":J
    :cond_17
    :goto_b
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1337
    const/16 v0, 0x8

    move/from16 v2, p10

    invoke-virtual {v1, v0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 1338
    return-void

    .line 1335
    :catchall_0
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-wide/from16 v13, p8

    :goto_c
    move/from16 v2, p10

    :goto_d
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_d
.end method

.method public writeAllState()V
    .locals 2

    .line 1596
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1598
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1599
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1600
    monitor-exit v0

    .line 1601
    return-void

    .line 1600
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method writeStatisticsLocked()V
    .locals 4

    .line 2568
    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-string v2, "SyncManager"

    if-eqz v0, :cond_0

    .line 2569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing new "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->removeMessages(I)V

    .line 2576
    const/4 v0, 0x0

    .line 2578
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 2579
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->writeDayStatsLocked(Ljava/io/OutputStream;)V

    .line 2580
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2581
    const/4 v0, 0x0

    .line 2586
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2582
    :catch_0
    move-exception v1

    .line 2583
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Unable to write day stats to proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2586
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2587
    nop

    .line 2588
    return-void

    .line 2586
    :goto_1
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2587
    throw v1
.end method

.method writeStatusLocked()V
    .locals 4

    .line 2306
    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2307
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

    .line 2312
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$MyHandler;->removeMessages(I)V

    .line 2314
    const/4 v0, 0x0

    .line 2316
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    .line 2317
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusInfoLocked(Ljava/io/OutputStream;)V

    .line 2318
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2319
    const/4 v0, 0x0

    .line 2324
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2320
    :catch_0
    move-exception v1

    .line 2321
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "SyncManager"

    const-string v3, "Unable to write sync status to proto."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2324
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2325
    nop

    .line 2326
    return-void

    .line 2324
    :goto_1
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2325
    throw v1
.end method

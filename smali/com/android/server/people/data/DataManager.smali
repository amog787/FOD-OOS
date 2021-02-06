.class public Lcom/android/server/people/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/DataManager$Injector;,
        Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;,
        Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;,
        Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;,
        Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;,
        Lcom/android/server/people/data/DataManager$NotificationListener;,
        Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;,
        Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;,
        Lcom/android/server/people/data/DataManager$CallLogContentObserver;,
        Lcom/android/server/people/data/DataManager$ContactsContentObserver;
    }
.end annotation


# static fields
.field private static final QUERY_EVENTS_MAX_AGE_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "DataManager"

.field private static final USAGE_STATS_QUERY_INTERVAL_SEC:J = 0x78L


# instance fields
.field private final mBroadcastReceivers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mCallLogContentObserver:Landroid/database/ContentObserver;

.field private final mContactsContentObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInjector:Lcom/android/server/people/data/DataManager$Injector;

.field private final mLock:Ljava/lang/Object;

.field private mMmsSmsContentObserver:Landroid/database/ContentObserver;

.field private final mNotificationListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/DataManager$NotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPackageMonitors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/content/PackageMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field private final mUsageStatsQueryFutures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mUserDataArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/people/data/UserData;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    new-instance v0, Lcom/android/server/people/data/DataManager$Injector;

    invoke-direct {v0}, Lcom/android/server/people/data/DataManager$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/people/data/DataManager;-><init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$Injector;)V

    .line 121
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/people/data/DataManager$Injector;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/people/data/DataManager$Injector;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    .line 109
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    .line 125
    iput-object p1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    .line 127
    invoke-virtual {p2}, Lcom/android/server/people/data/DataManager$Injector;->createScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 128
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager;

    .line 93
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/people/data/DataManager;I)Lcom/android/server/people/data/UserData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager;
    .param p1, "x1"    # I

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager;
    .param p1, "x1"    # Ljava/util/function/Consumer;

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->forAllUnlockedUsers(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/people/data/DataManager;)Lcom/android/server/notification/NotificationManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager;

    .line 93
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/people/data/DataManager;)Landroid/content/pm/ShortcutServiceInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager;

    .line 93
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "x2"    # Ljava/util/function/Consumer;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackageIfConversationExists(Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/UserData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager;
    .param p1, "x1"    # Lcom/android/server/people/data/UserData;

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/people/data/DataManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager;

    .line 93
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/people/data/DataManager;

    .line 93
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cleanupUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 392
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    .line 394
    .local v1, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 398
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 399
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ScheduledFuture;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 401
    :cond_1
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 402
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 404
    :cond_2
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_3

    .line 405
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 407
    :cond_3
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v3, :cond_4

    .line 409
    :try_start_1
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/people/data/DataManager$NotificationListener;

    invoke-virtual {v3}, Lcom/android/server/people/data/DataManager$NotificationListener;->unregisterAsSystemService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    goto :goto_0

    .line 410
    :catch_0
    move-exception v3

    .line 414
    :cond_4
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_5

    .line 415
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v3}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 417
    :cond_5
    if-nez p1, :cond_7

    .line 418
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 419
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 420
    iput-object v4, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    .line 422
    :cond_6
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    if-eqz v3, :cond_7

    .line 423
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 424
    iput-object v4, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    .line 428
    :cond_7
    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/people/data/DataMaintenanceService;->cancelJob(Landroid/content/Context;I)V

    .line 429
    .end local v1    # "userData":Lcom/android/server/people/data/UserData;
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    monitor-exit v0

    .line 430
    return-void

    .line 395
    .restart local v1    # "userData":Lcom/android/server/people/data/UserData;
    :cond_8
    :goto_1
    monitor-exit v0

    return-void

    .line 429
    .end local v1    # "userData":Lcom/android/server/people/data/UserData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private forAllUnlockedUsers(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/UserData;",
            ">;)V"
        }
    .end annotation

    .line 477
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/people/data/UserData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 479
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/UserData;

    .line 480
    .local v2, "userData":Lcom/android/server/people/data/UserData;
    invoke-virtual {v2}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 477
    .end local v1    # "userId":I
    .end local v2    # "userData":Lcom/android/server/people/data/UserData;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private getPackageIfConversationExists(Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)",
            "Lcom/android/server/people/data/PackageData;"
        }
    .end annotation

    .line 510
    .local p2, "conversationConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/people/data/ConversationInfo;>;"
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 511
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "shortcutId":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 513
    return-object v2

    .line 515
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 515
    invoke-virtual {p0, v3, v4}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object v3

    .line 517
    .local v3, "packageData":Lcom/android/server/people/data/PackageData;
    if-nez v3, :cond_1

    .line 518
    return-object v2

    .line 520
    :cond_1
    nop

    .line 521
    invoke-virtual {v3}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v4

    .line 522
    .local v4, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    if-nez v4, :cond_2

    .line 523
    return-object v2

    .line 525
    :cond_2
    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 526
    return-object v3
.end method

.method private getShortcuts(Ljava/lang/String;ILjava/util/List;)Ljava/util/List;
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 468
    .local p3, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    const/16 v14, 0x403

    .line 470
    .local v14, "queryFlags":I
    iget-object v1, v0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v2, v0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 471
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 473
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    .line 470
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move v10, v14

    move/from16 v11, p2

    invoke-virtual/range {v1 .. v13}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getUnlockedUserData(I)Lcom/android/server/people/data/UserData;
    .locals 2
    .param p1, "userId"    # I

    .line 488
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/UserData;

    .line 489
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/people/data/UserData;->isUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method static synthetic lambda$pruneUninstalledPackageData$4(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 1
    .param p0, "installApps"    # Ljava/util/Set;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 452
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$pruneUninstalledPackageData$5(Ljava/util/Set;Ljava/util/List;Lcom/android/server/people/data/PackageData;)V
    .locals 1
    .param p0, "installApps"    # Ljava/util/Set;
    .param p1, "packagesToDelete"    # Ljava/util/List;
    .param p2, "packageData"    # Lcom/android/server/people/data/PackageData;

    .line 455
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_0
    return-void
.end method

.method private pruneUninstalledPackageData(Lcom/android/server/people/data/UserData;)V
    .locals 4
    .param p1, "userData"    # Lcom/android/server/people/data/UserData;

    .line 450
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 451
    .local v0, "installApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v2, Lcom/android/server/people/data/-$$Lambda$DataManager$mWCVyURwIeNAvD7ynykJ39tK8Jk;

    invoke-direct {v2, v0}, Lcom/android/server/people/data/-$$Lambda$DataManager$mWCVyURwIeNAvD7ynykJ39tK8Jk;-><init>(Ljava/util/Set;)V

    .line 452
    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v3

    .line 451
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 453
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v1, "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/android/server/people/data/-$$Lambda$DataManager$YnDwXtnP77jr7PM94uALUi26a2s;

    invoke-direct {v2, v0, v1}, Lcom/android/server/people/data/-$$Lambda$DataManager$YnDwXtnP77jr7PM94uALUi26a2s;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 459
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 460
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/android/server/people/data/UserData;->deletePackageData(Ljava/lang/String;)V

    .line 461
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 462
    :cond_0
    return-void
.end method

.method private setupUser(I)V
    .locals 16
    .param p1, "userId"    # I

    .line 330
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 331
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    move-object v4, v0

    .line 332
    .local v4, "userData":Lcom/android/server/people/data/UserData;
    if-nez v4, :cond_0

    .line 333
    monitor-exit v3

    return-void

    .line 335
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/people/data/UserData;->loadUserData()V

    .line 337
    invoke-direct {v1, v4}, Lcom/android/server/people/data/DataManager;->updateDefaultDialer(Lcom/android/server/people/data/UserData;)V

    .line 338
    invoke-direct {v1, v4}, Lcom/android/server/people/data/DataManager;->updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V

    .line 340
    iget-object v5, v1, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    const/4 v12, 0x0

    invoke-direct {v6, v1, v2, v12}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$1;)V

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x78

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    move-object v5, v0

    .line 343
    .local v5, "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    iget-object v0, v1, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v13, v0

    .line 346
    .local v13, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v0, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    new-instance v0, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;

    invoke-direct {v0, v1, v2, v12}, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$1;)V

    move-object v14, v0

    .line 349
    .local v14, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v0, v1, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    iget-object v6, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 351
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 350
    move-object v7, v14

    move-object v9, v13

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 353
    new-instance v0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;

    .line 354
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v0, v1, v6, v12}, Lcom/android/server/people/data/DataManager$ContactsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$1;)V

    move-object v6, v0

    .line 355
    .local v6, "contactsContentObserver":Landroid/database/ContentObserver;
    iget-object v0, v1, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    iget-object v0, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 360
    new-instance v0, Lcom/android/server/people/data/DataManager$NotificationListener;

    invoke-direct {v0, v1, v2, v12}, Lcom/android/server/people/data/DataManager$NotificationListener;-><init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$1;)V

    move-object v7, v0

    .line 361
    .local v7, "notificationListener":Lcom/android/server/people/data/DataManager$NotificationListener;
    iget-object v0, v1, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :try_start_1
    iget-object v0, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 364
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    invoke-virtual {v7, v0, v9, v2}, Lcom/android/server/people/data/DataManager$NotificationListener;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 369
    :goto_0
    :try_start_2
    new-instance v0, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;

    invoke-direct {v0, v1, v12}, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$1;)V

    .line 370
    .local v0, "packageMonitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v9, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v0, v9, v12, v10, v8}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 371
    iget-object v9, v1, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v9, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    if-nez v2, :cond_1

    .line 376
    new-instance v9, Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-direct {v9, v1, v10, v12}, Lcom/android/server/people/data/DataManager$CallLogContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$1;)V

    iput-object v9, v1, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    .line 377
    iget-object v9, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v11, v1, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    const/4 v15, 0x0

    invoke-virtual {v9, v10, v8, v11, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 381
    new-instance v8, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-direct {v8, v1, v9, v12}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$1;)V

    iput-object v8, v1, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    .line 382
    iget-object v8, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v10, v1, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v9, v15, v10, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 387
    :cond_1
    iget-object v8, v1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/android/server/people/data/DataMaintenanceService;->scheduleJob(Landroid/content/Context;I)V

    .line 388
    .end local v0    # "packageMonitor":Lcom/android/internal/content/PackageMonitor;
    .end local v4    # "userData":Lcom/android/server/people/data/UserData;
    .end local v5    # "scheduledFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    .end local v6    # "contactsContentObserver":Landroid/database/ContentObserver;
    .end local v7    # "notificationListener":Lcom/android/server/people/data/DataManager$NotificationListener;
    .end local v13    # "intentFilter":Landroid/content/IntentFilter;
    .end local v14    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    monitor-exit v3

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private updateDefaultDialer(Lcom/android/server/people/data/UserData;)V
    .locals 3
    .param p1, "userData"    # Lcom/android/server/people/data/UserData;

    .line 493
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 494
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_0

    .line 495
    new-instance v1, Landroid/os/UserHandle;

    .line 496
    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 495
    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 496
    :cond_0
    const/4 v1, 0x0

    :goto_0
    nop

    .line 497
    .local v1, "defaultDialer":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/server/people/data/UserData;->setDefaultDialer(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method private updateDefaultSmsApp(Lcom/android/server/people/data/UserData;)V
    .locals 3
    .param p1, "userData"    # Lcom/android/server/people/data/UserData;

    .line 501
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 502
    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v1

    .line 501
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZI)Landroid/content/ComponentName;

    move-result-object v0

    .line 503
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 504
    .local v1, "defaultSmsApp":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/server/people/data/UserData;->setDefaultSmsApp(Ljava/lang/String;)V

    .line 505
    return-void
.end method


# virtual methods
.method addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V
    .locals 9
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 532
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    .line 533
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-nez v0, :cond_0

    .line 534
    return-void

    .line 536
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/UserData;->getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    .line 537
    .local v1, "packageData":Lcom/android/server/people/data/PackageData;
    invoke-virtual {v1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v2

    .line 538
    .local v2, "conversationStore":Lcom/android/server/people/data/ConversationStore;
    nop

    .line 539
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    .line 540
    .local v3, "oldConversationInfo":Lcom/android/server/people/data/ConversationInfo;
    if-eqz v3, :cond_1

    .line 541
    new-instance v4, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v4, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    goto :goto_0

    .line 542
    :cond_1
    new-instance v4, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v4}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>()V

    :goto_0
    nop

    .line 544
    .local v4, "builder":Lcom/android/server/people/data/ConversationInfo$Builder;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 545
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 546
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setShortcutFlags(I)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 547
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 548
    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 549
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 551
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v6

    array-length v6, v6

    if-eqz v6, :cond_2

    .line 552
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v6

    aget-object v5, v6, v5

    .line 553
    .local v5, "person":Landroid/app/Person;
    invoke-virtual {v5}, Landroid/app/Person;->isImportant()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setPersonImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 554
    invoke-virtual {v5}, Landroid/app/Person;->isBot()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setPersonBot(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 555
    invoke-virtual {v5}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v6

    .line 556
    .local v6, "contactUri":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 557
    iget-object v7, p0, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    iget-object v8, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/server/people/data/DataManager$Injector;->createContactsQueryHelper(Landroid/content/Context;)Lcom/android/server/people/data/ContactsQueryHelper;

    move-result-object v7

    .line 558
    .local v7, "helper":Lcom/android/server/people/data/ContactsQueryHelper;
    invoke-virtual {v7, v6}, Lcom/android/server/people/data/ContactsQueryHelper;->query(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 559
    invoke-virtual {v7}, Lcom/android/server/people/data/ContactsQueryHelper;->getContactUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 560
    invoke-virtual {v7}, Lcom/android/server/people/data/ContactsQueryHelper;->isStarred()Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 561
    invoke-virtual {v7}, Lcom/android/server/people/data/ContactsQueryHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 565
    .end local v5    # "person":Landroid/app/Person;
    .end local v6    # "contactUri":Ljava/lang/String;
    .end local v7    # "helper":Lcom/android/server/people/data/ContactsQueryHelper;
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 566
    return-void
.end method

.method forPackagesInProfile(ILjava/util/function/Consumer;)V
    .locals 4
    .param p1, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/people/data/PackageData;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/people/data/PackageData;>;"
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 175
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v3

    .line 176
    .local v3, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v3, p2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 179
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userData":Lcom/android/server/people/data/UserData;
    :cond_0
    goto :goto_0

    .line 180
    :cond_1
    return-void
.end method

.method public getBackupPayload(I)[B
    .locals 2
    .param p1, "userId"    # I

    .line 313
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    .line 314
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-nez v0, :cond_0

    .line 315
    const/4 v1, 0x0

    return-object v1

    .line 317
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/people/data/UserData;->getBackupPayload()[B

    move-result-object v1

    return-object v1
.end method

.method getCallLogContentObserverForTesting()Landroid/database/ContentObserver;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method getContactsContentObserverForTesting(I)Landroid/database/ContentObserver;
    .locals 1
    .param p1, "userId"    # I

    .line 570
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    return-object v0
.end method

.method getMmsSmsContentObserverForTesting()Landroid/database/ContentObserver;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method getNotificationListenerServiceForTesting(I)Landroid/service/notification/NotificationListenerService;
    .locals 1
    .param p1, "userId"    # I

    .line 585
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/NotificationListenerService;

    return-object v0
.end method

.method public getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 185
    invoke-direct {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    .line 186
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/people/data/UserData;->getPackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getPackageMonitorForTesting(I)Lcom/android/internal/content/PackageMonitor;
    .locals 1
    .param p1, "userId"    # I

    .line 590
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/PackageMonitor;

    return-object v0
.end method

.method public getShareShortcuts(Landroid/content/IntentFilter;I)Ljava/util/List;
    .locals 2
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .param p2, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 208
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShortcut(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;

    .line 193
    nop

    .line 194
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/people/data/DataManager;->getShortcuts(Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 195
    .local v0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    return-object v1

    .line 198
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getUserDataForTesting(I)Lcom/android/server/people/data/UserData;
    .locals 1
    .param p1, "userId"    # I

    .line 595
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/UserData;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 132
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 133
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 134
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 135
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserManager:Landroid/os/UserManager;

    .line 137
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    new-instance v1, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/people/data/DataManager$ShortcutServiceCallback;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$1;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->addShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "shutdownIntentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$1;)V

    .line 141
    .local v1, "shutdownBroadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method public synthetic lambda$onUserStopping$1$DataManager(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->cleanupUser(I)V

    return-void
.end method

.method public synthetic lambda$onUserUnlocked$0$DataManager(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->setupUser(I)V

    return-void
.end method

.method public synthetic lambda$pruneDataForUser$2$DataManager(Lcom/android/server/people/data/DataManager$NotificationListener;Ljava/lang/String;ILcom/android/server/people/data/ConversationInfo;)V
    .locals 8
    .param p1, "notificationListener"    # Lcom/android/server/people/data/DataManager$NotificationListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "conversationInfo"    # Lcom/android/server/people/data/ConversationInfo;

    .line 296
    invoke-virtual {p4}, Lcom/android/server/people/data/ConversationInfo;->isShortcutCachedForNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p4}, Lcom/android/server/people/data/ConversationInfo;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p4}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {p1, p2, v0}, Lcom/android/server/people/data/DataManager$NotificationListener;->hasActiveNotifications(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 301
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-virtual {p4}, Lcom/android/server/people/data/ConversationInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/16 v7, 0x4000

    .line 300
    move v2, p3

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 305
    :cond_0
    return-void
.end method

.method public synthetic lambda$pruneDataForUser$3$DataManager(Landroid/os/CancellationSignal;Lcom/android/server/people/data/DataManager$NotificationListener;ILcom/android/server/people/data/PackageData;)V
    .locals 2
    .param p1, "signal"    # Landroid/os/CancellationSignal;
    .param p2, "notificationListener"    # Lcom/android/server/people/data/DataManager$NotificationListener;
    .param p3, "userId"    # I
    .param p4, "packageData"    # Lcom/android/server/people/data/PackageData;

    .line 282
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/people/data/EventStore;->pruneOldEvents()V

    .line 286
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->isDefaultDialer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/EventStore;->deleteEventHistories(I)V

    .line 289
    :cond_1
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->isDefaultSmsApp()Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/EventStore;->deleteEventHistories(I)V

    .line 292
    :cond_2
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->pruneOrphanEvents()V

    .line 293
    if-eqz p2, :cond_3

    .line 294
    invoke-virtual {p4}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Lcom/android/server/people/data/-$$Lambda$DataManager$akbINi4xsuEKLfuSG3NmPgKChR0;

    invoke-direct {v1, p0, p2, v0, p3}, Lcom/android/server/people/data/-$$Lambda$DataManager$akbINi4xsuEKLfuSG3NmPgKChR0;-><init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$NotificationListener;Ljava/lang/String;I)V

    invoke-virtual {p4, v1}, Lcom/android/server/people/data/PackageData;->forAllConversations(Ljava/util/function/Consumer;)V

    .line 307
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public mimeTypeToShareEventType(Ljava/lang/String;)I
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 436
    const/4 v0, 0x7

    if-nez p1, :cond_0

    .line 437
    return v0

    .line 439
    :cond_0
    const-string/jumbo v1, "text/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    const/4 v0, 0x4

    return v0

    .line 441
    :cond_1
    const-string v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    const/4 v0, 0x5

    return v0

    .line 443
    :cond_2
    const-string/jumbo v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 444
    const/4 v0, 0x6

    return v0

    .line 446
    :cond_3
    return v0
.end method

.method public onUserStopping(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 159
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    .line 161
    .local v1, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->setUserStopped()V

    .line 164
    .end local v1    # "userData":Lcom/android/server/people/data/UserData;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$DataManager$9_cqwu_v_T9xr29OyOFsOM1JRW4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/-$$Lambda$DataManager$9_cqwu_v_T9xr29OyOFsOM1JRW4;-><init>(Lcom/android/server/people/data/DataManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 166
    return-void

    .line 164
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onUserUnlocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 146
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/UserData;

    .line 148
    .local v1, "userData":Lcom/android/server/people/data/UserData;
    if-nez v1, :cond_0

    .line 149
    new-instance v2, Lcom/android/server/people/data/UserData;

    iget-object v3, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v2, p1, v3}, Lcom/android/server/people/data/UserData;-><init>(ILjava/util/concurrent/ScheduledExecutorService;)V

    move-object v1, v2

    .line 150
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/people/data/UserData;->setUserUnlocked()V

    .line 153
    .end local v1    # "userData":Lcom/android/server/people/data/UserData;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$DataManager$ceDzy5VXjXt37sO3OJ89MHniTpY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/data/-$$Lambda$DataManager$ceDzy5VXjXt37sO3OJ89MHniTpY;-><init>(Lcom/android/server/people/data/DataManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public pruneDataForUser(ILandroid/os/CancellationSignal;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "signal"    # Landroid/os/CancellationSignal;

    .line 274
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    .line 275
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/people/data/DataManager;->pruneUninstalledPackageData(Lcom/android/server/people/data/UserData;)V

    .line 280
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/DataManager$NotificationListener;

    .line 281
    .local v1, "notificationListener":Lcom/android/server/people/data/DataManager$NotificationListener;
    new-instance v2, Lcom/android/server/people/data/-$$Lambda$DataManager$ztMbdFDhe4OEyKgDP1LTUUePsk0;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/android/server/people/data/-$$Lambda$DataManager$ztMbdFDhe4OEyKgDP1LTUUePsk0;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/CancellationSignal;Lcom/android/server/people/data/DataManager$NotificationListener;I)V

    invoke-virtual {v0, v2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 308
    return-void

    .line 276
    .end local v1    # "notificationListener":Lcom/android/server/people/data/DataManager$NotificationListener;
    :cond_1
    :goto_0
    return-void
.end method

.method public queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;
    .locals 1
    .param p1, "callingUserId"    # I
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/people/data/UsageStatsQueryHelper;->queryAppMovingToForegroundEvents(IJJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;
    .locals 1
    .param p1, "callingUserId"    # I
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/AppUsageStatsData;",
            ">;"
        }
    .end annotation

    .line 268
    .local p6, "packageNameFilter":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p6}, Lcom/android/server/people/data/UsageStatsQueryHelper;->queryAppUsageStats(IJJLjava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public reportShareTargetEvent(Landroid/app/prediction/AppTargetEvent;Landroid/content/IntentFilter;)V
    .locals 8
    .param p1, "event"    # Landroid/app/prediction/AppTargetEvent;
    .param p2, "intentFilter"    # Landroid/content/IntentFilter;

    .line 214
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getTarget()Landroid/app/prediction/AppTarget;

    move-result-object v0

    .line 215
    .local v0, "appTarget":Landroid/app/prediction/AppTarget;
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 218
    :cond_0
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v1

    .line 219
    .local v1, "userData":Lcom/android/server/people/data/UserData;
    if-nez v1, :cond_1

    .line 220
    return-void

    .line 222
    :cond_1
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/people/data/UserData;->getOrCreatePackageData(Ljava/lang/String;)Lcom/android/server/people/data/PackageData;

    move-result-object v2

    .line 223
    .local v2, "packageData":Lcom/android/server/people/data/PackageData;
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    move-result v4

    .line 225
    .local v4, "eventType":I
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getLaunchLocation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "direct_share"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 227
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    if-nez v5, :cond_2

    .line 228
    return-void

    .line 230
    :cond_2
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, "shortcutId":Ljava/lang/String;
    const-string v6, "chooser_target"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 233
    return-void

    .line 235
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v6

    if-nez v6, :cond_4

    .line 236
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/people/data/DataManager;->addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V

    .line 238
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v3

    .line 240
    .end local v5    # "shortcutId":Ljava/lang/String;
    .local v3, "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    goto :goto_0

    .line 242
    .end local v3    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    :cond_5
    invoke-virtual {v2}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object v3

    const/4 v5, 0x4

    .line 243
    invoke-virtual {v0}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 242
    invoke-virtual {v3, v5, v6}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object v3

    .line 245
    .restart local v3    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    :goto_0
    new-instance v5, Lcom/android/server/people/data/Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v4}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {v3, v5}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    .line 246
    return-void

    .line 216
    .end local v1    # "userData":Lcom/android/server/people/data/UserData;
    .end local v2    # "packageData":Lcom/android/server/people/data/PackageData;
    .end local v3    # "eventHistory":Lcom/android/server/people/data/EventHistoryImpl;
    .end local v4    # "eventType":I
    :cond_6
    :goto_1
    return-void
.end method

.method public restore(I[B)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "payload"    # [B

    .line 322
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v0

    .line 323
    .local v0, "userData":Lcom/android/server/people/data/UserData;
    if-nez v0, :cond_0

    .line 324
    return-void

    .line 326
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/people/data/UserData;->restore([B)V

    .line 327
    return-void
.end method

.class Lcom/android/server/rollback/RollbackManagerServiceImpl;
.super Landroid/content/rollback/IRollbackManager$Stub;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

.field private static final HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

.field private static final LOCAL_LOGV:Z

.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field private final mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

.field private final mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mLock:Ljava/lang/Object;

.field private final mOrphanedApkSessionIds:Landroid/util/IntArray;

.field private final mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field private final mRandom:Ljava/util/Random;

.field private mRelativeBootTime:J

.field private mRollbackLifetimeDurationInMillis:J

.field private final mRollbackStore:Lcom/android/server/rollback/RollbackStore;

.field private final mRollbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/rollback/Rollback;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunExpiration:Ljava/lang/Runnable;

.field private final mSleepDuration:Landroid/util/LongArrayQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 104
    const-string v0, "RollbackManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    .line 107
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 108
    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    .line 120
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 121
    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

    .line 120
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    invoke-direct {p0}, Landroid/content/rollback/IRollbackManager$Stub;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 118
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 124
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRandom:Ljava/util/Random;

    .line 127
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    .line 135
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mOrphanedApkSessionIds:Landroid/util/IntArray;

    .line 146
    new-instance v0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$0HibeeAepjXymkK7UmEMFrp6FJs;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$0HibeeAepjXymkK7UmEMFrp6FJs;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRunExpiration:Ljava/lang/Runnable;

    .line 151
    new-instance v0, Landroid/util/LongArrayQueue;

    invoke-direct {v0}, Landroid/util/LongArrayQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    .line 157
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->calculateRelativeBootTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    .line 160
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 163
    new-instance v0, Lcom/android/server/pm/Installer;

    invoke-direct {v0, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    .line 164
    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->onStart()V

    .line 166
    new-instance v0, Lcom/android/server/rollback/RollbackStore;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "rollback"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/rollback/RollbackStore;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 168
    new-instance v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 169
    new-instance v0, Lcom/android/server/rollback/AppDataRollbackHelper;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-direct {v0, v1}, Lcom/android/server/rollback/AppDataRollbackHelper;-><init>(Lcom/android/server/pm/Installer;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 172
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackStore;->loadRollbacks()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/Rollback;

    .line 176
    .local v3, "rollback":Lcom/android/server/rollback/Rollback;
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    iget-object v5, v3, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 177
    .end local v3    # "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_0

    :cond_0
    goto :goto_2

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/Rollback;

    .line 181
    .restart local v3    # "rollback":Lcom/android/server/rollback/Rollback;
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {v3, v4}, Lcom/android/server/rollback/Rollback;->delete(Lcom/android/server/rollback/AppDataRollbackHelper;)V

    .line 182
    .end local v3    # "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_1

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 185
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RollbackManagerServiceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 189
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 190
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-wide v3, Lcom/android/server/rollback/RollbackManagerServiceImpl;->HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 191
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 193
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 194
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V

    .line 195
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_3

    .line 197
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 198
    .local v0, "enableRollbackFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    :try_start_1
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    goto :goto_4

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "RollbackManager"

    const-string v3, "addDataType"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v1    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :goto_4
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 234
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 205
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 236
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v1, "enableRollbackTimedOutFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;

    invoke-direct {v3, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 257
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 239
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 259
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_ADDED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, "userAddedIntentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/rollback/RollbackManagerServiceImpl$3;

    invoke-direct {v5, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$3;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 271
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 260
    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 273
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerTimeChangeReceiver()V

    .line 274
    return-void

    .line 185
    .end local v0    # "enableRollbackFilter":Landroid/content/IntentFilter;
    .end local v1    # "enableRollbackTimedOutFilter":Landroid/content/IntentFilter;
    .end local v2    # "userAddedIntentFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 101
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->queueSleepIfNeeded()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 101
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageFullyRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/rollback/RollbackManagerServiceImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 101
    iget-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # J

    .line 101
    iput-wide p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    return-wide p1
.end method

.method static synthetic access$1300()J
    .locals 2

    .line 101
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->calculateRelativeBootTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/Rollback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # Lcom/android/server/rollback/Rollback;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->completeEnableRollback(Lcom/android/server/rollback/Rollback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/Rollback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # Lcom/android/server/rollback/Rollback;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->makeRollbackAvailable(Lcom/android/server/rollback/Rollback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # I

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollback(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 101
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 101
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)Lcom/android/server/rollback/Rollback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # I

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForSessionLocked(I)Lcom/android/server/rollback/Rollback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 101
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Lcom/android/server/rollback/AppDataRollbackHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 101
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V

    return-void
.end method

.method private allocateRollbackIdLocked()I
    .locals 5

    .line 1211
    const/4 v0, 0x0

    .line 1214
    .local v0, "n":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRandom:Ljava/util/Random;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1215
    .local v1, "rollbackId":I
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1216
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1217
    return v1

    .line 1219
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "n":I
    .local v2, "n":I
    const/16 v3, 0x20

    if-ge v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    .line 1221
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to allocate rollback ID"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static calculateRelativeBootTime()J
    .locals 4

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private commitRollbackInternal(ILjava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 4
    .param p1, "rollbackId"    # I
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    .line 394
    .local p2, "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commitRollback id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForId(I)Lcom/android/server/rollback/Rollback;

    move-result-object v0

    .line 397
    .local v0, "rollback":Lcom/android/server/rollback/Rollback;
    if-nez v0, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    const-string v3, "Rollback unavailable"

    invoke-static {v1, p4, v2, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 401
    return-void

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/rollback/Rollback;->commit(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 404
    return-void
.end method

.method private completeEnableRollback(Lcom/android/server/rollback/Rollback;)Z
    .locals 3
    .param p1, "rollback"    # Lcom/android/server/rollback/Rollback;

    .line 1145
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    const-string v1, "RollbackManager"

    if-eqz v0, :cond_0

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeEnableRollback id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->allPackagesEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1154
    const-string v0, "Failed to enable rollback for all packages in session."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1156
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {p1, v0}, Lcom/android/server/rollback/Rollback;->delete(Lcom/android/server/rollback/AppDataRollbackHelper;)V

    .line 1157
    const/4 v0, 0x0

    return v0

    .line 1170
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->saveRollback()V

    .line 1172
    const/4 v0, 0x1

    return v0
.end method

.method private createNewRollbackLocked(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/server/rollback/Rollback;
    .locals 12
    .param p1, "parentSession"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1257
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->allocateRollbackIdLocked()I

    move-result v7

    .line 1259
    .local v7, "rollbackId":I
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v0, v1, :cond_0

    .line 1260
    const/4 v0, 0x0

    move v8, v0

    .local v0, "userId":I
    goto :goto_0

    .line 1262
    .end local v0    # "userId":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v8, v0

    .line 1264
    .local v8, "userId":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1266
    .local v9, "installerPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v10

    .line 1268
    .local v10, "parentSessionId":I
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_1

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createNewRollback id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " installer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1275
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v0

    move-object v11, v0

    .local v0, "packageSessionIds":[I
    goto :goto_1

    .line 1277
    .end local v0    # "packageSessionIds":[I
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v10, v0, v1

    move-object v11, v0

    .line 1280
    .local v11, "packageSessionIds":[I
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1281
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 1282
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 1281
    move v1, v7

    move v2, v10

    move v3, v8

    move-object v4, v9

    move-object v5, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/rollback/RollbackStore;->createStagedRollback(IIILjava/lang/String;[ILandroid/util/SparseIntArray;)Lcom/android/server/rollback/Rollback;

    move-result-object v0

    .local v0, "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_2

    .line 1284
    .end local v0    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_3
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 1285
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v5

    .line 1284
    move v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/rollback/RollbackStore;->createNonStagedRollback(IILjava/lang/String;[ILandroid/util/SparseIntArray;)Lcom/android/server/rollback/Rollback;

    move-result-object v0

    .line 1288
    .restart local v0    # "rollback":Lcom/android/server/rollback/Rollback;
    :goto_2
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1289
    return-object v0
.end method

.method private destroyCeSnapshotsForExpiredRollbacks(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 506
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 507
    .local v0, "rollbackIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/Rollback;

    iget-object v2, v2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    aput v2, v0, v1

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    .end local v1    # "i":I
    :cond_0
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/ApexManager;->destroyCeSnapshotsNotSpecified(I[I)Z

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/Installer;->destroyCeSnapshotsNotSpecified(I[I)Z
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    goto :goto_1

    .line 513
    :catch_0
    move-exception v1

    .line 514
    .local v1, "ie":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete snapshots for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RollbackManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    .end local v1    # "ie":Lcom/android/server/pm/Installer$InstallerException;
    :goto_1
    return-void
.end method

.method private enableRollback(I)Z
    .locals 9
    .param p1, "sessionId"    # I

    .line 712
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableRollback sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 717
    .local v0, "installer":Landroid/content/pm/PackageInstaller;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    .line 718
    .local v1, "packageSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 719
    const-string v3, "RollbackManager"

    const-string v4, "Unable to find session for enabled rollback."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return v2

    .line 723
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->hasParentSessionId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 724
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getParentSessionId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 725
    .local v3, "parentSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    :goto_0
    if-nez v3, :cond_3

    .line 726
    const-string v4, "RollbackManager"

    const-string v5, "Unable to find parent session for enabled rollback."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return v2

    .line 732
    :cond_3
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 733
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 734
    iget-object v6, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/rollback/Rollback;

    .line 735
    .local v6, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v6}, Lcom/android/server/rollback/Rollback;->getApkSessionId()I

    move-result v7

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 738
    monitor-exit v4

    const/4 v2, 0x1

    return v2

    .line 733
    .end local v6    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 741
    .end local v5    # "i":I
    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 745
    iget-object v5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 746
    :try_start_1
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mOrphanedApkSessionIds:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/IntArray;->indexOf(I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_6

    .line 747
    const-string v4, "RollbackManager"

    const-string v6, "Not enabling rollback for apk as no matching staged session rollback exists"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    monitor-exit v5

    return v2

    .line 751
    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 754
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 758
    :try_start_2
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForSessionLocked(I)Lcom/android/server/rollback/Rollback;

    move-result-object v4

    .line 759
    .local v4, "newRollback":Lcom/android/server/rollback/Rollback;
    if-nez v4, :cond_7

    .line 760
    invoke-direct {p0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->createNewRollbackLocked(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/server/rollback/Rollback;

    move-result-object v5

    move-object v4, v5

    .line 762
    :cond_7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 764
    invoke-direct {p0, v4, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackForPackageSession(Lcom/android/server/rollback/Rollback;Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v2

    return v2

    .line 762
    .end local v4    # "newRollback":Lcom/android/server/rollback/Rollback;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 751
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 741
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method private enableRollbackAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1012
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1013
    return v0

    .line 1016
    :cond_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1017
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    .line 1021
    .local v2, "manageRollbacksGranted":Z
    :goto_0
    const-string v4, "android.permission.TEST_MANAGE_ROLLBACKS"

    invoke-virtual {v1, v4, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v0

    .line 1026
    .local v4, "testManageRollbacksGranted":Z
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->isRollbackWhitelisted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v2, :cond_4

    :cond_3
    if-eqz v4, :cond_5

    :cond_4
    move v0, v3

    :cond_5
    return v0
.end method

.method private enableRollbackForPackageSession(Lcom/android/server/rollback/Rollback;Landroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 24
    .param p1, "rollback"    # Lcom/android/server/rollback/Rollback;
    .param p2, "session"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 778
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, " is not installed"

    iget v4, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 779
    .local v4, "installFlags":I
    const/high16 v0, 0x40000

    and-int/2addr v0, v4

    const-string v5, "RollbackManager"

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 780
    const-string v0, "Rollback is not enabled."

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    return v6

    .line 783
    :cond_0
    and-int/lit16 v0, v4, 0x800

    if-eqz v0, :cond_1

    .line 784
    const-string v0, "Rollbacks not supported for instant app install"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return v6

    .line 788
    :cond_1
    iget-object v0, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 789
    const-string v0, "Session code path has not been resolved."

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return v6

    .line 794
    :cond_2
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v7

    .line 795
    .local v7, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    nop

    .line 796
    invoke-virtual {v7}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    iget-object v9, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 795
    invoke-static {v0, v8, v6}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .line 797
    .local v8, "parseResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/PackageParser$ApkLite;>;"
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse new package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v3

    .line 798
    invoke-static {v5, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    return v6

    .line 802
    :cond_3
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/PackageParser$ApkLite;

    .line 804
    .local v9, "newPackage":Landroid/content/pm/PackageParser$ApkLite;
    iget-object v14, v9, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 805
    .local v14, "packageName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enabling rollback for install of "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", session:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v15

    .line 809
    .local v15, "installerPackageName":Ljava/lang/String;
    invoke-direct {v1, v15, v14}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installer "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not allowed to enable rollback on "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return v6

    .line 815
    :cond_4
    const/high16 v0, 0x20000

    and-int/2addr v0, v4

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v6

    :goto_0
    move/from16 v20, v0

    .line 820
    .local v20, "isApex":Z
    :try_start_0
    invoke-direct {v1, v14}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, v0

    .line 826
    .local v12, "pkgInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 828
    if-eqz v20, :cond_8

    .line 831
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/pm/PackageManagerInternal;

    .line 833
    .local v10, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v10, v14}, Landroid/content/pm/PackageManagerInternal;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 834
    .local v11, "apksInApex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 838
    .local v13, "apkInApex":Ljava/lang/String;
    :try_start_1
    invoke-direct {v1, v13}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v16
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 844
    .local v16, "apkPkgInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 845
    nop

    .line 846
    move-object/from16 v21, v7

    .end local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .local v21, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    move-object/from16 v18, v0

    iget v0, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    .line 845
    move-object/from16 v1, p1

    invoke-virtual {v1, v13, v6, v7, v0}, Lcom/android/server/rollback/Rollback;->enableForPackageInApex(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_6

    .line 847
    const/4 v3, 0x0

    return v3

    .line 849
    .end local v13    # "apkInApex":Ljava/lang/String;
    .end local v16    # "apkPkgInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, v18

    move-object/from16 v7, v21

    goto :goto_1

    .line 839
    .end local v21    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v13    # "apkInApex":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v21, v7

    move-object v6, v0

    .end local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v21    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    move-object v0, v6

    .line 842
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v3, 0x0

    return v3

    .line 834
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "apkInApex":Ljava/lang/String;
    .end local v21    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    :cond_7
    move-object/from16 v1, p1

    move-object/from16 v21, v7

    .end local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v21    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    goto :goto_2

    .line 828
    .end local v10    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v11    # "apksInApex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    :cond_8
    move-object/from16 v1, p1

    move-object/from16 v21, v7

    .line 859
    .end local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v21    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    :goto_2
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 860
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v9, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    int-to-long v5, v3

    .line 861
    invoke-virtual {v12}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v16

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget v13, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    .line 860
    move-object/from16 v10, p1

    move-object v11, v14

    move-object/from16 v22, v12

    move/from16 v19, v13

    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .local v22, "pkgInfo":Landroid/content/pm/PackageInfo;
    move-wide v12, v5

    move-object v6, v14

    move-object/from16 v23, v15

    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "installerPackageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    .local v23, "installerPackageName":Ljava/lang/String;
    move-wide/from16 v14, v16

    move/from16 v16, v20

    move-object/from16 v17, v3

    move-object/from16 v18, v7

    invoke-virtual/range {v10 .. v19}, Lcom/android/server/rollback/Rollback;->enableForPackage(Ljava/lang/String;JJZLjava/lang/String;[Ljava/lang/String;I)Z

    move-result v3

    return v3

    .line 821
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v21    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v22    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v23    # "installerPackageName":Ljava/lang/String;
    .restart local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "installerPackageName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v21, v7

    move-object v6, v14

    move-object/from16 v23, v15

    move-object v7, v0

    .end local v7    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "installerPackageName":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v21    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .restart local v23    # "installerPackageName":Ljava/lang/String;
    move-object v0, v7

    .line 824
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/4 v3, 0x0

    return v3
.end method

.method private enforceManageRollbacks(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .line 1240
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1242
    const-string v2, "android.permission.TEST_MANAGE_ROLLBACKS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1244
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :cond_1
    :goto_0
    return-void
.end method

.method private getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getExtensionVersions()Landroid/util/SparseIntArray;
    .locals 5

    .line 1295
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    aput v2, v0, v1

    .line 1297
    .local v0, "relevantSdkVersions":[I
    new-instance v1, Landroid/util/SparseIntArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1298
    .local v1, "result":Landroid/util/SparseIntArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1299
    aget v3, v0, v2

    aget v4, v0, v2

    .line 1300
    invoke-static {v4}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v4

    .line 1299
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1298
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1302
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private getInstalledPackageVersion(Ljava/lang/String;)J
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1063
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 1068
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    return-wide v1

    .line 1064
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1079
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1085
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/high16 v1, 0x400000

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1086
    :catch_0
    move-exception v1

    .line 1087
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    return-object v2
.end method

.method private getRollbackForId(I)Lcom/android/server/rollback/Rollback;
    .locals 4
    .param p1, "rollbackId"    # I

    .line 1196
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1197
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1198
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 1199
    .local v2, "rollback":Lcom/android/server/rollback/Rollback;
    iget-object v3, v2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1200
    monitor-exit v0

    return-object v2

    .line 1197
    .end local v2    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1203
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 1205
    const/4 v0, 0x0

    return-object v0

    .line 1203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getRollbackForSessionLocked(I)Lcom/android/server/rollback/Rollback;
    .locals 3
    .param p1, "sessionId"    # I

    .line 1314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1315
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 1316
    .local v1, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->getStagedSessionId()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 1317
    invoke-virtual {v1, p1}, Lcom/android/server/rollback/Rollback;->containsSessionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1314
    .end local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1318
    .restart local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_1
    :goto_1
    return-object v1

    .line 1321
    .end local v0    # "i":I
    .end local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private isModule(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1044
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1047
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    .local v2, "moduleInfo":Landroid/content/pm/ModuleInfo;
    nop

    .line 1052
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1048
    .end local v2    # "moduleInfo":Landroid/content/pm/ModuleInfo;
    :catch_0
    move-exception v2

    .line 1049
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private isRollbackWhitelisted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1036
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getRollbackWhitelistedPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1037
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->isModule(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1036
    :goto_1
    return v0
.end method

.method public static synthetic lambda$0HibeeAepjXymkK7UmEMFrp6FJs(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    return-void
.end method

.method static synthetic lambda$queueSleepIfNeeded$3(J)V
    .locals 3
    .param p0, "millis"    # J

    .line 466
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    nop

    .line 470
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RollbackManagerHandlerThread interrupted"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private makeRollbackAvailable(Lcom/android/server/rollback/Rollback;)V
    .locals 4
    .param p1, "rollback"    # Lcom/android/server/rollback/Rollback;

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeRollbackAvailable id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->makeAvailable()V

    .line 1186
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->getPackageNames()Ljava/util/List;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->startObservingHealth(Ljava/util/List;J)V

    .line 1188
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    .line 1189
    return-void
.end method

.method private onPackageFullyRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->expireRollbackForPackage(Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method private onPackageReplaced(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 606
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getInstalledPackageVersion(Ljava/lang/String;)J

    move-result-wide v0

    .line 608
    .local v0, "installedVersion":J
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 609
    :try_start_0
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 610
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 611
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/rollback/Rollback;

    .line 613
    .local v4, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 614
    :cond_0
    invoke-virtual {v4, p1, v0, v1}, Lcom/android/server/rollback/Rollback;->includesPackageWithDifferentVersion(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 616
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 617
    iget-object v5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {v4, v5}, Lcom/android/server/rollback/Rollback;->delete(Lcom/android/server/rollback/AppDataRollbackHelper;)V

    .line 619
    .end local v4    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_1
    goto :goto_0

    .line 620
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    :cond_2
    monitor-exit v2

    .line 621
    return-void

    .line 620
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private queueSleepIfNeeded()V
    .locals 4

    .line 457
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 458
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->removeFirst()J

    move-result-wide v0

    .line 461
    .local v0, "millis":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 462
    return-void

    .line 464
    :cond_1
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$mLT_D8xDNyND2xOtKDtfeJiTkqI;

    invoke-direct {v3, v0, v1}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$mLT_D8xDNyND2xOtKDtfeJiTkqI;-><init>(J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    return-void
.end method

.method private registerTimeChangeReceiver()V
    .locals 5

    .line 358
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 375
    .local v0, "timeChangeIntentReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 376
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 378
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 377
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 379
    return-void
.end method

.method private registerUserCallbacks(Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 279
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register user callbacks for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RollbackManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 284
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    new-instance v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl$1;)V

    .line 285
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 287
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 291
    new-instance v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;

    invoke-direct {v2, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 308
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 291
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 309
    return-void
.end method

.method private restoreUserDataInternal(Ljava/lang/String;[IILjava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "appId"    # I
    .param p4, "seInfo"    # Ljava/lang/String;

    .line 903
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreUserData pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 908
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 909
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/rollback/Rollback;

    .line 910
    .local v3, "rollback":Lcom/android/server/rollback/Rollback;
    iget-object v8, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/rollback/Rollback;->restoreUserDataForPackageIfInProgress(Ljava/lang/String;[IILjava/lang/String;Lcom/android/server/rollback/AppDataRollbackHelper;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 912
    monitor-exit v0

    return-void

    .line 908
    .end local v3    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 915
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 916
    return-void

    .line 915
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private runExpiration()V
    .locals 9

    .line 657
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRunExpiration:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 659
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 660
    .local v0, "now":Ljava/time/Instant;
    const/4 v1, 0x0

    .line 661
    .local v1, "oldest":Ljava/time/Instant;
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 662
    :try_start_0
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 663
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 664
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/rollback/Rollback;

    .line 665
    .local v4, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 666
    goto :goto_0

    .line 668
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v5

    .line 669
    .local v5, "rollbackTimestamp":Ljava/time/Instant;
    iget-wide v6, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 671
    invoke-virtual {v5, v6, v7}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v6

    .line 669
    invoke-virtual {v0, v6}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 672
    const-string v6, "RollbackManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runExpiration id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v8}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 674
    iget-object v6, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {v4, v6}, Lcom/android/server/rollback/Rollback;->delete(Lcom/android/server/rollback/AppDataRollbackHelper;)V

    goto :goto_1

    .line 675
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v5}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 676
    :cond_2
    move-object v1, v5

    .line 678
    .end local v4    # "rollback":Lcom/android/server/rollback/Rollback;
    .end local v5    # "rollbackTimestamp":Ljava/time/Instant;
    :cond_3
    :goto_1
    goto :goto_0

    .line 679
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    if-eqz v1, :cond_5

    .line 682
    iget-wide v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 683
    invoke-virtual {v1, v2, v3}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    .line 682
    invoke-virtual {v0, v2, v3}, Ljava/time/Instant;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v2

    .line 684
    .local v2, "delay":J
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRunExpiration:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 686
    .end local v2    # "delay":J
    :cond_5
    return-void

    .line 679
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;
    .param p2, "status"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 642
    const-string v0, "RollbackManager"

    invoke-static {v0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 645
    .local v0, "fillIn":Landroid/content/Intent;
    const-string v1, "android.content.rollback.extra.STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    const-string v1, "android.content.rollback.extra.STATUS_MESSAGE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v0    # "fillIn":Landroid/content/Intent;
    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 651
    :goto_0
    return-void
.end method

.method private snapshotUserDataInternal(Ljava/lang/String;[I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 888
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snapshotUserData pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 889
    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 893
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 894
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 895
    .local v2, "rollback":Lcom/android/server/rollback/Rollback;
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/rollback/Rollback;->snapshotUserData(Ljava/lang/String;[ILcom/android/server/rollback/AppDataRollbackHelper;)V

    .line 893
    .end local v2    # "rollback":Lcom/android/server/rollback/Rollback;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 897
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 898
    return-void

    .line 897
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateRollbackLifetimeDurationInMillis()V
    .locals 4

    .line 520
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    const-string v2, "rollback_boot"

    const-string v3, "rollback_lifetime_in_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 524
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 525
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 527
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRollbackLifetimeDurationInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    .line 529
    return-void
.end method


# virtual methods
.method public blockRollbackManager(J)V
    .locals 3
    .param p1, "millis"    # J

    .line 447
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    const-string v2, "blockRollbackManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$Oa5w5-KGpmVbVAVYjUwNItCBRqg;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$Oa5w5-KGpmVbVAVYjUwNItCBRqg;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    return-void
.end method

.method public commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 10
    .param p1, "rollbackId"    # I
    .param p2, "causePackages"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;

    .line 345
    const-string v0, "commitRollback"

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 348
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 349
    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 351
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v9, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$bhmKnyhoneBLazCFC2rxxtRypFI;

    move-object v3, v9

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$bhmKnyhoneBLazCFC2rxxtRypFI;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1226
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "RollbackManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1228
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1229
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1230
    :try_start_0
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/Rollback;

    .line 1231
    .local v3, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v3, v0}, Lcom/android/server/rollback/Rollback;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1232
    .end local v3    # "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_0

    .line 1233
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1234
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/PackageWatchdog;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1235
    monitor-exit v1

    .line 1236
    return-void

    .line 1235
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public expireRollbackForPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    const-string v2, "expireRollbackForPackage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 435
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 437
    .local v2, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v2, p1}, Lcom/android/server/rollback/Rollback;->includesPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 439
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {v2, v3}, Lcom/android/server/rollback/Rollback;->delete(Lcom/android/server/rollback/AppDataRollbackHelper;)V

    .line 441
    .end local v2    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_0
    goto :goto_0

    .line 442
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    :cond_1
    monitor-exit v0

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;
    .locals 5

    .line 313
    const-string v0, "getAvailableRollbacks"

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v1, "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 317
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/Rollback;

    .line 318
    .local v3, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v3}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    iget-object v4, v3, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v3    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object v2

    .line 323
    .end local v1    # "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRecentlyCommittedRollbacks()Landroid/content/pm/ParceledListSlice;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;"
        }
    .end annotation

    .line 328
    const-string v0, "getRecentlyCommittedRollbacks"

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v1, "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 333
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/Rollback;

    .line 334
    .local v3, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v3}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 335
    iget-object v4, v3, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v3    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object v2

    .line 339
    .end local v1    # "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$blockRollbackManager$2$RollbackManagerServiceImpl(J)V
    .locals 1
    .param p1, "millis"    # J

    .line 451
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 452
    return-void
.end method

.method public synthetic lambda$commitRollback$0$RollbackManagerServiceImpl(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "rollbackId"    # I
    .param p2, "causePackages"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;

    .line 352
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->commitRollbackInternal(ILjava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V

    return-void
.end method

.method public synthetic lambda$notifyStagedApkSession$9$RollbackManagerServiceImpl(II)V
    .locals 5
    .param p1, "originalSessionId"    # I
    .param p2, "apkSessionId"    # I

    .line 982
    const/4 v0, 0x0

    .line 983
    .local v0, "rollback":Lcom/android/server/rollback/Rollback;
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 984
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 985
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/Rollback;

    .line 986
    .local v3, "candidate":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v3}, Lcom/android/server/rollback/Rollback;->getStagedSessionId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 987
    move-object v0, v3

    .line 988
    goto :goto_1

    .line 984
    .end local v3    # "candidate":Lcom/android/server/rollback/Rollback;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 991
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 993
    const-string v2, "RollbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyStagedApkSession did not find rollback for session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Adding orphaned apk session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mOrphanedApkSessionIds:Landroid/util/IntArray;

    invoke-virtual {v2, p2}, Landroid/util/IntArray;->add(I)V

    .line 998
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    if-eqz v0, :cond_3

    .line 1001
    invoke-virtual {v0, p2}, Lcom/android/server/rollback/Rollback;->setApkSessionId(I)V

    .line 1003
    :cond_3
    return-void

    .line 998
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public synthetic lambda$notifyStagedSession$8$RollbackManagerServiceImpl(ILjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 10
    .param p1, "sessionId"    # I
    .param p2, "result"    # Ljava/util/concurrent/LinkedBlockingQueue;

    .line 928
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 930
    .local v0, "installer":Landroid/content/pm/PackageInstaller;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    .line 931
    .local v1, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    const/4 v2, -0x1

    .line 933
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 931
    if-nez v1, :cond_0

    .line 932
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No matching install session for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RollbackManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-virtual {p2, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 934
    return-void

    .line 938
    :cond_0
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 939
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->createNewRollbackLocked(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/server/rollback/Rollback;

    move-result-object v4

    .line 940
    .local v4, "newRollback":Lcom/android/server/rollback/Rollback;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v3

    if-nez v3, :cond_1

    .line 943
    invoke-direct {p0, v4, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackForPackageSession(Lcom/android/server/rollback/Rollback;Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to enable rollback for session: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "RollbackManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 947
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget v7, v3, v6

    .line 948
    .local v7, "childSessionId":I
    nop

    .line 949
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v8

    .line 950
    .local v8, "childSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-nez v8, :cond_2

    .line 951
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No matching child install session for: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "RollbackManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    goto :goto_1

    .line 954
    :cond_2
    invoke-direct {p0, v4, v8}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackForPackageSession(Lcom/android/server/rollback/Rollback;Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 955
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to enable rollback for session: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "RollbackManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    goto :goto_1

    .line 947
    .end local v7    # "childSessionId":I
    .end local v8    # "childSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 961
    :cond_4
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->completeEnableRollback(Lcom/android/server/rollback/Rollback;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 962
    invoke-virtual {p2, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    .line 964
    :cond_5
    iget-object v2, v4, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 966
    :goto_2
    return-void

    .line 940
    .end local v4    # "newRollback":Lcom/android/server/rollback/Rollback;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public synthetic lambda$onBootCompleted$5$RollbackManagerServiceImpl(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 534
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->updateRollbackLifetimeDurationInMillis()V

    return-void
.end method

.method public synthetic lambda$onBootCompleted$6$RollbackManagerServiceImpl()V
    .locals 8

    .line 537
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->updateRollbackLifetimeDurationInMillis()V

    .line 538
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v0, "enabling":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/Rollback;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v1, "restoreInProgress":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/Rollback;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 545
    .local v2, "apexPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 546
    :try_start_0
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 547
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 548
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/rollback/Rollback;

    .line 549
    .local v5, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v5}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v6

    if-nez v6, :cond_0

    .line 551
    goto :goto_0

    .line 554
    :cond_0
    iget-object v6, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 555
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/rollback/Rollback;->getStagedSessionId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v6

    .line 556
    .local v6, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    .line 562
    :cond_1
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 563
    invoke-virtual {v5}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 564
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 565
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/rollback/Rollback;->isRestoreUserDataInProgress()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 566
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_3
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/rollback/Rollback;->getApexPackageNames()Ljava/util/List;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 570
    nop

    .end local v5    # "rollback":Lcom/android/server/rollback/Rollback;
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    goto :goto_0

    .line 557
    .restart local v5    # "rollback":Lcom/android/server/rollback/Rollback;
    .restart local v6    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 558
    iget-object v7, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {v5, v7}, Lcom/android/server/rollback/Rollback;->delete(Lcom/android/server/rollback/AppDataRollbackHelper;)V

    .line 559
    goto :goto_0

    .line 571
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    .end local v5    # "rollback":Lcom/android/server/rollback/Rollback;
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 573
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/rollback/Rollback;

    .line 574
    .local v4, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-direct {p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->makeRollbackAvailable(Lcom/android/server/rollback/Rollback;)V

    .line 575
    .end local v4    # "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_3

    .line 577
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/rollback/Rollback;

    .line 578
    .restart local v4    # "rollback":Lcom/android/server/rollback/Rollback;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/rollback/Rollback;->setRestoreUserDataInProgress(Z)V

    .line 579
    .end local v4    # "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_4

    .line 581
    :cond_7
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 586
    .local v4, "apexPackageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;)V

    .line 587
    .end local v4    # "apexPackageName":Ljava/lang/String;
    goto :goto_5

    .line 589
    :cond_8
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 590
    :try_start_1
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mOrphanedApkSessionIds:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->clear()V

    .line 591
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    invoke-virtual {v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->onBootCompletedAsync()V

    .line 594
    return-void

    .line 591
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 571
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public synthetic lambda$onUnlockUser$4$RollbackManagerServiceImpl(ILjava/util/concurrent/CountDownLatch;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 483
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 485
    .local v1, "rollbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/Rollback;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 488
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 489
    .local v2, "rollback":Lcom/android/server/rollback/Rollback;
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/rollback/Rollback;->commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/AppDataRollbackHelper;)V

    .line 487
    .end local v2    # "rollback":Lcom/android/server/rollback/Rollback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 494
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->destroyCeSnapshotsForExpiredRollbacks(I)V

    .line 495
    return-void

    .line 485
    .end local v1    # "rollbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/Rollback;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$reloadPersistedData$1$RollbackManagerServiceImpl(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 414
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 416
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v2}, Lcom/android/server/rollback/RollbackStore;->loadRollbacks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 419
    return-void

    .line 417
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$snapshotAndRestoreUserData$7$RollbackManagerServiceImpl(Ljava/lang/String;[IILjava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "appId"    # I
    .param p4, "seInfo"    # Ljava/lang/String;
    .param p5, "token"    # I

    .line 874
    invoke-direct {p0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->snapshotUserDataInternal(Ljava/lang/String;[I)V

    .line 875
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->restoreUserDataInternal(Ljava/lang/String;[IILjava/lang/String;)V

    .line 878
    if-lez p5, :cond_0

    .line 879
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 881
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Landroid/content/pm/PackageManagerInternal;->finishPackageInstall(IZ)V

    .line 883
    .end local v0    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_0
    return-void
.end method

.method public notifyStagedApkSession(II)V
    .locals 2
    .param p1, "originalSessionId"    # I
    .param p2, "apkSessionId"    # I

    .line 978
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 981
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$dvtbDBER69x5DgQh73U5EpSi4qk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$dvtbDBER69x5DgQh73U5EpSi4qk;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1004
    return-void

    .line 979
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "notifyStagedApkSession may only be called by the system."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyStagedSession(I)I
    .locals 4
    .param p1, "sessionId"    # I

    .line 920
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 923
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 927
    .local v0, "result":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$nKgo614yKB7ibKKY1a7J5CTtlEU;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$nKgo614yKB7ibKKY1a7J5CTtlEU;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILjava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 969
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 970
    :catch_0
    move-exception v1

    .line 971
    .local v1, "ie":Ljava/lang/InterruptedException;
    const-string v2, "RollbackManager"

    const-string v3, "Interrupted while waiting for notifyStagedSession response"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/4 v2, -0x1

    return v2

    .line 921
    .end local v0    # "result":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Integer;>;"
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "notifyStagedSession may only be called by the system."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onBootCompleted()V
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$UZ6heBvW792l5X1X86VJbao61T4;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$UZ6heBvW792l5X1X86VJbao61T4;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    const-string v2, "rollback_boot"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 536
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$5VimxC3UlEV_IzyoBdYlrATzYd8;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$5VimxC3UlEV_IzyoBdYlrATzYd8;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    return-void
.end method

.method onUnlockUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 474
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnlockUser id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 481
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$Be1hJgd8PbSLFX_uKif2yCGhtKo;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$Be1hJgd8PbSLFX_uKif2yCGhtKo;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    nop

    .line 502
    return-void

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "ie":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "RollbackManagerHandlerThread interrupted"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public reloadPersistedData()V
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    const-string v2, "reloadPersistedData"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 413
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$K_I_qP9ed2R4xbW7mnGjXH6B7Yc;

    invoke-direct {v2, p0, v0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$K_I_qP9ed2R4xbW7mnGjXH6B7Yc;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    nop

    .line 426
    return-void

    .line 423
    :catch_0
    move-exception v1

    .line 424
    .local v1, "ie":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "RollbackManagerHandlerThread interrupted"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "appId"    # I
    .param p4, "ceDataInode"    # J
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "token"    # I

    .line 868
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 873
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$8P8gySPy0dcZ7pWpZaoseQ0VuIo;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;[IILjava/lang/String;I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 884
    return-void

    .line 869
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "snapshotAndRestoreUserData may only be called by the system."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

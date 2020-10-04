.class Lcom/android/server/rollback/RollbackManagerServiceImpl;
.super Landroid/content/rollback/IRollbackManager$Stub;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;,
        Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

.field private static final HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field private final mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

.field private final mContext:Landroid/content/Context;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mLock:Ljava/lang/Object;

.field private final mNewRollbacks:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field private final mRandom:Ljava/util/Random;

.field private mRelativeBootTime:J

.field private mRollbackLifetimeDurationInMillis:J

.field private final mRollbackStore:Lcom/android/server/rollback/RollbackStore;

.field private mRollbacks:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 90
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 91
    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    .line 103
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 104
    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

    .line 103
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Landroid/content/rollback/IRollbackManager$Stub;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 101
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 107
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRandom:Ljava/util/Random;

    .line 110
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    .line 114
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mNewRollbacks:Ljava/util/Set;

    .line 134
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->calculateRelativeBootTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    .line 137
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 140
    new-instance v0, Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    .line 141
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->onStart()V

    .line 142
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RollbackManagerServiceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 143
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 146
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-wide v2, Lcom/android/server/rollback/RollbackManagerServiceImpl;->HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 148
    new-instance v0, Lcom/android/server/rollback/RollbackStore;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "rollback"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/rollback/RollbackStore;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 150
    new-instance v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 151
    new-instance v0, Lcom/android/server/rollback/AppDataRollbackHelper;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-direct {v0, v1}, Lcom/android/server/rollback/AppDataRollbackHelper;-><init>(Lcom/android/server/pm/Installer;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 160
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$2_NDf9EpLcTKkJVpkadZhudKips;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$2_NDf9EpLcTKkJVpkadZhudKips;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl$1;)V

    .line 165
    .local v0, "sessionCallback":Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 166
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V

    .line 167
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 169
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v2, "enableRollbackFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    :try_start_0
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_1

    .line 173
    :catch_0
    move-exception v3

    .line 174
    .local v3, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v4, "RollbackManager"

    const-string v5, "addDataType"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v3    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :goto_1
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    invoke-direct {v4, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 211
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 177
    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 213
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v3, "enableRollbackTimedOutFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;

    invoke-direct {v5, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 232
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 216
    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 234
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_ADDED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 235
    .local v4, "userAddedIntentFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/rollback/RollbackManagerServiceImpl$3;

    invoke-direct {v6, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$3;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 246
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 235
    invoke-virtual {v5, v6, v4, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 248
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerTimeChangeReceiver()V

    .line 249
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 85
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 85
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 85
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # Lcom/android/server/rollback/RollbackData;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;Z)Lcom/android/server/rollback/RollbackData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    .param p2, "x2"    # Z

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->completeEnableRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;Z)Lcom/android/server/rollback/RollbackData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # Lcom/android/server/rollback/RollbackData;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->makeRollbackAvailable(Lcom/android/server/rollback/RollbackData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILjava/io/File;[III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/io/File;
    .param p3, "x3"    # [I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 85
    invoke-direct/range {p0 .. p5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollback(ILjava/io/File;[III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 85
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 85
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mNewRollbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageFullyRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/rollback/RollbackManagerServiceImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 85
    iget-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .param p1, "x1"    # J

    .line 85
    iput-wide p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    return-wide p1
.end method

.method static synthetic access$900()J
    .locals 2

    .line 85
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->calculateRelativeBootTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private allocateRollbackIdLocked()I
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1440
    const/4 v0, 0x0

    .line 1443
    .local v0, "n":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRandom:Ljava/util/Random;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1444
    .local v1, "rollbackId":I
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1445
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1446
    return v1

    .line 1448
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "n":I
    .local v2, "n":I
    const/16 v3, 0x20

    if-ge v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    .line 1450
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to allocate rollback ID"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static calculateRelativeBootTime()J
    .locals 4

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private commitRollbackInternal(ILjava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 28
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

    .line 396
    .local p2, "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p4

    const-string v0, "RollbackManager"

    const-string v1, "Initiating rollback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct/range {p0 .. p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForId(I)Lcom/android/server/rollback/RollbackData;

    move-result-object v9

    .line 399
    .local v9, "data":Lcom/android/server/rollback/RollbackData;
    if-eqz v9, :cond_a

    iget v0, v9, Lcom/android/server/rollback/RollbackData;->state:I

    const/4 v10, 0x1

    if-eq v0, v10, :cond_0

    goto/16 :goto_3

    .line 407
    :cond_0
    const/4 v1, 0x0

    .line 409
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    iget-object v0, v7, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    move-object/from16 v11, p3

    invoke-virtual {v0, v11, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, v0

    .line 414
    .end local v1    # "context":Landroid/content/Context;
    .local v12, "context":Landroid/content/Context;
    nop

    .line 416
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 418
    .local v13, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v13}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v14, v0

    .line 419
    .local v14, "packageInstaller":Landroid/content/pm/PackageInstaller;
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v0, v10}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object v15, v0

    .line 421
    .local v15, "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v15, v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 422
    invoke-virtual {v15}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    .line 423
    invoke-virtual {v9}, Lcom/android/server/rollback/RollbackData;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v15}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 427
    :cond_1
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    move v6, v0

    .line 428
    .local v6, "parentSessionId":I
    invoke-virtual {v14, v6}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    move-object v5, v0

    .line 430
    .local v5, "parentSession":Landroid/content/pm/PackageInstaller$Session;
    iget-object v0, v9, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 431
    .local v1, "info":Landroid/content/rollback/PackageRollbackInfo;
    new-instance v3, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v3, v10}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 436
    .local v3, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v4

    if-nez v4, :cond_2

    .line 437
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "installerPackageName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 439
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 442
    .end local v4    # "installerPackageName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 443
    nop

    .line 444
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v10

    .line 443
    invoke-virtual {v3, v10, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequiredInstalledVersionCode(J)V

    .line 445
    invoke-virtual {v9}, Lcom/android/server/rollback/RollbackData;->isStaged()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 446
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 448
    :cond_3
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 449
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    .line 451
    :cond_4
    invoke-virtual {v14, v3}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v4

    .line 452
    .local v4, "sessionId":I
    invoke-virtual {v14, v4}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v16

    .line 454
    .local v16, "session":Landroid/content/pm/PackageInstaller$Session;
    nop

    .line 455
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 454
    invoke-static {v9, v10}, Lcom/android/server/rollback/RollbackStore;->getPackageCodePaths(Lcom/android/server/rollback/RollbackData;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v10

    .line 456
    .local v10, "packageCodePaths":[Ljava/io/File;
    if-nez v10, :cond_5

    .line 457
    const-string v0, "Backup copy of package inaccessible"

    const/4 v2, 0x1

    invoke-direct {v7, v8, v2, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 459
    return-void

    .line 462
    :cond_5
    array-length v11, v10

    :goto_1
    if-ge v2, v11, :cond_8

    aget-object v17, v10, v2

    move-object/from16 v23, v17

    .line 463
    .local v23, "packageCodePath":Ljava/io/File;
    move-object/from16 v24, v0

    const/high16 v0, 0x10000000

    move-object/from16 v25, v1

    move-object/from16 v1, v23

    .end local v23    # "packageCodePath":Ljava/io/File;
    .local v1, "packageCodePath":Ljava/io/File;
    .local v25, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v23, v0

    .line 465
    .local v23, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v26, v17

    .line 467
    .local v26, "token":J
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v20

    move-object/from16 v22, v23

    invoke-virtual/range {v16 .. v22}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    :try_start_4
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 471
    nop

    .line 472
    .end local v26    # "token":J
    if-eqz v23, :cond_6

    :try_start_5
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 462
    .end local v1    # "packageCodePath":Ljava/io/File;
    .end local v23    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    goto :goto_1

    .line 470
    .restart local v1    # "packageCodePath":Ljava/io/File;
    .restart local v23    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v26    # "token":J
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "packageCodePath":Ljava/io/File;
    .end local v3    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v4    # "sessionId":I
    .end local v5    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .end local v6    # "parentSessionId":I
    .end local v9    # "data":Lcom/android/server/rollback/RollbackData;
    .end local v10    # "packageCodePaths":[Ljava/io/File;
    .end local v12    # "context":Landroid/content/Context;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local v14    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v15    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v16    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v23    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v25    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .end local p0    # "this":Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .end local p1    # "rollbackId":I
    .end local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local p3    # "callerPackageName":Ljava/lang/String;
    .end local p4    # "statusReceiver":Landroid/content/IntentSender;
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 463
    .end local v26    # "token":J
    .restart local v1    # "packageCodePath":Ljava/io/File;
    .restart local v3    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v4    # "sessionId":I
    .restart local v5    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .restart local v6    # "parentSessionId":I
    .restart local v9    # "data":Lcom/android/server/rollback/RollbackData;
    .restart local v10    # "packageCodePaths":[Ljava/io/File;
    .restart local v12    # "context":Landroid/content/Context;
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    .restart local v14    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .restart local v15    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v16    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v23    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v25    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .restart local p0    # "this":Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .restart local p1    # "rollbackId":I
    .restart local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local p3    # "callerPackageName":Ljava/lang/String;
    .restart local p4    # "statusReceiver":Landroid/content/IntentSender;
    :catchall_1
    move-exception v0

    move-object v2, v0

    .end local v1    # "packageCodePath":Ljava/io/File;
    .end local v3    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v4    # "sessionId":I
    .end local v5    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .end local v6    # "parentSessionId":I
    .end local v9    # "data":Lcom/android/server/rollback/RollbackData;
    .end local v10    # "packageCodePaths":[Ljava/io/File;
    .end local v12    # "context":Landroid/content/Context;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local v14    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v15    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v16    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v23    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v25    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .end local p0    # "this":Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .end local p1    # "rollbackId":I
    .end local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local p3    # "callerPackageName":Ljava/lang/String;
    .end local p4    # "statusReceiver":Landroid/content/IntentSender;
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 472
    .restart local v1    # "packageCodePath":Ljava/io/File;
    .restart local v3    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v4    # "sessionId":I
    .restart local v5    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .restart local v6    # "parentSessionId":I
    .restart local v9    # "data":Lcom/android/server/rollback/RollbackData;
    .restart local v10    # "packageCodePaths":[Ljava/io/File;
    .restart local v12    # "context":Landroid/content/Context;
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    .restart local v14    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .restart local v15    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v16    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v23    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v25    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .restart local p0    # "this":Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .restart local p1    # "rollbackId":I
    .restart local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local p3    # "callerPackageName":Ljava/lang/String;
    .restart local p4    # "statusReceiver":Landroid/content/IntentSender;
    :catchall_2
    move-exception v0

    move-object v11, v0

    if-eqz v23, :cond_7

    :try_start_8
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v17, v1

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v17, v1

    move-object v1, v0

    .end local v1    # "packageCodePath":Ljava/io/File;
    .local v17, "packageCodePath":Ljava/io/File;
    :try_start_9
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v17    # "packageCodePath":Ljava/io/File;
    .restart local v1    # "packageCodePath":Ljava/io/File;
    :cond_7
    move-object/from16 v17, v1

    .end local v1    # "packageCodePath":Ljava/io/File;
    .end local v9    # "data":Lcom/android/server/rollback/RollbackData;
    .end local v12    # "context":Landroid/content/Context;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .end local p1    # "rollbackId":I
    .end local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local p3    # "callerPackageName":Ljava/lang/String;
    .end local p4    # "statusReceiver":Landroid/content/IntentSender;
    .restart local v17    # "packageCodePath":Ljava/io/File;
    :goto_2
    throw v11

    .line 474
    .end local v17    # "packageCodePath":Ljava/io/File;
    .end local v23    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v25    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .local v1, "info":Landroid/content/rollback/PackageRollbackInfo;
    .restart local v9    # "data":Lcom/android/server/rollback/RollbackData;
    .restart local v12    # "context":Landroid/content/Context;
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .restart local p1    # "rollbackId":I
    .restart local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local p3    # "callerPackageName":Ljava/lang/String;
    .restart local p4    # "statusReceiver":Landroid/content/IntentSender;
    :cond_8
    move-object/from16 v24, v0

    move-object/from16 v25, v1

    .end local v1    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .restart local v25    # "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    .line 475
    .end local v3    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v4    # "sessionId":I
    .end local v10    # "packageCodePaths":[Ljava/io/File;
    .end local v16    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v25    # "info":Landroid/content/rollback/PackageRollbackInfo;
    move-object/from16 v11, p3

    move-object/from16 v0, v24

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 477
    :cond_9
    new-instance v0, Lcom/android/server/rollback/LocalIntentReceiver;

    new-instance v10, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v9

    move-object/from16 v4, p4

    move-object v11, v5

    .end local v5    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .local v11, "parentSession":Landroid/content/pm/PackageInstaller$Session;
    move v5, v6

    move/from16 v16, v6

    .end local v6    # "parentSessionId":I
    .local v16, "parentSessionId":I
    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackData;Landroid/content/IntentSender;ILjava/util/List;)V

    invoke-direct {v0, v10}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    move-object v1, v0

    .line 529
    .local v1, "receiver":Lcom/android/server/rollback/LocalIntentReceiver;
    iget-object v2, v7, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 530
    const/4 v0, 0x3

    :try_start_a
    iput v0, v9, Lcom/android/server/rollback/RollbackData;->state:I

    .line 531
    const/4 v3, 0x1

    iput-boolean v3, v9, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    .line 532
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 533
    :try_start_b
    invoke-virtual {v1}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 539
    .end local v1    # "receiver":Lcom/android/server/rollback/LocalIntentReceiver;
    .end local v11    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .end local v14    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v15    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v16    # "parentSessionId":I
    nop

    .line 540
    return-void

    .line 532
    .restart local v1    # "receiver":Lcom/android/server/rollback/LocalIntentReceiver;
    .restart local v11    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .restart local v14    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .restart local v15    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v16    # "parentSessionId":I
    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .end local v9    # "data":Lcom/android/server/rollback/RollbackData;
    .end local v12    # "context":Landroid/content/Context;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .end local p1    # "rollbackId":I
    .end local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local p3    # "callerPackageName":Ljava/lang/String;
    .end local p4    # "statusReceiver":Landroid/content/IntentSender;
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 534
    .end local v1    # "receiver":Lcom/android/server/rollback/LocalIntentReceiver;
    .end local v11    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .end local v14    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v15    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v16    # "parentSessionId":I
    .restart local v9    # "data":Lcom/android/server/rollback/RollbackData;
    .restart local v12    # "context":Landroid/content/Context;
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Lcom/android/server/rollback/RollbackManagerServiceImpl;
    .restart local p1    # "rollbackId":I
    .restart local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local p3    # "callerPackageName":Ljava/lang/String;
    .restart local p4    # "statusReceiver":Landroid/content/IntentSender;
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "RollbackManager"

    const-string v2, "Rollback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    const/4 v2, 0x1

    invoke-direct {v7, v8, v2, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 538
    return-void

    .line 410
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "context":Landroid/content/Context;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .local v1, "context":Landroid/content/Context;
    :catch_1
    move-exception v0

    move v2, v10

    .line 411
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Invalid callerPackageName"

    invoke-direct {v7, v8, v2, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 413
    return-void

    .line 400
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "context":Landroid/content/Context;
    :cond_a
    :goto_3
    const/4 v0, 0x2

    const-string v1, "Rollback unavailable"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 402
    return-void
.end method

.method private completeEnableRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;Z)Lcom/android/server/rollback/RollbackData;
    .locals 4
    .param p1, "newRollback"    # Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    .param p2, "success"    # Z

    .line 1339
    iget-object v0, p1, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    .line 1340
    .local v0, "data":Lcom/android/server/rollback/RollbackData;
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 1342
    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/RollbackData;)V

    .line 1343
    return-object v1

    .line 1345
    :cond_0
    iget-boolean v2, p1, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->isCancelled:Z

    if-eqz v2, :cond_1

    .line 1346
    const-string v2, "RollbackManager"

    const-string v3, "Rollback has been cancelled by PackageManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/RollbackData;)V

    .line 1348
    return-object v1

    .line 1354
    :cond_1
    iget-object v2, v0, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->packageSessionIds:[I

    array-length v3, v3

    if-eq v2, v3, :cond_2

    .line 1355
    const-string v2, "RollbackManager"

    const-string v3, "Failed to enable rollback for all packages in session."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/RollbackData;)V

    .line 1357
    return-object v1

    .line 1360
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 1361
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1372
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 1373
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1374
    monitor-exit v1

    .line 1376
    return-object v0

    .line 1374
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private deleteRollback(Lcom/android/server/rollback/RollbackData;)V
    .locals 7
    .param p1, "rollbackData"    # Lcom/android/server/rollback/RollbackData;

    .line 1454
    iget-object v0, p1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 1455
    .local v1, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getInstalledUsers()Landroid/util/IntArray;

    move-result-object v2

    .line 1456
    .local v2, "installedUsers":Landroid/util/IntArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1457
    invoke-virtual {v2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 1458
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    iget-object v6, p1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v6}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v6

    invoke-virtual {v5, v6, v1, v4}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyAppDataSnapshot(ILandroid/content/rollback/PackageRollbackInfo;I)V

    .line 1456
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1461
    .end local v1    # "info":Landroid/content/rollback/PackageRollbackInfo;
    .end local v2    # "installedUsers":Landroid/util/IntArray;
    .end local v3    # "i":I
    :cond_0
    goto :goto_0

    .line 1462
    :cond_1
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v0, p1}, Lcom/android/server/rollback/RollbackStore;->deleteRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 1463
    return-void
.end method

.method private enableRollback(ILjava/io/File;[III)Z
    .locals 16
    .param p1, "installFlags"    # I
    .param p2, "newPackageCodePath"    # Ljava/io/File;
    .param p3, "installedUsers"    # [I
    .param p4, "user"    # I
    .param p5, "token"    # I

    .line 877
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    .line 878
    .local v4, "context":Landroid/content/Context;
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 879
    const-string v0, "RollbackManager"

    const-string v6, "Unable to create context for install session user."

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    return v5

    .line 883
    :cond_0
    const/4 v0, 0x0

    .line 884
    .local v0, "parentSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    const/4 v6, 0x0

    .line 885
    .local v6, "packageSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v7

    .line 886
    .local v7, "installer":Landroid/content/pm/PackageInstaller;
    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 887
    .local v9, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v9}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 888
    invoke-virtual {v9}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v10

    array-length v11, v10

    move v12, v5

    :goto_1
    if-ge v12, v11, :cond_2

    aget v13, v10, v12

    .line 889
    .local v13, "childId":I
    invoke-virtual {v7, v13}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v14

    .line 890
    .local v14, "child":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-direct {v1, v14, v2, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sessionMatchesForEnableRollback(Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/io/File;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 892
    move-object v0, v9

    .line 893
    move-object v6, v14

    .line 894
    goto :goto_2

    .line 888
    .end local v13    # "childId":I
    .end local v14    # "child":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    goto :goto_3

    .line 897
    :cond_3
    invoke-direct {v1, v9, v2, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sessionMatchesForEnableRollback(Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 899
    move-object v0, v9

    .line 900
    move-object v6, v9

    .line 901
    move-object v8, v6

    move-object v6, v0

    goto :goto_4

    .line 903
    .end local v9    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_4
    :goto_3
    goto :goto_0

    .line 886
    :cond_5
    move-object v8, v6

    move-object v6, v0

    .line 905
    .end local v0    # "parentSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    .local v6, "parentSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    .local v8, "packageSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    :goto_4
    if-eqz v6, :cond_d

    if-nez v8, :cond_6

    move-object/from16 v12, p3

    move/from16 v11, p5

    goto/16 :goto_a

    .line 913
    :cond_6
    const/4 v9, 0x0

    .line 914
    .local v9, "rd":Lcom/android/server/rollback/RollbackData;
    iget-object v10, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 915
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 916
    move v0, v5

    .local v0, "i":I
    :goto_5
    iget-object v11, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_8

    .line 917
    iget-object v11, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/rollback/RollbackData;

    .line 918
    .local v11, "data":Lcom/android/server/rollback/RollbackData;
    iget v12, v11, Lcom/android/server/rollback/RollbackData;->apkSessionId:I

    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v13

    if-ne v12, v13, :cond_7

    .line 919
    move-object v9, v11

    .line 920
    goto :goto_6

    .line 916
    .end local v11    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 923
    .end local v0    # "i":I
    :cond_8
    :goto_6
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 925
    if-eqz v9, :cond_b

    .line 928
    const/4 v10, 0x0

    .line 930
    .local v10, "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v11, v8, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 935
    .end local v10    # "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    .local v0, "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    nop

    .line 936
    iget-object v10, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 937
    .local v10, "packageName":Ljava/lang/String;
    iget-object v11, v9, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v11}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/rollback/PackageRollbackInfo;

    .line 938
    .local v12, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v12}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 939
    invoke-virtual {v12}, Landroid/content/rollback/PackageRollbackInfo;->getInstalledUsers()Landroid/util/IntArray;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 940
    const/4 v5, 0x1

    return v5

    .line 942
    .end local v12    # "info":Landroid/content/rollback/PackageRollbackInfo;
    :cond_9
    goto :goto_7

    .line 943
    :cond_a
    const-string v11, "RollbackManager"

    const-string v12, "Unable to find package in apk session"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    return v5

    .line 932
    .end local v0    # "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    .local v10, "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    :catch_0
    move-exception v0

    .line 933
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const-string v11, "RollbackManager"

    const-string v12, "Unable to parse new package"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    return v5

    .line 948
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v10    # "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    :cond_b
    iget-object v5, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 952
    :try_start_2
    invoke-virtual {v8}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getNewRollbackForPackageSessionLocked(I)Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    move-result-object v0

    .line 953
    .local v0, "newRollback":Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    if-nez v0, :cond_c

    .line 954
    invoke-virtual {v1, v6}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->createNewRollbackLocked(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    move-result-object v10

    move-object v0, v10

    .line 955
    iget-object v10, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mNewRollbacks:Ljava/util/Set;

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 957
    :cond_c
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 958
    move/from16 v11, p5

    invoke-virtual {v0, v11}, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->addToken(I)V

    .line 960
    iget-object v5, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    move-object/from16 v12, p3

    invoke-direct {v1, v5, v8, v12}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackForPackageSession(Lcom/android/server/rollback/RollbackData;Landroid/content/pm/PackageInstaller$SessionInfo;[I)Z

    move-result v5

    return v5

    .line 957
    .end local v0    # "newRollback":Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    :catchall_0
    move-exception v0

    move-object/from16 v12, p3

    move/from16 v11, p5

    :goto_8
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_8

    .line 923
    :catchall_2
    move-exception v0

    move-object/from16 v12, p3

    move/from16 v11, p5

    :goto_9
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_9

    .line 905
    .end local v9    # "rd":Lcom/android/server/rollback/RollbackData;
    :cond_d
    move-object/from16 v12, p3

    move/from16 v11, p5

    .line 906
    :goto_a
    const-string v0, "RollbackManager"

    const-string v9, "Unable to find session for enabled rollback."

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return v5
.end method

.method private enableRollbackAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1222
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1223
    return v0

    .line 1226
    :cond_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1227
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

    .line 1231
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

    .line 1236
    .local v4, "testManageRollbacksGranted":Z
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->isModule(Ljava/lang/String;)Z

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

.method private enableRollbackForPackageSession(Lcom/android/server/rollback/RollbackData;Landroid/content/pm/PackageInstaller$SessionInfo;[I)Z
    .locals 20
    .param p1, "data"    # Lcom/android/server/rollback/RollbackData;
    .param p2, "session"    # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p3, "installedUsers"    # [I

    .line 973
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget v4, v3, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 974
    .local v4, "installFlags":I
    const/high16 v0, 0x40000

    and-int/2addr v0, v4

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 975
    const-string v0, "RollbackManager"

    const-string v6, "Rollback is not enabled."

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    return v5

    .line 978
    :cond_0
    and-int/lit16 v0, v4, 0x800

    if-eqz v0, :cond_1

    .line 979
    const-string v0, "RollbackManager"

    const-string v6, "Rollbacks not supported for instant app install"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    return v5

    .line 983
    :cond_1
    iget-object v0, v3, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 984
    const-string v0, "RollbackManager"

    const-string v6, "Session code path has not been resolved."

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return v5

    .line 989
    :cond_2
    const/4 v6, 0x0

    .line 991
    .local v6, "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v7, v3, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v0

    .line 995
    nop

    .line 997
    iget-object v7, v6, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 998
    .local v7, "packageName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enabling rollback for install of "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", session:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "RollbackManager"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1002
    .local v8, "installerPackageName":Ljava/lang/String;
    invoke-direct {v1, v8, v7}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Installer "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not allowed to enable rollback on "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "RollbackManager"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return v5

    .line 1008
    :cond_3
    new-instance v11, Landroid/content/pm/VersionedPackage;

    iget v0, v6, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    invoke-direct {v11, v7, v0}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 1009
    .local v11, "newVersion":Landroid/content/pm/VersionedPackage;
    const/high16 v0, 0x20000

    and-int/2addr v0, v4

    if-eqz v0, :cond_4

    const/4 v15, 0x1

    goto :goto_0

    :cond_4
    move v15, v5

    .line 1012
    .local v15, "isApex":Z
    :goto_0
    iget-object v0, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 1015
    .local v18, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-direct {v1, v7}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v14, v0

    .line 1021
    .local v14, "pkgInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 1023
    new-instance v12, Landroid/content/pm/VersionedPackage;

    .line 1024
    move-object/from16 v19, v6

    .end local v6    # "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    .local v19, "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual {v14}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-direct {v12, v7, v5, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 1026
    .local v12, "installedVersion":Landroid/content/pm/VersionedPackage;
    new-instance v0, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v13, Landroid/util/IntArray;

    invoke-direct {v13}, Landroid/util/IntArray;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    invoke-static/range {p3 .. p3}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v16

    new-instance v17, Landroid/util/SparseLongArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseLongArray;-><init>()V

    move-object v10, v0

    move-object v6, v14

    .end local v14    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .local v6, "pkgInfo":Landroid/content/pm/PackageInfo;
    move-object v14, v5

    invoke-direct/range {v10 .. v17}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Landroid/util/IntArray;Ljava/util/ArrayList;ZLandroid/util/IntArray;Landroid/util/SparseLongArray;)V

    move-object v5, v0

    .line 1033
    .local v5, "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :try_start_2
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1034
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2, v7, v10}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/RollbackData;Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1036
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v13, v10

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_5

    aget-object v16, v10, v14

    move-object/from16 v17, v16

    .line 1037
    .local v17, "sourceDir":Ljava/lang/String;
    move-object/from16 v9, v17

    .end local v17    # "sourceDir":Ljava/lang/String;
    .local v9, "sourceDir":Ljava/lang/String;
    invoke-static {v2, v7, v9}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/RollbackData;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1036
    .end local v9    # "sourceDir":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1043
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    nop

    .line 1045
    iget-object v9, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1046
    :try_start_3
    iget-object v0, v2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    monitor-exit v9

    .line 1048
    const/4 v0, 0x1

    return v0

    .line 1047
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to copy package for rollback for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "RollbackManager"

    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    const/4 v9, 0x0

    return v9

    .line 1016
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    .end local v12    # "installedVersion":Landroid/content/pm/VersionedPackage;
    .end local v19    # "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    .local v6, "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    :catch_1
    move-exception v0

    move-object/from16 v19, v6

    move-object v5, v0

    .end local v6    # "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v19    # "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    move-object v0, v5

    .line 1019
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not installed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RollbackManager"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const/4 v5, 0x0

    return v5

    .line 992
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v11    # "newVersion":Landroid/content/pm/VersionedPackage;
    .end local v15    # "isApex":Z
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    .restart local v6    # "newPackage":Landroid/content/pm/PackageParser$PackageLite;
    :catch_2
    move-exception v0

    .line 993
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const-string v5, "RollbackManager"

    const-string v7, "Unable to parse new package"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 994
    const/4 v5, 0x0

    return v5
.end method

.method private enforceManageRollbacks(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .line 1516
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1518
    const-string v2, "android.permission.TEST_MANAGE_ROLLBACKS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1520
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

    .line 1524
    :cond_1
    :goto_0
    return-void
.end method

.method private ensureRollbackDataLoaded()V
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 686
    monitor-exit v0

    .line 687
    return-void

    .line 686
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private ensureRollbackDataLoadedLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 696
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->loadAllRollbackDataLocked()V

    .line 698
    :cond_0
    return-void
.end method

.method private getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 848
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

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private getInstalledPackageVersion(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1260
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1261
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1263
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1266
    nop

    .line 1268
    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-direct {v2, p1, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    return-object v2

    .line 1264
    :catch_0
    move-exception v2

    .line 1265
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    return-object v3
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1278
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1284
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/high16 v1, 0x400000

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1285
    :catch_0
    move-exception v1

    .line 1286
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    return-object v2
.end method

.method private static getPackageRollbackInfo(Lcom/android/server/rollback/RollbackData;Ljava/lang/String;)Landroid/content/rollback/PackageRollbackInfo;
    .locals 3
    .param p0, "data"    # Lcom/android/server/rollback/RollbackData;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1429
    iget-object v0, p0, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 1430
    .local v1, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1431
    return-object v1

    .line 1433
    .end local v1    # "info":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 1435
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRollbackForId(I)Lcom/android/server/rollback/RollbackData;
    .locals 4
    .param p1, "rollbackId"    # I

    .line 1408
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1411
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 1412
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1413
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/RollbackData;

    .line 1414
    .local v2, "data":Lcom/android/server/rollback/RollbackData;
    iget-object v3, v2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1415
    monitor-exit v0

    return-object v2

    .line 1412
    .end local v2    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1418
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 1420
    const/4 v0, 0x0

    return-object v0

    .line 1418
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isModule(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1244
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1247
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    .local v2, "moduleInfo":Landroid/content/pm/ModuleInfo;
    nop

    .line 1252
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1248
    .end local v2    # "moduleInfo":Landroid/content/pm/ModuleInfo;
    :catch_0
    move-exception v2

    .line 1249
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method static synthetic lambda$getAvailableRollbacks$1(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 1
    .param p0, "result"    # Ljava/util/concurrent/LinkedBlockingQueue;

    .line 304
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private loadAllRollbackDataLocked()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackStore;->loadAllRollbackData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 709
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/RollbackData;

    .line 710
    .local v1, "data":Lcom/android/server/rollback/RollbackData;
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    iget-object v3, v1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 711
    .end local v1    # "data":Lcom/android/server/rollback/RollbackData;
    goto :goto_0

    .line 712
    :cond_0
    return-void
.end method

.method private makeRollbackAvailable(Lcom/android/server/rollback/RollbackData;)V
    .locals 4
    .param p1, "data"    # Lcom/android/server/rollback/RollbackData;

    .line 1383
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1384
    const/4 v1, 0x1

    :try_start_0
    iput v1, p1, Lcom/android/server/rollback/RollbackData;->state:I

    .line 1385
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    .line 1386
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1387
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 1394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1395
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1396
    iget-object v2, p1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1398
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iget-wide v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->startObservingHealth(Ljava/util/List;J)V

    .line 1400
    iget-wide v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->scheduleExpiration(J)V

    .line 1401
    return-void

    .line 1386
    .end local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onPackageFullyRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 752
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->expireRollbackForPackage(Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method private onPackageReplaced(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 722
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getInstalledPackageVersion(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object v0

    .line 724
    .local v0, "installedVersion":Landroid/content/pm/VersionedPackage;
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 725
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 726
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 727
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/RollbackData;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 728
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/RollbackData;

    .line 730
    .local v3, "data":Lcom/android/server/rollback/RollbackData;
    iget v4, v3, Lcom/android/server/rollback/RollbackData;->state:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget v4, v3, Lcom/android/server/rollback/RollbackData;->state:I

    if-nez v4, :cond_2

    .line 732
    :cond_0
    iget-object v4, v3, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/rollback/PackageRollbackInfo;

    .line 733
    .local v5, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 735
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v6

    .line 734
    invoke-direct {p0, v6, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->packageVersionsEqual(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 737
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 738
    invoke-direct {p0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/RollbackData;)V

    .line 739
    goto :goto_2

    .line 741
    .end local v5    # "info":Landroid/content/rollback/PackageRollbackInfo;
    :cond_1
    goto :goto_1

    .line 743
    .end local v3    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_2
    :goto_2
    goto :goto_0

    .line 744
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/RollbackData;>;"
    :cond_3
    monitor-exit v1

    .line 745
    return-void

    .line 744
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private packageVersionsEqual(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;)Z
    .locals 4
    .param p1, "a"    # Landroid/content/pm/VersionedPackage;
    .param p2, "b"    # Landroid/content/pm/VersionedPackage;

    .line 1292
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1293
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1292
    :goto_0
    return v0
.end method

.method private registerTimeChangeReceiver()V
    .locals 5

    .line 360
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 379
    .local v0, "timeChangeIntentReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 380
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 382
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 381
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 383
    return-void
.end method

.method private registerUserCallbacks(Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 252
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 253
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register user callbacks for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RollbackManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 261
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    new-instance v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl$1;)V

    .line 262
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 264
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 265
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 268
    new-instance v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;

    invoke-direct {v2, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 281
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 268
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 282
    return-void
.end method

.method private restoreUserDataInternal(Ljava/lang/String;[IIJLjava/lang/String;I)V
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "appId"    # I
    .param p4, "ceDataInode"    # J
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "token"    # I

    .line 1101
    move-object v1, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1102
    .local v3, "info":Landroid/content/rollback/PackageRollbackInfo;
    const/4 v4, 0x0

    .line 1103
    .local v4, "rollbackData":Lcom/android/server/rollback/RollbackData;
    iget-object v5, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1104
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 1105
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_0
    iget-object v7, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1106
    iget-object v7, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/rollback/RollbackData;

    .line 1107
    .local v7, "data":Lcom/android/server/rollback/RollbackData;
    iget-boolean v8, v7, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 1108
    move-object/from16 v8, p1

    :try_start_1
    invoke-static {v7, v8}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageRollbackInfo(Lcom/android/server/rollback/RollbackData;Ljava/lang/String;)Landroid/content/rollback/PackageRollbackInfo;

    move-result-object v9

    move-object v3, v9

    .line 1109
    if-eqz v3, :cond_1

    .line 1110
    move-object v4, v7

    .line 1111
    goto :goto_1

    .line 1107
    :cond_0
    move-object/from16 v8, p1

    .line 1105
    .end local v7    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v8, p1

    .line 1115
    .end local v6    # "i":I
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1117
    if-nez v4, :cond_3

    .line 1118
    return-void

    .line 1121
    :cond_3
    array-length v5, v2

    :goto_2
    if-ge v0, v5, :cond_5

    aget v6, v2, v0

    .line 1122
    .local v6, "userId":I
    iget-object v9, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    iget-object v7, v4, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    .line 1123
    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v10

    .line 1122
    move-object v11, v3

    move v12, v6

    move/from16 v13, p3

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/rollback/AppDataRollbackHelper;->restoreAppData(ILandroid/content/rollback/PackageRollbackInfo;IILjava/lang/String;)Z

    move-result v7

    .line 1126
    .local v7, "changedRollbackData":Z
    if-eqz v7, :cond_4

    .line 1127
    invoke-direct {p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 1121
    .end local v6    # "userId":I
    .end local v7    # "changedRollbackData":Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1130
    :cond_5
    return-void

    .line 1115
    :catchall_0
    move-exception v0

    move-object/from16 v8, p1

    :goto_3
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private runExpiration()V
    .locals 8

    .line 791
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 792
    .local v0, "now":Ljava/time/Instant;
    const/4 v1, 0x0

    .line 793
    .local v1, "oldest":Ljava/time/Instant;
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 794
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 796
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 797
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/RollbackData;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 798
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/rollback/RollbackData;

    .line 799
    .local v4, "data":Lcom/android/server/rollback/RollbackData;
    iget v5, v4, Lcom/android/server/rollback/RollbackData;->state:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 800
    goto :goto_0

    .line 802
    :cond_0
    iget-object v5, v4, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    iget-wide v6, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    invoke-virtual {v5, v6, v7}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 803
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 804
    invoke-direct {p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/RollbackData;)V

    goto :goto_1

    .line 805
    :cond_1
    if-eqz v1, :cond_2

    iget-object v5, v4, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    invoke-virtual {v1, v5}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 806
    :cond_2
    iget-object v5, v4, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    move-object v1, v5

    .line 808
    .end local v4    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_3
    :goto_1
    goto :goto_0

    .line 809
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/RollbackData;>;"
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    if-eqz v1, :cond_5

    .line 812
    iget-wide v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v2, v3}, Ljava/time/Instant;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->scheduleExpiration(J)V

    .line 815
    :cond_5
    return-void

    .line 809
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private saveRollbackData(Lcom/android/server/rollback/RollbackData;)V
    .locals 3
    .param p1, "rollbackData"    # Lcom/android/server/rollback/RollbackData;

    .line 1473
    :try_start_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v0, p1}, Lcom/android/server/rollback/RollbackStore;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    goto :goto_0

    .line 1474
    :catch_0
    move-exception v0

    .line 1475
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to save rollback info for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    .line 1476
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1475
    const-string v2, "RollbackManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1478
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private scheduleExpiration(J)V
    .locals 2
    .param p1, "duration"    # J

    .line 822
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$CAasF8x0yNQCLBmx5TOpEjeyeEM;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$CAasF8x0yNQCLBmx5TOpEjeyeEM;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 823
    return-void
.end method

.method private sendFailure(Landroid/content/IntentSender;ILjava/lang/String;)V
    .locals 7
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;
    .param p2, "status"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 764
    const-string v0, "RollbackManager"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 767
    .local v0, "fillIn":Landroid/content/Intent;
    const-string v1, "android.content.rollback.extra.STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 768
    const-string v1, "android.content.rollback.extra.STATUS_MESSAGE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    .end local v0    # "fillIn":Landroid/content/Intent;
    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    .line 773
    :goto_0
    return-void
.end method

.method private sendSuccess(Landroid/content/IntentSender;)V
    .locals 7
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;

    .line 780
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 781
    .local v0, "fillIn":Landroid/content/Intent;
    const-string v1, "android.content.rollback.extra.STATUS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 782
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .end local v0    # "fillIn":Landroid/content/Intent;
    goto :goto_0

    .line 783
    :catch_0
    move-exception v0

    .line 786
    :goto_0
    return-void
.end method

.method private sessionMatchesForEnableRollback(Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/io/File;)Z
    .locals 3
    .param p1, "session"    # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p2, "installFlags"    # I
    .param p3, "newPackageCodePath"    # Ljava/io/File;

    .line 834
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 838
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 839
    .local v1, "packageCodePath":Ljava/io/File;
    invoke-virtual {p3, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    if-ne p2, v2, :cond_1

    .line 840
    const/4 v0, 0x1

    return v0

    .line 843
    :cond_1
    return v0

    .line 835
    .end local v1    # "packageCodePath":Ljava/io/File;
    :cond_2
    :goto_0
    return v0
.end method

.method private snapshotUserDataInternal(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 1072
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1073
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/RollbackData;

    .line 1074
    .local v2, "data":Lcom/android/server/rollback/RollbackData;
    iget v3, v2, Lcom/android/server/rollback/RollbackData;->state:I

    if-eqz v3, :cond_0

    .line 1075
    goto :goto_2

    .line 1078
    :cond_0
    iget-object v3, v2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/PackageRollbackInfo;

    .line 1079
    .local v4, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1080
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    iget-object v5, v2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/android/server/rollback/AppDataRollbackHelper;->snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;)V

    .line 1081
    invoke-direct {p0, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 1082
    goto :goto_2

    .line 1084
    .end local v4    # "info":Landroid/content/rollback/PackageRollbackInfo;
    :cond_1
    goto :goto_1

    .line 1072
    .end local v2    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1088
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mNewRollbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    .line 1089
    .local v2, "rollback":Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    iget-object v3, v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    invoke-static {v3, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageRollbackInfo(Lcom/android/server/rollback/RollbackData;Ljava/lang/String;)Landroid/content/rollback/PackageRollbackInfo;

    move-result-object v3

    .line 1090
    .local v3, "info":Landroid/content/rollback/PackageRollbackInfo;
    if-eqz v3, :cond_4

    .line 1091
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    iget-object v5, v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    iget-object v5, v5, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/rollback/AppDataRollbackHelper;->snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;)V

    .line 1093
    iget-object v4, v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    invoke-direct {p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 1095
    .end local v2    # "rollback":Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    :cond_4
    goto :goto_3

    .line 1096
    .end local v3    # "info":Landroid/content/rollback/PackageRollbackInfo;
    :cond_5
    monitor-exit v0

    .line 1097
    return-void

    .line 1096
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateRollbackLifetimeDurationInMillis()V
    .locals 4

    .line 595
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    const-string/jumbo v2, "rollback_boot"

    const-string/jumbo v3, "rollback_lifetime_in_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 599
    iget-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 600
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 602
    :cond_0
    return-void
.end method


# virtual methods
.method public commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 10
    .param p1, "rollbackId"    # I
    .param p2, "causePackages"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;

    .line 348
    const-string v0, "executeRollback"

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 351
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 352
    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 354
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v9, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$aG_9_cawiXbCo0CF-5aX0ns2oy8;

    move-object v3, v9

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$aG_9_cawiXbCo0CF-5aX0ns2oy8;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    return-void
.end method

.method createNewRollbackLocked(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    .locals 5
    .param p1, "parentSession"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1572
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->allocateRollbackIdLocked()I

    move-result v0

    .line 1574
    .local v0, "rollbackId":I
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v1

    .line 1576
    .local v1, "parentSessionId":I
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1577
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/rollback/RollbackStore;->createStagedRollback(II)Lcom/android/server/rollback/RollbackData;

    move-result-object v2

    .local v2, "data":Lcom/android/server/rollback/RollbackData;
    goto :goto_0

    .line 1579
    .end local v2    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_0
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v2, v0}, Lcom/android/server/rollback/RollbackStore;->createNonStagedRollback(I)Lcom/android/server/rollback/RollbackData;

    move-result-object v2

    .line 1583
    .restart local v2    # "data":Lcom/android/server/rollback/RollbackData;
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1584
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v3

    .local v3, "packageSessionIds":[I
    goto :goto_1

    .line 1586
    .end local v3    # "packageSessionIds":[I
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    .line 1589
    .restart local v3    # "packageSessionIds":[I
    :goto_1
    new-instance v4, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    invoke-direct {v4, v2, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;-><init>(Lcom/android/server/rollback/RollbackData;[I)V

    return-object v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1482
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1483
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1484
    :try_start_0
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/RollbackData;

    .line 1485
    .local v3, "data":Lcom/android/server/rollback/RollbackData;
    iget-object v4, v3, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    .line 1486
    .local v4, "info":Landroid/content/rollback/RollbackInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/rollback/RollbackData;->getStateAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    iget v5, v3, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-stagedSessionId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    :cond_0
    const-string v5, "-packages:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1495
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/rollback/PackageRollbackInfo;

    .line 1496
    .local v6, "pkg":Landroid/content/rollback/PackageRollbackInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1496
    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    .end local v6    # "pkg":Landroid/content/rollback/PackageRollbackInfo;
    goto :goto_1

    .line 1500
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1501
    iget v5, v3, Lcom/android/server/rollback/RollbackData;->state:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 1502
    const-string v5, "-causePackages:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1504
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/VersionedPackage;

    .line 1505
    .local v6, "cPkg":Landroid/content/pm/VersionedPackage;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    .end local v6    # "cPkg":Landroid/content/pm/VersionedPackage;
    goto :goto_2

    .line 1507
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1508
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-committedSessionId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1510
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1511
    nop

    .end local v3    # "data":Lcom/android/server/rollback/RollbackData;
    .end local v4    # "info":Landroid/content/rollback/RollbackInfo;
    goto/16 :goto_0

    .line 1512
    :cond_4
    monitor-exit v1

    .line 1513
    return-void

    .line 1512
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public expireRollbackForPackage(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 559
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    const-string v2, "expireRollbackForPackage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 564
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 565
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/RollbackData;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 566
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/RollbackData;

    .line 567
    .local v2, "data":Lcom/android/server/rollback/RollbackData;
    iget-object v3, v2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/PackageRollbackInfo;

    .line 568
    .local v4, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 569
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 570
    invoke-direct {p0, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/RollbackData;)V

    .line 571
    goto :goto_2

    .line 573
    .end local v4    # "info":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_1

    .line 574
    .end local v2    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_1
    :goto_2
    goto :goto_0

    .line 575
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/RollbackData;>;"
    :cond_2
    monitor-exit v0

    .line 576
    return-void

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;
    .locals 7

    .line 291
    const-string v0, "getAvailableRollbacks"

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 304
    .local v0, "result":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oLwS8G_DUyKmAeNKhLfFpV3VJTA;

    invoke-direct {v2, v0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oLwS8G_DUyKmAeNKhLfFpV3VJTA;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    goto :goto_0

    .line 308
    :catch_0
    move-exception v1

    .line 312
    .local v1, "ie":Ljava/lang/InterruptedException;
    const-string v2, "RollbackManager"

    const-string v3, "Interrupted while waiting for handler thread in getAvailableRollbacks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 317
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v2, "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 319
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/rollback/RollbackData;

    .line 320
    .local v4, "data":Lcom/android/server/rollback/RollbackData;
    iget v5, v4, Lcom/android/server/rollback/RollbackData;->state:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 321
    iget-object v5, v4, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v4    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 324
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v3

    .line 325
    .end local v2    # "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 293
    .end local v0    # "result":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Boolean;>;"
    :cond_2
    const-string v0, "RollbackManager"

    const-string v1, "Calling getAvailableRollbacks from mHandlerThread causes a deadlock"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call RollbackManager#getAvailableRollbacks from the handler thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getNewRollbackForPackageSessionLocked(I)Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    .locals 6
    .param p1, "packageSessionId"    # I

    .line 1600
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mNewRollbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    .line 1601
    .local v1, "newRollbackData":Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    iget-object v2, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->packageSessionIds:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 1602
    .local v5, "id":I
    if-ne v5, p1, :cond_0

    .line 1603
    return-object v1

    .line 1601
    .end local v5    # "id":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1606
    .end local v1    # "newRollbackData":Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    :cond_1
    goto :goto_0

    .line 1607
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecentlyExecutedRollbacks()Landroid/content/pm/ParceledListSlice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;"
        }
    .end annotation

    .line 330
    const-string v0, "getRecentlyCommittedRollbacks"

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v1, "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 336
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/RollbackData;

    .line 337
    .local v3, "data":Lcom/android/server/rollback/RollbackData;
    iget v4, v3, Lcom/android/server/rollback/RollbackData;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 338
    iget-object v4, v3, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    .end local v3    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object v2

    .line 342
    .end local v1    # "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$commitRollback$2$RollbackManagerServiceImpl(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "rollbackId"    # I
    .param p2, "causePackages"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;

    .line 355
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->commitRollbackInternal(ILjava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V

    return-void
.end method

.method public synthetic lambda$commitRollbackInternal$3$RollbackManagerServiceImpl(Landroid/content/Intent;Lcom/android/server/rollback/RollbackData;Landroid/content/IntentSender;ILjava/util/List;)V
    .locals 5
    .param p1, "result"    # Landroid/content/Intent;
    .param p2, "data"    # Lcom/android/server/rollback/RollbackData;
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;
    .param p4, "parentSessionId"    # I
    .param p5, "causePackages"    # Ljava/util/List;

    .line 481
    const/4 v0, 0x1

    const-string v1, "android.content.pm.extra.STATUS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 483
    .local v1, "status":I
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 492
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 496
    :try_start_0
    iput v0, p2, Lcom/android/server/rollback/RollbackData;->state:I

    .line 497
    iput-boolean v2, p2, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    .line 498
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    const/4 v0, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rollback downgrade install failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-direct {p0, p3, v0, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 503
    return-void

    .line 498
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_2
    invoke-virtual {p2}, Lcom/android/server/rollback/RollbackData;->isStaged()Z

    move-result v3

    if-nez v3, :cond_1

    .line 510
    iput-boolean v2, p2, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    .line 513
    :cond_1
    iget-object v2, p2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2, p4}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    .line 514
    iget-object v2, p2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 515
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 516
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-static {p2}, Lcom/android/server/rollback/RollbackStore;->deletePackageCodePaths(Lcom/android/server/rollback/RollbackData;)V

    .line 517
    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 519
    invoke-direct {p0, p3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendSuccess(Landroid/content/IntentSender;)V

    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ROLLBACK_COMMITTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v4, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 525
    return-void

    .line 515
    .end local v0    # "broadcast":Landroid/content/Intent;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public synthetic lambda$commitRollbackInternal$4$RollbackManagerServiceImpl(Lcom/android/server/rollback/RollbackData;Landroid/content/IntentSender;ILjava/util/List;Landroid/content/Intent;)V
    .locals 9
    .param p1, "data"    # Lcom/android/server/rollback/RollbackData;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;
    .param p3, "parentSessionId"    # I
    .param p4, "causePackages"    # Ljava/util/List;
    .param p5, "result"    # Landroid/content/Intent;

    .line 479
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/content/Intent;Lcom/android/server/rollback/RollbackData;Landroid/content/IntentSender;ILjava/util/List;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 526
    return-void
.end method

.method public synthetic lambda$new$0$RollbackManagerServiceImpl()V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoaded()V

    return-void
.end method

.method public synthetic lambda$notifyStagedApkSession$12$RollbackManagerServiceImpl(II)V
    .locals 5
    .param p1, "originalSessionId"    # I
    .param p2, "apkSessionId"    # I

    .line 1198
    const/4 v0, 0x0

    .line 1199
    .local v0, "rd":Lcom/android/server/rollback/RollbackData;
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1200
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 1201
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1202
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/RollbackData;

    .line 1203
    .local v3, "data":Lcom/android/server/rollback/RollbackData;
    iget v4, v3, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    if-ne v4, p1, :cond_0

    .line 1204
    iput p2, v3, Lcom/android/server/rollback/RollbackData;->apkSessionId:I

    .line 1205
    move-object v0, v3

    .line 1206
    goto :goto_1

    .line 1201
    .end local v3    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1209
    .end local v2    # "i":I
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    if-eqz v0, :cond_2

    .line 1212
    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 1214
    :cond_2
    return-void

    .line 1209
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public synthetic lambda$notifyStagedSession$11$RollbackManagerServiceImpl(ILjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 12
    .param p1, "sessionId"    # I
    .param p2, "result"    # Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1142
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 1144
    .local v0, "installer":Landroid/content/pm/PackageInstaller;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    .line 1145
    .local v1, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v1, :cond_0

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No matching install session for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RollbackManager"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-virtual {p2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1148
    return-void

    .line 1152
    :cond_0
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1153
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->createNewRollbackLocked(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    move-result-object v5

    .line 1154
    .local v5, "newRollback":Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1157
    iget-object v4, v5, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    new-array v6, v2, [I

    invoke-direct {p0, v4, v1, v6}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackForPackageSession(Lcom/android/server/rollback/RollbackData;Landroid/content/pm/PackageInstaller$SessionInfo;[I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to enable rollback for session: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RollbackManager"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual {p2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1161
    return-void

    .line 1164
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v4

    array-length v6, v4

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_4

    aget v8, v4, v7

    .line 1165
    .local v8, "childSessionId":I
    nop

    .line 1166
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v9

    .line 1167
    .local v9, "childSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-nez v9, :cond_2

    .line 1168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No matching child install session for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RollbackManager"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    invoke-virtual {p2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1170
    return-void

    .line 1172
    :cond_2
    iget-object v10, v5, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    new-array v11, v2, [I

    invoke-direct {p0, v10, v9, v11}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackForPackageSession(Lcom/android/server/rollback/RollbackData;Landroid/content/pm/PackageInstaller$SessionInfo;[I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to enable rollback for session: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RollbackManager"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-virtual {p2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1176
    return-void

    .line 1164
    .end local v8    # "childSessionId":I
    .end local v9    # "childSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1181
    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, v5, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->completeEnableRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;Z)Lcom/android/server/rollback/RollbackData;

    move-result-object v4

    if-eqz v4, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1182
    return-void

    .line 1154
    .end local v5    # "newRollback":Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public synthetic lambda$onBootCompleted$7$RollbackManagerServiceImpl()V
    .locals 0

    .line 605
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->updateRollbackLifetimeDurationInMillis()V

    return-void
.end method

.method public synthetic lambda$onBootCompleted$8$RollbackManagerServiceImpl()V
    .locals 9

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v0, "enabling":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/RollbackData;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v1, "restoreInProgress":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/RollbackData;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 615
    .local v2, "apexPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 616
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 617
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/rollback/RollbackData;

    .line 618
    .local v5, "data":Lcom/android/server/rollback/RollbackData;
    invoke-virtual {v5}, Lcom/android/server/rollback/RollbackData;->isStaged()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 619
    iget v6, v5, Lcom/android/server/rollback/RollbackData;->state:I

    if-nez v6, :cond_0

    .line 620
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 621
    :cond_0
    iget-boolean v6, v5, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    if-eqz v6, :cond_1

    .line 622
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_1
    :goto_1
    iget-object v6, v5, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v6}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/rollback/PackageRollbackInfo;

    .line 626
    .local v7, "info":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v7}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 627
    invoke-virtual {v7}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 629
    .end local v7    # "info":Landroid/content/rollback/PackageRollbackInfo;
    :cond_2
    goto :goto_2

    .line 631
    .end local v5    # "data":Lcom/android/server/rollback/RollbackData;
    :cond_3
    goto :goto_0

    .line 632
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 634
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/rollback/RollbackData;

    .line 635
    .local v4, "data":Lcom/android/server/rollback/RollbackData;
    iget-object v5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v5

    .line 636
    .local v5, "installer":Landroid/content/pm/PackageInstaller;
    iget v6, v4, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v6

    .line 639
    .local v6, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v6, :cond_6

    .line 640
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 641
    invoke-direct {p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->makeRollbackAvailable(Lcom/android/server/rollback/RollbackData;)V

    goto :goto_4

    .line 642
    :cond_5
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 647
    invoke-direct {p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/RollbackData;)V

    .line 650
    .end local v4    # "data":Lcom/android/server/rollback/RollbackData;
    .end local v5    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_6
    :goto_4
    goto :goto_3

    .line 652
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/rollback/RollbackData;

    .line 653
    .restart local v4    # "data":Lcom/android/server/rollback/RollbackData;
    iget-object v5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v5

    .line 654
    .restart local v5    # "installer":Landroid/content/pm/PackageInstaller;
    iget v6, v4, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v6

    .line 657
    .restart local v6    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v6, :cond_9

    .line 658
    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v6}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 659
    :cond_8
    iget-object v7, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 660
    const/4 v8, 0x0

    :try_start_1
    iput-boolean v8, v4, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    .line 661
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    invoke-direct {p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    goto :goto_6

    .line 661
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 665
    .end local v4    # "data":Lcom/android/server/rollback/RollbackData;
    .end local v5    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v6    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_9
    :goto_6
    goto :goto_5

    .line 667
    :cond_a
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 672
    .local v4, "apexPackageName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;)V

    .line 673
    .end local v4    # "apexPackageName":Ljava/lang/String;
    goto :goto_7

    .line 674
    :cond_b
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    invoke-virtual {v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->onBootCompletedAsync()V

    .line 675
    return-void

    .line 632
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public synthetic lambda$onUnlockUser$6$RollbackManagerServiceImpl(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 581
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 583
    .local v1, "rollbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/RollbackData;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 586
    invoke-virtual {v0, p1, v1}, Lcom/android/server/rollback/AppDataRollbackHelper;->commitPendingBackupAndRestoreForUser(ILjava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 588
    .local v0, "changed":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/rollback/RollbackData;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/RollbackData;

    .line 589
    .local v3, "rd":Lcom/android/server/rollback/RollbackData;
    invoke-direct {p0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 590
    .end local v3    # "rd":Lcom/android/server/rollback/RollbackData;
    goto :goto_0

    .line 591
    :cond_0
    return-void

    .line 583
    .end local v0    # "changed":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/rollback/RollbackData;>;"
    .end local v1    # "rollbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/RollbackData;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$reloadPersistedData$5$RollbackManagerServiceImpl()V
    .locals 0

    .line 552
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->updateRollbackLifetimeDurationInMillis()V

    .line 553
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoaded()V

    .line 554
    return-void
.end method

.method public synthetic lambda$scheduleExpiration$9$RollbackManagerServiceImpl()V
    .locals 0

    .line 822
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    return-void
.end method

.method public synthetic lambda$snapshotAndRestoreUserData$10$RollbackManagerServiceImpl(Ljava/lang/String;[IIJLjava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "appId"    # I
    .param p4, "ceDataInode"    # J
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "token"    # I

    .line 1060
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->snapshotUserDataInternal(Ljava/lang/String;)V

    .line 1061
    invoke-direct/range {p0 .. p7}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->restoreUserDataInternal(Ljava/lang/String;[IIJLjava/lang/String;I)V

    .line 1062
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1064
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    const/4 v1, 0x0

    invoke-virtual {v0, p7, v1}, Landroid/content/pm/PackageManagerInternal;->finishPackageInstall(IZ)V

    .line 1065
    return-void
.end method

.method public notifyStagedApkSession(II)V
    .locals 2
    .param p1, "originalSessionId"    # I
    .param p2, "apkSessionId"    # I

    .line 1194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1197
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$ohlyqMiNlQtoY5XHz6vC79CRKAA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$ohlyqMiNlQtoY5XHz6vC79CRKAA;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1215
    return-void

    .line 1195
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "notifyStagedApkSession may only be called by the system."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyStagedSession(I)Z
    .locals 4
    .param p1, "sessionId"    # I

    .line 1134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1137
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 1141
    .local v0, "result":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$GitEUZMj6F_TZMXHx8fkTXAcvdo;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$GitEUZMj6F_TZMXHx8fkTXAcvdo;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILjava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1185
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1186
    :catch_0
    move-exception v1

    .line 1187
    .local v1, "ie":Ljava/lang/InterruptedException;
    const-string v2, "RollbackManager"

    const-string v3, "Interrupted while waiting for notifyStagedSession response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const/4 v2, 0x0

    return v2

    .line 1135
    .end local v0    # "result":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Boolean;>;"
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "notifyStagedSession may only be called by the system."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onBootCompleted()V
    .locals 2

    .line 605
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$pS5jbfXLgvSVqxzjSkJaMnydaOY;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$pS5jbfXLgvSVqxzjSkJaMnydaOY;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 607
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->scheduleExpiration(J)V

    .line 609
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$V7__18jactj68mqbmRTGjsuUOik;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$V7__18jactj68mqbmRTGjsuUOik;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 676
    return-void
.end method

.method onUnlockUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 579
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$5wr7eOUmDTfGrVye83nSq68E9AA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$5wr7eOUmDTfGrVye83nSq68E9AA;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 592
    return-void
.end method

.method public reloadPersistedData()V
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    const-string/jumbo v2, "reloadPersistedData"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 550
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$p7U0gtaH93R3VtUt6jx4Xkt2Avs;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$p7U0gtaH93R3VtUt6jx4Xkt2Avs;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 555
    return-void

    .line 550
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "appId"    # I
    .param p4, "ceDataInode"    # J
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "token"    # I

    .line 1054
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1059
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v10, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;[IIJLjava/lang/String;I)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1066
    return-void

    .line 1055
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "snapshotAndRestoreUserData may only be called by the system."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

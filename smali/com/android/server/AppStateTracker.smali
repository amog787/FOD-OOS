.class public Lcom/android/server/AppStateTracker;
.super Ljava/lang/Object;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppStateTracker$MyHandler;,
        Lcom/android/server/AppStateTracker$StandbyTracker;,
        Lcom/android/server/AppStateTracker$MyReceiver;,
        Lcom/android/server/AppStateTracker$AppOpsWatcher;,
        Lcom/android/server/AppStateTracker$UidObserver;,
        Lcom/android/server/AppStateTracker$Listener;,
        Lcom/android/server/AppStateTracker$FeatureFlagsObserver;,
        Lcom/android/server/AppStateTracker$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppStateTracker"

.field static final TARGET_OP:I = 0x46


# instance fields
.field final mActiveUids:Landroid/util/SparseBooleanArray;

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field mBatterySaverEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private final mExemptedPackages:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFlagsObserver:Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

.field mForceAllAppStandbyForSmallBattery:Z

.field mForceAllAppsStandby:Z

.field mForcedAppStandbyEnabled:Z

.field final mForegroundUids:Landroid/util/SparseBooleanArray;

.field private final mHandler:Lcom/android/server/AppStateTracker$MyHandler;

.field mIActivityManager:Landroid/app/IActivityManager;

.field mIsPluggedIn:Z

.field final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppStateTracker$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPowerWhitelistedAllAppIds:[I

.field private mPowerWhitelistedUserAppIds:[I

.field final mRunAnyRestrictedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mStandbyTracker:Lcom/android/server/AppStateTracker$StandbyTracker;

.field mStarted:Z

.field private final mStatLogger:Lcom/android/internal/util/StatLogger;

.field private mTempWhitelistedAppIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 108
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 112
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 118
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    .line 124
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    .line 127
    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    .line 133
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    .line 136
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mListeners:Landroid/util/ArraySet;

    .line 184
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string v1, "UID_FG_STATE_CHANGED"

    const-string v2, "UID_ACTIVE_STATE_CHANGED"

    const-string v3, "RUN_ANY_CHANGED"

    const-string v4, "ALL_UNWHITELISTED"

    const-string v5, "ALL_WHITELIST_CHANGED"

    const-string v6, "TEMP_WHITELIST_CHANGED"

    const-string v7, "EXEMPT_CHANGED"

    const-string v8, "FORCE_ALL_CHANGED"

    const-string v9, "FORCE_APP_STANDBY_FEATURE_FLAG_CHANGED"

    const-string v10, "IS_UID_ACTIVE_CACHED"

    const-string v11, "IS_UID_ACTIVE_RAW"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 406
    iput-object p1, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    .line 407
    new-instance v0, Lcom/android/server/AppStateTracker$MyHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/AppStateTracker$MyHandler;-><init>(Lcom/android/server/AppStateTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    .line 408
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppStateTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppStateTracker;

    .line 78
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppStateTracker;

    .line 78
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/util/SparseBooleanArray;IZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/util/SparseBooleanArray;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 78
    invoke-static {p0, p1, p2}, Lcom/android/server/AppStateTracker;->removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/util/SparseBooleanArray;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/util/SparseBooleanArray;
    .param p1, "x1"    # I

    .line 78
    invoke-static {p0, p1}, Lcom/android/server/AppStateTracker;->addUidToArray(Landroid/util/SparseBooleanArray;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppStateTracker;

    .line 78
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AppStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AppStateTracker;

    .line 78
    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->updateForceAllAppStandbyState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/AppStateTracker;)Landroid/util/SparseSetArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppStateTracker;

    .line 78
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppStateTracker;

    .line 78
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AppStateTracker;

    .line 78
    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->cloneListeners()[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v0

    return-object v0
.end method

.method private static addUidToArray(Landroid/util/SparseBooleanArray;I)Z
    .locals 2
    .param p0, "array"    # Landroid/util/SparseBooleanArray;
    .param p1, "uid"    # I

    .line 610
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 611
    return v1

    .line 613
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    return v1

    .line 616
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 617
    return v0
.end method

.method private cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V
    .locals 3
    .param p1, "array"    # Landroid/util/SparseBooleanArray;
    .param p2, "removedUserId"    # I

    .line 984
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 985
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 986
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 988
    .local v2, "userId":I
    if-ne v2, p2, :cond_0

    .line 989
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 984
    .end local v1    # "uid":I
    .end local v2    # "userId":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 992
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private cloneListeners()[Lcom/android/server/AppStateTracker$Listener;
    .locals 3

    .line 726
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 727
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mListeners:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/AppStateTracker$Listener;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/AppStateTracker$Listener;

    monitor-exit v0

    return-object v1

    .line 728
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "array"    # Landroid/util/SparseBooleanArray;

    .line 1301
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1303
    const-string v0, ""

    .line 1304
    .local v0, "sep":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1305
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1306
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1308
    const-string v0, " "

    .line 1304
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1311
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1312
    return-void
.end method

.method private findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 568
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 569
    .local v0, "size":I
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 572
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 573
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 575
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 576
    return v1

    .line 572
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method static isAnyAppIdUnwhitelisted([I[I)Z
    .locals 7
    .param p0, "prevArray"    # [I
    .param p1, "newArray"    # [I

    .line 1028
    const/4 v0, 0x0

    .line 1029
    .local v0, "i1":I
    const/4 v1, 0x0

    .line 1034
    .local v1, "i2":I
    :goto_0
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    move v2, v3

    .line 1035
    .local v2, "prevFinished":Z
    :goto_1
    array-length v5, p1

    if-lt v1, v5, :cond_1

    move v5, v4

    goto :goto_2

    :cond_1
    move v5, v3

    .line 1036
    .local v5, "newFinished":Z
    :goto_2
    if-nez v2, :cond_5

    if-eqz v5, :cond_2

    .line 1037
    goto :goto_3

    .line 1039
    :cond_2
    aget v3, p0, v0

    .line 1040
    .local v3, "a1":I
    aget v6, p1, v1

    .line 1042
    .local v6, "a2":I
    if-ne v3, v6, :cond_3

    .line 1043
    add-int/lit8 v0, v0, 0x1

    .line 1044
    add-int/lit8 v1, v1, 0x1

    .line 1045
    goto :goto_0

    .line 1047
    :cond_3
    if-ge v3, v6, :cond_4

    .line 1049
    return v4

    .line 1051
    :cond_4
    nop

    .end local v3    # "a1":I
    .end local v6    # "a2":I
    add-int/lit8 v1, v1, 0x1

    .line 1052
    goto :goto_0

    .line 1053
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 1054
    return v3

    .line 1056
    :cond_6
    return v5
.end method

.method private isRestricted(ILjava/lang/String;ZZ)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "useTempWhitelistToo"    # Z
    .param p4, "exemptOnBatterySaver"    # Z

    .line 1103
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1104
    return v1

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1108
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1109
    .local v2, "appId":I
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1110
    monitor-exit v0

    return v1

    .line 1112
    :cond_1
    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    .line 1113
    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1114
    monitor-exit v0

    return v1

    .line 1116
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTracker;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1117
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1119
    :cond_3
    if-eqz p4, :cond_4

    .line 1120
    monitor-exit v0

    return v1

    .line 1122
    :cond_4
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1123
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/AppStateTracker;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v4}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/AppStateTracker;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v4}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    .line 1124
    invoke-virtual {v4, v3, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1125
    monitor-exit v0

    return v1

    .line 1127
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    monitor-exit v0

    return v1

    .line 1128
    .end local v2    # "appId":I
    .end local v3    # "userId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private refreshForcedAppStandbyUidPackagesLocked()V
    .locals 11

    .line 518
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 519
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x46

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 522
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-nez v0, :cond_0

    .line 523
    return-void

    .line 525
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 526
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 527
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 528
    .local v4, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    .line 530
    .local v5, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 531
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$OpEntry;

    .line 532
    .local v7, "ent":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    if-eq v8, v3, :cond_1

    .line 533
    goto :goto_2

    .line 535
    :cond_1
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-eqz v8, :cond_2

    .line 536
    iget-object v8, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 537
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 536
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v7    # "ent":Landroid/app/AppOpsManager$OpEntry;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 526
    .end local v4    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v5    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v6    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 541
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private static removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z
    .locals 2
    .param p0, "array"    # Landroid/util/SparseBooleanArray;
    .param p1, "uid"    # I
    .param p2, "remove"    # Z

    .line 621
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 622
    return v1

    .line 624
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    return v1

    .line 627
    :cond_1
    if-eqz p2, :cond_2

    .line 628
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    .line 630
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 632
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private toggleForceAllAppsStandbyLocked(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 558
    iget-boolean v0, p0, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    if-ne p1, v0, :cond_0

    .line 559
    return-void

    .line 561
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    .line 563
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    invoke-virtual {v0}, Lcom/android/server/AppStateTracker$MyHandler;->notifyForceAllAppsStandbyChanged()V

    .line 564
    return-void
.end method

.method private updateForceAllAppStandbyState()V
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->isSmallBatteryDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mIsPluggedIn:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/AppStateTracker;->toggleForceAllAppsStandbyLocked(Z)V

    goto :goto_1

    .line 548
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mBatterySaverEnabled:Z

    invoke-direct {p0, v1}, Lcom/android/server/AppStateTracker;->toggleForceAllAppsStandbyLocked(Z)V

    .line 550
    :goto_1
    monitor-exit v0

    .line 551
    return-void

    .line 550
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/android/server/AppStateTracker$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/AppStateTracker$Listener;

    .line 1065
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1066
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1067
    monitor-exit v0

    .line 1068
    return-void

    .line 1067
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public areAlarmsRestricted(ILjava/lang/String;Z)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isExemptOnBatterySaver"    # Z

    .line 1075
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/AppStateTracker;->isRestricted(ILjava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public areForegroundServicesRestricted(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1093
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1094
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTracker;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1095
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public areJobsRestricted(ILjava/lang/String;Z)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hasForegroundExemption"    # Z

    .line 1084
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/AppStateTracker;->isRestricted(ILjava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1239
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1240
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forced App Standby Feature enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    const-string v1, "Force all apps standby: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->isForceAllAppsStandbyEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1245
    const-string v1, "Small Battery Device: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->isSmallBatteryDevice()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1248
    const-string v1, "Force all apps standby for small battery device: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1249
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1251
    const-string v1, "Plugged In: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1252
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mIsPluggedIn:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1254
    const-string v1, "Active uids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1255
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p1, v1}, Lcom/android/server/AppStateTracker;->dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V

    .line 1257
    const-string v1, "Foreground uids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1258
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p1, v1}, Lcom/android/server/AppStateTracker;->dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V

    .line 1260
    const-string v1, "Except-idle + user whitelist appids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1261
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    const-string v1, "User whitelist appids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1264
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1266
    const-string v1, "Temp whitelist appids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1267
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1269
    const-string v1, "Exempted packages:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1271
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v2}, Landroid/util/SparseSetArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1272
    const-string v2, "User "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1273
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1274
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1276
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1277
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1278
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1277
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1281
    .end local v2    # "j":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1283
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1284
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1286
    const-string v1, "Restricted packages:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1288
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1289
    .local v2, "uidAndPackage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    const-string v3, " "

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1291
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1293
    .end local v2    # "uidAndPackage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_2

    .line 1294
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1296
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/StatLogger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1297
    monitor-exit v0

    .line 1298
    return-void

    .line 1297
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1235
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1236
    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1315
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1316
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1318
    .local v1, "token":J
    const-wide v3, 0x1080000000dL

    iget-boolean v5, p0, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1320
    const-wide v3, 0x10800000001L

    .line 1321
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->isForceAllAppsStandbyEnabled()Z

    move-result v5

    .line 1320
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1322
    const-wide v3, 0x10800000006L

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->isSmallBatteryDevice()Z

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1323
    const-wide v3, 0x10800000007L

    iget-boolean v5, p0, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1325
    const-wide v3, 0x10800000008L

    iget-boolean v5, p0, Lcom/android/server/AppStateTracker;->mIsPluggedIn:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1327
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1328
    iget-object v4, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1329
    const-wide v4, 0x20500000002L

    iget-object v6, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1327
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1333
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1334
    iget-object v4, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1335
    const-wide v4, 0x2050000000bL

    iget-object v6, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1333
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1339
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_4

    aget v7, v3, v6

    .line 1340
    .local v7, "appId":I
    const-wide v8, 0x20500000003L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1339
    .end local v7    # "appId":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1343
    :cond_4
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    array-length v4, v3

    move v6, v5

    :goto_3
    if-ge v6, v4, :cond_5

    aget v7, v3, v6

    .line 1344
    .restart local v7    # "appId":I
    const-wide v8, 0x2050000000cL

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1343
    .end local v7    # "appId":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1347
    :cond_5
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    array-length v4, v3

    :goto_4
    if-ge v5, v4, :cond_6

    aget v6, v3, v5

    .line 1348
    .local v6, "appId":I
    const-wide v7, 0x20500000004L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1347
    .end local v6    # "appId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1351
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    iget-object v4, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4}, Landroid/util/SparseSetArray;->size()I

    move-result v4

    const-wide v5, 0x10900000002L

    const-wide v7, 0x10500000001L

    if-ge v3, v4, :cond_8

    .line 1352
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6
    iget-object v9, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v9

    if-ge v4, v9, :cond_7

    .line 1353
    const-wide v9, 0x20b0000000aL

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 1355
    .local v9, "token2":J
    iget-object v11, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v11

    invoke-virtual {p1, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1356
    iget-object v11, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v11, v3, v4}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1358
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1352
    .end local v9    # "token2":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1351
    .end local v4    # "j":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1362
    .end local v3    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1363
    .local v4, "uidAndPackage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-wide v9, 0x20b00000005L

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 1365
    .restart local v9    # "token2":J
    iget-object v11, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p1, v7, v8, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1366
    iget-object v11, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1368
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1369
    .end local v4    # "uidAndPackage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9    # "token2":J
    goto :goto_7

    .line 1371
    :cond_9
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-wide v4, 0x10b00000009L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/internal/util/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1373
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1374
    .end local v1    # "token":J
    monitor-exit v0

    .line 1375
    return-void

    .line 1374
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleUserRemoved(I)V
    .locals 6
    .param p1, "removedUserId"    # I

    .line 967
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 968
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 969
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 970
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 971
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 973
    .local v4, "userId":I
    if-ne v4, p1, :cond_0

    .line 974
    iget-object v5, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 968
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "uid":I
    .end local v4    # "userId":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 977
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AppStateTracker;->cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V

    .line 978
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AppStateTracker;->cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V

    .line 979
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 980
    monitor-exit v0

    .line 981
    return-void

    .line 980
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 1

    .line 490
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method injectAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    return-object v0
.end method

.method injectAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;
    .locals 1

    .line 500
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    return-object v0
.end method

.method injectGetGlobalSettingInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 510
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method injectIActivityManager()Landroid/app/IActivityManager;
    .locals 1

    .line 485
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .locals 1

    .line 479
    nop

    .line 480
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 479
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    return-object v0
.end method

.method injectPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .locals 1

    .line 495
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method isForceAllAppsStandbyEnabled()Z
    .locals 2

    .line 1185
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1186
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    monitor-exit v0

    return v1

    .line 1187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1196
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1197
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTracker;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isRunAnyRestrictedLocked(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 587
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTracker;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSmallBatteryDevice()Z
    .locals 1

    .line 505
    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result v0

    return v0
.end method

.method public isUidActive(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 1139
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    const/4 v0, 0x1

    return v0

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1143
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUidActiveSynced(I)Z
    .locals 5
    .param p1, "uid"    # I

    .line 1153
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    const/4 v0, 0x1

    return v0

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 1158
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result v2

    .line 1159
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1161
    return v2
.end method

.method public isUidInForeground(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 1172
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    const/4 v0, 0x1

    return v0

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1176
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUidPowerSaveUserWhitelisted(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 1217
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1218
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUidPowerSaveWhitelisted(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 1207
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1208
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUidTempPowerSaveWhitelisted(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 1228
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1229
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onSystemServicesReady$0$AppStateTracker(Landroid/os/PowerSaveState;)V
    .locals 2
    .param p1, "state"    # Landroid/os/PowerSaveState;

    .line 459
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_0
    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/AppStateTracker;->mBatterySaverEnabled:Z

    .line 461
    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->updateForceAllAppStandbyState()V

    .line 462
    monitor-exit v0

    .line 463
    return-void

    .line 462
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSystemServicesReady()V
    .locals 6

    .line 414
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mStarted:Z

    if-eqz v1, :cond_0

    .line 416
    monitor-exit v0

    return-void

    .line 418
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AppStateTracker;->mStarted:Z

    .line 420
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectIActivityManager()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/app/IActivityManager;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mIActivityManager:Landroid/app/IActivityManager;

    .line 421
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 422
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 423
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IAppOpsService;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 424
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 425
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 427
    new-instance v1, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;-><init>(Lcom/android/server/AppStateTracker;)V

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mFlagsObserver:Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

    .line 428
    invoke-virtual {v1}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->register()V

    .line 429
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mFlagsObserver:Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

    invoke-virtual {v1}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    .line 430
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mFlagsObserver:Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

    .line 431
    invoke-virtual {v1}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyForSmallBatteryEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    .line 432
    new-instance v1, Lcom/android/server/AppStateTracker$StandbyTracker;

    invoke-direct {v1, p0}, Lcom/android/server/AppStateTracker$StandbyTracker;-><init>(Lcom/android/server/AppStateTracker;)V

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mStandbyTracker:Lcom/android/server/AppStateTracker$StandbyTracker;

    .line 433
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mIActivityManager:Landroid/app/IActivityManager;

    new-instance v3, Lcom/android/server/AppStateTracker$UidObserver;

    invoke-direct {v3, p0, v1}, Lcom/android/server/AppStateTracker$UidObserver;-><init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V

    const/16 v4, 0xf

    const/4 v5, -0x1

    invoke-interface {v2, v3, v4, v5, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v3, 0x46

    new-instance v4, Lcom/android/server/AppStateTracker$AppOpsWatcher;

    invoke-direct {v4, p0, v1}, Lcom/android/server/AppStateTracker$AppOpsWatcher;-><init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V

    invoke-interface {v2, v3, v1, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    goto :goto_0

    .line 444
    :catch_0
    move-exception v2

    .line 448
    :goto_0
    :try_start_2
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 449
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/AppStateTracker$MyReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/server/AppStateTracker$MyReceiver;-><init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->refreshForcedAppStandbyUidPackagesLocked()V

    .line 456
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v3, Lcom/android/server/-$$Lambda$AppStateTracker$zzioY8jvEm-1GnJ13CUiQGauPEE;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$AppStateTracker$zzioY8jvEm-1GnJ13CUiQGauPEE;-><init>(Lcom/android/server/AppStateTracker;)V

    const/16 v4, 0xb

    invoke-virtual {v1, v4, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 465
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v4}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/AppStateTracker;->mBatterySaverEnabled:Z

    .line 468
    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->updateForceAllAppStandbyState()V

    .line 469
    .end local v2    # "filter":Landroid/content/IntentFilter;
    monitor-exit v0

    .line 470
    return-void

    .line 469
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setPowerSaveWhitelistAppIds([I[I[I)V
    .locals 4
    .param p1, "powerSaveWhitelistExceptIdleAppIdArray"    # [I
    .param p2, "powerSaveWhitelistUserAppIdArray"    # [I
    .param p3, "tempWhitelistAppIdArray"    # [I

    .line 1001
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    .line 1003
    .local v1, "previousWhitelist":[I
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    .line 1005
    .local v2, "previousTempWhitelist":[I
    iput-object p1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    .line 1006
    iput-object p3, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    .line 1007
    iput-object p2, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    .line 1009
    invoke-static {v1, p1}, Lcom/android/server/AppStateTracker;->isAnyAppIdUnwhitelisted([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1010
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    invoke-virtual {v3}, Lcom/android/server/AppStateTracker$MyHandler;->notifyAllUnwhitelisted()V

    goto :goto_0

    .line 1011
    :cond_0
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1012
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    invoke-virtual {v3}, Lcom/android/server/AppStateTracker$MyHandler;->notifyAllWhitelistChanged()V

    .line 1015
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1016
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    invoke-virtual {v3}, Lcom/android/server/AppStateTracker$MyHandler;->notifyTempWhitelistChanged()V

    .line 1019
    .end local v1    # "previousWhitelist":[I
    .end local v2    # "previousTempWhitelist":[I
    :cond_2
    monitor-exit v0

    .line 1020
    return-void

    .line 1019
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateForcedAppStandbyUidPackageLocked(ILjava/lang/String;Z)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "restricted"    # Z

    .line 596
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTracker;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result v0

    .line 597
    .local v0, "index":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 598
    .local v3, "wasRestricted":Z
    :goto_0
    if-ne v3, p3, :cond_1

    .line 599
    return v2

    .line 601
    :cond_1
    if-eqz p3, :cond_2

    .line 602
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 604
    :cond_2
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 606
    :goto_1
    return v1
.end method

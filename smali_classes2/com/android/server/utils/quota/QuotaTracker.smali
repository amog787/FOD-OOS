.class abstract Lcom/android/server/utils/quota/QuotaTracker;
.super Ljava/lang/Object;
.source "QuotaTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;,
        Lcom/android/server/utils/quota/QuotaTracker$AlarmQueue;,
        Lcom/android/server/utils/quota/QuotaTracker$Injector;
    }
.end annotation


# static fields
.field private static final ALARM_TAG_QUOTA_CHECK:Ljava/lang/String;

.field private static final DEBUG:Z = false

.field static final MAX_WINDOW_SIZE_MS:J = 0x9a7ec800L

.field static final MIN_WINDOW_SIZE_MS:J = 0x7530L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mCategorizer:Lcom/android/server/utils/quota/Categorizer;

.field protected final mContext:Landroid/content/Context;

.field private final mFreeQuota:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mInQuotaAlarmListener:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;

.field protected final mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

.field private mIsEnabled:Z

.field private mIsQuotaFree:Z

.field final mLock:Ljava/lang/Object;

.field private final mQuotaChangeListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/utils/quota/QuotaChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const-class v0, Lcom/android/server/utils/quota/QuotaTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".quota_check*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/quota/QuotaTracker;->ALARM_TAG_QUOTA_CHECK:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "categorizer"    # Lcom/android/server/utils/quota/Categorizer;
    .param p3, "injector"    # Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    .line 93
    new-instance v0, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;-><init>(Lcom/android/server/utils/quota/QuotaTracker;Lcom/android/server/utils/quota/QuotaTracker$1;)V

    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmListener:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;

    .line 97
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    .line 114
    new-instance v0, Lcom/android/server/utils/quota/QuotaTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/quota/QuotaTracker$1;-><init>(Lcom/android/server/utils/quota/QuotaTracker;)V

    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    iput-object p2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mCategorizer:Lcom/android/server/utils/quota/Categorizer;

    .line 159
    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mContext:Landroid/content/Context;

    .line 160
    iput-object p3, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    .line 161
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v6, v0

    .line 164
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 167
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 166
    const/4 v4, 0x0

    move-object v0, p1

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 168
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 169
    .local v3, "userFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 170
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 169
    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 171
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/utils/quota/QuotaTracker;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/utils/quota/QuotaTracker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker;->onAppRemovedLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/utils/quota/QuotaTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/utils/quota/QuotaTracker;
    .param p1, "x1"    # I

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->onUserRemovedLocked(I)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/android/server/utils/quota/QuotaTracker;->ALARM_TAG_QUOTA_CHECK:Ljava/lang/String;

    return-object v0
.end method

.method private onAppRemovedLocked(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 361
    if-nez p1, :cond_0

    .line 362
    sget-object v0, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    const-string v1, "Told app removed but given null package name."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 365
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 367
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmListener:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->removeAlarmsLocked(ILjava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/String;)Ljava/lang/Object;

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker;->handleRemovedAppLocked(Ljava/lang/String;I)V

    .line 372
    return-void
.end method

.method private onUserRemovedLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 379
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmListener:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->removeAlarmsLocked(I)V

    .line 380
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->handleRemovedUserLocked(I)V

    .line 383
    return-void
.end method


# virtual methods
.method cancelAlarm(Landroid/app/AlarmManager$OnAlarmListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .line 327
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$v5weP48tcgV_Pr7kzEEv4AvPw_k;

    invoke-direct {v1, p0, p1}, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$v5weP48tcgV_Pr7kzEEv4AvPw_k;-><init>(Lcom/android/server/utils/quota/QuotaTracker;Landroid/app/AlarmManager$OnAlarmListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    return-void
.end method

.method cancelScheduledStartAlarmLocked(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 446
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmListener:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;

    new-instance v1, Lcom/android/server/utils/quota/Uptc;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->removeAlarmLocked(Lcom/android/server/utils/quota/Uptc;)V

    .line 447
    return-void
.end method

.method public clear()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmListener:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->clearLocked()V

    .line 179
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->clear()V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->dropEverythingLocked()V

    .line 182
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract dropEverythingLocked()V
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 658
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 660
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 661
    const-wide v3, 0x10800000001L

    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 662
    const-wide v3, 0x10800000002L

    iget-boolean v5, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 663
    const-wide v3, 0x10300000003L

    iget-object v5, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v5}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v5

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 664
    iget-object v3, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmListener:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;

    const-wide v4, 0x10b00000004L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->dumpLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 665
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 668
    return-void

    .line 665
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 625
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 626
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is global quota free: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current elapsed time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 631
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 632
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmListener:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 634
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 635
    const-string v1, "Per-app free quota:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 637
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 638
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    .line 639
    .local v2, "userId":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 640
    iget-object v4, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/String;

    move-result-object v4

    .line 642
    .local v4, "pkgName":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 643
    const-string v5, ": "

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 644
    iget-object v5, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 639
    .end local v4    # "pkgName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 637
    .end local v2    # "userId":I
    .end local v3    # "p":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    .end local v1    # "u":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 648
    monitor-exit v0

    .line 649
    return-void

    .line 648
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract getHandler()Landroid/os/Handler;
.end method

.method abstract getInQuotaTimeElapsedLocked(ILjava/lang/String;Ljava/lang/String;)J
.end method

.method abstract handleRemovedAppLocked(Ljava/lang/String;I)V
.end method

.method abstract handleRemovedUserLocked(I)V
.end method

.method isEnabledLocked()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    return v0
.end method

.method isIndividualQuotaFreeLocked(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method isQuotaFreeLocked()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    return v0
.end method

.method isQuotaFreeLocked(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 279
    iget-boolean v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuotaLocked(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract isWithinQuotaLocked(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public synthetic lambda$cancelAlarm$1$QuotaTracker(Landroid/app/AlarmManager$OnAlarmListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .line 328
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->isAlarmManagerReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    .line 331
    :cond_0
    sget-object v0, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    const-string v1, "Alarm not cancelled because boot isn\'t completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void
.end method

.method public synthetic lambda$postQuotaStatusChanged$3$QuotaTracker(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    .line 396
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/utils/quota/QuotaChangeListener;

    .line 395
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/utils/quota/QuotaChangeListener;

    .line 397
    .local v1, "listeners":[Lcom/android/server/utils/quota/QuotaChangeListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    .line 399
    .local v3, "listener":Lcom/android/server/utils/quota/QuotaChangeListener;
    invoke-interface {v3, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaChangeListener;->onQuotaStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 398
    .end local v3    # "listener":Lcom/android/server/utils/quota/QuotaChangeListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    :cond_0
    return-void

    .line 397
    .end local v1    # "listeners":[Lcom/android/server/utils/quota/QuotaChangeListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$scheduleAlarm$0$QuotaTracker(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .line 314
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->isAlarmManagerReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->getHandler()Landroid/os/Handler;

    move-result-object v7

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 317
    :cond_0
    sget-object v0, Lcom/android/server/utils/quota/QuotaTracker;->TAG:Ljava/lang/String;

    const-string v1, "Alarm not scheduled because boot isn\'t completed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_0
    return-void
.end method

.method public synthetic lambda$scheduleQuotaCheck$2$QuotaTracker()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->maybeUpdateAllQuotaStatusLocked()V

    .line 352
    :cond_0
    monitor-exit v0

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method maybeScheduleStartAlarmLocked(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 423
    return-void

    .line 426
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "pkgString":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmListener:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;

    new-instance v2, Lcom/android/server/utils/quota/Uptc;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->removeAlarmLocked(Lcom/android/server/utils/quota/Uptc;)V

    .line 435
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->maybeUpdateQuotaStatus(ILjava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInQuotaAlarmListener:Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;

    new-instance v2, Lcom/android/server/utils/quota/Uptc;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->getInQuotaTimeElapsedLocked(ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 439
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/utils/quota/QuotaTracker$InQuotaAlarmListener;->addAlarmLocked(Lcom/android/server/utils/quota/Uptc;J)V

    .line 441
    return-void
.end method

.method abstract maybeUpdateAllQuotaStatusLocked()V
.end method

.method abstract maybeUpdateQuotaStatus(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method abstract onQuotaFreeChangedLocked(ILjava/lang/String;Z)V
.end method

.method abstract onQuotaFreeChangedLocked(Z)V
.end method

.method postQuotaStatusChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 391
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$XRuiZQg4lOmWE1kXJjjkatdBgB8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$XRuiZQg4lOmWE1kXJjjkatdBgB8;-><init>(Lcom/android/server/utils/quota/QuotaTracker;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    return-void
.end method

.method public registerQuotaChangeListener(Lcom/android/server/utils/quota/QuotaChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/utils/quota/QuotaChangeListener;

    .line 230
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->scheduleQuotaCheck()V

    .line 234
    :cond_0
    monitor-exit v0

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method scheduleAlarm(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .line 313
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$QGqhRiGVlazdG76r-Ich6VZnho4;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$QGqhRiGVlazdG76r-Ich6VZnho4;-><init>(Lcom/android/server/utils/quota/QuotaTracker;IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method

.method scheduleQuotaCheck()V
    .locals 2

    .line 347
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$cKEDVJtC0LHULuSrH0-B6zQBe3g;

    invoke-direct {v1, p0}, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$cKEDVJtC0LHULuSrH0-B6zQBe3g;-><init>(Lcom/android/server/utils/quota/QuotaTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 251
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    if-ne v1, p1, :cond_0

    .line 253
    monitor-exit v0

    return-void

    .line 255
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    .line 257
    if-nez p1, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->clear()V

    .line 260
    :cond_1
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setQuotaFree(ILjava/lang/String;Z)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isFree"    # Z

    .line 201
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 203
    .local v1, "wasFree":Z
    if-eq v1, p3, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mFreeQuota:Landroid/util/SparseArrayMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->onQuotaFreeChangedLocked(ILjava/lang/String;Z)V

    .line 207
    .end local v1    # "wasFree":Z
    :cond_0
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setQuotaFree(Z)V
    .locals 2
    .param p1, "isFree"    # Z

    .line 212
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    if-ne v1, p1, :cond_0

    .line 214
    monitor-exit v0

    return-void

    .line 216
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsQuotaFree:Z

    .line 218
    iget-boolean v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    if-nez v1, :cond_1

    .line 219
    monitor-exit v0

    return-void

    .line 221
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->onQuotaFreeChangedLocked(Z)V

    .line 222
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->scheduleQuotaCheck()V

    .line 224
    return-void

    .line 222
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterQuotaChangeListener(Lcom/android/server/utils/quota/QuotaChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/utils/quota/QuotaChangeListener;

    .line 239
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mQuotaChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class public Lcom/android/server/power/AttentionDetector;
.super Ljava/lang/Object;
.source "AttentionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/AttentionDetector$UserSwitchObserver;,
        Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DEFAULT_POST_DIM_CHECK_DURATION_MILLIS:J = 0x0L

.field static final DEFAULT_PRE_DIM_CHECK_DURATION_MILLIS:J = 0x7d0L

.field static final KEY_POST_DIM_CHECK_DURATION_MILLIS:Ljava/lang/String; = "post_dim_check_duration_millis"

.field static final KEY_PRE_DIM_CHECK_DURATION_MILLIS:Ljava/lang/String; = "pre_dim_check_duration_millis"

.field private static final TAG:Ljava/lang/String; = "AttentionDetector"


# instance fields
.field protected mAttentionManager:Landroid/attention/AttentionManagerInternal;

.field mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

.field private mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIsSettingEnabled:Z

.field private mLastActedOnNextScreenDimming:J

.field private mLastPostDimTimeout:J

.field private mLastUserActivityTime:J

.field private final mLock:Ljava/lang/Object;

.field protected mMaximumExtensionMillis:J

.field private final mOnUserAttention:Ljava/lang/Runnable;

.field protected mPackageManager:Landroid/content/pm/PackageManager;

.field protected mRequestId:I

.field private final mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWakefulness:I

.field protected mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "onUserAttention"    # Ljava/lang/Runnable;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 143
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mOnUserAttention:Ljava/lang/Runnable;

    .line 144
    iput-object p2, p0, Lcom/android/server/power/AttentionDetector;->mLock:Ljava/lang/Object;

    .line 145
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 146
    iput v1, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/AttentionDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/AttentionDetector;

    .line 57
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/AttentionDetector;

    .line 57
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/AttentionDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/AttentionDetector;

    .line 57
    iget v0, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/AttentionDetector;

    .line 57
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mOnUserAttention:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/AttentionDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/AttentionDetector;

    .line 57
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/AttentionDetector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/AttentionDetector;

    .line 57
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelCurrentRequestIfAny()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    invoke-virtual {v0, v1}, Landroid/attention/AttentionManagerInternal;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 279
    :cond_0
    return-void
.end method

.method private resetConsecutiveExtensionCount()V
    .locals 5

    .line 282
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    .line 283
    .local v3, "previousCount":J
    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 284
    const/16 v0, 0xa8

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 310
    const-string v0, "AttentionDetector:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsSettingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaximumExtensionMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " preDimCheckDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getPreDimCheckDurationMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " postDimCheckDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mLastPostDimTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastUserActivityTime(excludingAttention)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAttentionServiceSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->isAttentionServiceSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method protected getPostDimCheckDurationMillis(J)J
    .locals 6
    .param p1, "dimDurationMillis"    # J

    .line 338
    const-string v0, "attention_manager_service"

    const-string v1, "post_dim_check_duration_millis"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 342
    .local v0, "millis":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v4, 0x2710

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/AttentionDetector;->mLastPostDimTimeout:J

    .line 348
    return-wide v2

    .line 343
    :cond_1
    :goto_0
    const-string v4, "AttentionDetector"

    const-string v5, "Bad flag value supplied for: post_dim_check_duration_millis"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-wide v2
.end method

.method protected getPreDimCheckDurationMillis()J
    .locals 6

    .line 323
    const-string v0, "attention_manager_service"

    const-string v1, "pre_dim_check_duration_millis"

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 327
    .local v0, "millis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    const-wide/16 v4, 0x32c8

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    return-wide v0

    .line 328
    :cond_1
    :goto_0
    const-string v4, "AttentionDetector"

    const-string v5, "Bad flag value supplied for: pre_dim_check_duration_millis"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-wide v2
.end method

.method isAttentionServiceSupported()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/attention/AttentionManagerInternal;->isAttentionServiceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onUserActivity(JI)I
    .locals 2
    .param p1, "eventTime"    # J
    .param p3, "event"    # I

    .line 246
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    .line 262
    const/4 v0, -0x1

    return v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 249
    const/4 v0, 0x0

    return v0

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->cancelCurrentRequestIfAny()V

    .line 255
    iput-wide p1, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    .line 256
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    .line 257
    return v0
.end method

.method public onWakefulnessChangeStarted(I)V
    .locals 1
    .param p1, "wakefulness"    # I

    .line 267
    iput p1, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    .line 268
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->cancelCurrentRequestIfAny()V

    .line 270
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    .line 272
    :cond_0
    return-void
.end method

.method serviceHasSufficientPermissions()Z
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "attentionPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/power/AttentionDetector;->updateEnabledFromSettings(Landroid/content/Context;)V

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mContentResolver:Landroid/content/ContentResolver;

    .line 163
    const-class v0, Landroid/attention/AttentionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/attention/AttentionManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    .line 164
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    .line 169
    :try_start_0
    new-instance v0, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;-><init>(Lcom/android/server/power/AttentionDetector;Lcom/android/server/power/AttentionDetector$1;)V

    .line 170
    .local v0, "observer":Lcom/android/server/power/AttentionDetector$UserSwitchObserver;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "AttentionDetector"

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v0    # "observer":Lcom/android/server/power/AttentionDetector$UserSwitchObserver;
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 175
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adaptive_sleep"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/power/AttentionDetector$1;

    new-instance v4, Landroid/os/Handler;

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4, p1}, Lcom/android/server/power/AttentionDetector$1;-><init>(Lcom/android/server/power/AttentionDetector;Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v4, -0x1

    .line 175
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 183
    return-void
.end method

.method updateEnabledFromSettings(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adaptive_sleep"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    .line 156
    return-void
.end method

.method public updateUserActivity(JJ)J
    .locals 11
    .param p1, "nextScreenDimming"    # J
    .param p3, "dimDurationMillis"    # J

    .line 187
    iget-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mLastActedOnNextScreenDimming:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 189
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->isAttentionServiceSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->serviceHasSufficientPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 198
    .local v0, "now":J
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getPreDimCheckDurationMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 199
    .local v2, "whenToCheck":J
    iget-wide v4, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    iget-wide v6, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    add-long/2addr v4, v6

    .line 200
    .local v4, "whenToStopExtending":J
    cmp-long v6, v0, v2

    if-gez v6, :cond_2

    .line 204
    return-wide v2

    .line 205
    :cond_2
    cmp-long v6, v4, v2

    if-gez v6, :cond_3

    .line 210
    return-wide p1

    .line 211
    :cond_3
    iget-object v6, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 215
    return-wide v2

    .line 222
    :cond_4
    iget-object v6, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 223
    iget v6, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    .line 224
    iput-wide p1, p0, Lcom/android/server/power/AttentionDetector;->mLastActedOnNextScreenDimming:J

    .line 225
    new-instance v6, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    iget v7, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    invoke-direct {v6, p0, v7}, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;-><init>(Lcom/android/server/power/AttentionDetector;I)V

    iput-object v6, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking user attention, ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AttentionDetector"

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v6, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    .line 228
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getPreDimCheckDurationMillis()J

    move-result-wide v7

    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/AttentionDetector;->getPostDimCheckDurationMillis(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    iget-object v9, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    .line 227
    invoke-virtual {v6, v7, v8, v9}, Landroid/attention/AttentionManagerInternal;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    move-result v6

    .line 230
    .local v6, "sent":Z
    if-nez v6, :cond_5

    .line 231
    iget-object v7, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 234
    :cond_5
    return-wide v2

    .line 194
    .end local v0    # "now":J
    .end local v2    # "whenToCheck":J
    .end local v4    # "whenToStopExtending":J
    .end local v6    # "sent":Z
    :cond_6
    :goto_0
    return-wide p1

    .line 190
    :cond_7
    :goto_1
    return-wide p1
.end method

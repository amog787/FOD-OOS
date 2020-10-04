.class public Lcom/android/server/locksettings/LockSettingsStrongAuth;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;,
        Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;,
        Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;
    }
.end annotation


# static fields
.field public static DEFAULT_WEAK_FACE_IDLE_TIMEOUT_MS:J = 0x0L

.field public static DEFAULT_WEAK_FACE_TIMEOUT_MS:J = 0x0L

.field private static final MSG_REGISTER_TRACKER:I = 0x2

.field private static final MSG_REMOVE_USER:I = 0x4

.field private static final MSG_REQUIRE_STRONG_AUTH:I = 0x1

.field private static final MSG_SCHEDULE_STRONG_AUTH_IDLE_TIMEOUT:I = 0xb

.field private static final MSG_SCHEDULE_STRONG_AUTH_TIMEOUT:I = 0x5

.field private static final MSG_UNREGISTER_TRACKER:I = 0x3

.field private static final STRONG_AUTH_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsStrongAuth.timeoutForUser"

.field private static final TAG:Ljava/lang/String; = "LockSettings"

.field private static final WEAK_FACE_IDLE_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsWeakFace.idleTimeoutForUser"

.field private static final WEAK_FACE_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsWeakFace.timeoutForUser"

.field private static final mWeakFaceEnabled:Z


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultStrongAuthFlags:I

.field private mFaceAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;

.field private mFaceIdleAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIsWeakFaceTimeout:Z

.field private final mStrongAuthForUser:Landroid/util/SparseIntArray;

.field private final mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/trust/IStrongAuthTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x12e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mWeakFaceEnabled:Z

    .line 197
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_TIMEOUT_MS:J

    .line 198
    const-wide/32 v0, 0xdbba00

    sput-wide v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_IDLE_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsWeakFaceTimeout:Z

    .line 71
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 72
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 373
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 83
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/locksettings/LockSettingsStrongAuth;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # Z

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyWeakFaceTimeoutTrackers(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # Landroid/app/trust/IStrongAuthTracker;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # Landroid/app/trust/IStrongAuthTracker;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuth(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRemoveUser(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleStrongAuthTimeout(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleStrongAuthIdleTimeout(I)V

    return-void
.end method

.method private handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 6
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 87
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const-string v2, "LockSettings"

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 91
    .local v1, "key":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 93
    .local v3, "value":I
    :try_start_0
    invoke-interface {p1, v3, v1}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_1

    .line 94
    :catch_0
    move-exception v4

    .line 95
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Exception while adding StrongAuthTracker."

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .end local v1    # "key":I
    .end local v3    # "value":I
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WeakFace] handleAddStrongAuthTracker , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsWeakFaceTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsWeakFaceTimeout:Z

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyWeakFaceTimeoutTrackers(Z)V

    .line 103
    return-void
.end method

.method private handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 106
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 107
    return-void
.end method

.method private handleRemoveUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 132
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 133
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 135
    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 137
    :cond_0
    return-void
.end method

.method private handleRequireStrongAuth(II)V
    .locals 2
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 110
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 113
    .local v1, "key":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    .line 111
    .end local v1    # "key":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 116
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    .line 118
    :goto_1
    return-void
.end method

.method private handleRequireStrongAuthOneUser(II)V
    .locals 3
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 121
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 122
    .local v0, "oldValue":I
    if-nez p1, :cond_0

    .line 123
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    :cond_0
    or-int v1, v0, p1

    :goto_0
    nop

    .line 125
    .local v1, "newValue":I
    if-eq v0, v1, :cond_1

    .line 126
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 127
    invoke-direct {p0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 129
    :cond_1
    return-void
.end method

.method private handleScheduleStrongAuthIdleTimeout(I)V
    .locals 13
    .param p1, "userId"    # I

    .line 278
    if-nez p1, :cond_4

    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mWeakFaceEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceIdleAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;

    if-eqz v0, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 285
    :cond_1
    sget-wide v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_IDLE_TIMEOUT_MS:J

    const-string/jumbo v2, "sys.debug.face.idle"

    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 286
    .local v0, "testTimeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 287
    sput-wide v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_IDLE_TIMEOUT_MS:J

    .line 289
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WeakFace] handleAuthIdle, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_IDLE_TIMEOUT_MS:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsWeakFaceTimeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LockSettings"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_IDLE_TIMEOUT_MS:J

    add-long/2addr v2, v4

    .line 292
    .local v2, "idleWhen":J
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceIdleAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;

    if-eqz v4, :cond_3

    .line 293
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v5, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    .line 295
    :cond_3
    new-instance v4, Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;

    invoke-direct {v4, p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    iput-object v4, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceIdleAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;

    .line 299
    :goto_0
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x3

    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceIdleAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceIdleTimeoutAlarmListener;

    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const-string v10, "LockSettingsWeakFace.idleTimeoutForUser"

    move-wide v8, v2

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 302
    return-void

    .line 279
    .end local v0    # "testTimeout":J
    .end local v2    # "idleWhen":J
    :cond_4
    :goto_1
    return-void
.end method

.method private handleScheduleStrongAuthTimeout(I)V
    .locals 20
    .param p1, "userId"    # I

    .line 140
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    .line 141
    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 142
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 145
    .local v3, "when":J
    const-wide/16 v5, 0x0

    const-string/jumbo v7, "sys.debug.test.strong"

    invoke-static {v7, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 146
    .local v7, "testStrongTimeout":J
    cmp-long v9, v7, v5

    const-string v10, "LockSettings"

    if-eqz v9, :cond_0

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    add-long v3, v11, v7

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[WeakFace] test Strong Auth timeout: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iget-object v9, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    .line 154
    .local v9, "alarm":Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;
    if-eqz v9, :cond_1

    .line 155
    iget-object v11, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v11, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    .line 157
    :cond_1
    new-instance v11, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    invoke-direct {v11, v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    move-object v9, v11

    .line 158
    iget-object v11, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_0
    iget-object v11, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v12, 0x3

    iget-object v15, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const-string v16, "LockSettingsStrongAuth.timeoutForUser"

    move-wide v13, v3

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v17}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 166
    if-nez v1, :cond_6

    sget-boolean v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mWeakFaceEnabled:Z

    if-nez v11, :cond_2

    goto :goto_2

    .line 169
    :cond_2
    sget-wide v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_TIMEOUT_MS:J

    const-string/jumbo v13, "sys.debug.face.disable"

    invoke-static {v13, v11, v12}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 170
    .local v11, "testTimeout":J
    cmp-long v5, v11, v5

    if-eqz v5, :cond_3

    .line 171
    sput-wide v11, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_TIMEOUT_MS:J

    .line 173
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WeakFace] handleStrongAuth, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v13, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_TIMEOUT_MS:J

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsWeakFaceTimeout:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sget-wide v13, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEFAULT_WEAK_FACE_TIMEOUT_MS:J

    add-long/2addr v5, v13

    .line 175
    .local v5, "faceWhen":J
    cmp-long v10, v5, v3

    if-lez v10, :cond_4

    .line 176
    move-wide v5, v3

    .line 179
    :cond_4
    iget-object v10, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;

    if-eqz v10, :cond_5

    .line 180
    iget-object v13, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v13, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_1

    .line 182
    :cond_5
    new-instance v10, Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;

    invoke-direct {v10, v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    iput-object v10, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;

    .line 186
    :goto_1
    iget-object v13, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v14, 0x3

    iget-object v10, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mFaceAlarm:Lcom/android/server/locksettings/LockSettingsStrongAuth$WeakFaceTimeoutAlarmListener;

    iget-object v15, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const-string v17, "LockSettingsWeakFace.timeoutForUser"

    move-object/from16 v19, v15

    move-wide v15, v5

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 189
    return-void

    .line 167
    .end local v5    # "faceWhen":J
    .end local v11    # "testTimeout":J
    :cond_6
    :goto_2
    return-void
.end method

.method private notifyStrongAuthTrackers(II)V
    .locals 4
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 306
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 308
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 309
    add-int/lit8 v0, v0, -0x1

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v1, p1, p2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    goto :goto_0

    .line 318
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "LockSettings"

    const-string v3, "Exception while notifying StrongAuthTracker."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 318
    :goto_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 319
    nop

    .line 320
    return-void
.end method

.method private notifyWeakFaceTimeoutTrackers(Z)V
    .locals 4
    .param p1, "timeout"    # Z

    .line 239
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mWeakFaceEnabled:Z

    if-nez v0, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsWeakFaceTimeout:Z

    .line 244
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 246
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 247
    add-int/lit8 v0, v0, -0x1

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/trust/IStrongAuthTracker;->onWeakFaceTimeout(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    goto :goto_0

    .line 256
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "LockSettings"

    const-string v3, "Exception while notifying Weak Face trackers."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 256
    :goto_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 257
    nop

    .line 258
    return-void
.end method


# virtual methods
.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 2
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 323
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 324
    return-void
.end method

.method public removeUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "argNotUsed":I
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 333
    return-void
.end method

.method public reportBiometricUnlocked(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WeakFace] report Face Unlocked, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettings"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "argNotUsed":I
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 265
    return-void
.end method

.method public reportSuccessfulStrongAuthUnlock(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyWeakFaceTimeoutTrackers(Z)V

    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, "argNotUsed":I
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 357
    return-void
.end method

.method public reportUnlock(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 347
    return-void
.end method

.method public reportUserLocked(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WeakFace] reportUserLocked, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettings"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 2
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 336
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userId must be an explicit user id or USER_ALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 343
    return-void
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 2
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 327
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 328
    return-void
.end method

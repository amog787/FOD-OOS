.class public Lcom/android/server/locksettings/LockSettingsStrongAuth;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;,
        Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;,
        Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;,
        Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_NON_STRONG_BIOMETRIC_IDLE_TIMEOUT_MS:J = 0xdbba00L

.field public static final DEFAULT_NON_STRONG_BIOMETRIC_TIMEOUT_MS:J = 0x5265c00L

.field private static final MSG_NO_LONGER_REQUIRE_STRONG_AUTH:I = 0x6

.field private static final MSG_REFRESH_STRONG_AUTH_TIMEOUT:I = 0xa

.field private static final MSG_REGISTER_TRACKER:I = 0x2

.field private static final MSG_REMOVE_USER:I = 0x4

.field private static final MSG_REQUIRE_STRONG_AUTH:I = 0x1

.field private static final MSG_SCHEDULE_NON_STRONG_BIOMETRIC_IDLE_TIMEOUT:I = 0x9

.field private static final MSG_SCHEDULE_NON_STRONG_BIOMETRIC_TIMEOUT:I = 0x7

.field private static final MSG_SCHEDULE_STRONG_AUTH_TIMEOUT:I = 0x5

.field private static final MSG_STRONG_BIOMETRIC_UNLOCK:I = 0x8

.field private static final MSG_UNREGISTER_TRACKER:I = 0x3

.field protected static final NON_STRONG_BIOMETRIC_IDLE_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsPrimaryAuth.nonStrongBiometricIdleTimeoutForUser"

.field protected static final NON_STRONG_BIOMETRIC_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsPrimaryAuth.nonStrongBiometricTimeoutForUser"

.field protected static final STRONG_AUTH_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsStrongAuth.timeoutForUser"

.field private static final TAG:Ljava/lang/String; = "LockSettings"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultIsNonStrongBiometricAllowed:Z

.field private final mDefaultStrongAuthFlags:I

.field protected final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

.field protected final mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

.field protected final mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStrongAuthForUser:Landroid/util/SparseIntArray;

.field protected final mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    invoke-direct {v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;)V

    .line 108
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 82
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 84
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultIsNonStrongBiometricAllowed:Z

    .line 594
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;

    .line 595
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 112
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    .line 114
    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getDefaultStrongAuthFlags(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 115
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # Landroid/app/trust/IStrongAuthTracker;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # Landroid/app/trust/IStrongAuthTracker;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuth(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRemoveUser(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleStrongAuthTimeout(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRefreshStrongAuthTimeout(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleNoLongerRequireStrongAuth(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleNonStrongBiometricTimeout(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleStrongBiometricUnlock(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleNonStrongBiometricIdleTimeout(I)V

    return-void
.end method

.method private cancelNonStrongBiometricAlarmListener(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 326
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 327
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;

    .line 328
    .local v0, "alarm":Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;
    if-eqz v0, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 332
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_0
    return-void
.end method

.method private cancelNonStrongBiometricIdleAlarmListener(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 340
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;

    .line 342
    .local v0, "alarm":Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;
    if-eqz v0, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 346
    :cond_0
    return-void
.end method

.method private handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 6
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 159
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const-string v2, "LockSettings"

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 163
    .local v1, "key":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 165
    .local v3, "value":I
    :try_start_0
    invoke-interface {p1, v3, v1}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_1

    .line 166
    :catch_0
    move-exception v4

    .line 167
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Exception while adding StrongAuthTracker."

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v1    # "key":I
    .end local v3    # "value":I
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 173
    .restart local v1    # "key":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 175
    .local v3, "value":Z
    :try_start_1
    invoke-interface {p1, v3, v1}, Landroid/app/trust/IStrongAuthTracker;->onIsNonStrongBiometricAllowedChanged(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    goto :goto_3

    .line 176
    :catch_1
    move-exception v4

    .line 177
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v5, "Exception while adding StrongAuthTracker: IsNonStrongBiometricAllowedChanged."

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v1    # "key":I
    .end local v3    # "value":Z
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 181
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private handleNoLongerRequireStrongAuth(II)V
    .locals 2
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 210
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 213
    .local v1, "key":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleNoLongerRequireStrongAuthOneUser(II)V

    .line 211
    .end local v1    # "key":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 216
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleNoLongerRequireStrongAuthOneUser(II)V

    .line 218
    :goto_1
    return-void
.end method

.method private handleNoLongerRequireStrongAuthOneUser(II)V
    .locals 3
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 221
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 222
    .local v0, "oldValue":I
    not-int v1, p1

    and-int/2addr v1, v0

    .line 223
    .local v1, "newValue":I
    if-eq v0, v1, :cond_0

    .line 224
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 225
    invoke-direct {p0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 227
    :cond_0
    return-void
.end method

.method private handleRefreshStrongAuthTimeout(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 281
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    .line 282
    .local v0, "alarm":Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->getLatestStrongAuthTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->rescheduleStrongAuthTimeoutAlarm(JI)V

    .line 285
    :cond_0
    return-void
.end method

.method private handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 184
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 185
    return-void
.end method

.method private handleRemoveUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 230
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 231
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 233
    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 237
    if-ltz v0, :cond_1

    .line 238
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 239
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackersForIsNonStrongBiometricAllowed(ZI)V

    .line 242
    :cond_1
    return-void
.end method

.method private handleRequireStrongAuth(II)V
    .locals 2
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 188
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 191
    .local v1, "key":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    .line 189
    .end local v1    # "key":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 194
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    .line 196
    :goto_1
    return-void
.end method

.method private handleRequireStrongAuthOneUser(II)V
    .locals 3
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 199
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 200
    .local v0, "oldValue":I
    if-nez p1, :cond_0

    .line 201
    const/4 v1, 0x0

    goto :goto_0

    .line 202
    :cond_0
    or-int v1, v0, p1

    :goto_0
    nop

    .line 203
    .local v1, "newValue":I
    if-eq v0, v1, :cond_1

    .line 204
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 205
    invoke-direct {p0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 207
    :cond_1
    return-void
.end method

.method private handleScheduleNonStrongBiometricIdleTimeout(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 383
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    .line 384
    const-wide/32 v1, 0xdbba00

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getNextAlarmTimeMs(J)J

    move-result-wide v0

    .line 386
    .local v0, "nextAlarmTime":J
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 387
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;

    .line 388
    .local v2, "alarm":Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;
    if-eqz v2, :cond_0

    .line 390
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    .line 392
    :cond_0
    new-instance v3, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;

    invoke-direct {v3, p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    move-object v2, v3

    .line 393
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :goto_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x3

    iget-object v9, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const-string v7, "LockSettingsPrimaryAuth.nonStrongBiometricIdleTimeoutForUser"

    move-wide v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 399
    return-void
.end method

.method private handleScheduleNonStrongBiometricTimeout(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 289
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getNextAlarmTimeMs(J)J

    move-result-wide v0

    .line 290
    .local v0, "nextAlarmTime":J
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 291
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;

    .line 292
    .local v2, "alarm":Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;
    if-eqz v2, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    new-instance v3, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;

    invoke-direct {v3, p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    move-object v2, v3

    .line 304
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x3

    iget-object v9, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const-string v7, "LockSettingsPrimaryAuth.nonStrongBiometricTimeoutForUser"

    move-wide v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 311
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    .line 312
    return-void
.end method

.method private handleScheduleStrongAuthTimeout(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 270
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getElapsedRealtimeMs()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->rescheduleStrongAuthTimeoutAlarm(JI)V

    .line 273
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricAlarmListener(I)V

    .line 275
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    .line 277
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowed(ZI)V

    .line 278
    return-void
.end method

.method private handleStrongBiometricUnlock(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricAlarmListener(I)V

    .line 319
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowed(ZI)V

    .line 322
    return-void
.end method

.method private notifyStrongAuthTrackers(II)V
    .locals 4
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 402
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 404
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 405
    add-int/lit8 v0, v0, -0x1

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v1, p1, p2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    goto :goto_0

    .line 414
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "LockSettings"

    const-string v3, "Exception while notifying StrongAuthTracker."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 414
    :goto_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 415
    throw v1

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 415
    nop

    .line 416
    return-void
.end method

.method private notifyStrongAuthTrackersForIsNonStrongBiometricAllowed(ZI)V
    .locals 4
    .param p1, "allowed"    # Z
    .param p2, "userId"    # I

    .line 424
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 426
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 427
    add-int/lit8 v0, v0, -0x1

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v1, p1, p2}, Landroid/app/trust/IStrongAuthTracker;->onIsNonStrongBiometricAllowedChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    goto :goto_0

    .line 437
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 431
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "LockSettings"

    const-string v3, "Exception while notifying StrongAuthTracker: IsNonStrongBiometricAllowedChanged."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 437
    :goto_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 438
    throw v1

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 438
    nop

    .line 439
    return-void
.end method

.method private rescheduleStrongAuthTimeoutAlarm(JI)V
    .locals 11
    .param p1, "strongAuthTime"    # J
    .param p3, "userId"    # I

    .line 249
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    .line 250
    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 252
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    .line 253
    .local v1, "alarm":Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;
    if-eqz v1, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 255
    invoke-virtual {v1, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->setLatestStrongAuthTime(J)V

    goto :goto_0

    .line 257
    :cond_0
    new-instance v2, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;JI)V

    move-object v1, v2

    .line 258
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 265
    .local v2, "nextAlarmTime":J
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v10, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const-string v8, "LockSettingsStrongAuth.timeoutForUser"

    move-wide v6, v2

    move-object v9, v1

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 267
    return-void
.end method

.method private setIsNonStrongBiometricAllowedOneUser(ZI)V
    .locals 2
    .param p1, "allowed"    # Z
    .param p2, "userId"    # I

    .line 369
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 371
    .local v0, "oldValue":Z
    if-eq p1, v0, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 377
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackersForIsNonStrongBiometricAllowed(ZI)V

    .line 379
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 634
    const-string v0, "PrimaryAuthFlags state:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 636
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const-string/jumbo v2, "userId="

    if-ge v0, v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 638
    .local v1, "key":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 639
    .local v3, "value":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", primaryAuthFlags="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 636
    .end local v1    # "key":I
    .end local v3    # "value":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 642
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 644
    const-string v0, "NonStrongBiometricAllowed state:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 646
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 647
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 648
    .restart local v1    # "key":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 649
    .local v3, "value":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", allowed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 646
    .end local v1    # "key":I
    .end local v3    # "value":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 651
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 652
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 653
    return-void
.end method

.method noLongerRequireStrongAuth(II)V
    .locals 2
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 465
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userId must be an explicit user id or USER_ALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 472
    return-void
.end method

.method public refreshStrongAuthTimeout(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 490
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 491
    return-void
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 2
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 442
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 443
    return-void
.end method

.method public removeUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "argNotUsed":I
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 452
    return-void
.end method

.method public reportSuccessfulBiometricUnlock(ZI)V
    .locals 4
    .param p1, "isStrongBiometric"    # Z
    .param p2, "userId"    # I

    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "argNotUsed":I
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 503
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 506
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 507
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 509
    :goto_0
    return-void
.end method

.method public reportSuccessfulStrongAuthUnlock(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 482
    const/4 v0, 0x0

    .line 483
    .local v0, "argNotUsed":I
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 484
    return-void
.end method

.method public reportUnlock(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 476
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 2
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 455
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userId must be an explicit user id or USER_ALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 462
    return-void
.end method

.method public scheduleNonStrongBiometricIdleTimeout(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "argNotUsed":I
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 519
    return-void
.end method

.method protected setIsNonStrongBiometricAllowed(ZI)V
    .locals 2
    .param p1, "allowed"    # Z
    .param p2, "userId"    # I

    .line 354
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 357
    .local v1, "key":I
    invoke-direct {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowedOneUser(ZI)V

    .line 355
    .end local v1    # "key":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 360
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowedOneUser(ZI)V

    .line 362
    :goto_1
    return-void
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 2
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 446
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 447
    return-void
.end method

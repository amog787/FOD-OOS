.class public Lcom/android/server/trust/TrustManagerService;
.super Lcom/android/server/SystemService;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;,
        Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;,
        Lcom/android/server/trust/TrustManagerService$Receiver;,
        Lcom/android/server/trust/TrustManagerService$SettingsAttrs;,
        Lcom/android/server/trust/TrustManagerService$AgentInfo;,
        Lcom/android/server/trust/TrustManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final MSG_CLEANUP_USER:I = 0x8

.field private static final MSG_DISPATCH_UNLOCK_ATTEMPT:I = 0x3

.field private static final MSG_DISPATCH_UNLOCK_LOCKOUT:I = 0xd

.field private static final MSG_ENABLED_AGENTS_CHANGED:I = 0x4

.field private static final MSG_FLUSH_TRUST_USUALLY_MANAGED:I = 0xa

.field private static final MSG_KEYGUARD_SHOWING_CHANGED:I = 0x6

.field private static final MSG_REFRESH_DEVICE_LOCKED_FOR_USER:I = 0xe

.field private static final MSG_REGISTER_LISTENER:I = 0x1

.field private static final MSG_SCHEDULE_TRUST_TIMEOUT:I = 0xf

.field private static final MSG_START_USER:I = 0x7

.field private static final MSG_STOP_USER:I = 0xc

.field private static final MSG_SWITCH_USER:I = 0x9

.field private static final MSG_UNLOCK_USER:I = 0xb

.field private static final MSG_UNREGISTER_LISTENER:I = 0x2

.field private static final PERMISSION_PROVIDE_AGENT:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final TAG:Ljava/lang/String; = "TrustManagerService"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static final TRUST_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "TrustManagerService.trustTimeoutForUser"

.field private static final TRUST_TIMEOUT_IN_MILLIS:J = 0xdbba00L

.field private static final TRUST_USUALLY_MANAGED_FLUSH_DELAY:I = 0x1d4c0


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/trust/TrustManagerService$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field final mArchive:Lcom/android/server/trust/TrustArchive;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceLockedForUser"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

.field private final mService:Landroid/os/IBinder;

.field private final mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

.field private final mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

.field private mTrustAgentsCanRun:Z

.field private final mTrustListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/trust/ITrustListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTrustUsuallyManagedForUser"
        }
    .end annotation
.end field

.field private final mUserIsTrusted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUserIsTrusted"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUsersUnlockedByBiometric"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const-string v1, "TrustManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Lcom/android/server/trust/TrustManagerService$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    .line 130
    new-instance v0, Lcom/android/server/trust/TrustArchive;

    invoke-direct {v0}, Lcom/android/server/trust/TrustArchive;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 136
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    .line 166
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 169
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 173
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 184
    iput v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 1071
    new-instance v0, Lcom/android/server/trust/TrustManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$1;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    .line 1338
    new-instance v0, Lcom/android/server/trust/TrustManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    .line 1402
    new-instance v0, Lcom/android/server/trust/TrustManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$3;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 188
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 189
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 190
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 191
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 192
    new-instance v0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-direct {v0, p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 193
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 194
    new-instance v0, Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    .line 195
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/trust/TrustManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/trust/TrustManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .line 99
    iput p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/trust/TrustManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Landroid/app/trust/ITrustListener;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->addListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Landroid/app/trust/ITrustListener;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/trust/TrustManagerService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockAttempt(ZI)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/trust/TrustManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockLockout(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/trust/TrustManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/trust/TrustManagerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/trust/TrustManagerService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/trust/TrustManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustTimeout(II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeAgentsOfPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "x2"    # I

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/trust/TrustManagerService;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/trust/TrustManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->maybeLockScreen(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/trust/TrustManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/trust/TrustManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 99
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private addListener(Landroid/app/trust/ITrustListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    .line 971
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 972
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 973
    return-void

    .line 971
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 976
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    .line 978
    return-void
.end method

.method private aggregateIsTrustManaged(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 930
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 931
    return v1

    .line 933
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 934
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 935
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_1

    .line 936
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 937
    const/4 v1, 0x1

    return v1

    .line 933
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 941
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method private aggregateIsTrusted(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 915
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 916
    return v1

    .line 918
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 919
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 920
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_1

    .line 921
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 922
    const/4 v1, 0x1

    return v1

    .line 918
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 926
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method private dispatchDeviceLocked(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isLocked"    # Z

    .line 709
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 710
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 711
    .local v1, "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_1

    .line 712
    if-eqz p2, :cond_0

    .line 713
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    goto :goto_1

    .line 715
    :cond_0
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    .line 709
    .end local v1    # "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private dispatchEscrowTokenActivatedLocked(JI)V
    .locals 3
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 723
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 724
    .local v1, "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p3, :cond_0

    .line 725
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/trust/TrustAgentWrapper;->onEscrowTokenActivated(JI)V

    .line 722
    .end local v1    # "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 728
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private dispatchOnTrustChanged(ZII)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 990
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_0

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustChanged("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 991
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_0
    if-nez p1, :cond_1

    const/4 p3, 0x0

    .line 995
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 997
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface {v2, p1, p2, p3}, Landroid/app/trust/ITrustListener;->onTrustChanged(ZII)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1002
    :catch_0
    move-exception v2

    .line 1003
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 998
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 999
    .local v2, "e":Landroid/os/DeadObjectException;
    const-string v3, "Removing dead TrustListener."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1001
    nop

    .end local v2    # "e":Landroid/os/DeadObjectException;
    add-int/lit8 v0, v0, -0x1

    .line 1004
    :goto_1
    nop

    .line 995
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private dispatchOnTrustError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 1026
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_0

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustError("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1031
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface {v2, p1}, Landroid/app/trust/ITrustListener;->onTrustError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1036
    :catch_0
    move-exception v2

    .line 1037
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1032
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1033
    .local v2, "e":Landroid/os/DeadObjectException;
    const-string v3, "Removing dead TrustListener."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1035
    nop

    .end local v2    # "e":Landroid/os/DeadObjectException;
    add-int/lit8 v0, v0, -0x1

    .line 1038
    :goto_1
    nop

    .line 1029
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1040
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private dispatchOnTrustManagedChanged(ZI)V
    .locals 4
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .line 1009
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_0

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustManagedChanged("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1014
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/trust/ITrustListener;

    invoke-interface {v2, p1, p2}, Landroid/app/trust/ITrustListener;->onTrustManagedChanged(ZI)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1019
    :catch_0
    move-exception v2

    .line 1020
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1015
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1016
    .local v2, "e":Landroid/os/DeadObjectException;
    const-string v3, "Removing dead TrustListener."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1018
    nop

    .end local v2    # "e":Landroid/os/DeadObjectException;
    add-int/lit8 v0, v0, -0x1

    .line 1021
    :goto_1
    nop

    .line 1012
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1023
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private dispatchUnlockAttempt(ZI)V
    .locals 3
    .param p1, "successful"    # Z
    .param p2, "userId"    # I

    .line 945
    if-eqz p1, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->allowTrustFromUnlock(I)V

    .line 948
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZ)V

    .line 951
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 952
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 953
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_1

    .line 954
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockAttempt(Z)V

    .line 951
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 957
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private dispatchUnlockLockout(II)V
    .locals 3
    .param p1, "timeoutMs"    # I
    .param p2, "userId"    # I

    .line 960
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 961
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 962
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_0

    .line 963
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockLockout(I)V

    .line 960
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 966
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 837
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 838
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 837
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 882
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 883
    const v1, 0x104016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "defaultTrustAgent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    const/4 v1, 0x0

    return-object v1

    .line 887
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private getSettingsAttrs(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/server/trust/TrustManagerService$SettingsAttrs;
    .locals 13
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 782
    const-string v0, "TrustManagerService"

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_a

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 784
    :cond_0
    const/4 v2, 0x0

    .line 785
    .local v2, "cn":Ljava/lang/String;
    const/4 v3, 0x0

    .line 787
    .local v3, "canUnlockProfile":Z
    const/4 v4, 0x0

    .line 788
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x0

    .line 790
    .local v5, "caughtException":Ljava/lang/Exception;
    :try_start_0
    iget-object v6, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v7, "android.service.trust.trustagent"

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v4, v6

    .line 792
    if-nez v4, :cond_2

    .line 793
    const-string v6, "Can\'t find android.service.trust.trustagent meta-data"

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    nop

    .line 821
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 794
    :cond_1
    return-object v1

    .line 796
    :cond_2
    :try_start_1
    iget-object v6, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    .line 797
    .local v6, "res":Landroid/content/res/Resources;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 799
    .local v7, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    move v9, v8

    .local v9, "type":I
    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eq v8, v10, :cond_3

    if-eq v9, v11, :cond_3

    goto :goto_0

    .line 803
    :cond_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 804
    .local v8, "nodeName":Ljava/lang/String;
    const-string/jumbo v10, "trust-agent"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 805
    const-string v10, "Meta-data does not start with trust-agent tag"

    invoke-static {v0, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    nop

    .line 821
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 806
    return-object v1

    .line 808
    :cond_4
    :try_start_2
    sget-object v10, Lcom/android/internal/R$styleable;->TrustAgent:[I

    .line 809
    invoke-virtual {v6, v7, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 810
    .local v10, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    .line 811
    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    move v3, v11

    .line 813
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 821
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v9    # "type":I
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    nop

    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    throw v0

    .line 818
    :catch_0
    move-exception v6

    .line 819
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v5, v6

    .line 821
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v4, :cond_6

    goto :goto_1

    .line 816
    :catch_1
    move-exception v6

    .line 817
    .local v6, "e":Ljava/io/IOException;
    move-object v5, v6

    .line 821
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_6

    goto :goto_1

    .line 814
    :catch_2
    move-exception v6

    .line 815
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v5, v6

    .line 821
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v4, :cond_6

    goto :goto_1

    .line 823
    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    .line 824
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 825
    return-object v1

    .line 827
    :cond_7
    if-nez v2, :cond_8

    .line 828
    return-object v1

    .line 830
    :cond_8
    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_9

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 833
    :cond_9
    new-instance v0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;-><init>(Landroid/content/ComponentName;Z)V

    return-object v0

    .line 783
    .end local v2    # "cn":Ljava/lang/String;
    .end local v3    # "canUnlockProfile":Z
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "caughtException":Ljava/lang/Exception;
    :cond_a
    :goto_3
    return-object v1
.end method

.method private handleScheduleTrustTimeout(II)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "shouldOverride"    # I

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba00

    add-long/2addr v0, v2

    .line 331
    .local v0, "when":J
    iget p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 332
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;

    .line 335
    .local v2, "alarm":Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
    const-string v3, "TrustManagerService"

    if-eqz v2, :cond_2

    .line 336
    if-nez p2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->isQueued()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    sget-boolean v4, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "Found existing trust timeout alarm. Skipping."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    return-void

    .line 340
    :cond_1
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    .line 342
    :cond_2
    new-instance v4, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;

    invoke-direct {v4, p0, p1}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    move-object v2, v4

    .line 343
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :goto_0
    sget-boolean v4, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "\tSetting up trust timeout alarm"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->setQueued(Z)V

    .line 348
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v10, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const-string v8, "TrustManagerService.trustTimeoutForUser"

    move-wide v6, v0

    move-object v9, v2

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 351
    return-void
.end method

.method private isTrustUsuallyManagedInternal(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1304
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1305
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    .line 1306
    .local v1, "i":I
    if-ltz v1, :cond_0

    .line 1307
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1309
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1311
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v1

    .line 1312
    .local v1, "persistedValue":Z
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    .line 1313
    :try_start_1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 1314
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 1316
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    monitor-exit v2

    return v3

    .line 1319
    :cond_1
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1320
    monitor-exit v2

    return v1

    .line 1322
    .end local v0    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1309
    .end local v1    # "persistedValue":Z
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 16
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I

    .line 842
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "trust_agents_initialized"

    invoke-static {v2, v4, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 844
    return-void

    .line 846
    :cond_0
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 847
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {v0, v2, v1}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v5

    .line 848
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/trust/TrustManagerService;->getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v6

    .line 849
    .local v6, "defaultAgent":Landroid/content/ComponentName;
    const/4 v7, 0x1

    if-eqz v6, :cond_1

    move v3, v7

    .line 850
    .local v3, "shouldUseDefaultAgent":Z
    :cond_1
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 852
    .local v8, "discoveredAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const-string v9, "TrustManagerService"

    if-eqz v3, :cond_2

    .line 853
    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 854
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Enabling "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " because it is a default agent."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 856
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 857
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {v0, v11}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v12

    .line 858
    .local v12, "componentName":Landroid/content/ComponentName;
    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 859
    .local v13, "applicationInfoFlags":I
    and-int/lit8 v14, v13, 0x1

    if-nez v14, :cond_3

    .line 860
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Leaving agent "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " disabled because package is not a system package."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    goto :goto_0

    .line 864
    :cond_3
    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 865
    .end local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "applicationInfoFlags":I
    goto :goto_0

    .line 868
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v9

    .line 869
    .local v9, "previouslyEnabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v9, :cond_5

    .line 870
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 872
    :cond_5
    move-object/from16 v10, p1

    invoke-virtual {v10, v8, v1}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 873
    iget-object v11, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v4, v7, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 875
    return-void
.end method

.method private maybeLockScreen(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 299
    iget v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-eq p1, v0, :cond_0

    .line 300
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->getLockWhenTrustLost()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v1, "TrustManagerService"

    if-eqz v0, :cond_1

    const-string v0, "Locking device because trust was lost"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Error locking screen when trust was lost"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;

    .line 314
    .local v0, "alarm":Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->getTrustAgentsExtendUnlock()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 316
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->setQueued(Z)V

    .line 319
    .end local v0    # "alarm":Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
    :cond_2
    return-void
.end method

.method private refreshDeviceLockedForUser(I)V
    .locals 13
    .param p1, "userId"    # I

    .line 637
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-gez p1, :cond_0

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshDeviceLockedForUser(userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v3, "TrustManagerService"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    const/4 p1, -0x1

    .line 643
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_0

    .line 646
    .end local v0    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .restart local v0    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    :goto_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 652
    .local v2, "wm":Landroid/view/IWindowManager;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 653
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 655
    .local v4, "info":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_6

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_6

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v5, :cond_2

    .line 656
    goto :goto_3

    .line 659
    :cond_2
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 660
    .local v5, "id":I
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    .line 662
    .local v6, "secure":Z
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    .line 663
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v6, :cond_6

    .line 664
    invoke-direct {p0, v5, v8}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    goto :goto_3

    .line 669
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v7

    .line 670
    .local v7, "trusted":Z
    const/4 v9, 0x1

    .line 671
    .local v9, "showingKeyguard":Z
    const/4 v10, 0x0

    .line 673
    .local v10, "biometricAuthenticated":Z
    iget v11, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v11, v5, :cond_4

    .line 674
    iget-object v11, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    monitor-enter v11

    .line 675
    :try_start_0
    iget-object v12, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12, v5, v8}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12

    move v10, v12

    .line 676
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    :try_start_1
    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v11
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v9, v11

    .line 680
    goto :goto_2

    .line 679
    :catch_0
    move-exception v11

    goto :goto_2

    .line 676
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 682
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    if-eqz v9, :cond_5

    if-nez v7, :cond_5

    if-nez v10, :cond_5

    move v8, v1

    .line 684
    .local v8, "deviceLocked":Z
    :cond_5
    invoke-direct {p0, v5, v8}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    .line 652
    .end local v4    # "info":Landroid/content/pm/UserInfo;
    .end local v5    # "id":I
    .end local v6    # "secure":Z
    .end local v7    # "trusted":Z
    .end local v8    # "deviceLocked":Z
    .end local v9    # "showingKeyguard":Z
    .end local v10    # "biometricAuthenticated":Z
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 686
    .end local v3    # "i":I
    :cond_7
    return-void
.end method

.method private removeAgentsOfPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "trustMayHaveChanged":Z
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 747
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 748
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting agent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TrustManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 751
    const/4 v0, 0x1

    .line 753
    :cond_0
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 754
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 746
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 757
    .end local v1    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 758
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    .line 760
    :cond_3
    return-void
.end method

.method private removeListener(Landroid/app/trust/ITrustListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    .line 981
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 982
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 983
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 984
    return-void

    .line 981
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 987
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 891
    sget-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const v1, 0xc0080

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 895
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 896
    .local v1, "allowedAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 897
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_0

    goto :goto_0

    .line 898
    :cond_0
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    goto :goto_0

    .line 899
    :cond_1
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 900
    .local v4, "packageName":Ljava/lang/String;
    const-string v5, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p1, v5, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 902
    invoke-direct {p0, v3}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    .line 903
    .local v6, "name":Landroid/content/ComponentName;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because package does not have permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "TrustManagerService"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    goto :goto_0

    .line 907
    .end local v6    # "name":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 909
    :cond_3
    return-object v1
.end method

.method private resolveProfileParent(I)I
    .locals 4
    .param p1, "userId"    # I

    .line 1326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1328
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1329
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    .line 1330
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1330
    return v3

    .line 1332
    :cond_0
    nop

    .line 1334
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1332
    return p1

    .line 1334
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private scheduleTrustTimeout(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "override"    # Z

    .line 322
    move v0, p2

    .line 323
    .local v0, "shouldOverride":I
    if-eqz p2, :cond_0

    .line 324
    const/4 v0, 0x1

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 327
    return-void
.end method

.method private setDeviceLockedForUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "locked"    # Z

    .line 690
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 691
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eq v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 692
    .local v1, "changed":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 693
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    if-eqz v1, :cond_2

    .line 695
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchDeviceLocked(IZ)V

    .line 697
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/security/KeyStore;->onUserLockedStateChanged(IZ)V

    .line 700
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 701
    .local v4, "profileHandle":I
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 702
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, v4, p2}, Landroid/security/KeyStore;->onUserLockedStateChanged(IZ)V

    .line 700
    .end local v4    # "profileHandle":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 706
    :cond_2
    return-void

    .line 693
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateTrust(IIZ)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "flags"    # I
    .param p3, "isFromUnlock"    # Z

    .line 391
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v0

    .line 392
    .local v0, "managed":Z
    invoke-direct {p0, v0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustManagedChanged(ZI)V

    .line 393
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 395
    invoke-direct {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrustUsuallyManaged(IZ)V

    .line 398
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v1

    .line 399
    .local v1, "trusted":Z
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 400
    .local v2, "wm":Landroid/view/IWindowManager;
    const/4 v3, 0x1

    .line 402
    .local v3, "showingKeyguard":Z
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 404
    goto :goto_0

    .line 403
    :catch_0
    move-exception v4

    .line 407
    :goto_0
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    monitor-enter v4

    .line 408
    :try_start_1
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService;->mSettingsObserver:Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->getTrustAgentsExtendUnlock()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    .line 412
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eq v5, v1, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v7

    .line 413
    .local v5, "changed":Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v3, :cond_2

    if-nez p3, :cond_2

    if-nez v5, :cond_3

    :cond_2
    iget v8, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne p1, v8, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    move v1, v8

    .line 416
    sget-boolean v8, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v8, :cond_6

    .line 417
    const-string v8, "TrustManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Extend unlock setting trusted as "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " && "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_4

    move v10, v6

    goto :goto_3

    :cond_4
    move v10, v7

    .line 418
    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " && "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne p1, v10, :cond_5

    move v10, v6

    goto :goto_4

    :cond_5
    move v10, v7

    .line 419
    :goto_4
    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 417
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v5    # "changed":Z
    :cond_6
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eq v5, v1, :cond_7

    goto :goto_5

    :cond_7
    move v6, v7

    :goto_5
    move v5, v6

    .line 423
    .restart local v5    # "changed":Z
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 424
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustChanged(ZII)V

    .line 426
    if-eqz v5, :cond_9

    .line 427
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    .line 428
    if-nez v1, :cond_8

    .line 429
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->maybeLockScreen(I)V

    goto :goto_6

    .line 431
    :cond_8
    invoke-direct {p0, p1, v7}, Lcom/android/server/trust/TrustManagerService;->scheduleTrustTimeout(IZ)V

    .line 434
    :cond_9
    :goto_6
    return-void

    .line 424
    .end local v5    # "changed":Z
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method private updateTrustAll()V
    .locals 5

    .line 379
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 380
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 381
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 382
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 383
    :cond_0
    return-void
.end method

.method private updateTrustUsuallyManaged(IZ)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "managed"    # Z

    .line 437
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 439
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 443
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    .line 444
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    .line 443
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 446
    return-void

    .line 439
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addEscrowToken([BI)J
    .locals 2
    .param p1, "token"    # [B
    .param p2, "userId"    # I

    .line 449
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Lcom/android/server/trust/-$$Lambda$TrustManagerService$fEkVwjahpkATIGtXudiFOG8VXOo;

    invoke-direct {v1, p0}, Lcom/android/server/trust/-$$Lambda$TrustManagerService$fEkVwjahpkATIGtXudiFOG8VXOo;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method isDeviceLockedInner(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 627
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 629
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEscrowTokenActive(JI)Z
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 460
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$addEscrowToken$0$TrustManagerService(JI)V
    .locals 0
    .param p1, "handle"    # J
    .param p3, "userid"    # I

    .line 451
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/trust/TrustManagerService;->dispatchEscrowTokenActivatedLocked(JI)V

    .line 452
    return-void
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .line 204
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 210
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;->register(Landroid/content/Context;)V

    .line 211
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    goto :goto_0

    .line 212
    :cond_1
    const/16 v0, 0x258

    if-ne p1, v0, :cond_2

    .line 213
    iput-boolean v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 214
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 215
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    goto :goto_0

    .line 216
    :cond_2
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 219
    :cond_3
    :goto_0
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1051
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1052
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    const-string/jumbo v1, "trust"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/trust/TrustManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 200
    return-void
.end method

.method public onStartUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1046
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1047
    return-void
.end method

.method public onStopUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1066
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1067
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1056
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1057
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1061
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1062
    return-void
.end method

.method refreshAgentList(I)V
    .locals 26
    .param p1, "userIdOrAll"    # I

    .line 472
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    const-string v3, "TrustManagerService"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshAgentList("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    if-nez v2, :cond_1

    .line 474
    return-void

    .line 476
    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-gez v1, :cond_2

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshAgentList(userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "here"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    const/4 v1, -0x1

    .line 481
    .end local p1    # "userIdOrAll":I
    .local v1, "userIdOrAll":I
    :cond_2
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 484
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x1

    if-ne v1, v2, :cond_3

    .line 485
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .local v6, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_0

    .line 487
    .end local v6    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .restart local v6    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v7, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :goto_0
    iget-object v7, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 492
    .local v7, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 493
    .local v8, "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/trust/TrustManagerService$AgentInfo;>;"
    iget-object v9, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 495
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 496
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v10, :cond_1f

    iget-boolean v12, v10, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v12, :cond_1f

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_1f

    iget-boolean v12, v10, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v12, :cond_5

    .line 497
    goto :goto_1

    .line 498
    :cond_5
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v12

    const-string/jumbo v13, "refreshAgentList: skipping user "

    if-nez v12, :cond_6

    .line 499
    sget-boolean v11, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": switchToByUser=false"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 503
    :cond_6
    iget-object v12, v0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget v14, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v14}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v12

    if-nez v12, :cond_7

    .line 504
    sget-boolean v11, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": user not started"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 508
    :cond_7
    iget v12, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v12

    if-nez v12, :cond_8

    .line 509
    sget-boolean v11, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": no secure credential"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 514
    :cond_8
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v12

    .line 515
    .local v12, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget v14, v10, Landroid/content/pm/UserInfo;->id:I

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v14}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v14

    .line 516
    .local v14, "disabledFeatures":I
    and-int/lit8 v16, v14, 0x10

    if-eqz v16, :cond_9

    move/from16 v16, v5

    goto :goto_2

    :cond_9
    const/16 v16, 0x0

    .line 519
    .local v16, "disableTrustAgents":Z
    :goto_2
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v11}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v11

    .line 520
    .local v11, "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v11, :cond_a

    .line 521
    sget-boolean v15, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v15, :cond_4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": no agents enabled by user"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 525
    :cond_a
    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, v4, v2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v2

    .line 526
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 527
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {v0, v5}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v15

    .line 529
    .local v15, "name":Landroid/content/ComponentName;
    invoke-interface {v11, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    move-object/from16 v21, v2

    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v21, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v2, " u"

    move-object/from16 v22, v6

    .end local v6    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v22, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const-string/jumbo v6, "refreshAgentList: skipping "

    if-nez v20, :cond_c

    .line 530
    sget-boolean v20, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v20, :cond_b

    move-object/from16 v20, v7

    .end local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .local v20, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": not enabled by user"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, v20

    goto :goto_4

    .end local v20    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_b
    move-object/from16 v20, v7

    .end local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v20    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :goto_4
    move-object/from16 v2, v21

    move-object/from16 v6, v22

    const/4 v5, 0x1

    const/4 v15, 0x0

    goto :goto_3

    .line 535
    .end local v20    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_c
    move-object/from16 v20, v7

    .end local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v20    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v16, :cond_f

    .line 536
    iget v7, v10, Landroid/content/pm/UserInfo;->id:I

    .line 537
    move-object/from16 v23, v9

    const/4 v9, 0x0

    invoke-virtual {v12, v9, v15, v7}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v7

    .line 539
    .local v7, "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    if-eqz v7, :cond_d

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 540
    :cond_d
    sget-boolean v9, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v9, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": not allowed by DPM"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v7, v20

    move-object/from16 v2, v21

    move-object/from16 v6, v22

    move-object/from16 v9, v23

    const/4 v5, 0x1

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 535
    .end local v7    # "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_f
    move-object/from16 v23, v9

    .line 546
    :cond_10
    new-instance v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>(Lcom/android/server/trust/TrustManagerService$1;)V

    .line 547
    .local v2, "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iput-object v15, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    .line 548
    iget v7, v10, Landroid/content/pm/UserInfo;->id:I

    iput v7, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 549
    iget-object v7, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 550
    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    .line 551
    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 552
    invoke-direct {v0, v4, v5}, Lcom/android/server/trust/TrustManagerService;->getSettingsAttrs(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    move-result-object v7

    iput-object v7, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    goto :goto_5

    .line 554
    :cond_11
    iget-object v7, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 555
    .local v7, "index":I
    iget-object v9, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 558
    .end local v7    # "index":I
    :goto_5
    const/4 v7, 0x0

    .line 559
    .local v7, "directUnlock":Z
    iget-object v9, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    if-eqz v9, :cond_13

    .line 560
    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v9, v9, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v9, :cond_12

    iget-object v9, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    iget-boolean v9, v9, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    goto :goto_6

    :cond_12
    const/4 v9, 0x0

    :goto_6
    move v7, v9

    .line 564
    :cond_13
    if-eqz v7, :cond_14

    .line 565
    sget-boolean v9, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v9, :cond_14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshAgentList: trustagent "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "of user "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "can unlock user profile."

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_14
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    iget v9, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v9}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v6

    if-nez v6, :cond_16

    if-nez v7, :cond_16

    .line 571
    sget-boolean v6, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v6, :cond_15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\'s trust agent "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": FBE still locked and  the agent cannot unlock user profile."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v7, v20

    move-object/from16 v2, v21

    move-object/from16 v6, v22

    move-object/from16 v9, v23

    const/4 v5, 0x1

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 577
    :cond_16
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v9, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v9}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 578
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v9, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v9}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v6

    .line 579
    .local v6, "flag":I
    const/16 v9, 0x8

    if-eq v6, v9, :cond_1a

    .line 580
    const/4 v9, 0x1

    if-ne v6, v9, :cond_18

    if-nez v7, :cond_17

    goto :goto_7

    :cond_17
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    goto :goto_8

    .line 582
    :cond_18
    :goto_7
    sget-boolean v19, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v19, :cond_19

    .line 583
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v4

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .local v24, "pm":Landroid/content/pm/PackageManager;
    iget v4, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": prevented by StrongAuthTracker = 0x"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    move-object/from16 v25, v5

    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .local v25, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget v5, v10, Landroid/content/pm/UserInfo;->id:I

    .line 585
    invoke-virtual {v4, v5}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 583
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, v20

    move-object/from16 v2, v21

    move-object/from16 v6, v22

    move-object/from16 v9, v23

    move-object/from16 v4, v24

    const/4 v5, 0x1

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 582
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_19
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v7, v20

    move-object/from16 v2, v21

    move-object/from16 v6, v22

    move-object/from16 v9, v23

    const/4 v5, 0x1

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 579
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1a
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_8

    .line 577
    .end local v6    # "flag":I
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1b
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    .line 592
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_8
    iget-object v4, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    if-nez v4, :cond_1c

    .line 593
    new-instance v4, Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 594
    invoke-virtual {v6, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-direct {v4, v5, v0, v6, v9}, Lcom/android/server/trust/TrustAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-object v4, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 597
    :cond_1c
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 598
    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 600
    :cond_1d
    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 602
    .end local v2    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v7    # "directUnlock":Z
    .end local v15    # "name":Landroid/content/ComponentName;
    .end local v25    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_9
    move-object/from16 v7, v20

    move-object/from16 v2, v21

    move-object/from16 v6, v22

    move-object/from16 v9, v23

    move-object/from16 v4, v24

    const/4 v5, 0x1

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 526
    .end local v20    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v21    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v22    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .local v6, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v7, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1e
    move-object/from16 v21, v2

    move-object/from16 v24, v4

    move-object/from16 v22, v6

    move-object/from16 v20, v7

    move-object/from16 v23, v9

    .line 603
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v11    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v12    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v14    # "disabledFeatures":I
    .end local v16    # "disableTrustAgents":Z
    .restart local v20    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v22    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    const/4 v2, -0x1

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 496
    .end local v20    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v22    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1f
    move-object/from16 v24, v4

    move-object/from16 v22, v6

    move-object/from16 v20, v7

    move-object/from16 v23, v9

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v20    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v22    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    const/4 v2, -0x1

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 605
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v20    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v22    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_20
    move-object/from16 v24, v4

    move-object/from16 v22, v6

    move-object/from16 v20, v7

    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v20    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v22    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 606
    .local v2, "trustMayHaveChanged":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    .line 607
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 608
    .local v4, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    const/4 v5, -0x1

    if-eq v1, v5, :cond_21

    iget v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v1, v5, :cond_23

    .line 609
    :cond_21
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 610
    const/4 v2, 0x1

    .line 612
    :cond_22
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 613
    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 606
    .end local v4    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 617
    .end local v3    # "i":I
    :cond_24
    if-eqz v2, :cond_26

    .line 618
    const/4 v3, -0x1

    if-ne v1, v3, :cond_25

    .line 619
    invoke-direct/range {p0 .. p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    goto :goto_b

    .line 621
    :cond_25
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 624
    :cond_26
    :goto_b
    return-void
.end method

.method public removeEscrowToken(JI)Z
    .locals 1
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 456
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method public resetAgent(Landroid/content/ComponentName;I)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 763
    const/4 v0, 0x0

    .line 764
    .local v0, "trustMayHaveChanged":Z
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 765
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 766
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne p2, v3, :cond_1

    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting agent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TrustManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 769
    const/4 v0, 0x1

    .line 771
    :cond_0
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 772
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 764
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 775
    .end local v1    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 776
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 778
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 779
    return-void
.end method

.method showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 468
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustError(Ljava/lang/CharSequence;)V

    .line 469
    return-void
.end method

.method public unlockUserWithToken(J[BI)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I

    .line 464
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->unlockUserWithToken(J[BI)Z

    .line 465
    return-void
.end method

.method updateDevicePolicyFeatures()V
    .locals 4

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 733
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 734
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 735
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    .line 736
    const/4 v0, 0x1

    .line 732
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 739
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 740
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustArchive;->logDevicePolicyChanged()V

    .line 742
    :cond_2
    return-void
.end method

.method public updateTrust(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 387
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZ)V

    .line 388
    return-void
.end method

.class public Lcom/android/server/wm/LockTaskController;
.super Ljava/lang/Object;
.source "LockTaskController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LockTaskController$LockTaskToken;
    }
.end annotation


# static fields
.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field private static final STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static final STATUS_BAR_MASK_LOCKED:I = 0x3a60000

.field static final STATUS_BAR_MASK_PINNED:I = 0x29f0000

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field private final mHandler:Landroid/os/Handler;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockTaskFeatures:Landroid/util/SparseIntArray;

.field private volatile mLockTaskModeState:I

.field private final mLockTaskModeTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockTaskPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDisableFromDismiss:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mToken:Landroid/os/IBinder;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    .line 109
    new-instance v1, Landroid/util/Pair;

    .line 110
    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 112
    sget-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 113
    const/high16 v2, 0x60000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 115
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 118
    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 121
    const/high16 v2, 0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 123
    sget-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 124
    nop

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 126
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/android/server/wm/LockTaskController$LockTaskToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/LockTaskController$LockTaskToken;-><init>(Lcom/android/server/wm/LockTaskController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 171
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 194
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 198
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 199
    iput-object p2, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 200
    iput-object p3, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    .line 201
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/LockTaskController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/LockTaskController;

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/LockTaskController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/LockTaskController;

    .line 89
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wm/LockTaskController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/LockTaskController;
    .param p1, "x1"    # I

    .line 89
    iput p1, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wm/LockTaskController;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/LockTaskController;

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 2

    .line 896
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 897
    nop

    .line 898
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 897
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 899
    if-nez v0, :cond_0

    .line 900
    const-string v0, "ActivityTaskManager"

    const-string v1, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    .line 910
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 912
    :cond_0
    return-object v0
.end method

.method private getLockTaskFeaturesForUser(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 877
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 884
    nop

    .line 885
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 884
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 886
    if-nez v0, :cond_0

    .line 887
    const-string v0, "StatusBarManager"

    const-string v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    .line 917
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0

    .line 921
    :cond_0
    return-object v0
.end method

.method private isBlockingInTaskEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 344
    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEmergencyCallTask(Lcom/android/server/wm/Task;)Z
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 363
    iget-object v0, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 364
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 365
    return v1

    .line 369
    :cond_0
    sget-object v2, Landroid/telecom/TelecomManager;->EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 370
    return v3

    .line 374
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    return v3

    .line 379
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 380
    .local v2, "tm":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 381
    .local v4, "dialerPackage":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 382
    return v3

    .line 385
    :cond_4
    return v1
.end method

.method private isKeyguardAllowed(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLockTaskModeViolationInternal(Lcom/android/server/wm/Task;Z)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isNewClearTask"    # Z

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 317
    return v1

    .line 321
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/LockTaskController;->isRecentsAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    return v1

    .line 326
    :cond_1
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/LockTaskController;->isKeyguardAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->isEmergencyCallTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    return v1

    .line 330
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isTaskWhitelisted(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private isRecentsAllowed(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRootTask(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lockKeyguardIfNeeded()V
    .locals 2

    .line 828
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->shouldLockKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 830
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 831
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 833
    :cond_0
    return-void
.end method

.method private lockTaskModeToString()Ljava/lang/String;
    .locals 2

    .line 941
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 945
    :cond_0
    const-string v0, "PINNED"

    return-object v0

    .line 943
    :cond_1
    const-string v0, "LOCKED"

    return-object v0

    .line 947
    :cond_2
    const-string v0, "NONE"

    return-object v0
.end method

.method private performStartLockTask(Ljava/lang/String;II)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockTaskModeState"    # I

    .line 635
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    .line 636
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V

    .line 639
    iput p3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 640
    invoke-direct {p0, p3, p2}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 641
    invoke-direct {p0, p3, p2}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    .line 642
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 643
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :cond_1
    nop

    .line 648
    return-void

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private performStopLockTask(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 508
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 509
    .local v0, "oldLockTaskModeState":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    .line 512
    :try_start_0
    iget v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 513
    iget v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    .line 514
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->lockKeyguardIfNeeded()V

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 518
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4, p1}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 520
    :cond_1
    if-ne v0, v2, :cond_2

    .line 521
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    .line 523
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    nop

    .line 527
    return-void

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private removeLockedTask(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    return-void

    .line 493
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLockedTask: removed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 495
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeLockedTask: task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " last task, reverting locktask mode. Callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 496
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$LockTaskController$NMEqFdnoSJ8A7QRxQO-ZoqXOmVc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$LockTaskController$NMEqFdnoSJ8A7QRxQO-ZoqXOmVc;-><init>(Lcom/android/server/wm/LockTaskController;Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    :cond_3
    return-void
.end method

.method private setKeyguardState(II)V
    .locals 3
    .param p1, "lockTaskModeState"    # I
    .param p2, "userId"    # I

    .line 778
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 779
    if-nez p1, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;I)V

    goto :goto_0

    .line 782
    :cond_0
    const/4 v0, 0x1

    const-string v1, "Lock-to-App"

    if-ne p1, v0, :cond_3

    .line 783
    invoke-direct {p0, p2}, Lcom/android/server/wm/LockTaskController;->isKeyguardAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;I)V

    goto :goto_0

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 789
    iput p2, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    .line 790
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/LockTaskController$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/wm/LockTaskController$1;-><init>(Lcom/android/server/wm/LockTaskController;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1, p2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_0

    .line 819
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1, p2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 821
    :goto_0
    return-void
.end method

.method private setLockTaskMode(Lcom/android/server/wm/Task;ILjava/lang/String;Z)V
    .locals 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "lockTaskModeState"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "andResume"    # Z

    .line 586
    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_1

    .line 587
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_0

    const-string v0, "setLockTaskMode: Can\'t lock due to auth"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    return-void

    .line 591
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    const-string v0, "setLockTaskMode: Attempt to start an unauthorized lock task."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-void

    .line 596
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 597
    .local v0, "taskIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 598
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v3, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/RecentTasks;->onLockTaskModeStateChanged(II)V

    .line 600
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$LockTaskController$mYEdosOvuhEWdcYLQrOC83U4Wms;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$LockTaskController$mYEdosOvuhEWdcYLQrOC83U4Wms;-><init>(Lcom/android/server/wm/LockTaskController;Landroid/content/Intent;Lcom/android/server/wm/Task;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    :cond_3
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLockTaskMode: Locking to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    .line 606
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 609
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_5
    iget v1, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 613
    iget v1, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    iput v1, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 616
    :cond_6
    if-eqz p4, :cond_8

    .line 617
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    move v7, v1

    move-object v3, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityStackSupervisor;->findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    .line 619
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 620
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 621
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_9

    .line 622
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_1

    .line 624
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_8
    if-eqz p2, :cond_9

    .line 625
    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v5, 0x0

    iget-object v1, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 626
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 627
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    const/4 v8, 0x1

    .line 625
    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_2

    .line 624
    :cond_9
    :goto_1
    nop

    .line 629
    :goto_2
    return-void
.end method

.method private setStatusBarState(II)V
    .locals 7
    .param p1, "lockTaskModeState"    # I
    .param p2, "userId"    # I

    .line 745
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 746
    .local v0, "statusBar":Lcom/android/internal/statusbar/IStatusBarService;
    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_0

    .line 747
    const-string v2, "Can\'t find StatusBarService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void

    .line 752
    :cond_0
    const/4 v2, 0x0

    .line 753
    .local v2, "flags1":I
    const/4 v3, 0x0

    .line 755
    .local v3, "flags2":I
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 756
    const/high16 v2, 0x29f0000

    goto :goto_0

    .line 758
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 759
    invoke-direct {p0, p2}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v4

    .line 760
    .local v4, "lockTaskFeatures":I
    invoke-virtual {p0, v4}, Lcom/android/server/wm/LockTaskController;->getStatusBarDisableFlags(I)Landroid/util/Pair;

    move-result-object v5

    .line 761
    .local v5, "statusBarFlags":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 762
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 766
    .end local v4    # "lockTaskFeatures":I
    .end local v5    # "statusBarFlags":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 767
    iget-object v4, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    goto :goto_1

    .line 768
    :catch_0
    move-exception v4

    .line 769
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Failed to set status bar flags"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private shouldLockKeyguard()Z
    .locals 7

    .line 839
    const/4 v0, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    .line 840
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_to_app_exit_locked"

    .line 839
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 842
    :catch_0
    move-exception v3

    .line 844
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    const v4, 0x534e4554

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "127605586"

    aput-object v6, v5, v2

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 845
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 241
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 242
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget v1, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 245
    invoke-direct {p0, v0}, Lcom/android/server/wm/LockTaskController;->isRootTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "ActivityTaskManager"

    const-string v2, "Not finishing task in lock task mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 248
    const/4 v1, 0x1

    return v1

    .line 250
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method canMoveTaskToBack(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 259
    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->isRootTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 261
    const/4 v0, 0x0

    return v0

    .line 263
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method clearLockedTask(Lcom/android/server/wm/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 467
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-lez v0, :cond_1

    .line 473
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 472
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 477
    .end local v0    # "taskNdx":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->removeLockedTask(Lcom/android/server/wm/Task;)V

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    return-void

    .line 481
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->performClearTaskLocked()V

    .line 482
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 483
    return-void

    .line 467
    :cond_3
    :goto_1
    return-void
.end method

.method clearLockedTasks(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 451
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearLockedTasks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 455
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LockTaskController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLockTaskModeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->lockTaskModeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLockTaskModeTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 932
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLockTaskPackages (userId:packages)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 935
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 934
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 937
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 938
    return-void
.end method

.method getLockTaskModeState()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    return v0
.end method

.method getRootTask()Lcom/android/server/wm/Task;
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getStatusBarDisableFlags(I)Landroid/util/Pair;
    .locals 5
    .param p1, "lockTaskFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 859
    const/high16 v0, 0x3ff0000

    .line 860
    .local v0, "flags1":I
    const/16 v1, 0x1f

    .line 861
    .local v1, "flags2":I
    sget-object v2, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 862
    sget-object v3, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 863
    .local v3, "statusBarFlags":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v4, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    .line 864
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    not-int v4, v4

    and-int/2addr v0, v4

    .line 865
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    not-int v4, v4

    and-int/2addr v1, v4

    .line 861
    .end local v3    # "statusBarFlags":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 869
    .end local v2    # "i":I
    :cond_1
    const/high16 v2, 0x3a60000

    and-int/2addr v0, v2

    .line 870
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method isActivityAllowed(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "lockTaskLaunchMode"    # I

    .line 349
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->isBlockingInTaskEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    if-eq p3, v1, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LockTaskController;->isPackageWhitelisted(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 354
    :cond_1
    return v1

    .line 356
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 350
    :cond_3
    :goto_0
    return v1
.end method

.method isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result v0

    return v0
.end method

.method isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isNewClearTask"    # Z

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/wm/Task;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 297
    const/4 v0, 0x1

    return v0

    .line 299
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isPackageWhitelisted(ILjava/lang/String;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 701
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 702
    return v0

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 706
    .local v1, "whitelist":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 707
    return v0

    .line 709
    :cond_1
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 710
    .local v4, "whitelistedPkg":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 711
    const/4 v0, 0x1

    return v0

    .line 709
    .end local v4    # "whitelistedPkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 714
    :cond_3
    return v0
.end method

.method isTaskLocked(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isTaskWhitelisted(Lcom/android/server/wm/Task;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 271
    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 279
    const/4 v0, 0x0

    return v0

    .line 275
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$removeLockedTask$0$LockTaskController(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 497
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/LockTaskController;->performStopLockTask(I)V

    return-void
.end method

.method public synthetic lambda$setLockTaskMode$1$LockTaskController(Landroid/content/Intent;Lcom/android/server/wm/Task;I)V
    .locals 2
    .param p1, "taskIntent"    # Landroid/content/Intent;
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "lockTaskModeState"    # I

    .line 600
    nop

    .line 601
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/android/server/wm/Task;->mUserId:I

    .line 600
    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/wm/LockTaskController;->performStartLockTask(Ljava/lang/String;II)V

    return-void
.end method

.method public synthetic lambda$updateLockTaskFeatures$2$LockTaskController(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 732
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 733
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    .line 734
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    .line 736
    :cond_0
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 208
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 209
    return-void
.end method

.method showLockTaskToast()V
    .locals 3

    .line 534
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 536
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEscapeToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityTaskManager"

    const-string v2, "Failed to send pinning escape toast"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method startLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isSystemCaller"    # Z
    .param p3, "callingUid"    # I

    .line 556
    const-string v0, "ActivityTaskManager"

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 557
    iput p3, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 558
    iget v2, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-ne v2, v1, :cond_2

    .line 561
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v1, :cond_0

    const-string v1, "Mode default, asking user"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 564
    .local v0, "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_1

    .line 565
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showScreenPinningRequest(I)V

    .line 567
    :cond_1
    return-void

    .line 572
    .end local v0    # "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_2
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v2, :cond_4

    .line 573
    if-eqz p2, :cond_3

    const-string v2, "Locking pinned"

    goto :goto_0

    :cond_3
    const-string v2, "Locking fully"

    .line 572
    :goto_0
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_4
    if-eqz p2, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    const-string v2, "startLockTask"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/wm/LockTaskController;->setLockTaskMode(Lcom/android/server/wm/Task;ILjava/lang/String;Z)V

    .line 576
    return-void
.end method

.method stopLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isSystemCaller"    # Z
    .param p3, "callingUid"    # I

    .line 408
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-nez v0, :cond_0

    .line 409
    return-void

    .line 412
    :cond_0
    if-eqz p2, :cond_2

    .line 413
    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 414
    const-string v0, "stopAppPinning"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LockTaskController;->clearLockedTasks(Ljava/lang/String;)V

    goto :goto_1

    .line 416
    :cond_1
    const-string v0, "ActivityTaskManager"

    const-string v1, "Attempted to stop LockTask with isSystemCaller=true"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    goto :goto_1

    .line 422
    :cond_2
    if-eqz p1, :cond_5

    .line 433
    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    if-eq p3, v0, :cond_4

    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    if-nez v0, :cond_3

    iget v0, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    if-ne p3, v0, :cond_3

    goto :goto_0

    .line 435
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid uid, expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " effectiveUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 442
    :goto_1
    return-void

    .line 423
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t stop LockTask for null task"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateLockTaskFeatures(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 724
    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    .line 725
    .local v0, "oldFlags":I
    if-ne p2, v0, :cond_0

    .line 726
    return-void

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 730
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mUserId:I

    if-ne p1, v1, :cond_1

    .line 731
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$LockTaskController$nuVptnoYwaF1CYydSggC_oxSSSc;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/-$$Lambda$LockTaskController$nuVptnoYwaF1CYydSggC_oxSSSc;-><init>(Lcom/android/server/wm/LockTaskController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 738
    :cond_1
    return-void
.end method

.method updateLockTaskPackages(I[Ljava/lang/String;)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 657
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "taskChanged":Z
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "taskNdx":I
    :goto_0
    const-string v3, "ActivityTaskManager"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ltz v1, :cond_7

    .line 661
    iget-object v6, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 662
    .local v6, "lockedTask":Lcom/android/server/wm/Task;
    iget v7, v6, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v8, 0x3

    if-eq v7, v5, :cond_1

    iget v7, v6, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    move v7, v4

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v2

    .line 664
    .local v7, "wasWhitelisted":Z
    :goto_2
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->setLockTaskAuth()V

    .line 665
    iget v9, v6, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eq v9, v5, :cond_2

    iget v5, v6, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-ne v5, v8, :cond_3

    :cond_2
    move v4, v2

    .line 668
    .local v4, "isWhitelisted":Z
    :cond_3
    iget v5, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-ne v5, v2, :cond_6

    iget v5, v6, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v5, p1, :cond_6

    if-eqz v7, :cond_6

    if-eqz v4, :cond_4

    .line 671
    goto :goto_3

    .line 675
    :cond_4
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onLockTaskPackagesUpdated: removing "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " mLockTaskAuth()="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 675
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/wm/LockTaskController;->removeLockedTask(Lcom/android/server/wm/Task;)V

    .line 678
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->performClearTaskLocked()V

    .line 679
    const/4 v0, 0x1

    .line 660
    .end local v4    # "isWhitelisted":Z
    .end local v6    # "lockedTask":Lcom/android/server/wm/Task;
    .end local v7    # "wasWhitelisted":Z
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 682
    .end local v1    # "taskNdx":I
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    sget-object v6, Lcom/android/server/wm/-$$Lambda$7nuK7cv058ES7c7refBFgc-jagk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$7nuK7cv058ES7c7refBFgc-jagk;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 684
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 685
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    .line 686
    .local v6, "task":Lcom/android/server/wm/Task;
    :goto_4
    iget-object v7, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v6, :cond_a

    iget v7, v6, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-ne v7, v5, :cond_a

    .line 689
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLockTaskPackagesUpdated: starting new locktask task="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_9
    const-string v3, "package updated"

    invoke-direct {p0, v6, v2, v3, v4}, Lcom/android/server/wm/LockTaskController;->setLockTaskMode(Lcom/android/server/wm/Task;ILjava/lang/String;Z)V

    .line 692
    const/4 v0, 0x1

    .line 695
    :cond_a
    if-eqz v0, :cond_b

    .line 696
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 698
    :cond_b
    return-void
.end method

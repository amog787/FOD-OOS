.class public Lcom/android/server/statusbar/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarManagerService$UiState;,
        Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;,
        Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;
    }
.end annotation


# static fields
.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "StatusBarManagerService"

.field private static mTopIsFullscreen:Z


# instance fields
.field private volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayUiState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/statusbar/StatusBarManagerService$UiState;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

.field private final mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

.field private mHandler:Landroid/os/Handler;

.field private mIcons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mSysUiVisToken:Landroid/os/IBinder;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 184
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    .line 216
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService$1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 503
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService$2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    .line 185
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 186
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 188
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 189
    const-class v0, Lcom/android/server/policy/GlobalActionsProvider;

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 192
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V

    .line 193
    .local v0, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    nop

    .line 196
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 197
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 198
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 74
    sput-boolean p0, Lcom/android/server/statusbar/StatusBarManagerService;->mTopIsFullscreen:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # Lcom/android/internal/statusbar/IStatusBar;

    .line 74
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/statusbar/StatusBarManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    .line 74
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)Lcom/android/server/notification/NotificationDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationDelegate;

    .line 74
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/statusbar/StatusBarManagerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->topAppWindowChanged(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/statusbar/StatusBarManagerService;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Landroid/graphics/Rect;
    .param p7, "x7"    # Landroid/graphics/Rect;
    .param p8, "x8"    # Z
    .param p9, "x9"    # Ljava/lang/String;

    .line 74
    invoke-direct/range {p0 .. p9}, Lcom/android/server/statusbar/StatusBarManagerService;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 74
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/statusbar/StatusBarManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p1, "x1"    # I

    .line 74
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    return p1
.end method

.method private disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "userId"    # I
    .param p3, "what"    # I
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "pkg"    # Ljava/lang/String;
    .param p6, "whichFlag"    # I

    .line 864
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 867
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v0

    .line 868
    .local v0, "net1":I
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v1

    .line 869
    .local v1, "net2":I
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v2

    .line 870
    .local v2, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    invoke-static {v2, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 871
    invoke-static {v2, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1600(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V

    .line 872
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yr21OX4Hyd_XfExwnVnVIn3Jfe4;

    invoke-direct {v4, p0, v0}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$yr21OX4Hyd_XfExwnVnVIn3Jfe4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 873
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v3, :cond_0

    .line 875
    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v3, p1, v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->disable(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    goto :goto_0

    .line 876
    :catch_0
    move-exception v3

    .line 880
    :cond_0
    :goto_0
    return-void
.end method

.method private enforceBiometricDialog()V
    .locals 3

    .line 1176
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIOMETRIC_DIALOG"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    return-void
.end method

.method private enforceExpandStatusBar()V
    .locals 3

    .line 1166
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    return-void
.end method

.method private enforceStatusBar()V
    .locals 3

    .line 1161
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    return-void
.end method

.method private enforceStatusBarOrShell()V
    .locals 2

    .line 1154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    .line 1155
    return-void

    .line 1157
    :cond_0
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 1158
    return-void
.end method

.method private enforceStatusBarService()V
    .locals 3

    .line 1171
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    return-void
.end method

.method private findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation

    .line 1559
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1560
    .local v0, "numRecords":I
    const/4 v1, 0x0

    .line 1562
    .local v1, "record":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1563
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1564
    .local v3, "r":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget-object v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_0

    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p2, :cond_0

    .line 1565
    move-object v1, v3

    .line 1566
    goto :goto_1

    .line 1562
    .end local v3    # "r":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1570
    :cond_1
    :goto_1
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private static final getUiContext()Landroid/content/Context;
    .locals 1

    .line 1627
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method private getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .locals 3
    .param p1, "displayId"    # I

    .line 1074
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1075
    .local v0, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    if-nez v0, :cond_0

    .line 1076
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V

    move-object v0, v1

    .line 1077
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1079
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$op_reboot$7(ZLjava/lang/String;Z)V
    .locals 3
    .param p0, "confirm"    # Z
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "wait"    # Z

    .line 1304
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->setShutdownDialogEnabled(Z)V

    .line 1306
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 1307
    .local v0, "pm":Landroid/os/IPowerManager;
    invoke-interface {v0, p0, p1, p2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    .end local v0    # "pm":Landroid/os/IPowerManager;
    goto :goto_0

    .line 1308
    :catch_0
    move-exception v0

    .line 1309
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to PowerManager reboot failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StatusBarManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1311
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$reboot$6(Z)V
    .locals 3
    .param p0, "safeMode"    # Z

    .line 1282
    if-eqz p0, :cond_0

    .line 1283
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1285
    :cond_0
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "userrequested"

    invoke-static {v0, v2, v1}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1288
    :goto_0
    return-void
.end method

.method static synthetic lambda$shutdown$5()V
    .locals 3

    .line 1265
    invoke-static {}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "userrequested"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private notifyBarAttachChanged()V
    .locals 2

    .line 1212
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UR67Ud0NgV9VHyelUmYzZNtR6O4;

    invoke-direct {v1, p0}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UR67Ud0NgV9VHyelUmYzZNtR6O4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1216
    return-void
.end method

.method private setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "vis"    # I
    .param p3, "fullscreenStackVis"    # I
    .param p4, "dockedStackVis"    # I
    .param p5, "mask"    # I
    .param p6, "fullscreenBounds"    # Landroid/graphics/Rect;
    .param p7, "dockedBounds"    # Landroid/graphics/Rect;
    .param p8, "isNavbarColorManagedByIme"    # Z
    .param p9, "cause"    # Ljava/lang/String;

    .line 1026
    move-object v8, p0

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1030
    iget-object v9, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1031
    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1033
    iget v3, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/high16 v0, 0x3ff0000

    and-int v4, p2, v0

    iget-object v5, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 1039
    monitor-exit v9

    .line 1040
    return-void

    .line 1039
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private topAppWindowChanged(IZ)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "menuVisible"    # Z

    .line 970
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 976
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;Z)V

    .line 978
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Ex4WQoiXjzWDsRHD7oXCkXIQBB4;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Ex4WQoiXjzWDsRHD7oXCkXIQBB4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 986
    monitor-exit v0

    .line 987
    return-void

    .line 986
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateUiVisibilityLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 18
    .param p1, "displayId"    # I
    .param p2, "vis"    # I
    .param p3, "fullscreenStackVis"    # I
    .param p4, "dockedStackVis"    # I
    .param p5, "mask"    # I
    .param p6, "fullscreenBounds"    # Landroid/graphics/Rect;
    .param p7, "dockedBounds"    # Landroid/graphics/Rect;
    .param p8, "isNavbarColorManagedByIme"    # Z

    .line 1046
    invoke-direct/range {p0 .. p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v7

    .line 1047
    .local v7, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    move-object v0, v7

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    move-object v0, v7

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;

    move-object v8, v2

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move/from16 v17, p8

    invoke-direct/range {v8 .. v17}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$u5u_W7qW5cMnzk9Qhp_oReST4Dc;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1047
    :cond_0
    move-object/from16 v0, p0

    .line 1063
    :goto_0
    return-void
.end method


# virtual methods
.method public addTile(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 579
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 581
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->addQsTile(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 587
    :cond_0
    :goto_0
    return-void
.end method

.method public clearNotificationEffects()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1235
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1236
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1238
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1241
    nop

    .line 1242
    return-void

    .line 1240
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 601
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 603
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->clickQsTile(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .line 609
    :cond_0
    :goto_0
    return-void
.end method

.method public collapsePanels()V
    .locals 1

    .line 544
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 546
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 552
    :cond_0
    :goto_0
    return-void
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 817
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 818
    return-void
.end method

.method public disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 839
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 840
    return-void
.end method

.method public disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 851
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 853
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 854
    const/4 v2, 0x0

    const/4 v7, 0x2

    move-object v1, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 855
    monitor-exit v0

    .line 856
    return-void

    .line 855
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 823
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 825
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IIILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 827
    monitor-exit v0

    .line 828
    return-void

    .line 827
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1592
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "StatusBarManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1595
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1596
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1597
    .local v2, "key":I
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1598
    .local v3, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1599
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mDisabled1=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$3200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mDisabled2=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1595
    .end local v2    # "key":I
    .end local v3    # "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1602
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1603
    .local v1, "N":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mDisableRecords.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1604
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1605
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1606
    .local v3, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1604
    .end local v3    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1608
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mCurrentUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1609
    const-string v2, "  mIcons="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1610
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1611
    .local v3, "slot":Ljava/lang/String;
    const-string v4, "    "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1613
    const-string v4, " -> "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1614
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 1615
    .local v4, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1616
    iget-object v5, v4, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1617
    const-string v5, " \""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1618
    iget-object v5, v4, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1619
    const-string v5, "\""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1621
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1622
    .end local v3    # "slot":Ljava/lang/String;
    .end local v4    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_2

    .line 1623
    .end local v1    # "N":I
    :cond_4
    monitor-exit v0

    .line 1624
    return-void

    .line 1623
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public expandNotificationsPanel()V
    .locals 1

    .line 532
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 534
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 540
    :cond_0
    :goto_0
    return-void
.end method

.method public expandSettingsPanel(Ljava/lang/String;)V
    .locals 1
    .param p1, "subPanel"    # Ljava/lang/String;

    .line 568
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 570
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    .line 576
    :cond_0
    :goto_0
    return-void
.end method

.method gatherDisableActionsLocked(II)I
    .locals 5
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 1575
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1577
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1578
    .local v1, "net":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1579
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1580
    .local v3, "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p1, :cond_0

    .line 1581
    invoke-virtual {v3, p2}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->getFlags(I)I

    move-result v4

    or-int/2addr v1, v4

    .line 1578
    .end local v3    # "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1584
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public getDisableFlags(Landroid/os/IBinder;I)[I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 890
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 892
    const/4 v0, 0x0

    .line 893
    .local v0, "disable1":I
    const/4 v1, 0x0

    .line 894
    .local v1, "disable2":I
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 896
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 897
    .local v3, "record":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    if-eqz v3, :cond_0

    .line 898
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    move v0, v4

    .line 899
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    move v1, v4

    .line 901
    .end local v3    # "record":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2

    .line 901
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getStatusBarIcons()[Ljava/lang/String;
    .locals 2

    .line 1512
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopIsFullscreen()Z
    .locals 2

    .line 1634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTopIsFullscreen mTopIsFullscreen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/statusbar/StatusBarManagerService;->mTopIsFullscreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    sget-boolean v0, Lcom/android/server/statusbar/StatusBarManagerService;->mTopIsFullscreen:Z

    return v0
.end method

.method public handleSystemKey(I)V
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 613
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 615
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->handleSystemKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 621
    :cond_0
    :goto_0
    return-void
.end method

.method public hideBiometricDialog()V
    .locals 1

    .line 690
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 691
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->hideBiometricDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    goto :goto_0

    .line 694
    :catch_0
    move-exception v0

    .line 697
    :cond_0
    :goto_0
    return-void
.end method

.method public hideFodDialog(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "reason"    # Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideFodDialog(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    .line 708
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$disableLocked$0$StatusBarManagerService(I)V
    .locals 1
    .param p1, "net1"    # I

    .line 872
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onSetDisabled(I)V

    return-void
.end method

.method public synthetic lambda$notifyBarAttachChanged$4$StatusBarManagerService()V
    .locals 2

    .line 1213
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    if-nez v0, :cond_0

    return-void

    .line 1214
    :cond_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsAvailableChanged(Z)V

    .line 1215
    return-void
.end method

.method public synthetic lambda$setImeWindowStatus$2$StatusBarManagerService(ILandroid/os/IBinder;IIZ)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "vis"    # I
    .param p4, "backDisposition"    # I
    .param p5, "showImeSwitcher"    # Z

    .line 1005
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-nez v0, :cond_0

    return-void

    .line 1007
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBar;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 1010
    return-void
.end method

.method public synthetic lambda$topAppWindowChanged$1$StatusBarManagerService(IZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "menuVisible"    # Z

    .line 979
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 981
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->topAppWindowChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    goto :goto_0

    .line 982
    :catch_0
    move-exception v0

    .line 985
    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$updateUiVisibilityLocked$3$StatusBarManagerService(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 11
    .param p1, "displayId"    # I
    .param p2, "vis"    # I
    .param p3, "fullscreenStackVis"    # I
    .param p4, "dockedStackVis"    # I
    .param p5, "mask"    # I
    .param p6, "fullscreenBounds"    # Landroid/graphics/Rect;
    .param p7, "dockedBounds"    # Landroid/graphics/Rect;
    .param p8, "isNavbarColorManagedByIme"    # Z

    .line 1052
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 1054
    :try_start_0
    iget-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/android/internal/statusbar/IStatusBar;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    goto :goto_0

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "StatusBarManagerService"

    const-string v3, "Can not get StatusBar!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "which"    # I

    .line 1527
    invoke-direct {p0, p3, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->findMatchingRecordLocked(Landroid/os/IBinder;I)Landroid/util/Pair;

    move-result-object v0

    .line 1528
    .local v0, "match":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1529
    .local v1, "i":I
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 1532
    .local v2, "record":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 1533
    if-eqz v2, :cond_0

    .line 1534
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1535
    iget-object v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1537
    :cond_0
    return-void

    .line 1541
    :cond_1
    if-eqz v2, :cond_3

    .line 1542
    invoke-virtual {v2, p2, p5, p4}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 1543
    invoke-virtual {v2}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1544
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1545
    iget-object v3, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1547
    :cond_2
    return-void

    .line 1551
    :cond_3
    new-instance v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    invoke-direct {v3, p0, p1, p3}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;)V

    move-object v2, v3

    .line 1552
    invoke-virtual {v2, p2, p5, p4}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->setFlags(IILjava/lang/String;)V

    .line 1553
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    return-void
.end method

.method public notifyNavBarColorChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .line 1643
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 1645
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBar;->notifyNavBarColorChanged(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1647
    goto :goto_0

    .line 1646
    :catch_0
    move-exception v0

    .line 1649
    :cond_0
    :goto_0
    return-void
.end method

.method public onBiometricAuthenticated(ZLjava/lang/String;)V
    .locals 1
    .param p1, "authenticated"    # Z
    .param p2, "failureReason"    # Ljava/lang/String;

    .line 657
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 658
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricAuthenticated(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 664
    :cond_0
    :goto_0
    return-void
.end method

.method public onBiometricError(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .line 679
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 680
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 686
    :cond_0
    :goto_0
    return-void
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 668
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 669
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricHelp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 675
    :cond_0
    :goto_0
    return-void
.end method

.method public onClearAllNotifications(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1482
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1483
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1484
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1485
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1487
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v0, v1, p1}, Lcom/android/server/notification/NotificationDelegate;->onClearAll(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1489
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1490
    nop

    .line 1491
    return-void

    .line 1489
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 201
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 211
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 205
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 207
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

.method public onFingerprintAcquired(II)V
    .locals 1
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 725
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->onFingerprintAcquired(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 731
    :cond_0
    :goto_0
    return-void
.end method

.method public onFingerprintAuthenticatedFailed()V
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 805
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->onFingerprintAuthenticatedFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .line 810
    :cond_0
    :goto_0
    return-void
.end method

.method public onFingerprintAuthenticatedSuccess()V
    .locals 3

    .line 750
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    const-string v1, "StatusBarManagerService"

    if-eqz v0, :cond_0

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->onFingerprintAuthenticatedSuccess()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 756
    :catch_0
    move-exception v0

    .line 758
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "Notify StatusBar onFingerprintAuthenticatedSuccess error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 760
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 763
    :cond_0
    const-string v0, "StatusBar is null object"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :goto_1
    return-void
.end method

.method public onFingerprintEnrollResult(I)V
    .locals 1
    .param p1, "remaining"    # I

    .line 735
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onFingerprintEnrollResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    .line 741
    :cond_0
    :goto_0
    return-void
.end method

.method public onFingerprintError(I)V
    .locals 1
    .param p1, "error"    # I

    .line 785
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onFingerprintError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    goto :goto_0

    .line 791
    :catch_0
    move-exception v0

    .line 794
    :cond_0
    :goto_0
    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 772
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 774
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->onBiometricHelp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    .line 778
    :cond_0
    :goto_0
    return-void
.end method

.method public onGlobalActionsHidden()V
    .locals 3

    .line 1332
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1335
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1338
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1335
    return-void

    .line 1336
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    invoke-interface {v2}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsDismissed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1338
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    nop

    .line 1340
    return-void

    .line 1338
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onGlobalActionsShown()V
    .locals 3

    .line 1320
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1321
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1323
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1326
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1323
    return-void

    .line 1324
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mGlobalActionListener:Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;

    invoke-interface {v2}, Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;->onGlobalActionsShown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1326
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1327
    nop

    .line 1328
    return-void

    .line 1326
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .locals 14
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "actionIndex"    # I
    .param p3, "action"    # Landroid/app/Notification$Action;
    .param p4, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;
    .param p5, "generatedByAssistant"    # Z

    .line 1359
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1360
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1361
    .local v9, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1362
    .local v10, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1364
    .local v11, "identity":J
    move-object v13, p0

    :try_start_0
    iget-object v1, v13, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move v2, v9

    move v3, v10

    move-object v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/server/notification/NotificationDelegate;->onNotificationActionClick(IILjava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1368
    nop

    .line 1369
    return-void

    .line 1367
    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationBubbleChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isBubble"    # Z

    .line 1495
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1496
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1498
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationBubbleChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1500
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1501
    nop

    .line 1502
    return-void

    .line 1500
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .param p5, "key"    # Ljava/lang/String;
    .param p6, "dismissalSurface"    # I
    .param p7, "dismissalSentiment"    # I
    .param p8, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;

    .line 1392
    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1393
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1394
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 1395
    .local v13, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1397
    .local v14, "identity":J
    move-object/from16 v11, p0

    :try_start_0
    iget-object v1, v11, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move v2, v12

    move v3, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-interface/range {v1 .. v11}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1401
    nop

    .line 1402
    return-void

    .line 1400
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "nv"    # Lcom/android/internal/statusbar/NotificationVisibility;

    .line 1344
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1345
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1346
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1347
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1349
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v0, v1, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1352
    nop

    .line 1353
    return-void

    .line 1351
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onNotificationDirectReplied(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1433
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1436
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationDirectReplied(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1439
    nop

    .line 1440
    return-void

    .line 1438
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "uid"    # I
    .param p5, "initialPid"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .line 1374
    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1376
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1377
    .local v12, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1380
    .local v13, "identity":J
    move-object/from16 v15, p0

    :try_start_0
    iget-object v1, v15, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move v2, v11

    move v3, v12

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/server/notification/NotificationDelegate;->onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1384
    nop

    .line 1385
    return-void

    .line 1383
    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z
    .param p4, "location"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1421
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1422
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1424
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationDelegate;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1427
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1428
    nop

    .line 1429
    return-void

    .line 1427
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationSettingsViewed(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1471
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1472
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1474
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSettingsViewed(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1477
    nop

    .line 1478
    return-void

    .line 1476
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "replyIndex"    # I
    .param p3, "reply"    # Ljava/lang/CharSequence;
    .param p4, "notificationLocation"    # I
    .param p5, "modifiedBeforeSending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1459
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1460
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1462
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1466
    nop

    .line 1467
    return-void

    .line 1465
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "smartReplyCount"    # I
    .param p3, "smartActionCount"    # I
    .param p4, "generatedByAssistant"    # Z
    .param p5, "editBeforeSending"    # Z

    .line 1445
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1448
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationDelegate;->onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1452
    nop

    .line 1453
    return-void

    .line 1451
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 3
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1408
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1409
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1411
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1415
    nop

    .line 1416
    return-void

    .line 1414
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onPanelHidden()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1246
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1247
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1249
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->onPanelHidden()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1252
    nop

    .line 1253
    return-void

    .line 1251
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onPanelRevealed(ZI)V
    .locals 3
    .param p1, "clearNotificationEffects"    # Z
    .param p2, "numItems"    # I

    .line 1224
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1225
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1227
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onPanelRevealed(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1230
    nop

    .line 1231
    return-void

    .line 1229
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1507
    new-instance v0, Lcom/android/server/statusbar/StatusBarShellCommand;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/statusbar/StatusBarShellCommand;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1509
    return-void
.end method

.method public op_reboot(ZLjava/lang/String;Z)V
    .locals 4
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .line 1297
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1300
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Y_z_rPNlGpnx9Xt0fP2CXEqQ_w8;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$Y_z_rPNlGpnx9Xt0fP2CXEqQ_w8;-><init>(ZLjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1314
    nop

    .line 1315
    return-void

    .line 1313
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public passSystemUIEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pass event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 1658
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->passSystemUIEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    goto :goto_0

    .line 1659
    :catch_0
    move-exception v0

    .line 1662
    :cond_0
    :goto_0
    return-void
.end method

.method public reboot(Z)V
    .locals 4
    .param p1, "safeMode"    # Z

    .line 1277
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1278
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1280
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xttpOmITnH77D9l5GEy2ZzWEGAg;

    invoke-direct {v3, p1}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$xttpOmITnH77D9l5GEy2ZzWEGAg;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1291
    nop

    .line 1292
    return-void

    .line 1290
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .locals 20
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;

    .line 1187
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerStatusBar bar="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StatusBarManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iput-object v2, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 1191
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mDeathRecipient:Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;

    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService$DeathRecipient;->linkToDeath()V

    .line 1192
    invoke-direct/range {p0 .. p0}, Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V

    .line 1194
    iget-object v3, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1195
    :try_start_0
    new-instance v5, Landroid/util/ArrayMap;

    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-direct {v5, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1196
    .local v5, "icons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1197
    iget-object v3, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1200
    :try_start_1
    iget-object v0, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mDisplayUiState:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 1201
    .local v0, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    new-instance v19, Lcom/android/internal/statusbar/RegisterStatusBarResult;

    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v6

    .line 1202
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2400(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v7

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v8

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2600(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v9

    .line 1203
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v10

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2800(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v11

    iget v4, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v12, 0x2

    .line 1204
    invoke-virtual {v1, v4, v12}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v12

    .line 1205
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v13

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$3000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I

    move-result v14

    .line 1206
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$3100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;

    move-result-object v16

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;

    move-result-object v17

    .line 1207
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v18

    move-object/from16 v4, v19

    invoke-direct/range {v4 .. v18}, Lcom/android/internal/statusbar/RegisterStatusBarResult;-><init>(Landroid/util/ArrayMap;IIZIIZIIILandroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    monitor-exit v3

    .line 1201
    return-object v19

    .line 1208
    .end local v0    # "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1196
    .end local v5    # "icons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;>;"
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public remTile(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 590
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 592
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->remQsTile(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 598
    :cond_0
    :goto_0
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "slot"    # Ljava/lang/String;

    .line 950
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 952
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 953
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 957
    :try_start_1
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    goto :goto_0

    .line 958
    :catch_0
    move-exception v1

    .line 961
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 962
    return-void

    .line 961
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;

    .line 909
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 911
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 912
    :try_start_0
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    move-object v1, v8

    .line 915
    .local v1, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 919
    :try_start_1
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 921
    goto :goto_0

    .line 920
    :catch_0
    move-exception v2

    .line 923
    .end local v1    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 924
    return-void

    .line 923
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visibility"    # Z

    .line 928
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 930
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 931
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 932
    .local v1, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v1, :cond_0

    .line 933
    monitor-exit v0

    return-void

    .line 935
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v2, p2, :cond_1

    .line 936
    iput-boolean p2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 938
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 940
    :try_start_1
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 942
    goto :goto_0

    .line 941
    :catch_0
    move-exception v2

    .line 945
    .end local v1    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 946
    return-void

    .line 945
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "vis"    # I
    .param p4, "backDisposition"    # I
    .param p5, "showImeSwitcher"    # Z

    .line 992
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 998
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v1

    invoke-static {v1, p3, p4, p5, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1800(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZLandroid/os/IBinder;)V

    .line 1004
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UEYsZUbySBvjdjRhx8OmRQFMSn4;

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UEYsZUbySBvjdjRhx8OmRQFMSn4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/os/IBinder;IIZ)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1011
    monitor-exit v0

    .line 1012
    return-void

    .line 1011
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSystemUiVisibility(IIILjava/lang/String;)V
    .locals 11
    .param p1, "displayId"    # I
    .param p2, "vis"    # I
    .param p3, "mask"    # I
    .param p4, "cause"    # Ljava/lang/String;

    .line 1016
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(I)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v0

    .line 1017
    .local v0, "state":Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    nop

    .line 1018
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$1900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;

    move-result-object v8

    .line 1019
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->access$2100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z

    move-result v9

    .line 1017
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move-object v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/statusbar/StatusBarManagerService;->setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/lang/String;)V

    .line 1020
    return-void
.end method

.method public showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .param p3, "type"    # I
    .param p4, "requireConfirmation"    # Z
    .param p5, "userId"    # I

    .line 646
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceBiometricDialog()V

    .line 647
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 649
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBar;->showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 653
    :cond_0
    :goto_0
    return-void
.end method

.method public showFodDialog(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "reason"    # Ljava/lang/String;

    .line 712
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->showFodDialog(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    goto :goto_0

    .line 715
    :catch_0
    move-exception v0

    .line 718
    :cond_0
    :goto_0
    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 1
    .param p1, "entering"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEnterExitToast(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 631
    :cond_0
    :goto_0
    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showPinningEscapeToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 641
    :cond_0
    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 1260
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 1261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1264
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UDezjj1c1F0KKrp-AAYUhMa21kk;->INSTANCE:Lcom/android/server/statusbar/-$$Lambda$StatusBarManagerService$UDezjj1c1F0KKrp-AAYUhMa21kk;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1269
    nop

    .line 1270
    return-void

    .line 1268
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public togglePanel()V
    .locals 1

    .line 556
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 558
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->togglePanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 564
    :cond_0
    :goto_0
    return-void
.end method

.method public toggleWxBus()V
    .locals 2

    .line 1668
    const-string v0, "StatusBarManagerService"

    const-string/jumbo v1, "toggleWxBus"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 1671
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleWxBus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1673
    goto :goto_0

    .line 1672
    :catch_0
    move-exception v0

    .line 1675
    :cond_0
    :goto_0
    return-void
.end method

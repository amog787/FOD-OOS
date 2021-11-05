.class public Lcom/android/server/accessibility/AccessibilityWindowManager;
.super Ljava/lang/Object;
.source "AccessibilityWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;,
        Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;,
        Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityWindowManager"

.field private static sNextWindowId:I


# instance fields
.field private final mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

.field private mAccessibilityFocusNodeId:J

.field private mAccessibilityFocusedDisplayId:I

.field private mAccessibilityFocusedWindowId:I

.field private final mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

.field private mActiveWindowId:I

.field private final mDisplayWindowsObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHostEmbeddedMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

.field private final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

.field private mTopFocusedDisplayId:I

.field private mTopFocusedWindowId:I

.field private mTopFocusedWindowToken:Landroid/os/IBinder;

.field private mTouchInteractionInProgress:Z

.field private final mWindowIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private final mWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;)V
    .locals 3
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p4, "accessibilityEventSender"    # Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;
    .param p5, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .param p6, "accessibilityUserManager"    # Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 89
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 90
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 91
    const-wide/32 v1, 0x7fffffff

    iput-wide v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 96
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    .line 842
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 843
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHandler:Landroid/os/Handler;

    .line 844
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 845
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    .line 846
    iput-object p5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 847
    iput-object p6, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 848
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 60
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;
    .param p1, "x1"    # I

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/AccessibilityWindowManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnectionLocked(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 60
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;
    .param p1, "x1"    # I

    .line 60
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 60
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;
    .param p1, "x1"    # I

    .line 60
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 60
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 60
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 60
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;
    .param p1, "x1"    # I

    .line 60
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/AccessibilityWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 60
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/accessibility/AccessibilityWindowManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;
    .param p1, "x1"    # I

    .line 60
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    return v0
.end method

.method private clearAccessibilityFocusLocked(I)V
    .locals 4
    .param p1, "windowId"    # I

    .line 1618
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityWindowManager$Ky3Q5Gg_NEaXwBlFb7wxyjIUci0;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityWindowManager$Ky3Q5Gg_NEaXwBlFb7wxyjIUci0;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 1621
    invoke-interface {v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1618
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1622
    return-void
.end method

.method private clearAccessibilityFocusMainThread(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "windowId"    # I

    .line 1626
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1627
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v1

    .line 1628
    .local v1, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-nez v1, :cond_0

    .line 1629
    monitor-exit v0

    return-void

    .line 1631
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1633
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->clearAccessibilityFocus()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1638
    goto :goto_0

    .line 1634
    :catch_0
    move-exception v0

    .line 1639
    :goto_0
    return-void

    .line 1631
    .end local v1    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private findFocusedWindowId(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 1583
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 1584
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1585
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v2

    monitor-exit v1

    return v2

    .line 1586
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    .locals 5
    .param p1, "windowId"    # I

    .line 1642
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1643
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1644
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 1645
    .local v2, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v2, :cond_0

    .line 1646
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1647
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->access$1300(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    return-object v3

    .line 1643
    .end local v2    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1651
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;",
            ">;"
        }
    .end annotation

    .line 1599
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1601
    .local v0, "connection":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;>;"
    if-nez v0, :cond_0

    .line 1602
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 1603
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1605
    :cond_0
    return-object v0
.end method

.method private getWindowTokensForUserLocked(I)Landroid/util/SparseArray;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 1609
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1610
    .local v0, "windowTokens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    if-nez v0, :cond_0

    .line 1611
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 1612
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1614
    :cond_0
    return-object v0
.end method

.method private isValidUserForInteractionConnectionsLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1590
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidUserForWindowTokensLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1594
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$Ky3Q5Gg_NEaXwBlFb7wxyjIUci0(Lcom/android/server/accessibility/AccessibilityWindowManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusMainThread(II)V

    return-void
.end method

.method private onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "windowId"    # I
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 1126
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-ne v0, p1, :cond_0

    .line 1127
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1129
    :cond_0
    if-eqz p2, :cond_1

    .line 1130
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowManagerInternal;->setAccessibilityIdToSurfaceMetadata(Landroid/os/IBinder;I)V

    .line 1133
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->unregisterIdLocked(I)V

    .line 1134
    return-void
.end method

.method private removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .locals 4
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;",
            ">;)I"
        }
    .end annotation

    .line 1075
    .local p2, "windowTokens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    .local p3, "interactionConnections":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1076
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1077
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1078
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1079
    .local v2, "windowId":I
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1080
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1081
    .local v3, "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->unlinkToDeath()V

    .line 1082
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1083
    return v2

    .line 1076
    .end local v2    # "windowId":I
    .end local v3    # "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1086
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private removeAccessibilityInteractionConnectionLocked(II)V
    .locals 2
    .param p1, "windowId"    # I
    .param p2, "userId"    # I

    .line 1096
    const/4 v0, 0x0

    .line 1097
    .local v0, "window":Landroid/os/IBinder;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/IBinder;

    .line 1099
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1100
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 1102
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForWindowTokensLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1103
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/IBinder;

    .line 1104
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1106
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForInteractionConnectionsLocked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1107
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1110
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    .line 1114
    return-void
.end method

.method private resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1221
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getHostTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 1222
    .local v0, "hostToken":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 1223
    return-object p1

    .line 1225
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method private setAccessibilityFocusedWindowLocked(I)V
    .locals 3
    .param p1, "windowId"    # I

    .line 1400
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-eq v0, p1, :cond_1

    .line 1401
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    const/16 v2, 0x80

    .line 1402
    invoke-static {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1401
    invoke-interface {v1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1406
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 1408
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1409
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1410
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 1411
    .local v2, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v2, :cond_0

    .line 1412
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->setAccessibilityFocusedWindowLocked(I)V

    .line 1409
    .end local v2    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1416
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private setActiveWindowLocked(I)V
    .locals 3
    .param p1, "windowId"    # I

    .line 1382
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-eq v0, p1, :cond_1

    .line 1383
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    const/16 v2, 0x20

    .line 1384
    invoke-static {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1383
    invoke-interface {v1, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1387
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1389
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1390
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1391
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 1392
    .local v2, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v2, :cond_0

    .line 1393
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->setActiveWindowLocked(I)V

    .line 1390
    .end local v2    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1397
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I
    .locals 17
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "leashToken"    # Landroid/os/IBinder;
    .param p3, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 946
    move-object/from16 v14, p0

    move/from16 v15, p5

    const/16 v16, 0x0

    .line 947
    .local v16, "shouldComputeWindows":Z
    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 948
    .local v13, "token":Landroid/os/IBinder;
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result v12

    .line 949
    .local v12, "displayId":I
    iget-object v11, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 953
    :try_start_0
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 954
    invoke-virtual {v0, v15}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 955
    .local v0, "resolvedUserId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 958
    .local v6, "resolvedUid":I
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 959
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v2

    .line 960
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 958
    move-object/from16 v4, p4

    :try_start_1
    invoke-virtual {v1, v4, v2, v0, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;III)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 962
    .end local p4    # "packageName":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    :try_start_2
    sget v1, Lcom/android/server/accessibility/AccessibilityWindowManager;->sNextWindowId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/server/accessibility/AccessibilityWindowManager;->sNextWindowId:I

    move v10, v1

    .line 966
    .local v10, "windowId":I
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, v15}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_0

    .line 967
    :try_start_3
    new-instance v8, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    const/4 v7, -0x1

    move-object v1, v8

    move-object/from16 v2, p0

    move v3, v10

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    move-object v1, v8

    .line 969
    .local v1, "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->linkToDeath()V

    .line 970
    iget-object v2, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 971
    iget-object v2, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v2, v10, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 976
    .end local v1    # "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    move-object/from16 p4, v5

    move v2, v10

    move-object v3, v11

    move v4, v12

    move-object v5, v13

    goto :goto_0

    .line 992
    .end local v0    # "resolvedUserId":I
    .end local v6    # "resolvedUid":I
    .end local v10    # "windowId":I
    :catchall_0
    move-exception v0

    move-object/from16 v1, p2

    move-object v4, v5

    move-object v3, v11

    move v2, v12

    move-object v5, v13

    goto/16 :goto_3

    .line 977
    .restart local v0    # "resolvedUserId":I
    .restart local v6    # "resolvedUid":I
    .restart local v10    # "windowId":I
    :cond_0
    :try_start_4
    new-instance v1, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v7, v1

    move-object/from16 v8, p0

    move v9, v10

    move v2, v10

    .end local v10    # "windowId":I
    .local v2, "windowId":I
    move-object/from16 v10, p3

    move-object v3, v11

    move-object v11, v5

    move v4, v12

    .end local v12    # "displayId":I
    .local v4, "displayId":I
    move v12, v6

    move-object/from16 p4, v5

    move-object v5, v13

    .end local v13    # "token":Landroid/os/IBinder;
    .local v5, "token":Landroid/os/IBinder;
    .restart local p4    # "packageName":Ljava/lang/String;
    move v13, v0

    :try_start_5
    invoke-direct/range {v7 .. v13}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 979
    .restart local v1    # "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->linkToDeath()V

    .line 980
    invoke-direct {v14, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 981
    invoke-direct {v14, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 988
    .end local v1    # "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :goto_0
    invoke-virtual {v14, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_1

    .line 989
    const/16 v16, 0x1

    .line 991
    :cond_1
    move-object/from16 v1, p2

    :try_start_6
    invoke-virtual {v14, v1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->registerIdLocked(Landroid/os/IBinder;I)V

    .line 992
    .end local v0    # "resolvedUserId":I
    .end local v6    # "resolvedUid":I
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 993
    if-eqz v16, :cond_2

    .line 994
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility(I)V

    .line 997
    :cond_2
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v5, v2}, Lcom/android/server/wm/WindowManagerInternal;->setAccessibilityIdToSurfaceMetadata(Landroid/os/IBinder;I)V

    .line 998
    return v2

    .line 992
    .end local v2    # "windowId":I
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v1, p2

    :goto_1
    move v2, v4

    move-object/from16 v4, p4

    goto :goto_3

    .end local v4    # "displayId":I
    .end local p4    # "packageName":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    .restart local v12    # "displayId":I
    .restart local v13    # "token":Landroid/os/IBinder;
    :catchall_3
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 p4, v5

    move-object v3, v11

    move-object v5, v13

    move-object/from16 v4, p4

    move v2, v12

    .end local v12    # "displayId":I
    .end local v13    # "token":Landroid/os/IBinder;
    .restart local v4    # "displayId":I
    .local v5, "token":Landroid/os/IBinder;
    .restart local p4    # "packageName":Ljava/lang/String;
    goto :goto_3

    .end local v4    # "displayId":I
    .end local v5    # "token":Landroid/os/IBinder;
    .restart local v12    # "displayId":I
    .restart local v13    # "token":Landroid/os/IBinder;
    :catchall_4
    move-exception v0

    move-object/from16 v1, p2

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v4, p4

    :goto_2
    move-object v3, v11

    move v2, v12

    move-object v5, v13

    .end local v12    # "displayId":I
    .end local v13    # "token":Landroid/os/IBinder;
    .end local p4    # "packageName":Ljava/lang/String;
    .local v2, "displayId":I
    .local v4, "packageName":Ljava/lang/String;
    .restart local v5    # "token":Landroid/os/IBinder;
    :goto_3
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_3
.end method

.method public associateEmbeddedHierarchyLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "host"    # Landroid/os/IBinder;
    .param p2, "embedded"    # Landroid/os/IBinder;

    .line 1192
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->associateLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 1193
    return-void
.end method

.method associateLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "embedded"    # Landroid/os/IBinder;
    .param p2, "host"    # Landroid/os/IBinder;

    .line 1661
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    return-void
.end method

.method public computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .locals 2
    .param p1, "windowId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 1237
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result p1

    .line 1238
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object v0

    .line 1239
    .local v0, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v1

    return v1

    .line 1243
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public disassociateEmbeddedHierarchyLocked(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1201
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->disassociateLocked(Landroid/os/IBinder;)V

    .line 1202
    return-void
.end method

.method disassociateLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1670
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1672
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1673
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1671
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1676
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1740
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1741
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1742
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 1743
    .local v2, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v2, :cond_0

    .line 1744
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1741
    .end local v2    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1747
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 2
    .param p1, "windowId"    # I

    .line 1426
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result p1

    .line 1427
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object v0

    .line 1428
    .local v0, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v0, :cond_0

    .line 1429
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    return-object v1

    .line 1431
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findWindowIdLocked(ILandroid/os/IBinder;)I
    .locals 3
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1171
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 1172
    .local v0, "globalIndex":I
    if-ltz v0, :cond_0

    .line 1173
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    return v1

    .line 1175
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForWindowTokensLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1176
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 1177
    .local v1, "userIndex":I
    if-ltz v1, :cond_1

    .line 1178
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    return v2

    .line 1181
    .end local v1    # "userIndex":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;
    .locals 2
    .param p1, "windowId"    # I

    .line 1442
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result p1

    .line 1443
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object v0

    .line 1444
    .local v0, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v0, :cond_0

    .line 1445
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v1

    return-object v1

    .line 1447
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getActiveWindowId(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 1374
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    if-nez v0, :cond_0

    .line 1376
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findFocusedWindowId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1378
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    return v0
.end method

.method public getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "windowId"    # I

    .line 1059
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1060
    .local v0, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForInteractionConnectionsLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1063
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1064
    return-object v0

    .line 1069
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDisplayIdByUserIdAndWindowIdLocked(II)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "windowId"    # I

    .line 1554
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object v0

    .line 1555
    .local v0, "windowToken":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result v1

    .line 1556
    .local v1, "displayId":I
    return v1
.end method

.method public getDisplayListLocked()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1566
    .local v0, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1567
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1568
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 1569
    .local v3, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v3, :cond_0

    .line 1570
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->access$1300(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    .end local v3    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1573
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public getFocusedWindowId(I)I
    .locals 1
    .param p1, "focusType"    # I

    .line 1458
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1459
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    return v0

    .line 1460
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1461
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    return v0

    .line 1463
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method getHostTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1733
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .locals 1

    .line 1512
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    return-object v0
.end method

.method public getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 5

    .line 1473
    const/4 v0, 0x0

    .line 1474
    .local v0, "windowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1475
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1476
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 1477
    .local v3, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v3, :cond_0

    .line 1478
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    move-object v0, v4

    if-eqz v4, :cond_0

    .line 1479
    goto :goto_1

    .line 1475
    .end local v3    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1483
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method getTokenLocked(I)Landroid/os/IBinder;
    .locals 1
    .param p1, "windowId"    # I

    .line 1709
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method getWindowIdLocked(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1719
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 1720
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1721
    return v0

    .line 1723
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    return v1
.end method

.method public getWindowListLocked(I)Ljava/util/List;
    .locals 2
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 923
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 924
    .local v0, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getWindowListLocked()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 927
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getWindowOwnerUserId(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 1160
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getWindowOwnerUserId(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "windowId"    # I

    .line 1145
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1146
    .local v0, "windowToken":Landroid/os/IBinder;
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isValidUserForWindowTokensLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/IBinder;

    .line 1149
    :cond_0
    return-object v0
.end method

.method public isTrackingWindowsLocked()Z
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 894
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 895
    const/4 v1, 0x1

    return v1

    .line 897
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isTrackingWindowsLocked(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 908
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 909
    .local v0, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->isTrackingWindowsLocked()Z

    move-result v1

    return v1

    .line 912
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public notifyOutsideTouch(II)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "targetWindowId"    # I

    .line 1521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    .local v0, "connectionList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;>;"
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1523
    nop

    .line 1524
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayWindowObserverByWindowIdLocked(I)Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    move-result-object v2

    .line 1525
    .local v2, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v2, :cond_0

    .line 1526
    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1527
    .local v3, "outsideWindowsIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1528
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1527
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1531
    .end local v2    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    .end local v3    # "outsideWindowsIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "i":I
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1532
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1533
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1534
    .local v2, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-eqz v2, :cond_1

    .line 1536
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->notifyOutsideTouch()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1541
    goto :goto_2

    .line 1537
    :catch_0
    move-exception v3

    .line 1532
    .end local v2    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1544
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 1531
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onTouchInteractionEnd()V
    .locals 4

    .line 1337
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 1347
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1348
    .local v2, "oldActiveWindow":I
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setActiveWindowLocked(I)V

    .line 1359
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 1360
    .local v1, "accessibilityFocusOnlyInActiveWindow":Z
    :cond_0
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-eq v2, v3, :cond_1

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-ne v3, v2, :cond_1

    if-eqz v1, :cond_1

    .line 1363
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    .line 1365
    .end local v1    # "accessibilityFocusOnlyInActiveWindow":Z
    .end local v2    # "oldActiveWindow":I
    :cond_1
    monitor-exit v0

    .line 1366
    return-void

    .line 1365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTouchInteractionStart()V
    .locals 2

    .line 1327
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1328
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 1329
    monitor-exit v0

    .line 1330
    return-void

    .line 1329
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method registerIdLocked(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "windowId"    # I

    .line 1685
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1686
    return-void
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 8
    .param p1, "window"    # Landroid/view/IWindow;

    .line 1007
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1011
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 1012
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1011
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    .line 1013
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1014
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalWindowTokens:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v2

    .line 1016
    .local v2, "removedWindowId":I
    if-ltz v2, :cond_0

    .line 1017
    invoke-direct {p0, v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    .line 1023
    monitor-exit v0

    return-void

    .line 1025
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1026
    .local v3, "userCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1027
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1028
    .local v5, "userId":I
    nop

    .line 1030
    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokensForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v6

    .line 1031
    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getInteractionConnectionsForUserLocked(I)Landroid/util/SparseArray;

    move-result-object v7

    .line 1029
    invoke-direct {p0, v1, v6, v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v6

    .line 1032
    .local v6, "removedWindowIdForUser":I
    if-ltz v6, :cond_1

    .line 1033
    invoke-direct {p0, v6, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onAccessibilityInteractionConnectionRemovedLocked(ILandroid/os/IBinder;)V

    .line 1040
    monitor-exit v0

    return-void

    .line 1026
    .end local v5    # "userId":I
    .end local v6    # "removedWindowIdForUser":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1043
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "removedWindowId":I
    .end local v3    # "userCount":I
    .end local v4    # "i":I
    :cond_2
    monitor-exit v0

    .line 1044
    return-void

    .line 1043
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resolveParentWindowIdLocked(I)I
    .locals 4
    .param p1, "windowId"    # I

    .line 1211
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getTokenLocked(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1212
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 1213
    return p1

    .line 1215
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveTopParentTokenLocked(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    .line 1216
    .local v1, "resolvedToken":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowIdLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 1217
    .local v2, "resolvedWindowId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, p1

    :goto_0
    return v3
.end method

.method public setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .locals 9
    .param p1, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1492
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1493
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    if-eqz v1, :cond_0

    .line 1494
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->unlinkToDeath()V

    .line 1495
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1497
    :cond_0
    if-eqz p1, :cond_1

    .line 1498
    new-instance v1, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    const/4 v4, -0x3

    const-string v6, "foo.bar.baz"

    const/16 v7, 0x3e8

    const/4 v8, -0x1

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    .line 1501
    .local v1, "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 1502
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->linkToDeath()V

    .line 1504
    .end local v1    # "wrapper":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :cond_1
    monitor-exit v0

    .line 1505
    return-void

    .line 1504
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startTrackingWindows(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 856
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 858
    .local v1, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-nez v1, :cond_0

    .line 859
    new-instance v2, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    invoke-direct {v2, p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;-><init>(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    move-object v1, v2

    .line 861
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->isTrackingWindowsLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    monitor-exit v0

    return-void

    .line 864
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->startTrackingWindowsLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 865
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 867
    .end local v1    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_2
    monitor-exit v0

    .line 868
    return-void

    .line 867
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopTrackingWindows(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 877
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 879
    .local v1, "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    if-eqz v1, :cond_0

    .line 880
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->stopTrackingWindowsLocked()V

    .line 881
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 883
    .end local v1    # "observer":Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
    :cond_0
    monitor-exit v0

    .line 884
    return-void

    .line 883
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregisterIdLocked(I)V
    .locals 2
    .param p1, "windowId"    # I

    .line 1694
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1695
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 1696
    return-void

    .line 1698
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->disassociateLocked(Landroid/os/IBinder;)V

    .line 1699
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1700
    return-void
.end method

.method public updateActiveAndAccessibilityFocusedWindowLocked(IIJII)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "windowId"    # I
    .param p3, "nodeId"    # J
    .param p5, "eventType"    # I
    .param p6, "eventAction"    # I

    .line 1266
    const/16 v0, 0x20

    if-eq p5, v0, :cond_7

    const/16 v0, 0x80

    if-eq p5, v0, :cond_5

    const v0, 0x8000

    if-eq p5, v0, :cond_3

    const/high16 v0, 0x10000

    if-eq p5, v0, :cond_0

    goto :goto_0

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1306
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    cmp-long v1, v1, p3

    const-wide/32 v2, 0x7fffffff

    if-nez v1, :cond_1

    .line 1307
    iput-wide v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 1311
    :cond_1
    iget-wide v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-ne v1, p2, :cond_2

    const/16 v1, 0x40

    if-eq p6, v1, :cond_2

    .line 1314
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 1315
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    .line 1317
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1295
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1296
    :try_start_1
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    if-eq v1, p2, :cond_4

    .line 1297
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    .line 1298
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setAccessibilityFocusedWindowLocked(I)V

    .line 1300
    :cond_4
    iput-wide p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusNodeId:J

    .line 1301
    monitor-exit v0

    .line 1302
    goto :goto_0

    .line 1301
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1287
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1288
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-eq v1, p2, :cond_6

    .line 1289
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setActiveWindowLocked(I)V

    .line 1291
    :cond_6
    monitor-exit v0

    .line 1292
    goto :goto_0

    .line 1291
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 1274
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1275
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1276
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findFocusedWindowId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 1277
    if-ne p2, v1, :cond_8

    .line 1278
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 1281
    :cond_8
    monitor-exit v0

    .line 1282
    nop

    .line 1320
    :goto_0
    return-void

    .line 1281
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1
.end method

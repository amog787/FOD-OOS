.class abstract Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AbstractAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;
.implements Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;,
        Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AbstractAccessibilityServiceConnection"

.field protected static final TAKE_SCREENSHOT:Ljava/lang/String; = "takeScreenshot"

.field private static final WAIT_WINDOWS_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private final mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field protected final mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field mCaptureFingerprintGestures:Z

.field final mComponentName:Landroid/content/ComponentName;

.field protected final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mEventDispatchHandler:Landroid/os/Handler;

.field mEventTypes:I

.field mFeedbackType:I

.field mFetchFlags:I

.field private final mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field final mId:I

.field public final mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

.field mIsDefault:Z

.field mLastAccessibilityButtonCallbackState:Z

.field protected final mLock:Ljava/lang/Object;

.field private final mMainHandler:Landroid/os/Handler;

.field mNotificationTimeout:J

.field final mOverlayWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field mReceivedAccessibilityButtonCallbackSinceBind:Z

.field mRequestAccessibilityButton:Z

.field mRequestFilterKeyEvents:Z

.field private mRequestMultiFingerGestures:Z

.field private mRequestTakeScreenshotTimestampMs:J

.field mRequestTouchExplorationMode:Z

.field mRetrieveInteractiveWindows:Z

.field protected final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

.field mService:Landroid/os/IBinder;

.field private mServiceHandlesDoubleTap:Z

.field mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private final mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

.field protected final mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

.field mUsesAccessibilityCache:Z

.field protected final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p4, "id"    # I
    .param p5, "mainHandler"    # Landroid/os/Handler;
    .param p6, "lock"    # Ljava/lang/Object;
    .param p7, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .param p8, "systemSupport"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
    .param p9, "windowManagerInternal"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p10, "systemActionPerfomer"    # Lcom/android/server/accessibility/SystemActionPerformer;
    .param p11, "a11yWindowManager"    # Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 246
    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 169
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 178
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    .line 247
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 248
    iput-object p9, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 249
    iput p4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 250
    iput-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 251
    iput-object p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 252
    iput-object p6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 253
    iput-object p7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 254
    iput-object p10, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 255
    iput-object p8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 256
    iput-object p5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    .line 257
    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 258
    iput-object p11, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 259
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 260
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPowerManager:Landroid/os/PowerManager;

    .line 261
    nop

    .line 262
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 261
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 263
    new-instance v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$1;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    .line 272
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p3, "x3"    # Z

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyGestureInternal(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 99
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyClearAccessibilityCacheInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/graphics/Region;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Region;
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F

    .line 99
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyMagnificationChangedInternal(ILandroid/graphics/Region;FFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedInternal(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonClickedInternal(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p1, "x1"    # Z

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedInternal(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 99
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->notifySystemActionsChangedInternal()V

    return-void
.end method

.method private ensureWindowsAvailableTimedLocked(I)V
    .locals 8
    .param p1, "displayId"    # I

    .line 1506
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowListLocked(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1507
    return-void

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1513
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 1516
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1517
    return-void

    .line 1521
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1522
    .local v0, "startMillis":J
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowListLocked(I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1523
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 1524
    .local v2, "elapsedMillis":J
    const-wide/16 v4, 0x1388

    sub-long/2addr v4, v2

    .line 1525
    .local v4, "remainMillis":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_3

    .line 1526
    return-void

    .line 1529
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v6, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1532
    goto :goto_1

    .line 1530
    :catch_0
    move-exception v6

    .line 1533
    .end local v2    # "elapsedMillis":J
    .end local v4    # "remainMillis":J
    :goto_1
    goto :goto_0

    .line 1534
    :cond_4
    return-void
.end method

.method private getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;
    .locals 2

    .line 1478
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    monitor-exit v0

    return-object v1

    .line 1480
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getWindowsByDisplayLocked(I)Ljava/util/List;
    .locals 7
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 1630
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1631
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowListLocked(I)Ljava/util/List;

    move-result-object v0

    .line 1632
    .local v0, "internalWindowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-nez v0, :cond_0

    .line 1633
    const/4 v1, 0x0

    return-object v1

    .line 1635
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1636
    .local v1, "returnedWindowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1637
    .local v2, "windowCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1638
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 1639
    .local v4, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    nop

    .line 1640
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v5

    .line 1641
    .local v5, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 1642
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1637
    .end local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v5    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1644
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method static synthetic lambda$sendScreenshotFailure$1(ILandroid/os/RemoteCallback;Ljava/lang/Object;)V
    .locals 2
    .param p0, "errorCode"    # I
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .param p2, "nonArg"    # Ljava/lang/Object;

    .line 1065
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1066
    .local v0, "payload":Landroid/os/Bundle;
    const-string/jumbo v1, "screenshot_status"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1068
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1069
    return-void
.end method

.method private notifyAccessibilityButtonAvailabilityChangedInternal(Z)V
    .locals 4
    .param p1, "available"    # Z

    .line 1423
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    if-ne v0, p1, :cond_0

    .line 1425
    return-void

    .line 1427
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 1428
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLastAccessibilityButtonCallbackState:Z

    .line 1429
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1430
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_1

    .line 1432
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonAvailabilityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1437
    goto :goto_0

    .line 1433
    :catch_0
    move-exception v1

    .line 1434
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending accessibility button availability change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method private notifyAccessibilityButtonClickedInternal(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 1411
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1412
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_0

    .line 1414
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityButtonClicked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    goto :goto_0

    .line 1415
    :catch_0
    move-exception v1

    .line 1416
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending accessibility button click to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1419
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 5
    .param p1, "eventType"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p3, "serviceWantsEvent"    # Z

    .line 1290
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1291
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1295
    .local v1, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-nez v1, :cond_0

    .line 1296
    monitor-exit v0

    return-void

    .line 1302
    :cond_0
    if-nez p2, :cond_2

    .line 1319
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityEvent;

    move-object p2, v2

    .line 1320
    if-nez p2, :cond_1

    .line 1321
    monitor-exit v0

    return-void

    .line 1323
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1325
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1326
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    goto :goto_0

    .line 1328
    :cond_3
    const/4 v2, 0x0

    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 1330
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V

    .line 1331
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1334
    :try_start_1
    invoke-interface {v1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1341
    nop

    :goto_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1342
    goto :goto_2

    .line 1341
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1338
    :catch_0
    move-exception v0

    .line 1339
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "AbstractAccessibilityServiceConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1341
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_1

    .line 1343
    :goto_2
    return-void

    .line 1341
    :goto_3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1342
    throw v0

    .line 1331
    .end local v1    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private notifyClearAccessibilityCacheInternal()V
    .locals 4

    .line 1466
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1467
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_0

    .line 1469
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->clearAccessibilityCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    goto :goto_0

    .line 1470
    :catch_0
    move-exception v1

    .line 1471
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AbstractAccessibilityServiceConnection"

    const-string v3, "Error during requesting accessibility info cache to be cleared."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1475
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyGestureInternal(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 4
    .param p1, "gestureInfo"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 1442
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1443
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_0

    .line 1445
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    goto :goto_0

    .line 1446
    :catch_0
    move-exception v1

    .line 1447
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error during sending gesture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1451
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifyMagnificationChangedInternal(ILandroid/graphics/Region;FFF)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "scale"    # F
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F

    .line 1384
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v6

    .line 1385
    .local v6, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v6, :cond_0

    .line 1387
    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onMagnificationChanged(ILandroid/graphics/Region;FFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    goto :goto_0

    .line 1388
    :catch_0
    move-exception v0

    .line 1389
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending magnification changes to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbstractAccessibilityServiceConnection"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1392
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifySoftKeyboardShowModeChangedInternal(I)V
    .locals 4
    .param p1, "showState"    # I

    .line 1399
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1400
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_0

    .line 1402
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSoftKeyboardShowModeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    goto :goto_0

    .line 1403
    :catch_0
    move-exception v1

    .line 1404
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending soft keyboard show mode changes to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1408
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private notifySystemActionsChangedInternal()V
    .locals 4

    .line 1454
    invoke-direct {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 1455
    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v0, :cond_0

    .line 1457
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSystemActionsChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    goto :goto_0

    .line 1458
    :catch_0
    move-exception v1

    .line 1459
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending system actions change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AbstractAccessibilityServiceConnection"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1463
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private performAccessibilityActionInternal(IIJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
    .locals 23
    .param p1, "userId"    # I
    .param p2, "resolvedWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "action"    # I
    .param p6, "arguments"    # Landroid/os/Bundle;
    .param p7, "interactionId"    # I
    .param p8, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p9, "fetchFlags"    # I
    .param p10, "interrogatingTid"    # J

    .line 1549
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v15, p5

    const/4 v4, 0x0

    .line 1550
    .local v4, "activityToken":Landroid/os/IBinder;
    iget-object v5, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1551
    :try_start_0
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v0

    .line 1552
    .local v0, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    const/4 v13, 0x0

    if-nez v0, :cond_0

    .line 1553
    monitor-exit v5

    return v13

    .line 1555
    :cond_0
    const/16 v6, 0x40

    const/16 v16, 0x1

    if-eq v15, v6, :cond_2

    const/16 v6, 0x80

    if-ne v15, v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v13

    goto :goto_1

    :cond_2
    :goto_0
    move/from16 v6, v16

    .line 1557
    .local v6, "isA11yFocusAction":Z
    :goto_1
    if-nez v6, :cond_3

    .line 1558
    iget-object v7, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1559
    invoke-virtual {v7, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v7

    .line 1560
    .local v7, "windowInfo":Landroid/view/WindowInfo;
    if-eqz v7, :cond_3

    iget-object v8, v7, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v4, v8

    move-object v14, v4

    goto :goto_2

    .line 1562
    .end local v7    # "windowInfo":Landroid/view/WindowInfo;
    :cond_3
    move-object v14, v4

    .end local v4    # "activityToken":Landroid/os/IBinder;
    .local v14, "activityToken":Landroid/os/IBinder;
    :goto_2
    :try_start_1
    iget-object v4, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1563
    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1564
    .local v4, "a11yWindowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1565
    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v7

    if-eqz v7, :cond_4

    if-nez v6, :cond_4

    .line 1567
    iget-object v7, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v7

    move-object/from16 v17, v0

    goto :goto_3

    .line 1569
    .end local v0    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .end local v4    # "a11yWindowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v6    # "isA11yFocusAction":Z
    :catchall_0
    move-exception v0

    move-object v4, v14

    goto/16 :goto_7

    .restart local v0    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :cond_4
    move-object/from16 v17, v0

    .end local v0    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .local v17, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    :goto_3
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1570
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 1571
    .local v18, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 1575
    .local v19, "identityToken":J
    :try_start_4
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    invoke-virtual {v0, v4, v5, v6, v13}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1578
    const/16 v0, 0x10

    if-eq v15, v0, :cond_5

    const/16 v0, 0x20

    if-ne v15, v0, :cond_6

    .line 1579
    :cond_5
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->notifyOutsideTouch(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1581
    :cond_6
    if-eqz v14, :cond_7

    .line 1582
    :try_start_5
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1583
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setFocusedActivity(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 1594
    :catchall_1
    move-exception v0

    move-object/from16 v21, v14

    goto :goto_5

    .line 1588
    :catch_0
    move-exception v0

    move/from16 v22, v13

    move-object/from16 v21, v14

    goto :goto_6

    .line 1585
    :cond_7
    :goto_4
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, v18

    move/from16 v22, v13

    move-object/from16 v21, v14

    .end local v14    # "activityToken":Landroid/os/IBinder;
    .local v21, "activityToken":Landroid/os/IBinder;
    move-wide/from16 v13, p10

    :try_start_7
    invoke-interface/range {v4 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1594
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1595
    nop

    .line 1596
    return v16

    .line 1594
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 1588
    :catch_1
    move-exception v0

    goto :goto_6

    .line 1594
    .end local v21    # "activityToken":Landroid/os/IBinder;
    .restart local v14    # "activityToken":Landroid/os/IBinder;
    :catchall_3
    move-exception v0

    move-object/from16 v21, v14

    .end local v14    # "activityToken":Landroid/os/IBinder;
    .restart local v21    # "activityToken":Landroid/os/IBinder;
    :goto_5
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1595
    throw v0

    .line 1588
    .end local v21    # "activityToken":Landroid/os/IBinder;
    .restart local v14    # "activityToken":Landroid/os/IBinder;
    :catch_2
    move-exception v0

    move/from16 v22, v13

    move-object/from16 v21, v14

    .line 1592
    .end local v14    # "activityToken":Landroid/os/IBinder;
    .local v0, "re":Landroid/os/RemoteException;
    .restart local v21    # "activityToken":Landroid/os/IBinder;
    :goto_6
    nop

    .line 1594
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1592
    return v22

    .line 1569
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v17    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .end local v18    # "interrogatingPid":I
    .end local v19    # "identityToken":J
    .end local v21    # "activityToken":Landroid/os/IBinder;
    .restart local v14    # "activityToken":Landroid/os/IBinder;
    :catchall_4
    move-exception v0

    move-object/from16 v21, v14

    move-object/from16 v4, v21

    .end local v14    # "activityToken":Landroid/os/IBinder;
    .restart local v21    # "activityToken":Landroid/os/IBinder;
    goto :goto_7

    .end local v21    # "activityToken":Landroid/os/IBinder;
    .local v4, "activityToken":Landroid/os/IBinder;
    :catchall_5
    move-exception v0

    :goto_7
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0
.end method

.method private registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "magnificationController"    # Lcom/android/server/accessibility/MagnificationController;

    .line 910
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/MagnificationController;->isRegistered(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 911
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/MagnificationController;->register(I)V

    .line 913
    const/4 v0, 0x1

    return v0

    .line 915
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .locals 13
    .param p1, "originalCallback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p2, "resolvedWindowId"    # I
    .param p3, "interactionId"    # I
    .param p4, "interrogatingPid"    # I
    .param p5, "interrogatingTid"    # J

    .line 1614
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 1615
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureActionReplacingConnection()Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v2

    .line 1616
    .local v2, "pipActionReplacingConnection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    iget-object v3, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1617
    :try_start_0
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1618
    move v4, p2

    :try_start_1
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    .line 1619
    .local v0, "windowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 1623
    .end local v0    # "windowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1624
    new-instance v0, Lcom/android/server/accessibility/ActionReplacingCallback;

    .line 1625
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v8

    move-object v6, v0

    move-object v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-wide/from16 v11, p5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/accessibility/ActionReplacingCallback;-><init>(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;Landroid/view/accessibility/IAccessibilityInteractionConnection;IIJ)V

    .line 1624
    return-object v0

    .line 1621
    .restart local v0    # "windowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    return-object p1

    .line 1623
    .end local v0    # "windowInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move v4, p2

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .locals 2
    .param p1, "windowId"    # I
    .param p2, "focusType"    # I

    .line 1491
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result v0

    return v0

    .line 1494
    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 1495
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getFocusedWindowId(I)I

    move-result v0

    return v0

    .line 1497
    :cond_1
    return p1
.end method

.method private resolveAccessibilityWindowIdLocked(I)I
    .locals 2
    .param p1, "accessibilityWindowId"    # I

    .line 1484
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result v0

    return v0

    .line 1487
    :cond_0
    return p1
.end method

.method private sendScreenshotFailure(ILandroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 1064
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$g9riCCZ1Q65sgTLJyka5Kl5oFso;

    invoke-direct {v1, p1, p2}, Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$g9riCCZ1Q65sgTLJyka5Kl5oFso;-><init>(ILandroid/os/RemoteCallback;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 1069
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 1064
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1070
    return-void
.end method

.method private sendScreenshotSuccess(Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;Landroid/os/RemoteCallback;)V
    .locals 7
    .param p1, "screenshotBuffer"    # Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 1041
    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 1042
    .local v0, "graphicBuffer":Landroid/graphics/GraphicBuffer;
    nop

    .line 1043
    invoke-static {v0}, Landroid/hardware/HardwareBuffer;->createFromGraphicBuffer(Landroid/graphics/GraphicBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 1044
    .local v1, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    :try_start_0
    new-instance v2, Landroid/graphics/ParcelableColorSpace;

    .line 1045
    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/ParcelableColorSpace;-><init>(Landroid/graphics/ColorSpace;)V

    .line 1047
    .local v2, "colorSpace":Landroid/graphics/ParcelableColorSpace;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1048
    .local v3, "payload":Landroid/os/Bundle;
    const-string/jumbo v4, "screenshot_status"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1050
    const-string/jumbo v4, "screenshot_hardwareBuffer"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1052
    const-string/jumbo v4, "screenshot_colorSpace"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1053
    const-string/jumbo v4, "screenshot_timestamp"

    .line 1054
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1053
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1057
    invoke-virtual {p2, v3}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1058
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    .end local v2    # "colorSpace":Landroid/graphics/ParcelableColorSpace;
    .end local v3    # "payload":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1060
    .end local v1    # "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    :cond_0
    return-void

    .line 1042
    .restart local v1    # "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method private wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1257
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1258
    return v1

    .line 1261
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1262
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isImportantForAccessibility()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 1264
    return v1

    .line 1267
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 1268
    .local v0, "eventType":I
    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    and-int/2addr v2, v0

    if-eq v2, v0, :cond_2

    .line 1269
    return v1

    .line 1272
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    .line 1273
    .local v2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1274
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 1276
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method


# virtual methods
.method public canReceiveEventsLocked()Z
    .locals 1

    .line 341
    iget v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V
    .locals 0
    .param p1, "sequence"    # I
    .param p2, "gestureSteps"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "displayId"    # I

    .line 766
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1074
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    const-string v1, "AbstractAccessibilityServiceConnection"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service[label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 1077
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1076
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", feedbackType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 1079
    invoke-static {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1078
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eventTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 1082
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", notificationTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", requestA11yBtn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1085
    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1086
    monitor-exit v0

    .line 1087
    return-void

    .line 1086
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;
    .locals 26
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingTid"    # J
    .param p9, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    move-object/from16 v8, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 587
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v2, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 588
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 590
    monitor-exit v2

    return-object v9

    .line 592
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v10, v0

    .line 593
    .local v10, "resolvedWindowId":I
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 595
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v3

    .line 594
    invoke-virtual {v0, v3, v8, v10}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 596
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    .line 597
    monitor-exit v2

    return-object v9

    .line 599
    :cond_1
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 600
    invoke-interface {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v4

    .line 599
    invoke-virtual {v3, v4, v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v3

    move-object v11, v3

    .line 601
    .local v11, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-nez v11, :cond_2

    .line 602
    monitor-exit v2

    return-object v9

    .line 605
    :cond_2
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v3, v10, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 607
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 608
    const/4 v1, 0x0

    move-object/from16 v24, v1

    goto :goto_0

    .line 605
    :cond_3
    move-object/from16 v24, v1

    .line 610
    .end local v1    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v24, "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_0
    :try_start_1
    iget-object v1, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1, v10}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v22

    .line 611
    .end local v0    # "permissionGranted":Z
    .local v22, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 612
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 613
    return-object v9

    .line 615
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v25

    .line 616
    .local v25, "interrogatingPid":I
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move v3, v10

    move/from16 v4, p4

    move/from16 v5, v25

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 618
    .end local p5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 620
    .local v2, "identityToken":J
    :try_start_2
    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v12

    iget v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int v18, v0, p6

    move-wide/from16 v13, p2

    move-object/from16 v15, v24

    move/from16 v16, p4

    move-object/from16 v17, v1

    move/from16 v19, v25

    move-wide/from16 v20, p7

    move-object/from16 v23, p9

    invoke-interface/range {v12 .. v23}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V

    .line 623
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 624
    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v5

    .line 623
    invoke-virtual {v0, v4, v5}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 630
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    if-eqz v24, :cond_5

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 633
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 623
    :cond_5
    return-object v0

    .line 630
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    if-eqz v24, :cond_6

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 633
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 635
    :cond_6
    throw v0

    .line 625
    :catch_0
    move-exception v0

    .line 630
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    if-eqz v24, :cond_7

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 633
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 636
    :cond_7
    return-object v9

    .line 611
    .end local v1    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v2    # "identityToken":J
    .end local v10    # "resolvedWindowId":I
    .end local v11    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .end local v22    # "spec":Landroid/view/MagnificationSpec;
    .end local v25    # "interrogatingPid":I
    .restart local p5    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_1
    move-exception v0

    move-object/from16 v1, v24

    goto :goto_1

    .end local v24    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_2
    move-exception v0

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 26
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    move-object/from16 v8, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 526
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v2, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 527
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 529
    monitor-exit v2

    return-object v9

    .line 531
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v10, v0

    .line 532
    .local v10, "resolvedWindowId":I
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 534
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v3

    .line 533
    invoke-virtual {v0, v3, v8, v10}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 535
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    .line 536
    monitor-exit v2

    return-object v9

    .line 538
    :cond_1
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 539
    invoke-interface {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v4

    .line 538
    invoke-virtual {v3, v4, v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v3

    move-object v11, v3

    .line 540
    .local v11, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-nez v11, :cond_2

    .line 541
    monitor-exit v2

    return-object v9

    .line 544
    :cond_2
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v3, v10, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 546
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 547
    const/4 v1, 0x0

    move-object/from16 v24, v1

    goto :goto_0

    .line 544
    :cond_3
    move-object/from16 v24, v1

    .line 549
    .end local v1    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v24, "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_0
    :try_start_1
    iget-object v1, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1, v10}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v23

    .line 550
    .end local v0    # "permissionGranted":Z
    .local v23, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 551
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 552
    return-object v9

    .line 554
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v25

    .line 555
    .local v25, "interrogatingPid":I
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move v3, v10

    move/from16 v4, p5

    move/from16 v5, v25

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 557
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 559
    .local v2, "identityToken":J
    :try_start_2
    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v12

    iget v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v13, p2

    move-object/from16 v15, p4

    move-object/from16 v16, v24

    move/from16 v17, p5

    move-object/from16 v18, v1

    move/from16 v19, v0

    move/from16 v20, v25

    move-wide/from16 v21, p7

    invoke-interface/range {v12 .. v23}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 562
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 563
    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v5

    .line 562
    invoke-virtual {v0, v4, v5}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 569
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    if-eqz v24, :cond_5

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 572
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 562
    :cond_5
    return-object v0

    .line 569
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    if-eqz v24, :cond_6

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 572
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 574
    :cond_6
    throw v0

    .line 564
    :catch_0
    move-exception v0

    .line 569
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    if-eqz v24, :cond_7

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 572
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 575
    :cond_7
    return-object v9

    .line 550
    .end local v1    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v2    # "identityToken":J
    .end local v10    # "resolvedWindowId":I
    .end local v11    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .end local v23    # "spec":Landroid/view/MagnificationSpec;
    .end local v25    # "interrogatingPid":I
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_1
    move-exception v0

    move-object/from16 v1, v24

    goto :goto_1

    .end local v24    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_2
    move-exception v0

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 26
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "viewIdResName"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    move-object/from16 v8, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 465
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v2, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 466
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 468
    monitor-exit v2

    return-object v9

    .line 470
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v10, v0

    .line 471
    .local v10, "resolvedWindowId":I
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 473
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v3

    .line 472
    invoke-virtual {v0, v3, v8, v10}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 474
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    .line 475
    monitor-exit v2

    return-object v9

    .line 477
    :cond_1
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 478
    invoke-interface {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v4

    .line 477
    invoke-virtual {v3, v4, v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v3

    move-object v11, v3

    .line 479
    .local v11, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-nez v11, :cond_2

    .line 480
    monitor-exit v2

    return-object v9

    .line 483
    :cond_2
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v3, v10, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 485
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 486
    const/4 v1, 0x0

    move-object/from16 v24, v1

    goto :goto_0

    .line 483
    :cond_3
    move-object/from16 v24, v1

    .line 488
    .end local v1    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v24, "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_0
    :try_start_1
    iget-object v1, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1, v10}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v23

    .line 489
    .end local v0    # "permissionGranted":Z
    .local v23, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 490
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 491
    return-object v9

    .line 493
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v25

    .line 494
    .local v25, "interrogatingPid":I
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move v3, v10

    move/from16 v4, p5

    move/from16 v5, v25

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 496
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 498
    .local v2, "identityToken":J
    :try_start_2
    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v12

    iget v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v13, p2

    move-object/from16 v15, p4

    move-object/from16 v16, v24

    move/from16 v17, p5

    move-object/from16 v18, v1

    move/from16 v19, v0

    move/from16 v20, v25

    move-wide/from16 v21, p7

    invoke-interface/range {v12 .. v23}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 501
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 502
    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v5

    .line 501
    invoke-virtual {v0, v4, v5}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    if-eqz v24, :cond_5

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 511
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 501
    :cond_5
    return-object v0

    .line 508
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    if-eqz v24, :cond_6

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 511
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 513
    :cond_6
    throw v0

    .line 503
    :catch_0
    move-exception v0

    .line 508
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    if-eqz v24, :cond_7

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 511
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 514
    :cond_7
    return-object v9

    .line 489
    .end local v1    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v2    # "identityToken":J
    .end local v10    # "resolvedWindowId":I
    .end local v11    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .end local v23    # "spec":Landroid/view/MagnificationSpec;
    .end local v25    # "interrogatingPid":I
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_1
    move-exception v0

    move-object/from16 v1, v24

    goto :goto_1

    .end local v24    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_2
    move-exception v0

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 26
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "focusType"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    move-object/from16 v8, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 648
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v2, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 649
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 650
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    return-object v9

    .line 652
    :cond_0
    move/from16 v10, p1

    move/from16 v15, p4

    :try_start_1
    invoke-direct {v8, v10, v15}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdForFindFocusLocked(II)I

    move-result v0

    move v14, v0

    .line 654
    .local v14, "resolvedWindowId":I
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 656
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v3

    .line 655
    invoke-virtual {v0, v3, v8, v14}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 657
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    .line 658
    monitor-exit v2

    return-object v9

    .line 660
    :cond_1
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 661
    invoke-interface {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v4

    .line 660
    invoke-virtual {v3, v4, v14}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v3

    move-object/from16 v23, v3

    .line 662
    .local v23, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-nez v23, :cond_2

    .line 663
    monitor-exit v2

    return-object v9

    .line 666
    :cond_2
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v3, v14, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 668
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 669
    const/4 v1, 0x0

    move-object/from16 v24, v1

    goto :goto_0

    .line 666
    :cond_3
    move-object/from16 v24, v1

    .line 671
    .end local v1    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v24, "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_0
    :try_start_2
    iget-object v1, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1, v14}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v22

    .line 672
    .end local v0    # "permissionGranted":Z
    .local v22, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 673
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 674
    return-object v9

    .line 676
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v25

    .line 677
    .local v25, "interrogatingPid":I
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move v3, v14

    move/from16 v4, p5

    move/from16 v5, v25

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 679
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 681
    .local v2, "identityToken":J
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v11

    iget v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide/from16 v12, p2

    move v4, v14

    .end local v14    # "resolvedWindowId":I
    .local v4, "resolvedWindowId":I
    move/from16 v14, p4

    move-object/from16 v15, v24

    move/from16 v16, p5

    move-object/from16 v17, v1

    move/from16 v18, v0

    move/from16 v19, v25

    move-wide/from16 v20, p7

    :try_start_4
    invoke-interface/range {v11 .. v22}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 684
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 685
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v6

    .line 684
    invoke-virtual {v0, v5, v6}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 691
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 693
    if-eqz v24, :cond_5

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 694
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 684
    :cond_5
    return-object v0

    .line 691
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 686
    :catch_0
    move-exception v0

    goto :goto_2

    .line 691
    .end local v4    # "resolvedWindowId":I
    .restart local v14    # "resolvedWindowId":I
    :catchall_1
    move-exception v0

    move v4, v14

    .end local v14    # "resolvedWindowId":I
    .restart local v4    # "resolvedWindowId":I
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 693
    if-eqz v24, :cond_6

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 694
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 696
    :cond_6
    throw v0

    .line 686
    .end local v4    # "resolvedWindowId":I
    .restart local v14    # "resolvedWindowId":I
    :catch_1
    move-exception v0

    move v4, v14

    .line 691
    .end local v14    # "resolvedWindowId":I
    .restart local v4    # "resolvedWindowId":I
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 693
    if-eqz v24, :cond_7

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 694
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 697
    :cond_7
    return-object v9

    .line 672
    .end local v1    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v2    # "identityToken":J
    .end local v4    # "resolvedWindowId":I
    .end local v22    # "spec":Landroid/view/MagnificationSpec;
    .end local v23    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .end local v25    # "interrogatingPid":I
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_2
    move-exception v0

    move-object/from16 v1, v24

    goto :goto_3

    .end local v24    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_3
    move-exception v0

    move/from16 v10, p1

    :goto_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_3
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;
    .locals 26
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "direction"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 707
    move-object/from16 v8, p0

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 709
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    iget-object v2, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 710
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    .line 711
    monitor-exit v2

    return-object v9

    .line 713
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    move v10, v0

    .line 714
    .local v10, "resolvedWindowId":I
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 716
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v3

    .line 715
    invoke-virtual {v0, v3, v8, v10}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v0

    .line 717
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    .line 718
    monitor-exit v2

    return-object v9

    .line 720
    :cond_1
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v4, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 721
    invoke-interface {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v4

    .line 720
    invoke-virtual {v3, v4, v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    move-result-object v3

    move-object v11, v3

    .line 722
    .local v11, "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    if-nez v11, :cond_2

    .line 723
    monitor-exit v2

    return-object v9

    .line 726
    :cond_2
    iget-object v3, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v3, v10, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 728
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 729
    const/4 v1, 0x0

    move-object/from16 v24, v1

    goto :goto_0

    .line 726
    :cond_3
    move-object/from16 v24, v1

    .line 731
    .end local v1    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v24, "partialInteractiveRegion":Landroid/graphics/Region;
    :goto_0
    :try_start_1
    iget-object v1, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1, v10}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v23

    .line 732
    .end local v0    # "permissionGranted":Z
    .local v23, "spec":Landroid/view/MagnificationSpec;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 733
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 734
    return-object v9

    .line 736
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v25

    .line 737
    .local v25, "interrogatingPid":I
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move v3, v10

    move/from16 v4, p5

    move/from16 v5, v25

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v1

    .line 739
    .end local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .local v1, "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 741
    .local v2, "identityToken":J
    :try_start_2
    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v12

    iget v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    move-wide/from16 v13, p2

    move/from16 v15, p4

    move-object/from16 v16, v24

    move/from16 v17, p5

    move-object/from16 v18, v1

    move/from16 v19, v0

    move/from16 v20, v25

    move-wide/from16 v21, p7

    invoke-interface/range {v12 .. v23}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 744
    iget-object v0, v8, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 745
    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getUid()I

    move-result v5

    .line 744
    invoke-virtual {v0, v4, v5}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 751
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    if-eqz v24, :cond_5

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 754
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 744
    :cond_5
    return-object v0

    .line 751
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    if-eqz v24, :cond_6

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 754
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 756
    :cond_6
    throw v0

    .line 746
    :catch_0
    move-exception v0

    .line 751
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    if-eqz v24, :cond_7

    invoke-virtual {v11}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 754
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Region;->recycle()V

    .line 757
    :cond_7
    return-object v9

    .line 732
    .end local v1    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .end local v2    # "identityToken":J
    .end local v10    # "resolvedWindowId":I
    .end local v11    # "connection":Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
    .end local v23    # "spec":Landroid/view/MagnificationSpec;
    .end local v25    # "interrogatingPid":I
    .restart local p6    # "callback":Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    :catchall_1
    move-exception v0

    move-object/from16 v1, v24

    goto :goto_1

    .end local v24    # "partialInteractiveRegion":Landroid/graphics/Region;
    .local v1, "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_2
    move-exception v0

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public getCapabilities()I
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 1648
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getMagnificationCenterX(I)F
    .locals 6
    .param p1, "displayId"    # I

    .line 866
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 867
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 868
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 870
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 871
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    .line 872
    .local v1, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    nop

    .line 873
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z

    move-result v2

    .line 874
    .local v2, "registeredJustForThisCall":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 876
    .local v3, "identity":J
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->getCenterX(I)F

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 878
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 879
    if-eqz v2, :cond_1

    .line 880
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_1
    monitor-exit v0

    .line 876
    return v5

    .line 878
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 879
    if-eqz v2, :cond_2

    .line 880
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    .line 882
    :cond_2
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    throw v5

    .line 883
    .end local v1    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    .end local v2    # "registeredJustForThisCall":Z
    .end local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getMagnificationCenterY(I)F
    .locals 6
    .param p1, "displayId"    # I

    .line 888
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 890
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 892
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 893
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    .line 894
    .local v1, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    nop

    .line 895
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z

    move-result v2

    .line 896
    .local v2, "registeredJustForThisCall":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 898
    .local v3, "identity":J
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->getCenterY(I)F

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 901
    if-eqz v2, :cond_1

    .line 902
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_1
    monitor-exit v0

    .line 898
    return v5

    .line 900
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 901
    if-eqz v2, :cond_2

    .line 902
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    .line 904
    :cond_2
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    throw v5

    .line 905
    .end local v1    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    .end local v2    # "registeredJustForThisCall":Z
    .end local v3    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getMagnificationRegion(I)Landroid/graphics/Region;
    .locals 7
    .param p1, "displayId"    # I

    .line 842
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 844
    .local v1, "region":Landroid/graphics/Region;
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 845
    monitor-exit v0

    return-object v1

    .line 847
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 848
    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    .line 849
    .local v2, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    nop

    .line 850
    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->registerMagnificationIfNeeded(ILcom/android/server/accessibility/MagnificationController;)Z

    move-result v3

    .line 851
    .local v3, "registeredJustForThisCall":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 853
    .local v4, "identity":J
    :try_start_1
    invoke-virtual {v2, p1, v1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationRegion(ILandroid/graphics/Region;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    nop

    .line 856
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 857
    if-eqz v3, :cond_1

    .line 858
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    :cond_1
    monitor-exit v0

    .line 854
    return-object v1

    .line 856
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 857
    if-eqz v3, :cond_2

    .line 858
    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    .line 860
    :cond_2
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    throw v6

    .line 861
    .end local v1    # "region":Landroid/graphics/Region;
    .end local v2    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    .end local v3    # "registeredJustForThisCall":Z
    .end local v4    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getMagnificationScale(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 827
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 829
    const/high16 v1, 0x3f800000    # 1.0f

    monitor-exit v0

    return v1

    .line 831
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 832
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 834
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/MagnificationController;->getScale(I)F

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    return v2

    .line 836
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 837
    throw v2

    .line 831
    .end local v0    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getOverlayWindowToken(I)Landroid/os/IBinder;
    .locals 2
    .param p1, "displayId"    # I

    .line 1152
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1153
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    monitor-exit v0

    return-object v1

    .line 1154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getRelevantEventTypes()I
    .locals 2

    .line 361
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    if-eqz v0, :cond_0

    const v0, 0x41b83d

    goto :goto_0

    .line 362
    :cond_0
    const/16 v0, 0x20

    :goto_0
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    or-int/2addr v0, v1

    .line 361
    return v0
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    monitor-exit v0

    return-object v1

    .line 353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSystemActions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 806
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 808
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SystemActionPerformer;->getSystemActions()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 808
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 6
    .param p1, "windowId"    # I

    .line 426
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    const/4 v1, -0x1

    .line 428
    .local v1, "displayId":I
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 429
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 430
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v3

    .line 429
    invoke-virtual {v2, v3, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayIdByUserIdAndWindowIdLocked(II)I

    move-result v2

    move v1, v2

    .line 432
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->ensureWindowsAvailableTimedLocked(I)V

    .line 434
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 435
    monitor-exit v0

    return-object v3

    .line 437
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 438
    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    .line 439
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_2

    .line 440
    monitor-exit v0

    return-object v3

    .line 442
    :cond_2
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v4, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 443
    monitor-exit v0

    return-object v3

    .line 445
    :cond_3
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 446
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    .line 447
    .local v4, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v4, :cond_4

    .line 448
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    .line 449
    .local v3, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v5, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 450
    monitor-exit v0

    return-object v3

    .line 452
    .end local v3    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_4
    monitor-exit v0

    return-object v3

    .line 453
    .end local v1    # "displayId":I
    .end local v2    # "permissionGranted":Z
    .end local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindowIdForLeashToken(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1165
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1166
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowIdLocked(Landroid/os/IBinder;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    .locals 8

    .line 392
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 394
    monitor-exit v0

    return-object v2

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 397
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    .line 398
    .local v1, "permissionGranted":Z
    if-nez v1, :cond_1

    .line 399
    monitor-exit v0

    return-object v2

    .line 401
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 402
    monitor-exit v0

    return-object v2

    .line 404
    :cond_2
    new-instance v2, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    invoke-direct {v2}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;-><init>()V

    .line 406
    .local v2, "allWindows":Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayListLocked()Ljava/util/ArrayList;

    move-result-object v3

    .line 407
    .local v3, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 408
    .local v4, "displayListCounts":I
    if-lez v4, :cond_4

    .line 409
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 410
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 411
    .local v6, "displayId":I
    invoke-direct {p0, v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->ensureWindowsAvailableTimedLocked(I)V

    .line 413
    invoke-direct {p0, v6}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindowsByDisplayLocked(I)Ljava/util/List;

    move-result-object v7

    .line 415
    .local v7, "windowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    if-eqz v7, :cond_3

    .line 416
    invoke-virtual {v2, v6, v7}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->put(ILjava/lang/Object;)V

    .line 409
    .end local v6    # "displayId":I
    .end local v7    # "windowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 420
    .end local v5    # "i":I
    :cond_4
    monitor-exit v0

    return-object v2

    .line 421
    .end local v1    # "permissionGranted":Z
    .end local v2    # "allWindows":Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    .end local v3    # "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "displayListCounts":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract hasRightsToCurrentUserLocked()Z
.end method

.method public isConnectedLocked()Z
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFingerprintGestureDetectionAvailable()Z
    .locals 3

    .line 814
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 815
    return v1

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 819
    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    move-result-object v0

    .line 820
    .local v0, "dispatcher":Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->isFingerprintGestureDetectionAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 822
    .end local v0    # "dispatcher":Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    :cond_2
    return v1
.end method

.method public isMagnificationCallbackEnabled(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 970
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->isMagnificationCallbackEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isMultiFingerGesturesEnabled()Z
    .locals 1

    .line 1782
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestMultiFingerGestures:Z

    return v0
.end method

.method public isServiceHandlesDoubleTapEnabled()Z
    .locals 1

    .line 1778
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceHandlesDoubleTap:Z

    return v0
.end method

.method public synthetic lambda$takeScreenshot$0$AbstractAccessibilityServiceConnection(ILandroid/os/RemoteCallback;Ljava/lang/Object;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "callback"    # Landroid/os/RemoteCallback;
    .param p3, "nonArg"    # Ljava/lang/Object;

    .line 1025
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1026
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->userScreenshot(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    .line 1027
    .local v0, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz v0, :cond_0

    .line 1028
    invoke-direct {p0, v0, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotSuccess(Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;Landroid/os/RemoteCallback;)V

    goto :goto_0

    .line 1030
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, v1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 1033
    :goto_0
    return-void
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .locals 1
    .param p1, "available"    # Z

    .line 1375
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    .line 1376
    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 1371
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyAccessibilityButtonClickedLocked(I)V

    .line 1372
    return-void
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1209
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1210
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 1212
    .local v1, "eventType":I
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->wantsEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 1213
    .local v2, "serviceWantsEvent":Z
    iget-boolean v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mUsesAccessibilityCache:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const v3, 0x41b83d

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 1215
    .local v3, "requiredForCacheConsistency":Z
    :goto_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 1216
    monitor-exit v0

    return-void

    .line 1219
    :cond_1
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v6, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1220
    monitor-exit v0

    return-void

    .line 1225
    :cond_2
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    .line 1227
    .local v6, "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-wide v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    const/16 v7, 0x800

    if-eq v1, v7, :cond_4

    .line 1230
    iget-object v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityEvent;

    .line 1231
    .local v7, "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v8, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1232
    if-eqz v7, :cond_3

    .line 1233
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v8, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1234
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 1236
    :cond_3
    iget-object v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v8, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object v7, v8

    .line 1237
    .local v7, "message":Landroid/os/Message;
    goto :goto_1

    .line 1239
    .end local v7    # "message":Landroid/os/Message;
    :cond_4
    iget-object v7, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v7, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1241
    .restart local v7    # "message":Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    iput v4, v7, Landroid/os/Message;->arg1:I

    .line 1243
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventDispatchHandler:Landroid/os/Handler;

    iget-wide v8, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1244
    nop

    .end local v1    # "eventType":I
    .end local v2    # "serviceWantsEvent":Z
    .end local v3    # "requiredForCacheConsistency":Z
    .end local v6    # "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v7    # "message":Landroid/os/Message;
    monitor-exit v0

    .line 1245
    return-void

    .line 1244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyClearAccessibilityNodeInfoCache()V
    .locals 2

    .line 1356
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->sendEmptyMessage(I)Z

    .line 1358
    return-void
.end method

.method public notifyGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 2
    .param p1, "gestureEvent"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 1346
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1347
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1348
    return-void
.end method

.method public notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "scale"    # F
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F

    .line 1362
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 1363
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V

    .line 1364
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .locals 1
    .param p1, "showState"    # I

    .line 1367
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->notifySoftKeyboardShowModeChangedLocked(I)V

    .line 1368
    return-void
.end method

.method public notifySystemActionsChangedLocked()V
    .locals 2

    .line 1351
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->sendEmptyMessage(I)Z

    .line 1353
    return-void
.end method

.method public onAdded()V
    .locals 3

    .line 1090
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 1091
    .local v0, "displays":[Landroid/view/Display;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1092
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 1093
    .local v2, "displayId":I
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onDisplayAdded(I)V

    .line 1091
    .end local v2    # "displayId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1095
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 5
    .param p1, "displayId"    # I

    .line 1104
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1106
    .local v0, "identity":J
    :try_start_0
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 1107
    .local v2, "overlayWindowToken":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    const/16 v4, 0x7f0

    invoke-virtual {v3, v2, v4, p1}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;II)V

    .line 1109
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1110
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1111
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1113
    .end local v2    # "overlayWindowToken":Landroid/os/IBinder;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    nop

    .line 1115
    return-void

    .line 1111
    .restart local v2    # "overlayWindowToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1113
    .end local v2    # "overlayWindowToken":Landroid/os/IBinder;
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    throw v2
.end method

.method public onDisplayRemoved(I)V
    .locals 5
    .param p1, "displayId"    # I

    .line 1132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1134
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 1136
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1137
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mOverlayWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1138
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1140
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1141
    nop

    .line 1142
    return-void

    .line 1138
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1140
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1141
    throw v2
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)Z
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "sequenceNumber"    # I

    .line 277
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-nez v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 282
    return v1

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    return v1

    .line 288
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    nop

    .line 292
    const/4 v0, 0x1

    return v0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 278
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return v1
.end method

.method public onRemoved()V
    .locals 3

    .line 1118
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 1119
    .local v0, "displays":[Landroid/view/Display;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1120
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 1121
    .local v2, "displayId":I
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onDisplayRemoved(I)V

    .line 1119
    .end local v2    # "displayId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1123
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 14
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "action"    # I
    .param p5, "arguments"    # Landroid/os/Bundle;
    .param p6, "interactionId"    # I
    .param p7, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 774
    move-object v13, p0

    iget-object v1, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 775
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 776
    monitor-exit v1

    return v2

    .line 778
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->resolveAccessibilityWindowIdLocked(I)I

    move-result v0

    .line 779
    .local v0, "resolvedWindowId":I
    iget-object v3, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v4, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 780
    invoke-interface {v4}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v4

    .line 779
    invoke-virtual {v3, v4, p0, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 781
    monitor-exit v1

    return v2

    .line 783
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    iget-object v1, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 785
    return v2

    .line 787
    :cond_2
    iget-object v1, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 788
    invoke-interface {v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getCurrentUserIdLocked()I

    move-result v2

    iget v10, v13, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 787
    move-object v1, p0

    move v3, v0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v11, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->performAccessibilityActionInternal(IIJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z

    move-result v1

    return v1

    .line 783
    .end local v0    # "resolvedWindowId":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public performGlobalAction(I)Z
    .locals 2
    .param p1, "action"    # I

    .line 794
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 795
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 796
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 798
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->performSystemAction(I)Z

    move-result v0

    return v0

    .line 798
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resetLocked()V
    .locals 5

    .line 1171
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/KeyEventDispatcher;->flush(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;)V

    .line 1175
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_0

    .line 1176
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    invoke-interface {v1, v0, v2, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    :cond_0
    goto :goto_0

    .line 1178
    :catch_0
    move-exception v1

    .line 1181
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1191
    :try_start_1
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1195
    nop

    :goto_1
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 1196
    goto :goto_3

    .line 1195
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1192
    :catch_1
    move-exception v1

    .line 1193
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "AbstractAccessibilityServiceConnection"

    const-string v4, "Failed unregistering death link"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1195
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    :goto_2
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 1196
    throw v1

    .line 1200
    :cond_1
    :goto_3
    iput-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 1201
    iput-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mReceivedAccessibilityButtonCallbackSinceBind:Z

    .line 1202
    return-void
.end method

.method public resetMagnification(IZ)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 920
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 921
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 922
    monitor-exit v0

    return v2

    .line 924
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 925
    monitor-exit v0

    return v2

    .line 927
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 928
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 930
    .local v0, "identity":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 931
    invoke-interface {v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    .line 932
    .local v3, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/accessibility/MagnificationController;->reset(IZ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 933
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 935
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 932
    return v2

    .line 935
    .end local v3    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 936
    throw v2

    .line 927
    .end local v0    # "identity":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .locals 0
    .param p1, "sequence"    # I
    .param p2, "gestureSteps"    # Landroid/content/pm/ParceledListSlice;

    .line 762
    return-void
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 296
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 297
    iget v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 298
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 299
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 302
    :cond_0
    iget-wide v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    .line 303
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIsDefault:Z

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 307
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_1

    .line 309
    :cond_2
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 313
    :cond_3
    :goto_1
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 314
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    goto :goto_2

    .line 316
    :cond_4
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFetchFlags:I

    .line 319
    :goto_2
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    .line 321
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mServiceHandlesDoubleTap:Z

    .line 323
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestMultiFingerGestures:Z

    .line 325
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_6

    :cond_8
    move v1, v3

    :goto_6
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    .line 327
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_7

    :cond_9
    move v1, v3

    :goto_7
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    .line 329
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_8

    :cond_a
    move v1, v3

    :goto_8
    iput-boolean v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mCaptureFingerprintGestures:Z

    .line 331
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_b

    goto :goto_9

    :cond_b
    move v2, v3

    :goto_9
    iput-boolean v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    .line 333
    return-void
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 1787
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V

    .line 1788
    return-void
.end method

.method public setMagnificationCallbackEnabled(IZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "enabled"    # Z

    .line 966
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setMagnificationCallbackEnabled(IZ)V

    .line 967
    return-void
.end method

.method public setMagnificationScaleAndCenter(IFFFZ)Z
    .locals 13
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animate"    # Z

    .line 942
    move-object v1, p0

    move v9, p1

    iget-object v10, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 943
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 944
    monitor-exit v10

    return v2

    .line 946
    :cond_0
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 947
    monitor-exit v10

    return v2

    .line 949
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v11, v2

    .line 951
    .local v11, "identity":J
    :try_start_1
    iget-object v0, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 952
    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    .line 953
    .local v0, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/MagnificationController;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 954
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/MagnificationController;->register(I)V

    .line 956
    :cond_2
    iget v8, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 957
    move-object v2, v0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(IFFFZI)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    :try_start_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10

    .line 956
    return v2

    .line 959
    .end local v0    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 960
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    .end local p2    # "scale":F
    .end local p3    # "centerX":F
    .end local p4    # "centerY":F
    .end local p5    # "animate":Z
    throw v0

    .line 961
    .end local v11    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    .restart local p2    # "scale":F
    .restart local p3    # "centerX":F
    .restart local p4    # "centerY":F
    .restart local p5    # "animate":Z
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setOnKeyEventResult(ZI)V
    .locals 1
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I

    .line 346
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->setOnKeyEventResult(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;ZI)V

    .line 347
    return-void
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 367
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 369
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 373
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 374
    .local v3, "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v3, :cond_0

    .line 375
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mIPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-virtual {v3, v4, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Lcom/android/internal/compat/IPlatformCompat;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 376
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 380
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    .line 381
    .end local v3    # "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    nop

    .line 385
    return-void

    .line 381
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 383
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    throw v2
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 975
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->setSoftKeyboardCallbackEnabled(Z)V

    .line 976
    return-void
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 1792
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V

    .line 1793
    return-void
.end method

.method protected supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 336
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public takeScreenshot(ILandroid/os/RemoteCallback;)V
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 980
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 981
    .local v0, "currentTimestamp":J
    iget-wide v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotTimestampMs:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 984
    const/4 v2, 0x3

    invoke-direct {p0, v2, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 986
    return-void

    .line 988
    :cond_0
    iput-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestTakeScreenshotTimestampMs:J

    .line 990
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 991
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->hasRightsToCurrentUserLocked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 992
    const/4 v3, 0x1

    invoke-direct {p0, v3, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 994
    monitor-exit v2

    return-void

    .line 997
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canTakeScreenshotLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1001
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1003
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v2, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1004
    const/4 v2, 0x2

    invoke-direct {p0, v2, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 1007
    return-void

    .line 1012
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 1013
    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 1014
    .local v2, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 1015
    .local v3, "display":Landroid/view/Display;
    const/4 v4, 0x4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/Display;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 1016
    invoke-virtual {v3}, Landroid/view/Display;->getFlags()I

    move-result v5

    and-int/2addr v5, v4

    if-eqz v5, :cond_3

    goto :goto_0

    .line 1022
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1024
    .local v4, "identity":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mMainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$2KWbrhNaPTRK49IzRgPA-muj7Go;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/server/accessibility/-$$Lambda$AbstractAccessibilityServiceConnection$2KWbrhNaPTRK49IzRgPA-muj7Go;-><init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;ILandroid/os/RemoteCallback;)V

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v7

    .line 1033
    invoke-interface {v7}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v7

    .line 1024
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1035
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1036
    nop

    .line 1037
    return-void

    .line 1035
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1036
    throw v6

    .line 1017
    .end local v4    # "identity":J
    :cond_4
    :goto_0
    invoke-direct {p0, v4, p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->sendScreenshotFailure(ILandroid/os/RemoteCallback;)V

    .line 1019
    return-void

    .line 998
    .end local v2    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v3    # "display":Landroid/view/Display;
    :cond_5
    :try_start_2
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Services don\'t have the capability of taking the screenshot."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "currentTimestamp":J
    .end local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .end local p1    # "displayId":I
    .end local p2    # "callback":Landroid/os/RemoteCallback;
    throw v3

    .line 1001
    .restart local v0    # "currentTimestamp":J
    .restart local p0    # "this":Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .restart local p1    # "displayId":I
    .restart local p2    # "callback":Landroid/os/RemoteCallback;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

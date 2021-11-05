.class public Lcom/android/server/accessibility/AccessibilityManagerService;
.super Landroid/view/accessibility/IAccessibilityManager$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;
.implements Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;
.implements Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;
.implements Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;
.implements Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Client;,
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;,
        Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;,
        Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DEBUG:Z = false

.field static final FUNCTION_REGISTER_SYSTEM_ACTION:Ljava/lang/String; = "registerSystemAction"

.field private static final FUNCTION_REGISTER_UI_TEST_AUTOMATION_SERVICE:Ljava/lang/String; = "registerUiTestAutomationService"

.field static final FUNCTION_UNREGISTER_SYSTEM_ACTION:Ljava/lang/String; = "unregisterSystemAction"

.field private static final GET_WINDOW_TOKEN:Ljava/lang/String; = "getWindowToken"

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManagerService"

.field public static final MAGNIFICATION_GESTURE_HANDLER_ID:I = 0x0

.field private static final OWN_PROCESS_ID:I

.field private static final SET_PIP_ACTION_REPLACEMENT:Ljava/lang/String; = "setPictureInPictureActionReplacingConnection"

.field private static final TEMPORARY_ENABLE_ACCESSIBILITY_UNTIL_KEYGUARD_REMOVED:Ljava/lang/String; = "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

.field private static final WAIT_FOR_USER_STATE_FULLY_INITIALIZED_MILLIS:I = 0xbb8

.field private static final WAIT_MOTION_INJECTOR_TIMEOUT_MILLIS:I = 0x3e8

.field private static sIdCounter:I


# instance fields
.field private final mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

.field private final mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field private final mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

.field private mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

.field private final mGlobalClientUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInputFilter:Z

.field private mInitialized:Z

.field private mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field private mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

.field private mIsAccessibilityButtonShown:Z

.field private mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

.field private final mLock:Ljava/lang/Object;

.field private mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

.field private final mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

.field private mMotionEventInjectors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/MotionEventInjector;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

.field private final mTempAccessibilityServiceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempComponentNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempIntArray:Landroid/util/IntArray;

.field private mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityUserState;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 190
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    .line 195
    const/4 v0, 0x1

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 320
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 201
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 204
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    .line 244
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    .line 249
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    .line 251
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 256
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClientUids:Ljava/util/HashSet;

    .line 259
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 261
    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/android/server/accessibility/UiAutomationManager;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 263
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 268
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    .line 321
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 322
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 323
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 324
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    .line 325
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 326
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 327
    new-instance v6, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;)V

    iput-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 328
    new-instance v0, Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    move-object v1, v0

    move-object v5, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;-><init>(Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 330
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    .line 331
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->init()V

    .line 332
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "securityPolicy"    # Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .param p4, "systemActionPerformer"    # Lcom/android/server/accessibility/SystemActionPerformer;
    .param p5, "a11yWindowManager"    # Lcom/android/server/accessibility/AccessibilityWindowManager;
    .param p6, "a11yDisplayListener"    # Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    .line 301
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 201
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 204
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    .line 244
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    .line 249
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    .line 251
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 256
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClientUids:Ljava/util/HashSet;

    .line 259
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 261
    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/android/server/accessibility/UiAutomationManager;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 263
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 268
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    .line 302
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 303
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 304
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 305
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    .line 306
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 307
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 308
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 309
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 310
    iput-object p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 311
    iput-object p6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    .line 312
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->init()V

    .line 313
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onBootPhase(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeUser(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreLegacyDisplayMagnificationNavBarIfNeededLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    return-object v0
.end method

.method static synthetic access$1608()I
    .locals 2

    .line 156
    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/SystemActionPerformer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/MagnificationController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;
    .param p2, "x2"    # Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutKeySettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityUserState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityUserState;
    .param p2, "x2"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unlockUser(I)V

    return-void
.end method

.method private announceNewUserIfNeeded()V
    .locals 8

    .line 1218
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 1220
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1221
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1223
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040814

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 1224
    invoke-virtual {v2, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 1223
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1225
    .local v3, "message":Ljava/lang/String;
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 1227
    .local v4, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 1230
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v2    # "userManager":Landroid/os/UserManager;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    monitor-exit v0

    .line 1231
    return-void

    .line 1230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private broadcastToClients(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accessibility/AccessibilityUserState;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Client;",
            ">;)V"
        }
    .end annotation

    .line 1558
    .local p2, "clientAction":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/accessibility/AccessibilityManagerService$Client;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 1559
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    .line 1560
    return-void
.end method

.method private canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 4
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .param p2, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2224
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2227
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    if-gt v0, v2, :cond_3

    .line 2232
    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2233
    return v3

    .line 2234
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 2235
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2236
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v2, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$bNCuysjTCG2afhYMHuqu25CfY5g;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$bNCuysjTCG2afhYMHuqu25CfY5g;

    invoke-static {v2, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2244
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 2246
    return v3

    .line 2249
    :cond_4
    :goto_0
    return v1

    .line 2225
    :cond_5
    :goto_1
    return v1
.end method

.method private computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .locals 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;
    .param p2, "client"    # Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 1512
    const/4 v0, 0x0

    .line 1514
    .local v0, "relevantEventTypes":I
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1515
    .local v1, "serviceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    .line 1516
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1517
    .local v4, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageWhitelist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1518
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getRelevantEventTypes()I

    move-result v3

    goto :goto_1

    .line 1519
    :cond_0
    nop

    :goto_1
    or-int/2addr v0, v3

    .line 1515
    .end local v4    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1522
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 1523
    invoke-virtual {v2}, Lcom/android/server/accessibility/UiAutomationManager;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    .line 1522
    invoke-static {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageWhitelist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1524
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v2}, Lcom/android/server/accessibility/UiAutomationManager;->getRelevantEventTypes()I

    move-result v3

    goto :goto_2

    .line 1525
    :cond_2
    nop

    :goto_2
    or-int/2addr v0, v3

    .line 1526
    return v0
.end method

.method private disableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 2830
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2831
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string v1, "enabled_accessibility_services"

    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 2833
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2834
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 2837
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 2838
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2839
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2841
    :cond_0
    return-void
.end method

.method private enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 2813
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2814
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string v1, "enabled_accessibility_services"

    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 2816
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2817
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 2820
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 2821
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2822
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2824
    :cond_0
    return-void
.end method

.method private getAccessibilityShortcutTargetsInternal(I)Ljava/util/List;
    .locals 7
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2785
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2786
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 2787
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    new-instance v2, Ljava/util/ArrayList;

    .line 2788
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2789
    .local v2, "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 2790
    monitor-exit v0

    return-object v2

    .line 2793
    :cond_0
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 2794
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2795
    .local v4, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v5, v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v5, :cond_2

    .line 2796
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x1d

    if-le v5, v6, :cond_1

    .line 2798
    goto :goto_1

    .line 2800
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 2801
    .local v5, "serviceName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2802
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2793
    .end local v4    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v5    # "serviceName":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2805
    .end local v3    # "i":I
    :cond_3
    monitor-exit v0

    return-object v2

    .line 2806
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v2    # "shortcutTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getClientStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)I
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1271
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getClientStateLocked(Z)I

    move-result v0

    return v0
.end method

.method private getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;
    .locals 1

    .line 272
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    return-object v0
.end method

.method private getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    .locals 2

    .line 1275
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1276
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    if-nez v1, :cond_0

    .line 1277
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    .line 1279
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    monitor-exit v0

    return-object v1

    .line 1280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityUserState;)J
    .locals 2
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2911
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getInteractiveUiTimeoutLocked()I

    move-result v0

    .line 2912
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getNonInteractiveUiTimeoutLocked()I

    move-result v1

    .line 2911
    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;
    .locals 4

    .line 781
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    if-nez v0, :cond_0

    .line 782
    new-instance v0, Lcom/android/server/accessibility/SystemActionPerformer;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/server/accessibility/SystemActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    return-object v0
.end method

.method private getUserState(I)Lcom/android/server/accessibility/AccessibilityUserState;
    .locals 2
    .param p1, "userId"    # I

    .line 371
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;
    .locals 3
    .param p1, "userId"    # I

    .line 378
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 379
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityUserState;
    if-nez v0, :cond_0

    .line 380
    new-instance v1, Lcom/android/server/accessibility/AccessibilityUserState;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2, p0}, Lcom/android/server/accessibility/AccessibilityUserState;-><init>(ILandroid/content/Context;Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;)V

    move-object v0, v1

    .line 381
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->setAccessibilityWindowManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)V

    .line 336
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V

    .line 337
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 338
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 339
    return-void
.end method

.method private static isClientInPackageWhitelist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z
    .locals 6
    .param p0, "serviceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p1, "client"    # Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 1531
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1533
    :cond_0
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 1534
    .local v1, "clientPackages":[Ljava/lang/String;
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    .line 1535
    .local v2, "result":Z
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 1536
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 1537
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1538
    const/4 v2, 0x1

    .line 1539
    goto :goto_1

    .line 1536
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1543
    :cond_2
    :goto_1
    nop

    .line 1553
    return v2
.end method

.method public static synthetic lambda$5vwr6qV-eqdCr73CeDmVnsJlZHM(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToAllClients(II)V

    return-void
.end method

.method public static synthetic lambda$BX2CMQr5jU9WhPYx7Aaae4zgxf4(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventToInputFilter(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static synthetic lambda$Gu-W_dQ2mWyy8l4tm19TzFxGbeM(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->announceNewUserIfNeeded()V

    return-void
.end method

.method public static synthetic lambda$NCeV24lEcO5W6ZZr1GqGK-ylU9g(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilter(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public static synthetic lambda$bNCuysjTCG2afhYMHuqu25CfY5g(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic lambda$eSvVtuaJKbqaBq9Bpz8jbEk5c_4(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setGestureDetectionPassthroughRegionInternal(ILandroid/graphics/Region;)V

    return-void
.end method

.method public static synthetic lambda$eskhivxnBVBZCLZ0d5oWdhYVtfs(Lcom/android/server/accessibility/AccessibilityManagerService;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutInternal(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$gWIX-xPon63LM1keYTGNXBKdyeE(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/RemoteCallbackList;Ljava/util/HashSet;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendServicesStateChanged(Landroid/os/RemoteCallbackList;Ljava/util/HashSet;J)V

    return-void
.end method

.method public static synthetic lambda$luI_C3QiJWsM08i8m3lx484SyyY(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method static synthetic lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$15(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;
    .param p2, "name"    # Ljava/lang/String;

    .line 2410
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2411
    return v0

    .line 2413
    :cond_0
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 2414
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 2415
    return v0

    .line 2417
    :cond_1
    nop

    .line 2418
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    .line 2419
    .local v2, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v2, :cond_2

    .line 2420
    return v0

    .line 2422
    :cond_2
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1d

    const-string v5, "AccessibilityManagerService"

    const/4 v6, 0x1

    if-gt v3, v4, :cond_3

    .line 2425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Legacy service "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " should not in the button"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    return v6

    .line 2429
    :cond_3
    iget v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_4

    move v3, v6

    goto :goto_0

    :cond_4
    move v3, v0

    .line 2431
    .local v3, "requestA11yButton":Z
    :goto_0
    if-eqz v3, :cond_5

    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service requesting a11y button and be assigned to the button"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " should be enabled state"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    return v6

    .line 2438
    :cond_5
    return v0
.end method

.method static synthetic lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$16(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;Ljava/util/Set;Landroid/content/ComponentName;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;
    .param p2, "buttonTargets"    # Ljava/util/Set;
    .param p3, "shortcutKeyTargets"    # Ljava/util/Set;
    .param p4, "componentName"    # Landroid/content/ComponentName;

    .line 2446
    if-eqz p0, :cond_0

    if-eqz p4, :cond_0

    .line 2447
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2448
    return-void

    .line 2450
    :cond_0
    nop

    .line 2451
    invoke-virtual {p1, p4}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 2452
    .local v0, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v0, :cond_1

    .line 2453
    return-void

    .line 2455
    :cond_1
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 2457
    .local v1, "requestA11yButton":Z
    :goto_0
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    if-le v2, v3, :cond_7

    if-nez v1, :cond_3

    goto :goto_2

    .line 2461
    :cond_3
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 2462
    .local v2, "serviceName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2463
    return-void

    .line 2465
    :cond_4
    invoke-static {p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState;->doesShortcutTargetsStringContain(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2466
    invoke-static {p3, v2}, Lcom/android/server/accessibility/AccessibilityUserState;->doesShortcutTargetsStringContain(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 2471
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A enabled service requesting a11y button "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " should be assign to the button or shortcut."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2474
    return-void

    .line 2467
    :cond_6
    :goto_1
    return-void

    .line 2459
    .end local v2    # "serviceName":Ljava/lang/String;
    :cond_7
    :goto_2
    return-void
.end method

.method static synthetic lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$17(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .line 2482
    return-object p0
.end method

.method static synthetic lambda$notifyClientsOfServicesStateChange$8(JLandroid/view/accessibility/IAccessibilityManagerClient;)V
    .locals 0
    .param p0, "uiTimeout"    # J
    .param p2, "client"    # Landroid/view/accessibility/IAccessibilityManagerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1776
    invoke-interface {p2, p0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->notifyServicesStateChanged(J)V

    return-void
.end method

.method static synthetic lambda$persistComponentNamesToSettingLocked$6(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 1596
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$readAccessibilityButtonTargetsLocked$10(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .line 2147
    return-object p0
.end method

.method static synthetic lambda$readAccessibilityShortcutKeySettingLocked$9(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .line 2123
    return-object p0
.end method

.method static synthetic lambda$readComponentNamesFromSettingLocked$4(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 1573
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$readComponentNamesFromStringLocked$5(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 1589
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$removeShortcutTargetForUnboundServiceLocked$18(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .line 2506
    return-object p0
.end method

.method static synthetic lambda$removeShortcutTargetForUnboundServiceLocked$19(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .line 2512
    return-object p0
.end method

.method static synthetic lambda$restoreLegacyDisplayMagnificationNavBarIfNeededLocked$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .line 598
    return-object p0
.end method

.method static synthetic lambda$restoreLegacyDisplayMagnificationNavBarIfNeededLocked$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .line 611
    return-object p0
.end method

.method static synthetic lambda$sendStateToClients$7(ILandroid/view/accessibility/IAccessibilityManagerClient;)V
    .locals 0
    .param p0, "clientState"    # I
    .param p1, "client"    # Landroid/view/accessibility/IAccessibilityManagerClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1735
    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V

    return-void
.end method

.method static synthetic lambda$updateAccessibilityButtonTargetsLocked$13(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z
    .locals 1
    .param p0, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;
    .param p1, "name"    # Ljava/lang/String;

    .line 2379
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutTargetInstalledLocked(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$updateAccessibilityButtonTargetsLocked$14(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .line 2386
    return-object p0
.end method

.method static synthetic lambda$updateAccessibilityShortcutKeyTargetsLocked$11(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)Z
    .locals 1
    .param p0, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;
    .param p1, "name"    # Ljava/lang/String;

    .line 2209
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutTargetInstalledLocked(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$updateAccessibilityShortcutKeyTargetsLocked$12(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .line 2217
    return-object p0
.end method

.method public static synthetic lambda$zXJtauhUptSkQJSF-M55-grAVbo(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(II)V

    return-void
.end method

.method public static synthetic lambda$zajP-hb_Pu4KrBx9lo0SCrvm0I4(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setTouchExplorationPassthroughRegionInternal(ILandroid/graphics/Region;)V

    return-void
.end method

.method private launchShortcutTargetActivity(ILandroid/content/ComponentName;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "name"    # Landroid/content/ComponentName;

    .line 1342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1343
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1344
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1345
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1347
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    goto :goto_0

    .line 1348
    :catch_0
    move-exception v2

    .line 1351
    :goto_0
    return-void
.end method

.method private migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)V
    .locals 8
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2406
    nop

    .line 2407
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 2408
    .local v1, "buttonTargets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    .line 2409
    .local v2, "lastSize":I
    new-instance v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$qMRX_NUgMKPJgFkUHbwhO0kqGYQ;

    invoke-direct {v3, p2, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$qMRX_NUgMKPJgFkUHbwhO0kqGYQ;-><init>(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2440
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    .line 2441
    .local v3, "changed":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    .line 2443
    nop

    .line 2444
    invoke-virtual {p1, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 2445
    .local v5, "shortcutKeyTargets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    new-instance v7, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$-bTcOt6lEs3SZ7qHMklsaQbaIGM;

    invoke-direct {v7, p2, p1, v1, v5}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$-bTcOt6lEs3SZ7qHMklsaQbaIGM;-><init>(Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {v6, v7}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 2475
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v2, v6, :cond_1

    move v0, v4

    :cond_1
    or-int/2addr v0, v3

    .line 2476
    .end local v3    # "changed":Z
    .local v0, "changed":Z
    if-nez v0, :cond_2

    .line 2477
    return-void

    .line 2481
    :cond_2
    iget v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    sget-object v4, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$izifS7Le9TQuxSikL_j2KI9n6Jo;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$izifS7Le9TQuxSikL_j2KI9n6Jo;

    const-string v6, "accessibility_button_targets"

    invoke-direct {p0, v6, v3, v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 2483
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2484
    return-void
.end method

.method private notifyAccessibilityButtonVisibilityChangedLocked(Z)V
    .locals 4
    .param p1, "available"    # Z

    .line 1354
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 1355
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityUserState;
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityButtonShown:Z

    .line 1356
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1357
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1358
    .local v2, "clientConnection":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v3, v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v3, :cond_0

    .line 1359
    nop

    .line 1360
    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v3

    .line 1359
    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    .line 1356
    .end local v2    # "clientConnection":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1363
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "isDefault"    # Z

    .line 1470
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 1471
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityUserState;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1472
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1474
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIsDefault:Z

    if-ne v4, p2, :cond_0

    .line 1475
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1471
    .end local v3    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1482
    .end local v0    # "state":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1
    goto :goto_1

    .line 1478
    :catch_0
    move-exception v0

    .line 1483
    :goto_1
    return-void
.end method

.method private notifyClearAccessibilityCacheLocked()V
    .locals 3

    .line 1305
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 1306
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityUserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1307
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1308
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyClearAccessibilityNodeInfoCache()V

    .line 1306
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1310
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V
    .locals 1
    .param p2, "uiTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;J)V"
        }
    .end annotation

    .line 1775
    .local p1, "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/accessibility/IAccessibilityManagerClient;>;"
    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$sGdMPxvBcGKDALNlLBuP2gGcyp0;

    invoke-direct {v0, p2, p3}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$sGdMPxvBcGKDALNlLBuP2gGcyp0;-><init>(J)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 1777
    return-void
.end method

.method private notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z
    .locals 5
    .param p1, "gestureEvent"    # Landroid/accessibilityservice/AccessibilityGestureEvent;
    .param p2, "isDefault"    # Z

    .line 1293
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 1294
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityUserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1295
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1296
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIsDefault:Z

    if-ne v4, p2, :cond_0

    .line 1297
    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    .line 1298
    return v2

    .line 1294
    .end local v3    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1301
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "scale"    # F
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F

    .line 1314
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 1315
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityUserState;
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1316
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1317
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    move-object v3, v2

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V

    .line 1315
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1319
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 362
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.app_widgets"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-class v1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 365
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManagerInternal;

    .line 364
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->setAppWidgetManager(Landroid/appwidget/AppWidgetManagerInternal;)V

    .line 368
    :cond_0
    return-void
.end method

.method private onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    .line 1914
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1915
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1916
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1917
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1918
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1919
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updatePerformGesturesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1920
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1921
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1922
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1923
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateRelevantEventsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1924
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1925
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityShortcutKeyTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1926
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1927
    return-void
.end method

.method private performAccessibilityFrameworkFeature(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "assignedTarget"    # Landroid/content/ComponentName;
    .param p2, "shortcutType"    # I

    .line 2655
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    .line 2656
    .local v0, "frameworkFeatureMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2657
    return v2

    .line 2660
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 2661
    .local v1, "featureInfo":Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;
    new-instance v3, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2662
    invoke-virtual {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {v3, v4, v5, v6}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 2664
    .local v3, "setting":Landroid/provider/SettingsStringUtil$SettingStringHelper;
    invoke-virtual {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 2665
    invoke-static {p1, p2, v5}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/ComponentName;IZ)V

    .line 2667
    invoke-virtual {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    goto :goto_0

    .line 2669
    :cond_1
    invoke-static {p1, p2, v2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/ComponentName;IZ)V

    .line 2671
    invoke-virtual {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOffValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 2673
    :goto_0
    return v5
.end method

.method private performAccessibilityShortcutInternal(IILjava/lang/String;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "shortcutType"    # I
    .param p3, "targetName"    # Ljava/lang/String;

    .line 2606
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityShortcutTargetsInternal(I)Ljava/util/List;

    move-result-object v0

    .line 2607
    .local v0, "shortcutTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "AccessibilityManagerService"

    if-eqz v1, :cond_0

    .line 2608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No target to perform shortcut, shortcutType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    return-void

    .line 2612
    :cond_0
    const-string v1, "Perform shortcut failed, invalid target name:"

    if-eqz p3, :cond_1

    invoke-static {v0, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->doesShortcutTargetsStringContain(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    const/4 p3, 0x0

    .line 2616
    :cond_1
    const/4 v3, 0x1

    if-nez p3, :cond_3

    .line 2618
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 2619
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->showAccessibilityTargetsSelection(II)V

    .line 2620
    return-void

    .line 2622
    :cond_2
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object p3, v4

    check-cast p3, Ljava/lang/String;

    .line 2625
    :cond_3
    const-string v4, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2626
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 2627
    .local v1, "enabled":Z
    sget-object v2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-static {v2, p2, v1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/ComponentName;IZ)V

    .line 2628
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityButtonToInputFilter(I)V

    .line 2629
    return-void

    .line 2631
    .end local v1    # "enabled":Z
    :cond_4
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 2632
    .local v3, "targetComponentName":Landroid/content/ComponentName;
    if-nez v3, :cond_5

    .line 2633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    return-void

    .line 2637
    :cond_5
    invoke-direct {p0, v3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityFrameworkFeature(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2638
    return-void

    .line 2641
    :cond_6
    invoke-direct {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutTargetActivity(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2642
    invoke-static {v3, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/ComponentName;I)V

    .line 2643
    return-void

    .line 2646
    :cond_7
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->performAccessibilityShortcutTargetService(IILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2648
    return-void

    .line 2650
    :cond_8
    return-void
.end method

.method private performAccessibilityShortcutTargetActivity(ILandroid/content/ComponentName;)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "assignedTarget"    # Landroid/content/ComponentName;

    .line 2678
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2679
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 2680
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2681
    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 2682
    .local v3, "shortcutInfo":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2683
    nop

    .line 2680
    .end local v3    # "shortcutInfo":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2685
    .restart local v3    # "shortcutInfo":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->launchShortcutTargetActivity(ILandroid/content/ComponentName;)V

    .line 2686
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2688
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v2    # "i":I
    .end local v3    # "shortcutInfo":Landroid/accessibilityservice/AccessibilityShortcutInfo;
    :cond_1
    monitor-exit v0

    .line 2689
    const/4 v0, 0x0

    return v0

    .line 2688
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private performAccessibilityShortcutTargetService(IILandroid/content/ComponentName;)Z
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "shortcutType"    # I
    .param p3, "assignedTarget"    # Landroid/content/ComponentName;

    .line 2712
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2713
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 2714
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    nop

    .line 2715
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    .line 2716
    .local v2, "installedServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2717
    const-string v4, "AccessibilityManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Perform shortcut failed, invalid component name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    monitor-exit v0

    return v3

    .line 2722
    :cond_0
    nop

    .line 2723
    invoke-virtual {v1, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->getServiceConnectionLocked(Landroid/content/ComponentName;)Lcom/android/server/accessibility/AccessibilityServiceConnection;

    move-result-object v4

    .line 2724
    .local v4, "serviceConnection":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2726
    .local v5, "targetSdk":I
    iget v6, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v6, v6, 0x100

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v3

    .line 2729
    .local v6, "requestA11yButton":Z
    :goto_0
    const/16 v8, 0x1d

    if-gt v5, v8, :cond_2

    if-eq p2, v7, :cond_3

    :cond_2
    if-le v5, v8, :cond_5

    if-nez v6, :cond_5

    .line 2731
    :cond_3
    if-nez v4, :cond_4

    .line 2734
    invoke-static {p3}, Lcom/android/server/am/OpStartAppControlInjector;->addAccessibilityService(Landroid/content/ComponentName;)V

    .line 2736
    invoke-static {p3, p2, v7}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/ComponentName;IZ)V

    .line 2738
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, p3, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 2743
    :cond_4
    invoke-static {p3}, Lcom/android/server/am/OpStartAppControlInjector;->removeAccessibilityService(Landroid/content/ComponentName;)V

    .line 2745
    invoke-static {p3, p2, v3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/ComponentName;IZ)V

    .line 2747
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, p3, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->disableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V

    .line 2749
    :goto_1
    monitor-exit v0

    return v7

    .line 2751
    :cond_5
    if-ne p2, v7, :cond_6

    if-le v5, v8, :cond_6

    if-eqz v6, :cond_6

    .line 2753
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getEnabledServicesLocked()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2754
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, p3, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V

    .line 2755
    monitor-exit v0

    return v7

    .line 2759
    :cond_6
    if-eqz v4, :cond_8

    iget-object v8, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2760
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-boolean v8, v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-nez v8, :cond_7

    goto :goto_2

    .line 2767
    :cond_7
    invoke-static {p3, p2, v7}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivated(Landroid/content/ComponentName;IZ)V

    .line 2769
    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonClickedLocked(I)V

    .line 2770
    monitor-exit v0

    return v7

    .line 2762
    :cond_8
    :goto_2
    const-string v7, "AccessibilityManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Perform shortcut failed, service is not ready:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    monitor-exit v0

    return v3

    .line 2771
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v2    # "installedServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v4    # "serviceConnection":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v5    # "targetSdk":I
    .end local v6    # "requestA11yButton":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V
    .locals 7
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1629
    .local p3, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p4, "toString":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1630
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1631
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    invoke-interface {p4, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1632
    .local v3, "str":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1633
    goto :goto_0

    .line 1635
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1636
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1638
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    .end local v3    # "str":Ljava/lang/String;
    goto :goto_0

    .line 1640
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1642
    .local v1, "identity":J
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1643
    .local v4, "settingValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1644
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v4

    .line 1643
    :goto_1
    invoke-static {v5, p1, v3, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    nop

    .end local v4    # "settingValue":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1647
    nop

    .line 1648
    return-void

    .line 1646
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1647
    throw v3
.end method

.method private readAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 4
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2161
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v2, "accessibility_button_target_component"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2163
    .local v0, "componentId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2164
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getTargetAssignedToAccessibilityButton()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2165
    return v2

    .line 2167
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setTargetAssignedToAccessibilityButton(Ljava/lang/String;)V

    .line 2168
    return v3

    .line 2170
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getTargetAssignedToAccessibilityButton()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2171
    return v2

    .line 2173
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setTargetAssignedToAccessibilityButton(Ljava/lang/String;)V

    .line 2174
    return v3
.end method

.method private readAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 4
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2145
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2146
    .local v0, "targetsFromSetting":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    sget-object v2, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$eQYUc4U2i8Xl3NCvLKTNFpnxaAo;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$eQYUc4U2i8Xl3NCvLKTNFpnxaAo;

    const-string v3, "accessibility_button_targets"

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 2149
    nop

    .line 2150
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 2151
    .local v2, "currentTargets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2152
    return v1

    .line 2154
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 2155
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2156
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2157
    const/4 v1, 0x1

    return v1
.end method

.method private readAccessibilityShortcutKeySettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2120
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2122
    .local v0, "settingValue":Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2123
    .local v1, "targetsFromSetting":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gfpf42F-WgaKLjT8H9wQIIdsOHg;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gfpf42F-WgaKLjT8H9wQIIdsOHg;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/Set;ZLjava/util/function/Function;)V

    .line 2125
    if-nez v0, :cond_0

    .line 2126
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10401f9

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2128
    .local v2, "defaultService":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2129
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2133
    .end local v2    # "defaultService":Ljava/lang/String;
    :cond_0
    nop

    .line 2134
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v4

    .line 2135
    .local v4, "currentTargets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2136
    return v3

    .line 2138
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 2139
    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2140
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2141
    return v2
.end method

.method private readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 4
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2067
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2068
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 2067
    const-string v2, "accessibility_autoclick_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2071
    .local v0, "autoclickEnabled":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAutoclickEnabledLocked()Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 2072
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setAutoclickEnabledLocked(Z)V

    .line 2073
    return v1

    .line 2075
    :cond_1
    return v3
.end method

.method private readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V
    .locals 2
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 1601
    .local p3, "outSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p4, "toItem":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;TT;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1603
    .local v0, "settingValue":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/Set;ZLjava/util/function/Function;)V

    .line 1604
    return-void
.end method

.method private readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/Set;ZLjava/util/function/Function;)V
    .locals 3
    .param p1, "names"    # Ljava/lang/String;
    .param p3, "doMerge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "TT;>;Z",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 1608
    .local p2, "outSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p4, "toItem":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;TT;>;"
    if-nez p3, :cond_0

    .line 1609
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 1611
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1612
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 1613
    .local v0, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1614
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1615
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 1616
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1617
    goto :goto_0

    .line 1619
    :cond_1
    invoke-interface {p4, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1620
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_2

    .line 1621
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1623
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    goto :goto_0

    .line 1625
    .end local v0    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_3
    return-void
.end method

.method private readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V
    .locals 1
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 1572
    .local p3, "outComponentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$pAB0wmwYbzxpH0pn344udWaoe2o;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$pAB0wmwYbzxpH0pn344udWaoe2o;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 1574
    return-void
.end method

.method private readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 1
    .param p1, "names"    # Ljava/lang/String;
    .param p3, "doMerge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    .line 1588
    .local p2, "outComponentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$WSVclf7SW8Zyu3d3LwkuhR7n3vs;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$WSVclf7SW8Zyu3d3LwkuhR7n3vs;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedStringToSet(Ljava/lang/String;Ljava/util/Set;ZLjava/util/function/Function;)V

    .line 1590
    return-void
.end method

.method private readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 2
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2014
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v0

    .line 2015
    .local v0, "somethingChanged":Z
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readInstalledAccessibilityShortcutLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2016
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2017
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2018
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2019
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2020
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2021
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2022
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutKeySettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2023
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2024
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2025
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2026
    return v0
.end method

.method private readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 3
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1426
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1427
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string v2, "enabled_accessibility_services"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 1429
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1430
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1433
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-static {v0}, Lcom/android/server/am/OpStartAppControlInjector;->updateAccessibilityService(Ljava/util/Set;)V

    .line 1436
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1437
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1438
    const/4 v0, 0x1

    return v0

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1441
    const/4 v0, 0x0

    return v0
.end method

.method private readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 4
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2079
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2080
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 2079
    const-string v2, "high_text_contrast_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2083
    .local v0, "highTextContrastEnabled":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTextHighContrastEnabledLocked()Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 2084
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setTextHighContrastEnabledLocked(Z)V

    .line 2085
    return v1

    .line 2087
    :cond_1
    return v3
.end method

.method private readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 10
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1366
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1368
    const v0, 0xc8084

    .line 1374
    .local v0, "flags":I
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindInstantServiceAllowedLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1375
    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 1378
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1381
    .local v1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 1382
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1383
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1385
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v7, v6}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRegisterService(Landroid/content/pm/ServiceInfo;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1386
    goto :goto_1

    .line 1391
    :cond_1
    :try_start_0
    new-instance v7, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v5, v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .line 1392
    .local v7, "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v8, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-virtual {v6}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1394
    iput-boolean v4, v7, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    .line 1396
    :cond_2
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    goto :goto_1

    .line 1397
    .end local v7    # "accessibilityServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catch_0
    move-exception v4

    .line 1398
    .local v4, "xppe":Ljava/lang/Exception;
    const-string v7, "AccessibilityManagerService"

    const-string v8, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1381
    .end local v4    # "xppe":Ljava/lang/Exception;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1402
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1403
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1404
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1405
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1406
    return v4

    .line 1409
    :cond_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1410
    const/4 v2, 0x0

    return v2
.end method

.method private readInstalledAccessibilityShortcutLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 3
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1414
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 1415
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 1417
    .local v0, "shortcutInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityShortcutInfo;>;"
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1418
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1419
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1420
    const/4 v1, 0x1

    return v1

    .line 1422
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 4
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2055
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2056
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 2055
    const-string v2, "accessibility_display_magnification_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2059
    .local v0, "displayMagnificationEnabled":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isDisplayMagnificationEnabledLocked()Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 2060
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setDisplayMagnificationEnabledLocked(Z)V

    .line 2061
    return v1

    .line 2063
    :cond_1
    return v3
.end method

.method private readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 4
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2044
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2045
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 2044
    const-string/jumbo v2, "touch_exploration_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2047
    .local v0, "touchExplorationEnabled":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTouchExplorationEnabledLocked()Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 2048
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setTouchExplorationEnabledLocked(Z)V

    .line 2049
    return v1

    .line 2051
    :cond_1
    return v3
.end method

.method private readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 3
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1446
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1447
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const-string/jumbo v2, "touch_exploration_granted_accessibility_services"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    .line 1450
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1451
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1452
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1453
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1454
    const/4 v0, 0x1

    return v0

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1457
    const/4 v0, 0x0

    return v0
.end method

.method private readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2178
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2179
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 2178
    const-string v2, "accessibility_non_interactive_ui_timeout_ms"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2182
    .local v0, "nonInteractiveUiTimeout":I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2183
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 2182
    const-string v4, "accessibility_interactive_ui_timeout_ms"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 2186
    .local v1, "interactiveUiTimeout":I
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getUserNonInteractiveUiTimeoutLocked()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 2187
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getUserInteractiveUiTimeoutLocked()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2193
    :cond_0
    return v3

    .line 2188
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setUserNonInteractiveUiTimeoutLocked(I)V

    .line 2189
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setUserInteractiveUiTimeoutLocked(I)V

    .line 2190
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2191
    const/4 v2, 0x1

    return v2
.end method

.method private registerBroadcastReceivers()V
    .locals 8

    .line 407
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 530
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 533
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 534
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 535
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    const-string v2, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 577
    return-void
.end method

.method private removeShortcutTargetForUnboundServiceLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2495
    iget-boolean v0, p2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v0, :cond_3

    .line 2496
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 2500
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 2501
    .local v0, "serviceName":Landroid/content/ComponentName;
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->removeShortcutTargetLocked(ILandroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2502
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 2504
    .local v1, "currentTargets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Dr0UZNY6LcWGU-_qkFYs5k2BcRI;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Dr0UZNY6LcWGU-_qkFYs5k2BcRI;

    const-string v4, "accessibility_shortcut_target_service"

    invoke-direct {p0, v4, v2, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 2508
    .end local v1    # "currentTargets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->removeShortcutTargetLocked(ILandroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2509
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 2511
    .restart local v1    # "currentTargets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$pzT62oocPlJK8m3BrYpDJvlljn0;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$pzT62oocPlJK8m3BrYpDJvlljn0;

    const-string v4, "accessibility_button_targets"

    invoke-direct {p0, v4, v2, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 2514
    .end local v1    # "currentTargets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    return-void

    .line 2498
    .end local v0    # "serviceName":Landroid/content/ComponentName;
    :cond_3
    :goto_0
    return-void
.end method

.method private removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1244
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1246
    monitor-exit v0

    .line 1247
    return-void

    .line 1246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private restoreLegacyDisplayMagnificationNavBarIfNeededLocked(Ljava/lang/String;I)V
    .locals 7
    .param p1, "newSetting"    # Ljava/lang/String;
    .param p2, "restoreFromSdkInt"    # I

    .line 583
    const/16 v0, 0x1e

    if-lt p2, v0, :cond_0

    .line 584
    return-void

    .line 589
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v0, v2

    .line 593
    .local v0, "displayMagnificationNavBarEnabled":Z
    nop

    .line 595
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 596
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 597
    .local v2, "targetsFromSetting":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    sget-object v4, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$PDMEev7fTw8IXlg6MUfoqAonhJ0;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$PDMEev7fTw8IXlg6MUfoqAonhJ0;

    const-string v5, "accessibility_button_targets"

    invoke-direct {p0, v5, v3, v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->readColonDelimitedSettingToSet(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 599
    const-string v3, "com.android.server.accessibility.MagnificationController"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 601
    .local v4, "targetsContainMagnification":Z
    if-ne v4, v0, :cond_2

    .line 602
    return-void

    .line 605
    :cond_2
    if-eqz v0, :cond_3

    .line 606
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 608
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 610
    :goto_1
    iget v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    sget-object v6, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$IySyRJDkaJb7fkWGmJRSb1bpeTM;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$IySyRJDkaJb7fkWGmJRSb1bpeTM;

    invoke-direct {p0, v5, v3, v2, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 612
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 613
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 614
    return-void

    .line 590
    .end local v0    # "displayMagnificationNavBarEnabled":Z
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v2    # "targetsFromSetting":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "targetsContainMagnification":Z
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "number format is incorrect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccessibilityManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void
.end method

.method private scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 6
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1740
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateRecommendedUiTimeoutLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1741
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$gWIX-xPon63LM1keYTGNXBKdyeE;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$gWIX-xPon63LM1keYTGNXBKdyeE;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClientUids:Ljava/util/HashSet;

    .line 1743
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityUserState;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1741
    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1744
    return-void
.end method

.method private scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1712
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)I

    move-result v0

    .line 1713
    .local v0, "clientState":I
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getLastSentClientStateLocked()I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 1714
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 1715
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1716
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setLastSentClientStateLocked(I)V

    .line 1717
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v2, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$5vwr6qV-eqdCr73CeDmVnsJlZHM;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$5vwr6qV-eqdCr73CeDmVnsJlZHM;

    .line 1719
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1717
    invoke-static {v2, p0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1721
    :cond_1
    return-void
.end method

.method private scheduleUpdateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 2
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1785
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$luI_C3QiJWsM08i8m3lx484SyyY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$luI_C3QiJWsM08i8m3lx484SyyY;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1788
    return-void
.end method

.method private scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 2
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1780
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$NCeV24lEcO5W6ZZr1GqGK-ylU9g;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$NCeV24lEcO5W6ZZr1GqGK-ylU9g;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1782
    return-void
.end method

.method private sendAccessibilityButtonToInputFilter(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 1322
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1323
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_0

    .line 1324
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityButtonClicked(I)V

    .line 1326
    :cond_0
    monitor-exit v0

    .line 1327
    return-void

    .line 1326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "userId"    # I

    .line 2850
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 2851
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY;

    .line 2853
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2851
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2854
    return-void
.end method

.method private sendAccessibilityEventToInputFilter(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 746
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 747
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 750
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 752
    return-void

    .line 750
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendServicesStateChanged(Landroid/os/RemoteCallbackList;Ljava/util/HashSet;J)V
    .locals 1
    .param p3, "uiTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .line 1769
    .local p1, "userClients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/accessibility/IAccessibilityManagerClient;>;"
    .local p2, "userClientUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V

    .line 1770
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V

    .line 1771
    return-void
.end method

.method private sendStateToAllClients(II)V
    .locals 1
    .param p1, "clientState"    # I
    .param p2, "userId"    # I

    .line 1724
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 1725
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(II)V

    .line 1726
    return-void
.end method

.method private sendStateToClients(II)V
    .locals 1
    .param p1, "clientState"    # I
    .param p2, "userId"    # I

    .line 1729
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserState(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 1730
    return-void
.end method

.method private sendStateToClients(ILandroid/os/RemoteCallbackList;)V
    .locals 1
    .param p1, "clientState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;)V"
        }
    .end annotation

    .line 1734
    .local p2, "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/accessibility/IAccessibilityManagerClient;>;"
    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$5x6q6c6gSp0no05xKfQpGFp35yQ;

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$5x6q6c6gSp0no05xKfQpGFp35yQ;-><init>(I)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 1736
    return-void
.end method

.method private setGestureDetectionPassthroughRegionInternal(ILandroid/graphics/Region;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 3459
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3460
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_0

    .line 3461
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V

    .line 3463
    :cond_0
    monitor-exit v0

    .line 3464
    return-void

    .line 3463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setTouchExplorationPassthroughRegionInternal(ILandroid/graphics/Region;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 3451
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3452
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_0

    .line 3453
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V

    .line 3455
    :cond_0
    monitor-exit v0

    .line 3456
    return-void

    .line 3455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private showAccessibilityTargetsSelection(II)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "shortcutType"    # I

    .line 1331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1332
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1333
    const-class v1, Lcom/android/internal/accessibility/dialog/AccessibilityShortcutChooserActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1334
    :cond_0
    const-class v1, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    nop

    .line 1335
    .local v1, "chooserClassName":Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1336
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1337
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 1338
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1339
    return-void
.end method

.method private showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1852
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1853
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 1854
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1856
    .local v1, "label":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v2

    .line 1857
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityUserState;->isTouchExplorationEnabledLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1858
    monitor-exit v0

    return-void

    .line 1860
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 1861
    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1862
    monitor-exit v0

    return-void

    .line 1864
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1010355

    .line 1865
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$4;

    invoke-direct {v5, p0, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$4;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 1866
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$3;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$3;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1887
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10402e5

    .line 1893
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10402e4

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    .line 1894
    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1896
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 1897
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1899
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1901
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1902
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1903
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    monitor-exit v0

    .line 1904
    return-void

    .line 1903
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private switchUser(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 1172
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1173
    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 1174
    monitor-exit v0

    return-void

    .line 1178
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 1181
    .local v1, "oldUserState":Lcom/android/server/accessibility/AccessibilityUserState;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Lcom/android/server/am/OpStartAppControlInjector;->updateAccessibilityService(Ljava/util/Set;)V

    .line 1183
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->onSwitchToAnotherUserLocked()V

    .line 1186
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 1187
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v4, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$zXJtauhUptSkQJSF-M55-grAVbo;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$zXJtauhUptSkQJSF-M55-grAVbo;

    .line 1189
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1187
    invoke-static {v4, p0, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1193
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1194
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    move v3, v5

    .line 1197
    .local v3, "announceNewUser":Z
    :cond_2
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 1199
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v4

    .line 1201
    .local v4, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    invoke-direct {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 1205
    invoke-direct {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1206
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)V

    .line 1208
    if-eqz v3, :cond_3

    .line 1210
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v6, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gu-W_dQ2mWyy8l4tm19TzFxGbeM;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gu-W_dQ2mWyy8l4tm19TzFxGbeM;

    .line 1211
    invoke-static {v6, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xbb8

    .line 1210
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1214
    .end local v1    # "oldUserState":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v2    # "userManager":Landroid/os/UserManager;
    .end local v3    # "announceNewUser":Z
    .end local v4    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    :cond_3
    monitor-exit v0

    .line 1215
    return-void

    .line 1214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unlockUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1234
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1235
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v1

    .line 1236
    .local v1, "parentUserId":I
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v1, v2, :cond_0

    .line 1237
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v2

    .line 1238
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1240
    .end local v1    # "parentUserId":I
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    :cond_0
    monitor-exit v0

    .line 1241
    return-void

    .line 1240
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2364
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2365
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2366
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v2, :cond_0

    .line 2367
    nop

    .line 2368
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v2

    .line 2367
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    .line 2364
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2372
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 2373
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 2374
    .local v0, "currentTargets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 2375
    .local v1, "lastSize":I
    if-nez v1, :cond_2

    .line 2376
    return-void

    .line 2378
    :cond_2
    new-instance v2, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$GUp_mA8vmiAcg0R2-X_abqkp5m8;

    invoke-direct {v2, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$GUp_mA8vmiAcg0R2-X_abqkp5m8;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2380
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 2381
    return-void

    .line 2385
    :cond_3
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rnbNCQJtFw_uMhQIrym3WuAg2Gc;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$rnbNCQJtFw_uMhQIrym3WuAg2Gc;

    const-string v4, "accessibility_button_targets"

    invoke-direct {p0, v4, v2, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 2387
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2388
    return-void
.end method

.method private updateAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 7
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2030
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2031
    .local v0, "identity":J
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v2}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 2032
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 2034
    .local v2, "isA11yEnabled":Z
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_enabled"

    .line 2036
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    iget v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 2034
    invoke-static {v5, v6, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2039
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2040
    nop

    .line 2041
    return-void

    .line 2039
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2040
    throw v3
.end method

.method private updateAccessibilityShortcutKeyTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2202
    nop

    .line 2203
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 2204
    .local v0, "currentTargets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 2205
    .local v1, "lastSize":I
    if-nez v1, :cond_0

    .line 2206
    return-void

    .line 2208
    :cond_0
    new-instance v2, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$hFXGzgE7_VsXwOxnttp-rxyJY9U;

    invoke-direct {v2, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$hFXGzgE7_VsXwOxnttp-rxyJY9U;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2210
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 2211
    return-void

    .line 2215
    :cond_1
    iget v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$MhnuCBpuqBWYiFc16BnfACa9EFI;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$MhnuCBpuqBWYiFc16BnfACa9EFI;

    const-string v4, "accessibility_shortcut_target_service"

    invoke-direct {p0, v4, v2, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 2218
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 2219
    return-void
.end method

.method private updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 4
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1999
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2000
    .local v0, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2001
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2002
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-boolean v3, v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    if-eqz v3, :cond_0

    .line 2003
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 2006
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/AccessibilityUserState;->setFilterKeyEventsEnabledLocked(Z)V

    .line 2007
    return-void

    .line 2000
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2010
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setFilterKeyEventsEnabledLocked(Z)V

    .line 2011
    return-void
.end method

.method private updateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 10
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2326
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2327
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2328
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.fingerprint"

    .line 2329
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2331
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2332
    .local v2, "numServices":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2333
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2335
    .local v4, "identity":J
    const/4 v6, 0x0

    .line 2337
    .local v6, "service":Landroid/hardware/fingerprint/IFingerprintService;
    :try_start_1
    const-string v7, "fingerprint"

    .line 2338
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 2337
    invoke-static {v7}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v7

    .line 2340
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2341
    nop

    .line 2342
    if-eqz v6, :cond_0

    .line 2343
    new-instance v7, Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2344
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v7, v6, v8, v9}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;-><init>(Landroid/hardware/fingerprint/IFingerprintService;Landroid/content/res/Resources;Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    .line 2345
    goto :goto_1

    .line 2340
    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2341
    nop

    .end local p0    # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .end local p1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    throw v7

    .line 2332
    .end local v4    # "identity":J
    .end local v6    # "service":Landroid/hardware/fingerprint/IFingerprintService;
    .restart local p0    # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .restart local p1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2350
    .end local v2    # "numServices":I
    .end local v3    # "i":I
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2351
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-eqz v0, :cond_2

    .line 2352
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->updateClientList(Ljava/util/List;)V

    .line 2354
    :cond_2
    return-void

    .line 2350
    .end local v1    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private updateInputFilter(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 7
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1791
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1793
    :cond_0
    const/4 v0, 0x0

    .line 1794
    .local v0, "setInputFilter":Z
    const/4 v1, 0x0

    .line 1795
    .local v1, "inputFilter":Lcom/android/server/accessibility/AccessibilityInputFilter;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1796
    const/4 v3, 0x0

    .line 1797
    .local v3, "flags":I
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isDisplayMagnificationEnabledLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1798
    or-int/lit8 v3, v3, 0x1

    .line 1800
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutMagnificationEnabledLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1801
    or-int/lit8 v3, v3, 0x40

    .line 1803
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->userHasMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1804
    or-int/lit8 v3, v3, 0x20

    .line 1807
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1808
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTouchExplorationEnabledLocked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1809
    or-int/lit8 v3, v3, 0x2

    .line 1810
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isServiceHandlesDoubleTapEnabledLocked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1811
    or-int/lit16 v3, v3, 0x80

    .line 1813
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isMultiFingerGesturesEnabledLocked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1814
    or-int/lit16 v3, v3, 0x100

    .line 1817
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isFilterKeyEventsEnabledLocked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1818
    or-int/lit8 v3, v3, 0x4

    .line 1820
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isAutoclickEnabledLocked()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1821
    or-int/lit8 v3, v3, 0x8

    .line 1823
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isPerformGesturesEnabledLocked()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1824
    or-int/lit8 v3, v3, 0x10

    .line 1826
    :cond_8
    if-eqz v3, :cond_b

    .line 1827
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-nez v4, :cond_a

    .line 1828
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 1829
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-nez v4, :cond_9

    .line 1830
    new-instance v4, Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 1833
    :cond_9
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-object v1, v4

    .line 1834
    const/4 v0, 0x1

    .line 1836
    :cond_a
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {v4, v5, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setUserAndEnabledFeatures(II)V

    goto :goto_0

    .line 1838
    :cond_b
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v4, :cond_c

    .line 1839
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 1840
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget v6, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {v5, v6, v4}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setUserAndEnabledFeatures(II)V

    .line 1841
    const/4 v1, 0x0

    .line 1842
    const/4 v0, 0x1

    .line 1845
    .end local v3    # "flags":I
    :cond_c
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1846
    if-eqz v0, :cond_d

    .line 1847
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 1849
    :cond_d
    return-void

    .line 1845
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 7
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1967
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1968
    .local v0, "installedServiceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1969
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1970
    .local v2, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1971
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x11

    if-gt v4, v5, :cond_0

    .line 1975
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    .local v4, "componentName":Landroid/content/ComponentName;
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1978
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 1968
    .end local v2    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "componentName":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1983
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2253
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v1, :cond_0

    .line 2254
    return-void

    .line 2257
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    if-eqz v0, :cond_1

    .line 2258
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->setUserId(I)V

    .line 2261
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    if-eqz v0, :cond_2

    .line 2263
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->unregisterAll()V

    .line 2264
    return-void

    .line 2270
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2271
    .local v0, "displays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isDisplayMagnificationEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2272
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutMagnificationEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 2281
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 2282
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    .line 2283
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 2284
    .local v3, "displayId":I
    invoke-direct {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->userHasListeningMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2285
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/MagnificationController;->register(I)V

    goto :goto_1

    .line 2286
    :cond_4
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    if-eqz v4, :cond_5

    .line 2287
    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/MagnificationController;->unregister(I)V

    .line 2281
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "displayId":I
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2290
    .end local v1    # "i":I
    :cond_6
    return-void

    .line 2273
    :cond_7
    :goto_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2274
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    .line 2275
    .restart local v2    # "display":Landroid/view/Display;
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/MagnificationController;->register(I)V

    .line 2273
    .end local v2    # "display":Landroid/view/Display;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2277
    .end local v1    # "i":I
    :cond_8
    return-void
.end method

.method private updatePerformGesturesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 4
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1986
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1987
    .local v0, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1988
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1989
    .local v2, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_0

    .line 1991
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/AccessibilityUserState;->setPerformGesturesEnabledLocked(Z)V

    .line 1992
    return-void

    .line 1987
    .end local v2    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1995
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setPerformGesturesEnabledLocked(Z)V

    .line 1996
    return-void
.end method

.method private updateRecommendedUiTimeoutLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 8
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2517
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getUserNonInteractiveUiTimeoutLocked()I

    move-result v0

    .line 2518
    .local v0, "newNonInteractiveUiTimeout":I
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getUserInteractiveUiTimeoutLocked()I

    move-result v1

    .line 2520
    .local v1, "newInteractiveUiTimeout":I
    if-eqz v0, :cond_0

    if-nez v1, :cond_5

    .line 2521
    :cond_0
    const/4 v2, 0x0

    .line 2522
    .local v2, "serviceNonInteractiveUiTimeout":I
    const/4 v3, 0x0

    .line 2523
    .local v3, "serviceInteractiveUiTimeout":I
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2524
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 2525
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getInteractiveUiTimeoutMillis()I

    move-result v6

    .line 2526
    .local v6, "timeout":I
    if-ge v3, v6, :cond_1

    .line 2527
    move v3, v6

    .line 2529
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getNonInteractiveUiTimeoutMillis()I

    move-result v6

    .line 2530
    if-ge v2, v6, :cond_2

    .line 2531
    move v2, v6

    .line 2524
    .end local v6    # "timeout":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2534
    .end local v5    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 2535
    move v0, v2

    .line 2537
    :cond_4
    if-nez v1, :cond_5

    .line 2538
    move v1, v3

    .line 2541
    .end local v2    # "serviceNonInteractiveUiTimeout":I
    .end local v3    # "serviceInteractiveUiTimeout":I
    .end local v4    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :cond_5
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setNonInteractiveUiTimeoutLocked(I)V

    .line 2542
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setInteractiveUiTimeoutLocked(I)V

    .line 2543
    return-void
.end method

.method private updateRelevantEventsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 2
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1486
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$OoFjRI6y1WlU95cVLgWQrJ3H0b0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$OoFjRI6y1WlU95cVLgWQrJ3H0b0;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1509
    return-void
.end method

.method private updateServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 24
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1651
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    iget-object v13, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 1653
    .local v13, "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iget v1, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 1654
    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v16

    .line 1656
    .local v16, "isUnlockingOrUnlocked":Z
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    .local v12, "count":I
    :goto_0
    if-ge v11, v12, :cond_8

    .line 1657
    iget-object v0, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1658
    .local v17, "installedService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    nop

    .line 1659
    invoke-virtual/range {v17 .. v17}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1658
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 1661
    .local v10, "componentName":Landroid/content/ComponentName;
    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1664
    .local v9, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    if-nez v16, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isDirectBootAware()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring non-encryption-aware service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    move/from16 v22, v11

    move/from16 v19, v12

    move-object/from16 v21, v13

    move-object v0, v14

    goto/16 :goto_3

    .line 1670
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1671
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getCrashedServicesLocked()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1672
    move/from16 v22, v11

    move/from16 v19, v12

    move-object/from16 v21, v13

    move-object v0, v14

    goto/16 :goto_3

    .line 1674
    :cond_1
    iget-object v0, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 1675
    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1676
    if-nez v9, :cond_2

    .line 1677
    new-instance v18, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v2, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v0, v5, 0x1

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    iget-object v6, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v7, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    iget-object v8, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v4, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 1679
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object v19

    iget-object v3, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v0, v18

    move-object/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v21, v3

    move-object v3, v10

    move-object/from16 v22, v4

    move-object/from16 v4, v17

    move-object v14, v9

    .end local v9    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .local v14, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    move-object/from16 v9, p0

    move-object/from16 v23, v10

    .end local v10    # "componentName":Landroid/content/ComponentName;
    .local v23, "componentName":Landroid/content/ComponentName;
    move-object/from16 v10, v22

    move/from16 v22, v11

    .end local v11    # "i":I
    .local v22, "i":I
    move-object/from16 v11, v19

    move/from16 v19, v12

    .end local v12    # "count":I
    .local v19, "count":I
    move-object/from16 v12, v21

    move-object/from16 v21, v13

    .end local v13    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .local v21, "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    move-object/from16 v13, v20

    invoke-direct/range {v0 .. v13}, Lcom/android/server/accessibility/AccessibilityServiceConnection;-><init>(Lcom/android/server/accessibility/AccessibilityUserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;Lcom/android/server/wm/ActivityTaskManagerInternal;)V

    move-object/from16 v9, v18

    .end local v14    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v9    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    goto :goto_1

    .line 1681
    .end local v19    # "count":I
    .end local v21    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .end local v22    # "i":I
    .end local v23    # "componentName":Landroid/content/ComponentName;
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "i":I
    .restart local v12    # "count":I
    .restart local v13    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :cond_2
    move-object v14, v9

    move-object/from16 v23, v10

    move/from16 v22, v11

    move/from16 v19, v12

    move-object/from16 v21, v13

    .end local v9    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "i":I
    .end local v12    # "count":I
    .end local v13    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .restart local v14    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v19    # "count":I
    .restart local v21    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .restart local v22    # "i":I
    .restart local v23    # "componentName":Landroid/content/ComponentName;
    iget-object v0, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1682
    move-object/from16 v0, p0

    goto :goto_3

    .line 1681
    :cond_3
    move-object v9, v14

    .line 1684
    .end local v14    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v9    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :goto_1
    invoke-virtual {v9}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->bindLocked()V

    move-object/from16 v0, p0

    goto :goto_3

    .line 1675
    .end local v19    # "count":I
    .end local v21    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .end local v22    # "i":I
    .end local v23    # "componentName":Landroid/content/ComponentName;
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "i":I
    .restart local v12    # "count":I
    .restart local v13    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :cond_4
    move-object v14, v9

    move-object/from16 v23, v10

    move/from16 v22, v11

    move/from16 v19, v12

    move-object/from16 v21, v13

    .end local v9    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "i":I
    .end local v12    # "count":I
    .end local v13    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .restart local v14    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v19    # "count":I
    .restart local v21    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .restart local v22    # "i":I
    .restart local v23    # "componentName":Landroid/content/ComponentName;
    goto :goto_2

    .line 1674
    .end local v14    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v19    # "count":I
    .end local v21    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .end local v22    # "i":I
    .end local v23    # "componentName":Landroid/content/ComponentName;
    .restart local v9    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "i":I
    .restart local v12    # "count":I
    .restart local v13    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :cond_5
    move-object v14, v9

    move-object/from16 v23, v10

    move/from16 v22, v11

    move/from16 v19, v12

    move-object/from16 v21, v13

    .line 1686
    .end local v9    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "i":I
    .end local v12    # "count":I
    .end local v13    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .restart local v14    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v19    # "count":I
    .restart local v21    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .restart local v22    # "i":I
    .restart local v23    # "componentName":Landroid/content/ComponentName;
    :goto_2
    if-eqz v14, :cond_6

    .line 1687
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    .line 1688
    move-object/from16 v0, p0

    move-object v1, v14

    .end local v14    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-direct {v0, v15, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeShortcutTargetForUnboundServiceLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    goto :goto_3

    .line 1686
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v14    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_6
    move-object/from16 v0, p0

    move-object v1, v14

    .end local v14    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v1    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    goto :goto_3

    .line 1670
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v19    # "count":I
    .end local v21    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .end local v22    # "i":I
    .end local v23    # "componentName":Landroid/content/ComponentName;
    .restart local v9    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "i":I
    .restart local v12    # "count":I
    .restart local v13    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :cond_7
    move-object v1, v9

    move-object/from16 v23, v10

    move/from16 v22, v11

    move/from16 v19, v12

    move-object/from16 v21, v13

    move-object v0, v14

    .line 1656
    .end local v9    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "i":I
    .end local v12    # "count":I
    .end local v13    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .end local v17    # "installedService":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local v19    # "count":I
    .restart local v21    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .restart local v22    # "i":I
    :goto_3
    add-int/lit8 v11, v22, 0x1

    move-object v14, v0

    move/from16 v12, v19

    move-object/from16 v13, v21

    .end local v22    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_0

    .end local v19    # "count":I
    .end local v21    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .restart local v12    # "count":I
    .restart local v13    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :cond_8
    move/from16 v22, v11

    move/from16 v19, v12

    move-object/from16 v21, v13

    move-object v0, v14

    .line 1693
    .end local v11    # "i":I
    .end local v12    # "count":I
    .end local v13    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .restart local v21    # "componentNameToServiceMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    iget-object v1, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1694
    .local v1, "count":I
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    .line 1695
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_a

    .line 1696
    iget-object v3, v15, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1697
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1698
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_9

    .line 1699
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/IntArray;->add(I)V

    .line 1695
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1703
    .end local v2    # "i":I
    :cond_a
    const-class v2, Landroid/media/AudioManagerInternal;

    .line 1704
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManagerInternal;

    .line 1705
    .local v2, "audioManager":Landroid/media/AudioManagerInternal;
    if-eqz v2, :cond_b

    .line 1706
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    invoke-virtual {v2, v3}, Landroid/media/AudioManagerInternal;->setAccessibilityServiceUids(Landroid/util/IntArray;)V

    .line 1708
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1709
    return-void
.end method

.method private updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 10
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2091
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->isTouchExplorationEnabledLocked()Z

    move-result v0

    .line 2092
    .local v0, "touchExplorationEnabled":Z
    const/4 v1, 0x0

    .line 2093
    .local v1, "serviceHandlesDoubleTapEnabled":Z
    const/4 v2, 0x0

    .line 2094
    .local v2, "requestMultiFingerGestures":Z
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2095
    .local v3, "serviceCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 2096
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2097
    .local v5, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-direct {p0, v5, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2098
    const/4 v0, 0x1

    .line 2099
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isServiceHandlesDoubleTapEnabled()Z

    move-result v1

    .line 2100
    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isMultiFingerGesturesEnabled()Z

    move-result v2

    .line 2101
    goto :goto_1

    .line 2095
    .end local v5    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2104
    .end local v4    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityUserState;->isTouchExplorationEnabledLocked()Z

    move-result v4

    if-eq v0, v4, :cond_3

    .line 2105
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->setTouchExplorationEnabledLocked(Z)V

    .line 2106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2108
    .local v4, "identity":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "touch_exploration_enabled"

    .line 2109
    if-eqz v0, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    iget v9, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 2108
    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2112
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2113
    goto :goto_3

    .line 2112
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2113
    throw v6

    .line 2115
    .end local v4    # "identity":J
    :cond_3
    :goto_3
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->setServiceHandlesDoubleTapLocked(Z)V

    .line 2116
    invoke-virtual {p1, v2}, Lcom/android/server/accessibility/AccessibilityUserState;->setMultiFingerGesturesLocked(Z)V

    .line 2117
    return-void
.end method

.method private updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 8
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1936
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->canRetrieveInteractiveWindowsLocked()Z

    move-result v0

    .line 1937
    .local v0, "observingWindows":Z
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1938
    .local v1, "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1939
    .local v2, "boundServiceCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-nez v0, :cond_1

    if-ge v3, v2, :cond_1

    .line 1940
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1941
    .local v4, "boundService":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->canRetrieveInteractiveWindowsLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1942
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->setAccessibilityFocusOnlyInActiveWindow(Z)V

    .line 1943
    const/4 v0, 0x1

    .line 1939
    .end local v4    # "boundService":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1946
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/AccessibilityUserState;->setAccessibilityFocusOnlyInActiveWindow(Z)V

    .line 1950
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1951
    .local v3, "displays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1952
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display;

    .line 1953
    .local v5, "display":Landroid/view/Display;
    if-eqz v5, :cond_3

    .line 1954
    if-eqz v0, :cond_2

    .line 1955
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->startTrackingWindows(I)V

    goto :goto_2

    .line 1957
    :cond_2
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->stopTrackingWindows(I)V

    .line 1951
    .end local v5    # "display":Landroid/view/Display;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1961
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method private userHasListeningMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)Z
    .locals 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;
    .param p2, "displayId"    # I

    .line 2313
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2314
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2315
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2316
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2317
    invoke-virtual {v3, p2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isMagnificationCallbackEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2318
    const/4 v4, 0x1

    return v4

    .line 2314
    .end local v3    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2321
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private userHasMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z
    .locals 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 2297
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 2298
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2299
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 2300
    .local v3, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2301
    const/4 v4, 0x1

    return v4

    .line 2298
    .end local v3    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2304
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public accessibilityFocusOnlyInActiveWindow()Z
    .locals 2

    .line 1137
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I
    .locals 6
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "leashToken"    # Landroid/os/IBinder;
    .param p3, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J
    .locals 10
    .param p1, "callback"    # Landroid/view/accessibility/IAccessibilityManagerClient;
    .param p2, "userId"    # I

    .line 618
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 623
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 628
    .local v1, "resolvedUserId":I
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v2

    .line 629
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/accessibility/AccessibilityManagerService$Client;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V

    move-object v3, v9

    .line 630
    .local v3, "client":Lcom/android/server/accessibility/AccessibilityManagerService$Client;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v4, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 631
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, p1, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 634
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClientUids:Ljava/util/HashSet;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 635
    :try_start_1
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClientUids:Ljava/util/HashSet;

    iget v6, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 636
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    nop

    .line 642
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)I

    move-result v4

    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 641
    invoke-static {v4, v5}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v4

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-wide v4

    .line 636
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .end local p1    # "callback":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local p2    # "userId":I
    :try_start_4
    throw v5

    .line 645
    .restart local p0    # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .restart local p1    # "callback":Landroid/view/accessibility/IAccessibilityManagerClient;
    .restart local p2    # "userId":I
    :cond_0
    iget-object v4, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, p1, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 648
    iget-object v4, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClientUids:Ljava/util/HashSet;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 649
    :try_start_5
    iget-object v5, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClientUids:Ljava/util/HashSet;

    iget v6, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 650
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 661
    :try_start_6
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v1, v4, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getClientStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;)I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 660
    invoke-static {v4, v5}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v4

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-wide v4

    .line 650
    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local p0    # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .end local p1    # "callback":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local p2    # "userId":I
    :try_start_8
    throw v5

    .line 664
    .end local v1    # "resolvedUserId":I
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v3    # "client":Lcom/android/server/accessibility/AccessibilityManagerService$Client;
    .restart local p0    # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .restart local p1    # "callback":Landroid/view/accessibility/IAccessibilityManagerClient;
    .restart local p2    # "userId":I
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method public associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "host"    # Landroid/os/IBinder;
    .param p2, "embedded"    # Landroid/os/IBinder;

    .line 2935
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2936
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->associateEmbeddedHierarchyLocked(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 2937
    monitor-exit v0

    .line 2938
    return-void

    .line 2937
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2942
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2943
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->disassociateEmbeddedHierarchyLocked(Landroid/os/IBinder;)V

    .line 2944
    monitor-exit v0

    .line 2945
    return-void

    .line 2944
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2949
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "AccessibilityManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2950
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2951
    :try_start_0
    const-string v1, "ACCESSIBILITY MANAGER (dumpsys accessibility)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2952
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2953
    const-string v1, "currentUserId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2954
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2955
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2956
    .local v1, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2957
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityUserState;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2956
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2959
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v2}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2960
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/accessibility/UiAutomationManager;->dumpUiAutomationService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2961
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2963
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2964
    .end local v1    # "userCount":I
    monitor-exit v0

    .line 2965
    return-void

    .line 2964
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z
    .locals 1
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .line 1116
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityShortcutTargets(I)Ljava/util/List;
    .locals 2
    .param p1, "shortcutType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2776
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2781
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityShortcutTargetsInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2778
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getAccessibilityShortcutService requires the MANAGE_ACCESSIBILITY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccessibilityWindowId(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 2887
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2888
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 2892
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 2889
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only SYSTEM can call getAccessibilityWindowId"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .end local p1    # "windowToken":Landroid/os/IBinder;
    throw v1

    .line 2893
    .restart local p0    # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .restart local p1    # "windowToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getActiveWindowId()I
    .locals 2

    .line 1160
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result v0

    return v0
.end method

.method getBindInstantServiceAllowed(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 387
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 389
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindInstantServiceAllowedLocked()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 390
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    .locals 2
    .param p1, "windowId"    # I

    .line 2548
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object v0

    .line 2550
    .local v0, "windowToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 2551
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerInternal;->getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;

    move-result-object v1

    return-object v1

    .line 2554
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCurrentUserIdLocked()I
    .locals 1

    .line 343
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    return v0
.end method

.method public getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .locals 9
    .param p1, "feedbackType"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 803
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 807
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 808
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 811
    .local v1, "resolvedUserId":I
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v2

    .line 812
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v3}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 813
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 816
    :cond_0
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 817
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 818
    .local v4, "serviceCount":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 819
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_2

    .line 820
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 821
    .local v7, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget v8, v7, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mFeedbackType:I

    and-int/2addr v8, p1

    if-eqz v8, :cond_1

    .line 822
    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    .end local v7    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 825
    .end local v6    # "i":I
    :cond_2
    monitor-exit v0

    return-object v5

    .line 826
    .end local v1    # "resolvedUserId":I
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v3    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .end local v4    # "serviceCount":I
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    return-object v0
.end method

.method public getInstalledAccessibilityServiceList(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 795
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 796
    .local v1, "resolvedUserId":I
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    monitor-exit v0

    return-object v2

    .line 797
    .end local v1    # "resolvedUserId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;
    .locals 5

    .line 2559
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    if-nez v0, :cond_0

    .line 2560
    new-instance v0, Lcom/android/server/accessibility/KeyEventDispatcher;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/KeyEventDispatcher;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    .line 2564
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    return-object v0
.end method

.method public getMagnificationController()Lcom/android/server/accessibility/MagnificationController;
    .locals 4

    .line 2992
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2993
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    if-nez v1, :cond_0

    .line 2994
    new-instance v1, Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/accessibility/MagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 2995
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->setUserId(I)V

    .line 2997
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    monitor-exit v0

    return-object v1

    .line 2998
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMotionEventInjectorForDisplayLocked(I)Lcom/android/server/accessibility/MotionEventInjector;
    .locals 6
    .param p1, "displayId"    # I

    .line 1090
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 1091
    .local v0, "endMillis":J
    const/4 v2, 0x0

    .line 1092
    .local v2, "motionEventInjector":Lcom/android/server/accessibility/MotionEventInjector;
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjectors:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    .line 1094
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1095
    :catch_0
    move-exception v3

    .line 1097
    :goto_1
    goto :goto_0

    .line 1099
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjectors:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    .line 1100
    const-string v3, "AccessibilityManagerService"

    const-string v4, "MotionEventInjector installation timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1102
    :cond_1
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/accessibility/MotionEventInjector;

    .line 1104
    :goto_2
    return-object v2
.end method

.method public getPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .line 2570
    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedTimeoutMillis()J
    .locals 4

    .line 2904
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2905
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 2906
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getRecommendedTimeoutMillisLocked(Lcom/android/server/accessibility/AccessibilityUserState;)J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    .line 2907
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getValidDisplayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation

    .line 3150
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yDisplayListener:Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityDisplayListener;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getWindowBounds(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "windowId"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 1149
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1150
    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowToken(II)Landroid/os/IBinder;

    move-result-object v1

    .line 1151
    .local v1, "token":Landroid/os/IBinder;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerInternal;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1153
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    const/4 v0, 0x1

    return v0

    .line 1156
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1151
    .end local v1    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
    .locals 2

    .line 2925
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2926
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    if-nez v1, :cond_0

    .line 2927
    new-instance v1, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    invoke-direct {v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    .line 2929
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowMagnificationMgr:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    monitor-exit v0

    return-object v1

    .line 2930
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindowToken(II)Landroid/os/IBinder;
    .locals 4
    .param p1, "windowId"    # I
    .param p2, "userId"    # I

    .line 945
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.RETRIEVE_WINDOW_TOKEN"

    const-string v2, "getWindowToken"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 952
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 953
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 954
    .local v1, "resolvedUserId":I
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 955
    monitor-exit v0

    return-object v3

    .line 957
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 958
    monitor-exit v0

    return-object v3

    .line 960
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 961
    .end local v1    # "resolvedUserId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interrupt(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 832
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 837
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    .line 839
    .local v1, "resolvedUserId":I
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v1, v2, :cond_0

    .line 840
    monitor-exit v0

    return-void

    .line 842
    :cond_0
    nop

    .line 843
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 844
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 845
    .local v3, "numServices":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 846
    .local v4, "interfacesToInterrupt":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/IAccessibilityServiceClient;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 847
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 848
    .local v6, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    iget-object v7, v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 849
    .local v7, "a11yServiceBinder":Landroid/os/IBinder;
    iget-object v8, v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 850
    .local v8, "a11yServiceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    .line 851
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    .end local v6    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    .end local v7    # "a11yServiceBinder":Landroid/os/IBinder;
    .end local v8    # "a11yServiceInterface":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 854
    .end local v1    # "resolvedUserId":I
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    .end local v3    # "numServices":I
    .end local v5    # "i":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 857
    :try_start_1
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onInterrupt()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 861
    goto :goto_2

    .line 858
    :catch_0
    move-exception v2

    .line 859
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending interrupt request to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 859
    const-string v5, "AccessibilityManagerService"

    invoke-static {v5, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 863
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_3
    return-void

    .line 854
    .end local v4    # "interfacesToInterrupt":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/IAccessibilityServiceClient;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isAccessibilityButtonShown()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityButtonShown:Z

    return v0
.end method

.method public synthetic lambda$updateRelevantEventsLocked$2$AccessibilityManagerService(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 5
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;
    .param p2, "client"    # Lcom/android/server/accessibility/AccessibilityManagerService$Client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1488
    const/4 v0, -0x1

    .line 1490
    .local v0, "clientUid":I
    const/4 v1, 0x0

    .line 1491
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1492
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result v3

    .line 1494
    .local v3, "relevantEventTypes":I
    iget v4, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    if-eq v4, v3, :cond_0

    .line 1495
    iput v3, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    .line 1496
    iget v4, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mUid:I

    move v0, v4

    .line 1497
    const/4 v1, 0x1

    .line 1499
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1500
    if-eqz v1, :cond_1

    .line 1505
    iget-object v2, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {v2, v3}, Landroid/view/accessibility/IAccessibilityManagerClient;->setRelevantEventTypes(I)V

    .line 1507
    :cond_1
    return-void

    .line 1499
    .end local v3    # "relevantEventTypes":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public synthetic lambda$updateRelevantEventsLocked$3$AccessibilityManagerService(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 1
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1487
    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ZdLvxqIs4SwVXlG74hryDdIsj8Q;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ZdLvxqIs4SwVXlG74hryDdIsj8Q;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->broadcastToClients(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/function/Consumer;)V

    .line 1508
    return-void
.end method

.method public notifyAccessibilityButtonClicked(ILjava/lang/String;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "targetName"    # Ljava/lang/String;

    .line 975
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 980
    if-nez p2, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 982
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 983
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getTargetAssignedToAccessibilityButton()Ljava/lang/String;

    move-result-object v2

    move-object p2, v2

    .line 984
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 986
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$eskhivxnBVBZCLZ0d5oWdhYVtfs;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$eskhivxnBVBZCLZ0d5oWdhYVtfs;

    .line 988
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 986
    invoke-static {v1, p0, v2, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 989
    return-void

    .line 977
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR_SERVICE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyAccessibilityButtonVisibilityChanged(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .line 1000
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingOrSelfPermission(Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1003
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityButtonVisibilityChangedLocked(Z)V

    .line 1004
    monitor-exit v0

    .line 1005
    return-void

    .line 1004
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 1044
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1045
    nop

    .line 1046
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 1047
    .local v1, "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1048
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1050
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/accessibility/KeyEventDispatcher;->notifyKeyEventLocked(Landroid/view/KeyEvent;ILjava/util/List;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1051
    .end local v1    # "boundServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/AccessibilityServiceConnection;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyMagnificationChanged(ILandroid/graphics/Region;FFF)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "scale"    # F
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F

    .line 1067
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1068
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    .line 1069
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChangedLocked(ILandroid/graphics/Region;FFF)V

    .line 1070
    monitor-exit v0

    .line 1071
    return-void

    .line 1070
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifySystemActionsChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 2
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 1036
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1037
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 1038
    .local v1, "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifySystemActionsChangedLocked()V

    .line 1036
    .end local v1    # "service":Lcom/android/server/accessibility/AccessibilityServiceConnection;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1040
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onClientChangeLocked(Z)V
    .locals 1
    .param p1, "serviceInfoChanged"    # Z

    .line 3003
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 3004
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3005
    if-eqz p1, :cond_0

    .line 3006
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 3008
    :cond_0
    return-void
.end method

.method public onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .locals 3
    .param p1, "gestureEvent"    # Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 1014
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1015
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z

    move-result v1

    .line 1016
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 1017
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z

    move-result v2

    move v1, v2

    .line 1019
    :cond_0
    monitor-exit v0

    return v1

    .line 1020
    .end local v1    # "handled":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V
    .locals 0
    .param p1, "userState"    # Lcom/android/server/accessibility/AccessibilityUserState;

    .line 353
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 354
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3014
    new-instance v0, Lcom/android/server/accessibility/AccessibilityShellCommand;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSystemActionPerformer:Lcom/android/server/accessibility/SystemActionPerformer;

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityShellCommand;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/SystemActionPerformer;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/AccessibilityShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3016
    return-void
.end method

.method public onSystemActionsChanged()V
    .locals 2

    .line 1028
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1029
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 1030
    .local v1, "state":Lcom/android/server/accessibility/AccessibilityUserState;
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifySystemActionsChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1031
    .end local v1    # "state":Lcom/android/server/accessibility/AccessibilityUserState;
    monitor-exit v0

    .line 1032
    return-void

    .line 1031
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTouchInteractionEnd()V
    .locals 1

    .line 1168
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onTouchInteractionEnd()V

    .line 1169
    return-void
.end method

.method public onTouchInteractionStart()V
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->onTouchInteractionStart()V

    .line 1165
    return-void
.end method

.method public performAccessibilityShortcut(Ljava/lang/String;)V
    .locals 4
    .param p1, "targetName"    # Ljava/lang/String;

    .line 2584
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 2585
    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2587
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "performAccessibilityShortcut requires the MANAGE_ACCESSIBILITY permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2590
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$eskhivxnBVBZCLZ0d5oWdhYVtfs;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$eskhivxnBVBZCLZ0d5oWdhYVtfs;

    const/4 v2, 0x0

    .line 2592
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2590
    invoke-static {v1, p0, v2, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2593
    return-void
.end method

.method public performActionOnAccessibilityFocusedItem(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 1
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 1130
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->performActionOnAccessibilityFocusedItemNotLocked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v0

    return v0
.end method

.method public persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 1
    .param p1, "settingName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .line 1595
    .local p2, "componentNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$w89etkvLWR-_CyLrTZBzMBGC7ZI;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$w89etkvLWR-_CyLrTZBzMBGC7ZI;

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistColonDelimitedSetToSettingLocked(Ljava/lang/String;ILjava/util/Set;Ljava/util/function/Function;)V

    .line 1597
    return-void
.end method

.method public registerSystemAction(Landroid/app/RemoteAction;I)V
    .locals 3
    .param p1, "action"    # Landroid/app/RemoteAction;
    .param p2, "actionId"    # I

    .line 761
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    const-string/jumbo v2, "registerSystemAction"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->registerSystemAction(ILandroid/app/RemoteAction;)V

    .line 765
    return-void
.end method

.method public registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V
    .locals 16
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "serviceClient"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p4, "flags"    # I

    .line 891
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.RETRIEVE_WINDOW_CONTENT"

    const-string/jumbo v2, "registerUiTestAutomationService"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v15, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 895
    :try_start_0
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    iget-object v4, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v0, v6, 0x1

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    iget-object v7, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v8, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget-object v10, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 897
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object v11

    iget-object v12, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 895
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p0

    move/from16 v13, p4

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/accessibility/UiAutomationManager;->registerUiTestAutomationServiceLocked(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 899
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    invoke-direct {v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 900
    monitor-exit v15

    .line 901
    return-void

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;

    .line 875
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    .line 876
    return-void
.end method

.method restoreEnabledAccessibilityServicesLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "oldSetting"    # Ljava/lang/String;
    .param p2, "newSetting"    # Ljava/lang/String;

    .line 1252
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 1253
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 1255
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 1256
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1259
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-static {v2}, Lcom/android/server/am/OpStartAppControlInjector;->updateAccessibilityService(Ljava/util/Set;)V

    .line 1261
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1262
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    const-string v3, "enabled_accessibility_services"

    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 1266
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1267
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)V

    .line 1268
    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 11
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "userId"    # I

    .line 669
    const/4 v0, 0x0

    .line 671
    .local v0, "dispatchEvent":Z
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 672
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    const/4 v3, -0x3

    if-ne v2, v3, :cond_0

    .line 675
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 676
    .local v2, "pip":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    .line 678
    .local v3, "pipId":I
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 685
    .end local v2    # "pip":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v3    # "pipId":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 686
    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 689
    .local v2, "resolvedUserId":I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 690
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v5

    .line 691
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCallingPid()I

    move-result v6

    .line 689
    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 694
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v2, v3, :cond_2

    .line 695
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canDispatchAccessibilityEventLocked(ILandroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 696
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 697
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v7

    .line 698
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I

    move-result v10

    .line 696
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->updateActiveAndAccessibilityFocusedWindowLocked(IIJII)V

    .line 699
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 700
    const/4 v0, 0x1

    .line 702
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v3, :cond_2

    .line 703
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v4, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$BX2CMQr5jU9WhPYx7Aaae4zgxf4;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$BX2CMQr5jU9WhPYx7Aaae4zgxf4;

    .line 705
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    .line 703
    invoke-static {v4, p0, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 708
    .end local v2    # "resolvedUserId":I
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 710
    if-eqz v0, :cond_6

    .line 714
    const/4 v1, 0x0

    .line 715
    .local v1, "shouldComputeWindows":Z
    const/4 v2, -0x1

    .line 716
    .local v2, "displayId":I
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 717
    :try_start_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    .line 718
    .local v4, "windowId":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v5

    const/16 v6, 0x20

    const/4 v7, -0x1

    if-ne v5, v6, :cond_3

    if-eq v4, v7, :cond_3

    .line 720
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v5, v6, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDisplayIdByUserIdAndWindowIdLocked(II)I

    move-result v5

    move v2, v5

    .line 723
    :cond_3
    if-eq v2, v7, :cond_4

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 724
    invoke-virtual {v5, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->isTrackingWindowsLocked(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 725
    const/4 v1, 0x1

    .line 727
    .end local v4    # "windowId":I
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 728
    if-eqz v1, :cond_5

    .line 729
    const-class v3, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    .line 731
    .local v3, "wm":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility(I)V

    .line 733
    .end local v3    # "wm":Lcom/android/server/wm/WindowManagerInternal;
    :cond_5
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 734
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 735
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    .line 736
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/UiAutomationManager;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 737
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 727
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 740
    .end local v1    # "shouldComputeWindows":Z
    .end local v2    # "displayId":I
    :cond_6
    :goto_0
    sget v1, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 741
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 743
    :cond_7
    return-void

    .line 708
    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2
.end method

.method public sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2845
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 2846
    return-void
.end method

.method public sendFingerprintGesture(I)Z
    .locals 3
    .param p1, "gestureKeyCode"    # I

    .line 2866
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2867
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 2870
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2871
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-nez v0, :cond_0

    .line 2872
    const/4 v0, 0x0

    return v0

    .line 2874
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->onFingerprintGesture(I)Z

    move-result v0

    return v0

    .line 2868
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only SYSTEM can call sendFingerprintGesture"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .end local p1    # "gestureKeyCode":I
    throw v1

    .line 2870
    .restart local p0    # "this":Lcom/android/server/accessibility/AccessibilityManagerService;
    .restart local p1    # "gestureKeyCode":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setBindInstantServiceAllowed(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "allowed"    # Z

    .line 394
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string/jumbo v2, "setBindInstantServiceAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 399
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindInstantServiceAllowedLocked()Z

    move-result v2

    if-eq p2, v2, :cond_0

    .line 400
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->setBindInstantServiceAllowedLocked(Z)V

    .line 401
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 403
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    :cond_0
    monitor-exit v0

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 3432
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$eSvVtuaJKbqaBq9Bpz8jbEk5c_4;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$eSvVtuaJKbqaBq9Bpz8jbEk5c_4;

    .line 3436
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3433
    invoke-static {v1, p0, v2, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3432
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3438
    return-void
.end method

.method setMotionEventInjectors(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/MotionEventInjector;",
            ">;)V"
        }
    .end annotation

    .line 1081
    .local p1, "motionEventInjectors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/MotionEventInjector;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_0
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjectors:Landroid/util/SparseArray;

    .line 1084
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1085
    monitor-exit v0

    .line 1086
    return-void

    .line 1085
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .locals 3
    .param p1, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 881
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.MODIFY_ACCESSIBILITY_DATA"

    const-string/jumbo v2, "setPictureInPictureActionReplacingConnection"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    .line 884
    return-void
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 3442
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$zajP-hb_Pu4KrBx9lo0SCrvm0I4;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$zajP-hb_Pu4KrBx9lo0SCrvm0I4;

    .line 3446
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3443
    invoke-static {v1, p0, v2, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3442
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3448
    return-void
.end method

.method public setWindowMagnificationConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V
    .locals 2
    .param p1, "connection"    # Landroid/view/accessibility/IWindowMagnificationConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2918
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingOrSelfPermission(Ljava/lang/String;)V

    .line 2921
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->setConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V

    .line 2922
    return-void
.end method

.method public temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "touchExplorationEnabled"    # Z

    .line 913
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.TEMPORARY_ENABLE_ACCESSIBILITY"

    const-string/jumbo v2, "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 917
    return-void

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 921
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 923
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityUserState;->setTouchExplorationEnabledLocked(Z)V

    .line 924
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityUserState;->setDisplayMagnificationEnabledLocked(Z)V

    .line 925
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->disableShortcutMagnificationLocked()V

    .line 926
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityUserState;->setAutoclickEnabledLocked(Z)V

    .line 927
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 930
    invoke-static {p1}, Lcom/android/server/am/OpStartAppControlInjector;->addAccessibilityService(Landroid/content/ComponentName;)V

    .line 932
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 933
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 934
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->getCrashedServicesLocked()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 935
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 936
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 940
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    monitor-exit v0

    .line 941
    return-void

    .line 940
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterSystemAction(I)V
    .locals 3
    .param p1, "actionId"    # I

    .line 774
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    const-string/jumbo v2, "unregisterSystemAction"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSystemActionPerformer()Lcom/android/server/accessibility/SystemActionPerformer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->unregisterSystemAction(I)V

    .line 778
    return-void
.end method

.method public unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 2
    .param p1, "serviceClient"    # Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 905
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 906
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/UiAutomationManager;->unregisterUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 907
    monitor-exit v0

    .line 908
    return-void

    .line 907
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

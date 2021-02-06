.class public final Lcom/android/server/display/DisplayManagerService;
.super Lcom/android/server/SystemService;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;,
        Lcom/android/server/display/DisplayManagerService$LocalService;,
        Lcom/android/server/display/DisplayManagerService$BinderService;,
        Lcom/android/server/display/DisplayManagerService$CallbackRecord;,
        Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;,
        Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;,
        Lcom/android/server/display/DisplayManagerService$Injector;,
        Lcom/android/server/display/DisplayManagerService$SyncRoot;,
        Lcom/android/server/display/DisplayManagerService$SettingsObserver;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field private static final FORCE_WIFI_DISPLAY_ENABLE:Ljava/lang/String; = "persist.debug.wfd.enable"

.field private static final MSG_DELAY_MESSAGE:I = 0x7

.field private static final MSG_DELIVER_DISPLAY_EVENT:I = 0x3

.field private static final MSG_LOAD_BRIGHTNESS_CONFIGURATION:I = 0x6

.field private static final MSG_REGISTER_ADDITIONAL_DISPLAY_ADAPTERS:I = 0x2

.field private static final MSG_REGISTER_DEFAULT_DISPLAY_ADAPTERS:I = 0x1

.field private static final MSG_REQUEST_TRAVERSAL:I = 0x4

.field private static final MSG_UPDATE_VIEWPORT:I = 0x5

.field private static final PROP_DEFAULT_DISPLAY_TOP_INSET:Ljava/lang/String; = "persist.sys.displayinset.top"

.field private static final TAG:Ljava/lang/String; = "DisplayManagerService"

.field private static final VIRTUAL_UNIQUE_ID_PREFIX:Ljava/lang/String; = "virtual:"

.field private static final WAIT_FOR_DEFAULT_DISPLAY_TIMEOUT:J = 0x2710L


# instance fields
.field public final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDefaultDisplayDefaultColorMode:I

.field private mDefaultDisplayTopInset:I

.field private final mDelayDeliverCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

.field private final mDisplayAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

.field private mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

.field private final mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalDisplayBrightness:F

.field private mGlobalDisplayState:I

.field private final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field private final mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

.field private mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mLogicalDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimalPostProcessingAllowed:Z

.field private final mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

.field private final mMinimumBrightnessSpline:Landroid/util/Spline;

.field private mNextBuiltInDisplayId:I

.field private mNextNonDefaultDisplayId:I

.field public mOnlyCore:Z

.field private mPendingTraversal:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field public mSafeMode:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/display/DisplayManagerService$SettingsObserver;

.field private final mSingleDisplayDemoMode:Z

.field private mStableDisplaySize:Landroid/graphics/Point;

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private mSystemReady:Z

.field private final mTempCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/DisplayManagerService$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTempDisplayStateWorkQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempViewports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private final mViewports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

.field private final mWideColorSpace:Landroid/graphics/ColorSpace;

.field private mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

.field private mWifiDisplayScanRequestCount:I

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 190
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 368
    new-instance v0, Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V

    .line 369
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/display/DisplayManagerService$Injector;

    .line 373
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 228
    new-instance v0, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$SyncRoot;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 246
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    .line 257
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 259
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    .line 260
    const/16 v1, 0x1000

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mNextBuiltInDisplayId:I

    .line 263
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 271
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    .line 297
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    .line 314
    new-instance v2, Lcom/android/server/display/PersistentDataStore;

    invoke-direct {v2}, Lcom/android/server/display/PersistentDataStore;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 318
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    .line 324
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Landroid/util/ArrayMap;

    .line 331
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    .line 345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    .line 348
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    .line 374
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 375
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 376
    new-instance v2, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 377
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    .line 378
    new-instance v2, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    .line 379
    new-instance v2, Lcom/android/server/display/DisplayModeDirector;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-direct {v2, p1, v3}, Lcom/android/server/display/DisplayModeDirector;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    .line 380
    const-string/jumbo v2, "persist.demo.singledisplay"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    .line 381
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 382
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    .line 384
    const-string/jumbo v4, "persist.sys.displayinset.top"

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    .line 385
    const v4, 0x1070057

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v4

    .line 387
    .local v4, "lux":[F
    const v5, 0x1070058

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v5

    .line 389
    .local v5, "nits":[F
    new-instance v6, Landroid/hardware/display/Curve;

    invoke-direct {v6, v4, v5}, Landroid/hardware/display/Curve;-><init>([F[F)V

    iput-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    .line 390
    invoke-static {v4, v5}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    .line 392
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/PowerManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 393
    .local v6, "pm":Landroid/os/PowerManager;
    invoke-virtual {v6, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:F

    .line 395
    iput v3, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 396
    invoke-static {}, Landroid/view/SurfaceControl;->getCompositionColorSpaces()[Landroid/graphics/ColorSpace;

    move-result-object v1

    .line 397
    .local v1, "colorSpaces":[Landroid/graphics/ColorSpace;
    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    .line 399
    iput-boolean v3, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 400
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->loadBrightnessConfiguration()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->deliverDelayDisplayEvent(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayDevice;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayDevice;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayDevice;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Z

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/DisplayManagerService;I)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayIdsInternal(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/DisplayManagerService;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/display/DisplayManagerService;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getStableDisplaySizeInternal()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/display/IDisplayManagerCallback;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/display/DisplayManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanInternal(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/display/DisplayManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanInternal(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->connectWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->disconnectWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->forgetWifiDisplayInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->pauseWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->resumeWifiDisplayInternal()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/display/DisplayManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->requestColorModeInternal(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/display/DisplayManagerService;)Landroid/media/projection/IMediaProjectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "x2"    # Landroid/media/projection/IMediaProjection;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/view/Surface;
    .param p6, "x6"    # I
    .param p7, "x7"    # Landroid/hardware/display/VirtualDisplayConfig;

    .line 182
    invoke-direct/range {p0 .. p7}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayInternal(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/view/Surface;

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->handleSettingsChange()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->releaseVirtualDisplayInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setVirtualDisplayStateInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayPowerController;

    .line 182
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForUserInternal(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/display/DisplayManagerService;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/PersistentDataStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/display/DisplayManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/display/DisplayManagerService;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(IF)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->isBacklightLogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5002(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/SensorManager;

    .line 182
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->systemScreenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/display/DisplayManagerService;I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->userScreenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/DisplayInfo;

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/DisplayInfo;

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getNonOverrideDisplayInfoInternal(ILandroid/view/DisplayInfo;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/display/DisplayManagerService;IZFIZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # F
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z

    .line 182
    invoke-direct/range {p0 .. p6}, Lcom/android/server/display/DisplayManagerService;->setDisplayPropertiesInternal(IZFIZZ)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/display/DisplayManagerService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->setDisplayOffsetsInternal(III)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/display/DisplayManagerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setDisplayScalingDisabledInternal(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerDefaultDisplayAdapters()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # Landroid/util/SparseArray;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setDisplayAccessUIDsInternal(Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayModeDirector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->onDesiredDisplayModeSpecsChangedInternal()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerAdditionalDisplayAdapters()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->deliverDisplayEvent(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService;

    .line 182
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method private addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .locals 9
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1210
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1211
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1213
    .local v1, "isDefault":Z
    :goto_0
    const-string v4, "DisplayManagerService"

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring attempt to add a second default display: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const/4 v1, 0x0

    .line 1218
    :cond_1
    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-boolean v5, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    if-eqz v5, :cond_2

    .line 1219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not creating a logical display for a secondary display  because single display demo mode is enabled: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    return-object v3

    .line 1224
    :cond_2
    iget-object v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-direct {p0, v1, v5}, Lcom/android/server/display/DisplayManagerService;->assignDisplayIdLocked(ZLandroid/view/DisplayAddress;)I

    move-result v5

    .line 1225
    .local v5, "displayId":I
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayManagerService;->assignLayerStackLocked(I)I

    move-result v6

    .line 1227
    .local v6, "layerStack":I
    new-instance v7, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {v7, v5, v6, p1}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;)V

    .line 1228
    .local v7, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 1229
    invoke-virtual {v7}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring display device because the logical display created from it was not considered valid: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    return-object v3

    .line 1236
    :cond_3
    invoke-direct {p0, v7, p1}, Lcom/android/server/display/DisplayManagerService;->configureColorModeLocked(Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V

    .line 1237
    if-eqz v1, :cond_4

    .line 1238
    invoke-direct {p0, v7}, Lcom/android/server/display/DisplayManagerService;->recordStableDisplayStatsIfNeededLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1239
    invoke-direct {p0, v7}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1242
    :cond_4
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1243
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    .line 1246
    if-eqz v1, :cond_5

    .line 1247
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1250
    :cond_5
    invoke-direct {p0, v5, v2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1251
    return-object v7
.end method

.method private applyGlobalDisplayStateLocked(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 1186
    .local p1, "workQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1187
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1188
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDevice;

    .line 1189
    .local v2, "device":Lcom/android/server/display/DisplayDevice;
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v3

    .line 1190
    .local v3, "runnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_0

    .line 1191
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    .end local v2    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1194
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private assignDisplayIdLocked(Z)I
    .locals 2
    .param p1, "isDefault"    # Z

    .line 1255
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    :goto_0
    return v0
.end method

.method private assignDisplayIdLocked(ZLandroid/view/DisplayAddress;)I
    .locals 3
    .param p1, "isDefault"    # Z
    .param p2, "address"    # Landroid/view/DisplayAddress;

    .line 1259
    const/4 v0, 0x0

    .line 1260
    .local v0, "isDisplayBuiltIn":Z
    instance-of v1, p2, Landroid/view/DisplayAddress$Physical;

    if-eqz v1, :cond_1

    .line 1261
    move-object v1, p2

    check-cast v1, Landroid/view/DisplayAddress$Physical;

    .line 1262
    invoke-virtual {v1}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 1264
    :cond_1
    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 1265
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mNextBuiltInDisplayId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/display/DisplayManagerService;->mNextBuiltInDisplayId:I

    return v1

    .line 1268
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->assignDisplayIdLocked(Z)I

    move-result v1

    return v1
.end method

.method private assignLayerStackLocked(I)I
    .locals 0
    .param p1, "displayId"    # I

    .line 1274
    return p1
.end method

.method private clearViewportsLocked()V
    .locals 1

    .line 1715
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1716
    return-void
.end method

.method private configureColorModeLocked(Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayDevice;)V
    .locals 2
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1278
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    if-ne v0, p2, :cond_2

    .line 1279
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore;->getColorMode(Lcom/android/server/display/DisplayDevice;)I

    move-result v0

    .line 1280
    .local v0, "colorMode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1281
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1283
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    goto :goto_0

    .line 1285
    :cond_0
    const/4 v0, 0x0

    .line 1288
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorModeLocked(I)V

    .line 1290
    .end local v0    # "colorMode":I
    :cond_2
    return-void
.end method

.method private configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;)V
    .locals 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1736
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1737
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1741
    .local v1, "ownContent":Z
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    .line 1742
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_2

    .line 1743
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1746
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayIdToMirrorLocked()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 1748
    :cond_1
    if-nez v4, :cond_2

    .line 1749
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 1754
    :cond_2
    if-nez v4, :cond_3

    .line 1756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing logical display to use for physical display device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1757
    invoke-virtual {p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1756
    const-string v3, "DisplayManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    return-void

    .line 1760
    :cond_3
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-ne v5, v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/display/LogicalDisplay;->configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V

    .line 1761
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;

    move-result-object v2

    .line 1762
    .local v2, "viewportType":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1763
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v5

    invoke-direct {p0, v3, v5, p2, v0}, Lcom/android/server/display/DisplayManagerService;->populateViewportLocked(IILcom/android/server/display/DisplayDevice;Lcom/android/server/display/DisplayDeviceInfo;)V

    .line 1765
    :cond_5
    return-void
.end method

.method private connectWifiDisplayInternal(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 848
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 849
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(Ljava/lang/String;)V

    .line 852
    :cond_0
    monitor-exit v0

    .line 853
    return-void

    .line 852
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createVirtualDisplayInternal(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I
    .locals 13
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p3, "callingUid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "flags"    # I
    .param p7, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;

    .line 918
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    .line 919
    :try_start_0
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v3, -0x1

    if-nez v0, :cond_0

    .line 920
    const-string v0, "DisplayManagerService"

    const-string v4, "Rejecting request to create private virtual display because the virtual display adapter is not available."

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    monitor-exit v2

    return v3

    .line 925
    :cond_0
    iget-object v5, v1, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    move-object v6, p1

    move-object v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/display/VirtualDisplayAdapter;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 928
    .local v0, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v0, :cond_1

    .line 929
    monitor-exit v2

    return v3

    .line 932
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 933
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    .line 934
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v4, :cond_2

    .line 935
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    monitor-exit v2

    return v3

    .line 939
    :cond_2
    const-string v5, "DisplayManagerService"

    const-string v6, "Rejecting request to create virtual display because the logical display was not created."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v5, v1, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    .line 942
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 943
    .end local v0    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v4    # "display":Lcom/android/server/display/LogicalDisplay;
    monitor-exit v2

    .line 944
    return v3

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private deliverDelayDisplayEvent(Ljava/lang/String;II)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "event"    # I

    .line 2149
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2150
    return-void

    .line 2154
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2156
    .local v0, "mDelayCount":I
    if-lez v0, :cond_2

    .line 2157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2160
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    const/4 v3, 0x1

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(IIZ)Z

    .line 2157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2165
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    :cond_2
    return-void
.end method

.method private deliverDisplayEvent(II)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .line 1862
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering display event: displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1870
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1871
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1872
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1873
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1872
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1875
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1892
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->retrieveDelayObj(II)Ljava/lang/String;

    move-result-object v0

    .line 1893
    .local v0, "obj":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1895
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    const/4 v2, 0x1

    .line 1900
    .local v2, "isDeliveSuccess":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 1901
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    const/4 v6, 0x0

    .line 1902
    invoke-virtual {v5, p1, p2, v6}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->notifyDisplayEventAsync(IIZ)Z

    move-result v2

    .line 1903
    if-nez v2, :cond_3

    .line 1906
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1907
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1908
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/DisplayManagerService$CallbackRecord;>;"
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/DisplayManagerService$CallbackRecord;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1900
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1916
    .end local v4    # "i":I
    :cond_4
    invoke-static {p1, p2}, Lcom/android/server/am/OpBGFrozenInjector;->updateDisplayEvent(II)V

    .line 1920
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1922
    sget-boolean v4, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 1923
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDelayDeliverCallbacks size"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DisplayManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_5
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v4, v3, p1, p2, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1930
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1934
    .end local v3    # "msg":Landroid/os/Message;
    :cond_6
    return-void

    .line 1875
    .end local v0    # "obj":Ljava/lang/String;
    .end local v1    # "count":I
    .end local v2    # "isDeliveSuccess":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private disconnectWifiDisplayInternal()V
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 873
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_0

    .line 874
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 876
    :cond_0
    monitor-exit v0

    .line 877
    return-void

    .line 876
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1949
    const-string v0, "DISPLAY MANAGER (dumpsys display)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1951
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1952
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOnlyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSafeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingTraversal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mGlobalDisplayState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNextNonDefaultDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mNextNonDefaultDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mViewports="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDefaultDisplayDefaultColorMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSingleDisplayDemoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mSingleDisplayDemoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWifiDisplayScanRequestCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStableDisplaySize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMinimumBrightnessCurve="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1964
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1965
    .local v1, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1967
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display Adapters: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1969
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayAdapter;

    .line 1970
    .local v3, "adapter":Lcom/android/server/display/DisplayAdapter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {v3, v1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1972
    .end local v3    # "adapter":Lcom/android/server/display/DisplayAdapter;
    goto :goto_0

    .line 1974
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display Devices: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1976
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayDevice;

    .line 1977
    .local v3, "device":Lcom/android/server/display/DisplayDevice;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1978
    invoke-virtual {v3, v1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1979
    .end local v3    # "device":Lcom/android/server/display/DisplayDevice;
    goto :goto_1

    .line 1981
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1982
    .local v2, "logicalDisplayCount":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1983
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logical Displays: size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1984
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 1985
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1986
    .local v4, "displayId":I
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    .line 1987
    .local v5, "display":Lcom/android/server/display/LogicalDisplay;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1988
    invoke-virtual {v5, v1}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1984
    .end local v4    # "displayId":I
    .end local v5    # "display":Lcom/android/server/display/LogicalDisplay;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1991
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1992
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayModeDirector;->dump(Ljava/io/PrintWriter;)V

    .line 1994
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1995
    .local v3, "callbackCount":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1996
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callbacks: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1997
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v3, :cond_3

    .line 1998
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 1999
    .local v5, "callback":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": mPid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mWifiDisplayScanRequested="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1997
    .end local v5    # "callback":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2003
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    if-eqz v4, :cond_4

    .line 2004
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v4, p1}, Lcom/android/server/display/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V

    .line 2007
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2008
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v4, p1}, Lcom/android/server/display/PersistentDataStore;->dump(Ljava/io/PrintWriter;)V

    .line 2009
    .end local v1    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v2    # "logicalDisplayCount":I
    .end local v3    # "callbackCount":I
    monitor-exit v0

    .line 2010
    return-void

    .line 2009
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private findLogicalDisplayForDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .locals 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1814
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1815
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1816
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 1817
    .local v2, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1818
    return-object v2

    .line 1815
    .end local v2    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1821
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private forgetWifiDisplayInternal(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 888
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_0

    .line 890
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestForgetLocked(Ljava/lang/String;)V

    .line 892
    :cond_0
    monitor-exit v0

    .line 893
    return-void

    .line 892
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDelayKey(II)Ljava/lang/String;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .line 1842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayIdsInternal(I)[I
    .locals 9
    .param p1, "callingUid"    # I

    .line 730
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 732
    .local v1, "count":I
    new-array v2, v1, [I

    .line 733
    .local v2, "displayIds":[I
    const/4 v3, 0x0

    .line 734
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 735
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    .line 736
    .local v5, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v5}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v6

    .line 737
    .local v6, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v6, p1}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 738
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "n":I
    .local v7, "n":I
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    aput v8, v2, v3

    move v3, v7

    .line 734
    .end local v5    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v6    # "info":Landroid/view/DisplayInfo;
    .end local v7    # "n":I
    .restart local v3    # "n":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 741
    .end local v4    # "i":I
    :cond_1
    if-eq v3, v1, :cond_2

    .line 742
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v4

    move-object v2, v4

    .line 744
    :cond_2
    monitor-exit v0

    return-object v2

    .line 745
    .end local v1    # "count":I
    .end local v2    # "displayIds":[I
    .end local v3    # "n":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDisplayInfoInternal(II)Landroid/view/DisplayInfo;
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "callingUid"    # I

    .line 716
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 717
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 718
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_1

    .line 719
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 720
    .local v2, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v2, p2}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 721
    invoke-direct {p0, p2, p1}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 722
    :cond_0
    monitor-exit v0

    return-object v2

    .line 725
    .end local v2    # "info":Landroid/view/DisplayInfo;
    :cond_1
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 726
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDisplayToken(I)Landroid/os/IBinder;
    .locals 4
    .param p1, "displayId"    # I

    .line 1556
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1557
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1558
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_0

    .line 1559
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    .line 1560
    .local v2, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v2, :cond_0

    .line 1561
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1564
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v2    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_0
    monitor-exit v0

    .line 1566
    const/4 v0, 0x0

    return-object v0

    .line 1564
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 2013
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2014
    .local v0, "length":I
    new-array v1, v0, [F

    .line 2015
    .local v1, "floatArray":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2016
    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 2015
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2018
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2019
    return-object v1
.end method

.method private getNonOverrideDisplayInfoInternal(ILandroid/view/DisplayInfo;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "outInfo"    # Landroid/view/DisplayInfo;

    .line 580
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 582
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_0

    .line 583
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 585
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_0
    monitor-exit v0

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .locals 2

    .line 1937
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_0

    .line 1938
    const-string/jumbo v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1939
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    .line 1941
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object v0
.end method

.method private getStableDisplaySizeInternal()Landroid/graphics/Point;
    .locals 4

    .line 542
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 543
    .local v0, "r":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-lez v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 547
    :cond_0
    monitor-exit v1

    .line 548
    return-object v0

    .line 547
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getUserManager()Landroid/os/UserManager;
    .locals 2

    .line 1945
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method private getViewportLocked(ILjava/lang/String;)Landroid/hardware/display/DisplayViewport;
    .locals 4
    .param p1, "viewportType"    # I
    .param p2, "uniqueId"    # Ljava/lang/String;

    .line 1773
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call getViewportByTypeLocked for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    invoke-static {p1}, Landroid/hardware/display/DisplayViewport;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1775
    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const/4 v0, 0x0

    return-object v0

    .line 1783
    :cond_0
    if-eq p1, v0, :cond_1

    .line 1784
    const-string p2, ""

    .line 1788
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1789
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1790
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    .line 1791
    .local v2, "viewport":Landroid/hardware/display/DisplayViewport;
    iget v3, v2, Landroid/hardware/display/DisplayViewport;->type:I

    if-ne v3, p1, :cond_2

    iget-object v3, v2, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1792
    return-object v2

    .line 1789
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1797
    .end local v1    # "i":I
    .end local v2    # "viewport":Landroid/hardware/display/DisplayViewport;
    :cond_3
    new-instance v1, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v1}, Landroid/hardware/display/DisplayViewport;-><init>()V

    .line 1798
    .local v1, "viewport":Landroid/hardware/display/DisplayViewport;
    iput p1, v1, Landroid/hardware/display/DisplayViewport;->type:I

    .line 1799
    iput-object p2, v1, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    .line 1800
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1801
    return-object v1
.end method

.method private getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;
    .locals 2
    .param p1, "info"    # Lcom/android/server/display/DisplayDeviceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/DisplayDeviceInfo;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1720
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1721
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 1722
    :cond_0
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1723
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 1724
    :cond_1
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 1725
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1726
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 1728
    :cond_2
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not support input device matching."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private getWifiDisplayStatusInternal()Landroid/hardware/display/WifiDisplayStatus;
    .locals 2

    .line 896
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 897
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 900
    :cond_0
    new-instance v1, Landroid/hardware/display/WifiDisplayStatus;

    invoke-direct {v1}, Landroid/hardware/display/WifiDisplayStatus;-><init>()V

    monitor-exit v0

    return-object v1

    .line 901
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V
    .locals 2
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1053
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1054
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 1055
    monitor-exit v0

    .line 1056
    return-void

    .line 1055
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1063
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1064
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "DisplayManagerService"

    if-eqz v1, :cond_0

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to add already added display device: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    return-void

    .line 1071
    :cond_0
    const-string v1, "Display device added: "

    if-eqz v0, :cond_1

    .line 1072
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ownerUid:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    const-string/jumbo v2, "virtual:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1074
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/server/am/OpBGFrozenInjector;->virtualDeviceChangeEvent(IZLjava/lang/String;)V

    goto :goto_0

    .line 1077
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_2
    :goto_0
    iput-object v0, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1085
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 1087
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v2

    .line 1088
    .local v2, "work":Ljava/lang/Runnable;
    if-eqz v2, :cond_3

    .line 1089
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1091
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1092
    return-void
.end method

.method private handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V
    .locals 8
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1095
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1096
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 1097
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1098
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to change non-existent display device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    monitor-exit v0

    return-void

    .line 1102
    :cond_0
    iget-object v2, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayDeviceInfo;->diff(Lcom/android/server/display/DisplayDeviceInfo;)I

    move-result v2

    .line 1103
    .local v2, "diff":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1104
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display device changed state: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 1105
    invoke-static {v5}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1104
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;

    move-result-object v3

    .line 1107
    .local v3, "viewportType":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1108
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayViewport;

    .line 1109
    .local v5, "d":Landroid/hardware/display/DisplayViewport;
    iget v6, v5, Landroid/hardware/display/DisplayViewport;->type:I

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_1

    iget-object v6, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-object v7, v5, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1111
    iget v6, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    invoke-static {v6}, Landroid/view/Display;->isActiveState(I)Z

    move-result v6

    iput-boolean v6, v5, Landroid/hardware/display/DisplayViewport;->isActive:Z

    .line 1113
    .end local v5    # "d":Landroid/hardware/display/DisplayViewport;
    :cond_1
    goto :goto_0

    .line 1114
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz v4, :cond_4

    .line 1115
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1118
    .end local v3    # "viewportType":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :cond_3
    if-eqz v2, :cond_4

    .line 1119
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display device changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    .line 1118
    :cond_4
    :goto_1
    nop

    .line 1121
    :goto_2
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_5

    .line 1123
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    invoke-virtual {v3, p1, v4}, Lcom/android/server/display/PersistentDataStore;->setColorMode(Lcom/android/server/display/DisplayDevice;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1125
    :try_start_2
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1126
    goto :goto_3

    .line 1125
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1126
    nop

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "device":Lcom/android/server/display/DisplayDevice;
    throw v3

    .line 1128
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_5
    :goto_3
    iput-object v1, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1130
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->applyPendingDisplayDeviceInfoChangesLocked()V

    .line 1131
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1132
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1134
    .end local v1    # "info":Lcom/android/server/display/DisplayDeviceInfo;
    .end local v2    # "diff":I
    :cond_6
    monitor-exit v0

    .line 1135
    return-void

    .line 1134
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V
    .locals 2
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1138
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1139
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 1140
    monitor-exit v0

    .line 1141
    return-void

    .line 1140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 5
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1144
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1145
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "DisplayManagerService"

    if-nez v1, :cond_0

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existent display device: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    return-void

    .line 1152
    :cond_0
    const/4 v1, 0x0

    const-string v3, "Display device removed: "

    if-eqz v0, :cond_1

    .line 1153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ownerUid:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    const-string/jumbo v3, "virtual:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1155
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/android/server/am/OpBGFrozenInjector;->virtualDeviceChangeEvent(IZLjava/lang/String;)V

    goto :goto_0

    .line 1158
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_2
    :goto_0
    iput-object v0, p1, Lcom/android/server/display/DisplayDevice;->mDebugLastLoggedDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1166
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateLogicalDisplaysLocked()Z

    .line 1167
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1168
    return-void
.end method

.method private handleLogicalDisplayChanged(ILcom/android/server/display/LogicalDisplay;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 1171
    if-nez p1, :cond_0

    .line 1172
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 1177
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1178
    return-void
.end method

.method private handleLogicalDisplayRemoved(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 1181
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    .line 1182
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(II)V

    .line 1183
    return-void
.end method

.method private handleSettingsChange()V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 705
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateSettingsLocked()V

    .line 706
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 707
    monitor-exit v0

    .line 708
    return-void

    .line 707
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isBacklightLogEnabled()Z
    .locals 3

    .line 691
    const/4 v0, 0x0

    .line 694
    .local v0, "enable":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "backlight_debug"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 697
    goto :goto_1

    .line 695
    :catch_0
    move-exception v1

    .line 699
    :goto_1
    return v0
.end method

.method private isBrightnessConfigurationTooDark(Landroid/hardware/display/BrightnessConfiguration;)Z
    .locals 7
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1369
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 1370
    .local v0, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    .line 1371
    .local v1, "lux":[F
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    .line 1372
    .local v2, "nits":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1373
    aget v4, v2, v3

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    aget v6, v1, v3

    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 1374
    const/4 v4, 0x1

    return v4

    .line 1372
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1377
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private isUidPresentOnDisplayInternal(II)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "displayId"    # I

    .line 1548
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1549
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/IntArray;

    .line 1550
    .local v1, "displayUIDs":Landroid/util/IntArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1551
    .end local v1    # "displayUIDs":Landroid/util/IntArray;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadBrightnessConfiguration()V
    .locals 3

    .line 1381
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1382
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v1

    .line 1383
    .local v1, "userSerial":I
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 1384
    invoke-virtual {v2, v1}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    .line 1389
    .end local v1    # "userSerial":I
    monitor-exit v0

    .line 1390
    return-void

    .line 1389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadStableDisplayValuesLocked()V
    .locals 4

    .line 524
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 525
    .local v0, "size":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 531
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x10e00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 533
    .local v2, "width":I
    const v3, 0x10e00c5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 535
    .local v3, "height":I
    if-lez v2, :cond_1

    if-lez v3, :cond_1

    .line 536
    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    .line 539
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "width":I
    .end local v3    # "height":I
    :cond_1
    :goto_0
    return-void
.end method

.method private needUpdateLayerStack(Lcom/android/server/display/LogicalDisplay;)Z
    .locals 5
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 1419
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 1420
    .local v0, "primaryDisplayDevice":Lcom/android/server/display/DisplayDevice;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1421
    return v1

    .line 1425
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1426
    return v1

    .line 1428
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    .line 1429
    .local v2, "info":Lcom/android/server/display/DisplayDeviceInfo;
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getLayerStackLocked()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 1431
    const-string v1, "DisplayManagerService"

    const-string v3, "Layer stack id set to -1 during screen on state, trigger window traversal."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    return v4

    .line 1435
    .end local v2    # "info":Lcom/android/server/display/DisplayDeviceInfo;
    :cond_2
    return v1
.end method

.method private onCallbackDied(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 788
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 789
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 790
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 791
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    iget v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    iget v1, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-static {v0, v1}, Lcom/android/server/am/OpBGFrozenInjector;->removeDisplayCallback(II)V

    .line 797
    return-void

    .line 791
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onDesiredDisplayModeSpecsChangedInternal()V
    .locals 11

    .line 1688
    const/4 v0, 0x0

    .line 1689
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1690
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1691
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1692
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 1693
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1694
    .local v5, "displayId":I
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    .line 1695
    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object v6

    .line 1696
    .local v6, "desiredDisplayModeSpecs":Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    nop

    .line 1697
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDesiredDisplayModeSpecsLocked()Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object v7

    .line 1698
    .local v7, "existingDesiredDisplayModeSpecs":Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    sget-boolean v8, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 1699
    const-string v8, "DisplayManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Comparing display specs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", existing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_0
    invoke-virtual {v6, v7}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1704
    invoke-virtual {v4, v6}, Lcom/android/server/display/LogicalDisplay;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 1705
    const/4 v0, 0x1

    .line 1691
    .end local v4    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v5    # "displayId":I
    .end local v6    # "desiredDisplayModeSpecs":Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .end local v7    # "existingDesiredDisplayModeSpecs":Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1708
    .end local v3    # "i":I
    :cond_2
    if-eqz v0, :cond_3

    .line 1709
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1711
    .end local v2    # "count":I
    :cond_3
    monitor-exit v1

    .line 1712
    return-void

    .line 1711
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private pauseWifiDisplayInternal()V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 857
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestPauseLocked()V

    .line 860
    :cond_0
    monitor-exit v0

    .line 861
    return-void

    .line 860
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1441
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->clearViewportsLocked()V

    .line 1444
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1445
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1446
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDevice;

    .line 1447
    .local v2, "device":Lcom/android/server/display/DisplayDevice;
    invoke-direct {p0, p1, v2}, Lcom/android/server/display/DisplayManagerService;->configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;)V

    .line 1448
    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayDevice;->performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 1445
    .end local v2    # "device":Lcom/android/server/display/DisplayDevice;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1452
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    if-eqz v1, :cond_1

    .line 1453
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 1455
    :cond_1
    return-void
.end method

.method private populateViewportLocked(IILcom/android/server/display/DisplayDevice;Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 2
    .param p1, "viewportType"    # I
    .param p2, "displayId"    # I
    .param p3, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p4, "info"    # Lcom/android/server/display/DisplayDeviceInfo;

    .line 1806
    iget-object v0, p4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->getViewportLocked(ILjava/lang/String;)Landroid/hardware/display/DisplayViewport;

    move-result-object v0

    .line 1807
    .local v0, "viewport":Landroid/hardware/display/DisplayViewport;
    invoke-virtual {p3, v0}, Lcom/android/server/display/DisplayDevice;->populateViewportLocked(Landroid/hardware/display/DisplayViewport;)V

    .line 1808
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/hardware/display/DisplayViewport;->valid:Z

    .line 1809
    iput p2, v0, Landroid/hardware/display/DisplayViewport;->displayId:I

    .line 1810
    iget v1, p4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    invoke-static {v1}, Landroid/view/Display;->isActiveState(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/display/DisplayViewport;->isActive:Z

    .line 1811
    return-void
.end method

.method private recordStableDisplayStatsIfNeededLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 3
    .param p1, "d"    # Lcom/android/server/display/LogicalDisplay;

    .line 1296
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_0

    .line 1297
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1298
    .local v0, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    .line 1300
    .end local v0    # "info":Landroid/view/DisplayInfo;
    :cond_0
    return-void
.end method

.method private recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 3
    .param p1, "d"    # Lcom/android/server/display/LogicalDisplay;

    .line 1306
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1309
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 1310
    .local v0, "topInset":I
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    if-ne v0, v1, :cond_1

    .line 1311
    return-void

    .line 1313
    :cond_1
    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    .line 1314
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.displayinset.top"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    return-void

    .line 1307
    .end local v0    # "topInset":I
    :cond_2
    :goto_0
    return-void
.end method

.method private registerAdditionalDisplayAdapters()V
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1014
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->shouldRegisterNonEssentialDisplayAdaptersLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1015
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerOverlayDisplayAdapterLocked()V

    .line 1016
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->registerWifiDisplayAdapterLocked()V

    .line 1018
    :cond_0
    monitor-exit v0

    .line 1019
    return-void

    .line 1018
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerCallbackInternal(Landroid/hardware/display/IDisplayManagerCallback;II)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .line 756
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 757
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 768
    new-instance v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;-><init>(Lcom/android/server/display/DisplayManagerService;ILandroid/hardware/display/IDisplayManagerCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    .local v1, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 772
    .local v2, "binder":Landroid/os/IBinder;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    .end local v2    # "binder":Landroid/os/IBinder;
    nop

    .line 778
    :try_start_2
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 779
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 783
    invoke-static {p3, p2, p1}, Lcom/android/server/am/OpBGFrozenInjector;->addDisplayCallback(IILandroid/hardware/display/IDisplayManagerCallback;)V

    .line 785
    return-void

    .line 773
    .restart local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :catch_0
    move-exception v2

    .line 775
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "callback":Landroid/hardware/display/IDisplayManagerCallback;
    .end local p2    # "callingPid":I
    .end local p3    # "callingUid":I
    throw v3

    .line 758
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "callback":Landroid/hardware/display/IDisplayManagerCallback;
    .restart local p2    # "callingPid":I
    .restart local p3    # "callingUid":I
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "The calling process has already registered an IDisplayManagerCallback."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "callback":Landroid/hardware/display/IDisplayManagerCallback;
    .end local p2    # "callingPid":I
    .end local p3    # "callingUid":I
    throw v1

    .line 779
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "callback":Landroid/hardware/display/IDisplayManagerCallback;
    .restart local p2    # "callingPid":I
    .restart local p3    # "callingUid":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private registerDefaultDisplayAdapters()V
    .locals 6

    .line 994
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 996
    :try_start_0
    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1004
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/display/DisplayManagerService$Injector;->getVirtualDisplayAdapter(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)Lcom/android/server/display/VirtualDisplayAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 1006
    if-eqz v1, :cond_0

    .line 1007
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1009
    :cond_0
    monitor-exit v0

    .line 1010
    return-void

    .line 1009
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/android/server/display/DisplayAdapter;

    .line 1048
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 1050
    return-void
.end method

.method private registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 554
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    return-void
.end method

.method private registerOverlayDisplayAdapterLocked()V
    .locals 7

    .line 1022
    new-instance v6, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/OverlayDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V

    invoke-direct {p0, v6}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1024
    return-void
.end method

.method private registerWifiDisplayAdapterLocked()V
    .locals 8

    .line 1027
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 1029
    const-string/jumbo v1, "persist.debug.wfd.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1030
    :cond_0
    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapterListener:Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/WifiDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 1033
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayAdapterLocked(Lcom/android/server/display/DisplayAdapter;)V

    .line 1035
    :cond_1
    return-void
.end method

.method private releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;

    .line 969
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 970
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_0

    .line 971
    monitor-exit v0

    return-void

    .line 974
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 975
    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;

    move-result-object v1

    .line 976
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v1, :cond_1

    .line 977
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemovedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 979
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_1
    monitor-exit v0

    .line 980
    return-void

    .line 979
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private renameWifiDisplayInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 880
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 881
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :cond_0
    monitor-exit v0

    .line 885
    return-void

    .line 884
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestColorModeInternal(II)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "colorMode"    # I

    .line 905
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 906
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 907
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_0

    .line 908
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getRequestedColorModeLocked()I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 909
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setRequestedColorModeLocked(I)V

    .line 910
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 912
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_0
    monitor-exit v0

    .line 913
    return-void

    .line 912
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestGlobalDisplayStateInternal(IF)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "brightnessState"    # F

    .line 606
    if-nez p1, :cond_0

    .line 607
    const/4 p1, 0x2

    .line 609
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 610
    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_1

    .line 611
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    .line 613
    const/high16 p2, 0x7fc00000    # Float.NaN

    goto :goto_1

    .line 614
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_5

    .line 617
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x62

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 618
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    move v0, p2

    :goto_0
    move p2, v0

    goto :goto_1

    .line 620
    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    .line 625
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 631
    :try_start_1
    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    if-ne v2, p1, :cond_6

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:F

    cmpl-float v2, v2, p2

    if-nez v2, :cond_6

    .line 633
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 633
    return-void

    .line 636
    :cond_6
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestGlobalDisplayState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 636
    const-wide/32 v3, 0x20000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 639
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    .line 640
    iput p2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:F

    .line 641
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->applyGlobalDisplayStateLocked(Ljava/util/List;)V

    .line 642
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 648
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 649
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 648
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 651
    .end local v1    # "i":I
    :cond_7
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 653
    :try_start_5
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 654
    nop

    .line 655
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 656
    return-void

    .line 642
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "state":I
    .end local p2    # "brightnessState":F
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 653
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "state":I
    .restart local p2    # "brightnessState":F
    :catchall_1
    move-exception v1

    :try_start_8
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayStateWorkQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 654
    nop

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "state":I
    .end local p2    # "brightnessState":F
    throw v1

    .line 655
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "state":I
    .restart local p2    # "brightnessState":F
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method private resizeVirtualDisplayInternal(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .line 949
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_0

    .line 951
    monitor-exit v0

    return-void

    .line 954
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter;->resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V

    .line 955
    monitor-exit v0

    .line 956
    return-void

    .line 955
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resumeWifiDisplayInternal()V
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v1, :cond_0

    .line 866
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestResumeLocked()V

    .line 868
    :cond_0
    monitor-exit v0

    .line 869
    return-void

    .line 868
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private retrieveDelayObj(II)Ljava/lang/String;
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .line 1846
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->getDelayKey(II)Ljava/lang/String;

    move-result-object v0

    .line 1847
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDelayDeliverCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1848
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1849
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1851
    return-object v3

    .line 1853
    .end local v3    # "item":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1854
    :cond_1
    return-object v0
.end method

.method private scheduleTraversalLocked(Z)V
    .locals 2
    .param p1, "inTraversal"    # Z

    .line 1832
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_0

    .line 1833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 1834
    if-nez p1, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 1838
    :cond_0
    return-void
.end method

.method private sendDisplayEventLocked(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .line 1825
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1826
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1827
    return-void
.end method

.method private setBrightnessConfigurationForUserInternal(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .locals 4
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1338
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1339
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 1340
    .local v0, "userSerial":I
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 1342
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/display/PersistentDataStore;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1345
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1346
    nop

    .line 1347
    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-ne p2, v2, :cond_0

    .line 1350
    const-string v2, "com.google.android.apps.turbo"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1351
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1355
    :cond_0
    monitor-exit v1

    .line 1356
    return-void

    .line 1355
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1345
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1346
    nop

    .end local v0    # "userSerial":I
    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "c":Landroid/hardware/display/BrightnessConfiguration;
    .end local p2    # "userId":I
    .end local p3    # "packageName":Ljava/lang/String;
    throw v2

    .line 1355
    .restart local v0    # "userSerial":I
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "c":Landroid/hardware/display/BrightnessConfiguration;
    .restart local p2    # "userId":I
    .restart local p3    # "packageName":Ljava/lang/String;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private setDisplayAccessUIDsInternal(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/IntArray;",
            ">;)V"
        }
    .end annotation

    .line 1537
    .local p1, "newDisplayAccessUIDs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/IntArray;>;"
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1538
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1539
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1540
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1541
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/IntArray;

    .line 1540
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1539
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1543
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 1544
    return-void

    .line 1543
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;

    .line 565
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 567
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-direct {p0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChanged(ILcom/android/server/display/LogicalDisplay;)V

    .line 570
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 573
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_0
    monitor-exit v0

    .line 574
    return-void

    .line 573
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setDisplayOffsetsInternal(III)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1502
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1503
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1504
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_0

    .line 1505
    monitor-exit v0

    return-void

    .line 1507
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetXLocked()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 1508
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayOffsetYLocked()I

    move-result v2

    if-eq v2, p3, :cond_3

    .line 1509
    :cond_1
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1510
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " burn-in offset set to ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_2
    invoke-virtual {v1, p2, p3}, Lcom/android/server/display/LogicalDisplay;->setDisplayOffsetsLocked(II)V

    .line 1514
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1516
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_3
    monitor-exit v0

    .line 1517
    return-void

    .line 1516
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setDisplayPropertiesInternal(IZFIZZ)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "hasContent"    # Z
    .param p3, "requestedRefreshRate"    # F
    .param p4, "requestedModeId"    # I
    .param p5, "preferMinimalPostProcessing"    # Z
    .param p6, "inTraversal"    # Z

    .line 1460
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1461
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1462
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_0

    .line 1463
    monitor-exit v0

    return-void

    .line 1466
    :cond_0
    const/4 v2, 0x0

    .line 1468
    .local v2, "shouldScheduleTraversal":Z
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->hasContentLocked()Z

    move-result v3

    if-eq v3, p2, :cond_2

    .line 1469
    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1470
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " hasContent flag changed: hasContent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", inTraversal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setHasContentLocked(Z)V

    .line 1475
    const/4 v2, 0x1

    .line 1477
    :cond_2
    if-nez p4, :cond_3

    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-eqz v3, :cond_3

    .line 1480
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)I

    move-result v3

    move p4, v3

    .line 1483
    :cond_3
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayModeDirector;->getAppRequestObserver()Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    move-result-object v3

    invoke-virtual {v3, p1, p4}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->setAppRequestedMode(II)V

    .line 1486
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    if-eqz v3, :cond_5

    .line 1487
    iget-boolean v3, p0, Lcom/android/server/display/DisplayManagerService;->mMinimalPostProcessingAllowed:Z

    if-eqz v3, :cond_4

    if-eqz p5, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 1489
    .local v3, "mppRequest":Z
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getRequestedMinimalPostProcessingLocked()Z

    move-result v4

    if-eq v4, v3, :cond_5

    .line 1490
    invoke-virtual {v1, v3}, Lcom/android/server/display/LogicalDisplay;->setRequestedMinimalPostProcessingLocked(Z)V

    .line 1491
    const/4 v2, 0x1

    .line 1495
    .end local v3    # "mppRequest":Z
    :cond_5
    if-eqz v2, :cond_6

    .line 1496
    invoke-direct {p0, p6}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1498
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v2    # "shouldScheduleTraversal":Z
    :cond_6
    monitor-exit v0

    .line 1499
    return-void

    .line 1498
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setDisplayScalingDisabledInternal(IZ)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "disable"    # Z

    .line 1520
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1521
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 1522
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-nez v1, :cond_0

    .line 1523
    monitor-exit v0

    return-void

    .line 1525
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->isDisplayScalingDisabled()Z

    move-result v2

    if-eq v2, p2, :cond_2

    .line 1526
    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1527
    const-string v2, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " content scaling disabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/server/display/LogicalDisplay;->setDisplayScalingDisabledLocked(Z)V

    .line 1530
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 1532
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_2
    monitor-exit v0

    .line 1533
    return-void

    .line 1532
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setStableDisplaySizeLocked(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1318
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    .line 1320
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1, v0}, Lcom/android/server/display/PersistentDataStore;->setStableDisplaySize(Landroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1322
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1323
    nop

    .line 1324
    return-void

    .line 1322
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    .line 1323
    throw v0
.end method

.method private setVirtualDisplayStateInternal(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "isOn"    # Z

    .line 983
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 984
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_0

    .line 985
    monitor-exit v0

    return-void

    .line 988
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplayStateLocked(Landroid/os/IBinder;Z)V

    .line 989
    monitor-exit v0

    .line 990
    return-void

    .line 989
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setVirtualDisplaySurfaceInternal(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 959
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 960
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_0

    .line 961
    monitor-exit v0

    return-void

    .line 964
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 965
    monitor-exit v0

    .line 966
    return-void

    .line 965
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldRegisterNonEssentialDisplayAdaptersLocked()Z
    .locals 1

    .line 1044
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startWifiDisplayScanInternal(I)V
    .locals 4
    .param p1, "callingPid"    # I

    .line 800
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 801
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 802
    .local v1, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-eqz v1, :cond_0

    .line 806
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 807
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    monitor-exit v0

    .line 808
    return-void

    .line 803
    .restart local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "callingPid":I
    throw v2

    .line 807
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "callingPid":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .locals 2
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 811
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-nez v0, :cond_0

    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 813
    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStartScanLocked()V

    .line 819
    :cond_0
    return-void
.end method

.method private stopWifiDisplayScanInternal(I)V
    .locals 4
    .param p1, "callingPid"    # I

    .line 822
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 823
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 824
    .local v1, "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    if-eqz v1, :cond_0

    .line 828
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 829
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    monitor-exit v0

    .line 830
    return-void

    .line 825
    .restart local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "callingPid":I
    throw v2

    .line 829
    .end local v1    # "record":Lcom/android/server/display/DisplayManagerService$CallbackRecord;
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "callingPid":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    .line 833
    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-eqz v0, :cond_1

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    .line 835
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez v1, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz v0, :cond_1

    .line 837
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->requestStopScanLocked()V

    goto :goto_0

    .line 839
    :cond_0
    if-gez v1, :cond_1

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWifiDisplayScanRequestCount became negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    .line 845
    :cond_1
    :goto_0
    return-void
.end method

.method private systemScreenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .locals 10
    .param p1, "displayId"    # I

    .line 1570
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1571
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v1

    .line 1572
    .local v1, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1573
    monitor-exit v0

    return-object v2

    .line 1575
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    move-object v8, v3

    .line 1576
    .local v8, "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    if-nez v8, :cond_1

    .line 1577
    monitor-exit v0

    return-object v2

    .line 1580
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    move-object v9, v2

    .line 1581
    .local v9, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1582
    invoke-virtual {v9}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v4

    invoke-virtual {v9}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1581
    move-object v2, v1

    invoke-static/range {v2 .. v7}, Landroid/view/SurfaceControl;->screenshotToBufferWithSecureLayersUnsafe(Landroid/os/IBinder;Landroid/graphics/Rect;IIZI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1584
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v8    # "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    .end local v9    # "displayInfo":Landroid/view/DisplayInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 560
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 561
    return-void
.end method

.method private updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;
    .locals 3
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 1199
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 1200
    .local v0, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    .line 1201
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayState:I

    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mGlobalDisplayBrightness:F

    invoke-virtual {p1, v1, v2}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(IF)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    .line 1204
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private updateLogicalDisplaysLocked()Z
    .locals 6

    .line 1396
    const/4 v0, 0x0

    .line 1397
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_3

    .line 1398
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1399
    .local v1, "displayId":I
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 1401
    .local v3, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1402
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Ljava/util/List;)V

    .line 1403
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1404
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1405
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayRemoved(I)V

    .line 1406
    const/4 v0, 0x1

    goto :goto_1

    .line 1407
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1408
    invoke-direct {p0, v1, v3}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChanged(ILcom/android/server/display/LogicalDisplay;)V

    .line 1409
    const/4 v0, 0x1

    goto :goto_1

    .line 1410
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerService;->needUpdateLayerStack(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1411
    const/4 v0, 0x1

    .line 1413
    .end local v1    # "displayId":I
    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_2
    :goto_1
    move v1, v2

    goto :goto_0

    .line 1414
    .end local v2    # "i":I
    :cond_3
    return v0
.end method

.method private updateSettingsLocked()V
    .locals 4

    .line 711
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "minimal_post_processing_allowed"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mMinimalPostProcessingAllowed:Z

    .line 713
    return-void
.end method

.method private userScreenshotInternal(I)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .locals 13
    .param p1, "displayId"    # I

    .line 1588
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1589
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v1

    .line 1590
    .local v1, "token":Landroid/os/IBinder;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1591
    monitor-exit v0

    return-object v2

    .line 1593
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    move-object v8, v3

    .line 1594
    .local v8, "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    if-nez v8, :cond_1

    .line 1595
    monitor-exit v0

    return-object v2

    .line 1598
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    move-object v9, v3

    .line 1600
    .local v9, "displayInfo":Landroid/view/DisplayInfo;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    .line 1601
    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v3

    move-object v10, v3

    .line 1602
    .local v10, "display":Landroid/view/Display;
    if-nez v10, :cond_2

    .line 1603
    monitor-exit v0

    return-object v2

    .line 1605
    :cond_2
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object v11, v2

    .line 1606
    .local v11, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v10, v11}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1608
    iget v2, v9, Landroid/view/DisplayInfo;->rotation:I

    .line 1611
    .local v2, "rotation":I
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    move v12, v2

    goto :goto_2

    .line 1612
    :cond_4
    :goto_0
    if-ne v2, v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    move v2, v3

    move v12, v2

    .line 1615
    .end local v2    # "rotation":I
    .local v12, "rotation":I
    :goto_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget v4, v11, Landroid/graphics/Point;->x:I

    iget v5, v11, Landroid/graphics/Point;->y:I

    const/4 v6, 0x0

    move-object v2, v1

    move v7, v12

    invoke-static/range {v2 .. v7}, Landroid/view/SurfaceControl;->screenshotToBuffer(Landroid/os/IBinder;Landroid/graphics/Rect;IIZI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1617
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v8    # "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    .end local v9    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v10    # "display":Landroid/view/Display;
    .end local v11    # "displaySize":Landroid/graphics/Point;
    .end local v12    # "rotation":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method getDisplayDeviceInfoInternal(I)Lcom/android/server/display/DisplayDeviceInfo;
    .locals 4
    .param p1, "displayId"    # I

    .line 2045
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2046
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 2047
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_0

    .line 2048
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    .line 2049
    .local v2, "displayDevice":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 2051
    .end local v2    # "displayDevice":Lcom/android/server/display/DisplayDevice;
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 2052
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDisplayHandler()Landroid/os/Handler;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object v0
.end method

.method getDisplayIdToMirrorInternal(I)I
    .locals 4
    .param p1, "displayId"    # I

    .line 2057
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2058
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    .line 2059
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    if-eqz v1, :cond_0

    .line 2060
    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v2

    .line 2061
    .local v2, "displayDevice":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayIdToMirrorLocked()I

    move-result v3

    monitor-exit v0

    return v3

    .line 2063
    .end local v2    # "displayDevice":Lcom/android/server/display/DisplayDevice;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 2064
    .end local v1    # "display":Lcom/android/server/display/LogicalDisplay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDisplayedContentSampleInternal(IJJ)Landroid/hardware/display/DisplayedContentSample;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "maxFrames"    # J
    .param p4, "timestamp"    # J

    .line 1644
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1645
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 1646
    const/4 v1, 0x0

    return-object v1

    .line 1648
    :cond_0
    invoke-static {v0, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v1

    return-object v1
.end method

.method getDisplayedContentSamplingAttributesInternal(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .locals 2
    .param p1, "displayId"    # I

    .line 1623
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1624
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 1625
    const/4 v1, 0x0

    return-object v1

    .line 1627
    :cond_0
    invoke-static {v0}, Landroid/view/SurfaceControl;->getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v1

    return-object v1
.end method

.method getMinimumBrightnessCurveInternal()Landroid/hardware/display/Curve;
    .locals 1

    .line 1328
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    return-object v0
.end method

.method getPreferredWideGamutColorSpaceIdInternal()I
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    return v0
.end method

.method getVirtualDisplaySurfaceInternal(Landroid/os/IBinder;)Landroid/view/Surface;
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;

    .line 2069
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 2070
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_0

    .line 2071
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 2073
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->getVirtualDisplaySurfaceLocked(Landroid/os/IBinder;)Landroid/view/Surface;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2074
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBootPhase(I)V
    .locals 9
    .param p1, "phase"    # I

    .line 437
    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    .line 438
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 439
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    .line 440
    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService$Injector;->getDefaultDisplayDelayTimeout()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 441
    .local v1, "timeout":J
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v3, :cond_0

    goto :goto_1

    .line 458
    .end local v1    # "timeout":J
    :cond_0
    monitor-exit v0

    goto :goto_3

    .line 443
    .restart local v1    # "timeout":J
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v1, v5

    .line 444
    .local v5, "delay":J
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_3

    .line 450
    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 451
    const-string v3, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "waitForDefaultDisplay: waiting, timeout="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    goto :goto_2

    .line 455
    :catch_0
    move-exception v3

    .line 457
    .end local v5    # "delay":J
    :goto_2
    goto :goto_0

    .line 445
    .restart local v5    # "delay":J
    :cond_3
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timeout waiting for default display to be initialized. DefaultDisplay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 447
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mVirtualDisplayAdapter="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .end local p1    # "phase":I
    throw v3

    .line 458
    .end local v1    # "timeout":J
    .end local v5    # "delay":J
    .restart local p0    # "this":Lcom/android/server/display/DisplayManagerService;
    .restart local p1    # "phase":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 460
    :cond_4
    :goto_3
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 422
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->loadStableDisplayValuesLocked()V

    .line 423
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 428
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    .line 430
    new-instance v0, Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    const-string v2, "display"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/display/DisplayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 432
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 433
    return-void

    .line 423
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSwitchUser(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .line 464
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 465
    .local v0, "userSerial":I
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    .line 466
    :try_start_0
    iget v2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-eq v2, p1, :cond_0

    .line 467
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    .line 468
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    .line 469
    invoke-virtual {v2, v0}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    .line 474
    .local v2, "config":Landroid/hardware/display/BrightnessConfiguration;
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->handleSettingsChange()V

    .line 476
    .end local v2    # "config":Landroid/hardware/display/BrightnessConfiguration;
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayPowerController;->onSwitchUser(I)V

    .line 477
    monitor-exit v1

    .line 478
    return-void

    .line 477
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method performTraversalInternal(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 590
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 591
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v1, :cond_0

    .line 592
    monitor-exit v0

    return-void

    .line 594
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    .line 596
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 597
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .line 601
    .local v1, "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;
    invoke-interface {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 602
    .end local v1    # "listener":Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;
    goto :goto_0

    .line 603
    :cond_1
    return-void

    .line 597
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method resetBrightnessConfiguration()V
    .locals 3

    .line 1652
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 1653
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1652
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForUserInternal(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 1654
    return-void
.end method

.method setAmbientColorTemperatureOverride(F)V
    .locals 2
    .param p1, "cct"    # F

    .line 1673
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1675
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setAmbientColorTemperatureOverride(F)V

    .line 1676
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1678
    :cond_0
    :goto_0
    return-void
.end method

.method setAutoBrightnessLoggingEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1657
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1659
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setAutoBrightnessLoggingEnabled(Z)V

    .line 1660
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1662
    :cond_0
    :goto_0
    return-void
.end method

.method setDisplayWhiteBalanceLoggingEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1665
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    if-eqz v0, :cond_0

    .line 1666
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 1667
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayPowerController;->setDisplayWhiteBalanceLoggingEnabled(Z)V

    .line 1668
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1670
    :cond_0
    :goto_0
    return-void
.end method

.method setDisplayedContentSamplingEnabledInternal(IZII)Z
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "enable"    # Z
    .param p3, "componentMask"    # I
    .param p4, "maxFrames"    # I

    .line 1633
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object v0

    .line 1634
    .local v0, "token":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 1635
    const/4 v1, 0x0

    return v1

    .line 1637
    :cond_0
    invoke-static {v0, p2, p3, p4}, Landroid/view/SurfaceControl;->setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    move-result v1

    return v1
.end method

.method setHdrMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1683
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerController;->setHdrMode(Z)V

    .line 1684
    return-void
.end method

.method public setupSchedulerPolicies()V
    .locals 2

    .line 406
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 408
    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AnimationThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 410
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->get()Lcom/android/server/wm/SurfaceAnimationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 412
    return-void
.end method

.method public systemReady(ZZ)V
    .locals 3
    .param p1, "safeMode"    # Z
    .param p2, "onlyCore"    # Z

    .line 493
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 494
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    .line 495
    iput-boolean p2, p0, Lcom/android/server/display/DisplayManagerService;->mOnlyCore:Z

    .line 496
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    .line 499
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplays:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 501
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->updateSettingsLocked()V

    .line 502
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector;->setDesiredDisplayModeSpecsListener(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;)V

    .line 506
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/DisplayModeDirector;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector;->start(Landroid/hardware/SensorManager;)V

    .line 508
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;->sendEmptyMessage(I)Z

    .line 510
    new-instance v0, Lcom/android/server/display/DisplayManagerService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$SettingsObserver;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayManagerService$SettingsObserver;

    .line 514
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerService;->isBacklightLogEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->setAutoBrightnessLoggingEnabled(Z)V

    .line 516
    return-void

    .line 502
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1360
    if-nez p1, :cond_0

    .line 1361
    return-void

    .line 1363
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService;->isBrightnessConfigurationTooDark(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1366
    return-void

    .line 1364
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "brightness curve is too dark"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public windowManagerAndInputReady()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 483
    :try_start_0
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 484
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 485
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    .line 486
    monitor-exit v0

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

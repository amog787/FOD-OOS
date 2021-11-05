.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;,
        Lcom/android/server/wm/InputMonitor$UpdateInputWindows;,
        Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;
    }
.end annotation


# instance fields
.field private mDisableWallpaperTouchEvents:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayId:I

.field private mDisplayRemoved:Z

.field private mFocusedInputWindowHandle:Landroid/view/InputWindowHandle;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputConsumers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/InputConsumerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private final mInputTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

.field private final mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

.field private mUpdateInputWindowsImmediately:Z

.field private mUpdateInputWindowsNeeded:Z

.field private mUpdateInputWindowsPending:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    .line 156
    new-instance v0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;-><init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    .line 159
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 160
    iput-object p2, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 161
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;-><init>(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/InputMonitor$1;)V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/InputMonitor;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/InputMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 64
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/InputMonitor;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/InputMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 64
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wm/InputMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mDisableWallpaperTouchEvents:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/DisplayContent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/InputMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 64
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/view/InputWindowHandle;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/view/InputWindowHandle;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 64
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Landroid/view/InputWindowHandle;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/InputMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/wm/InputMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/InputMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 64
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InputMonitor;

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    return-object v0
.end method

.method private addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "consumer"    # Lcom/android/server/wm/InputConsumerImpl;

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {p2}, Lcom/android/server/wm/InputConsumerImpl;->linkToDeathRecipient()V

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 183
    return-void
.end method

.method private disposeInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)Z
    .locals 1
    .param p1, "consumer"    # Lcom/android/server/wm/InputConsumerImpl;

    .line 194
    if-eqz p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputConsumerImpl;->disposeChannelsLw(Landroid/view/SurfaceControl$Transaction;)V

    .line 196
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static populateOverlayInputInfo(Landroid/view/InputWindowHandle;Ljava/lang/String;IZ)V
    .locals 2
    .param p0, "inputWindowHandle"    # Landroid/view/InputWindowHandle;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "isVisible"    # Z

    .line 595
    iput-object p1, p0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 596
    iput p2, p0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 597
    const-wide v0, 0x12a05f200L

    iput-wide v0, p0, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 599
    iput-boolean p3, p0, Landroid/view/InputWindowHandle;->visible:Z

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    .line 601
    iput-boolean v0, p0, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 602
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/InputWindowHandle;->inputFeatures:I

    .line 603
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 604
    const/16 v0, 0x38

    iput v0, p0, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 606
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/InputWindowHandle;->portalToDisplayId:I

    .line 607
    iget-object v0, p0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 608
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 609
    return-void
.end method

.method private scheduleUpdateInputWindows()V
    .locals 2

    .line 355
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    if-eqz v0, :cond_0

    .line 356
    return-void

    .line 359
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    if-nez v0, :cond_1

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    :cond_1
    return-void
.end method

.method static setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    .locals 3
    .param p0, "sc"    # Landroid/view/SurfaceControl;
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "displayId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 619
    new-instance v0, Landroid/view/InputWindowHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    .line 620
    .local v0, "inputWindowHandle":Landroid/view/InputWindowHandle;
    const/16 v1, 0x7df

    const/4 v2, 0x1

    invoke-static {v0, p3, v1, v2}, Lcom/android/server/wm/InputMonitor;->populateOverlayInputInfo(Landroid/view/InputWindowHandle;Ljava/lang/String;IZ)V

    .line 621
    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 622
    return-void
.end method


# virtual methods
.method createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
    .locals 11
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputEventReceiverFactory"    # Landroid/view/InputEventReceiver$Factory;

    .line 227
    const-string v0, "nav_input_consumer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ", display: "

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 237
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget v10, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    move-object v2, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/InputMonitor;Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;ILandroid/os/UserHandle;I)V

    .line 239
    .local v0, "consumer":Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/InputMonitor;->addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V

    .line 240
    return-object v0

    .line 233
    .end local v0    # "consumer":Lcom/android/server/wm/InputMonitor$EventReceiverInputConsumer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Existing input consumer found with name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal input consumer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputChannel"    # Landroid/view/InputChannel;
    .param p4, "clientPid"    # I
    .param p5, "clientUser"    # Landroid/os/UserHandle;

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", display: "

    if-nez v0, :cond_7

    .line 250
    new-instance v0, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputConsumerImpl;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/os/UserHandle;I)V

    .line 252
    .local v0, "consumer":Lcom/android/server/wm/InputConsumerImpl;
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x5af18033

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const v4, 0x3d13fc73

    if-eq v3, v4, :cond_2

    const v4, 0x5463dca8

    if-eq v3, v4, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v3, "wallpaper_input_consumer"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "pip_input_consumer"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v6

    goto :goto_0

    :cond_3
    const-string v3, "recents_animation_input_consumer"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v5

    :goto_0
    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_5

    if-ne v2, v5, :cond_4

    .line 262
    goto :goto_1

    .line 264
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal input consumer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_5
    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget v2, v1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 260
    goto :goto_1

    .line 254
    :cond_6
    iget-object v1, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v6, v1, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    .line 255
    nop

    .line 267
    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/InputMonitor;->addInputConsumer(Ljava/lang/String;Lcom/android/server/wm/InputConsumerImpl;)V

    .line 268
    return-void

    .line 246
    .end local v0    # "consumer":Lcom/android/server/wm/InputConsumerImpl;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Existing input consumer found with name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method destroyInputConsumer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InputConsumerImpl;

    invoke-direct {p0, v0}, Lcom/android/server/wm/InputMonitor;->disposeInputConsumer(Lcom/android/server/wm/InputConsumerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 188
    return v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 431
    .local v0, "inputConsumerKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InputConsumers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 434
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/wm/InputConsumerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 437
    :cond_0
    return-void
.end method

.method getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InputConsumerImpl;

    return-object v0
.end method

.method public synthetic lambda$onDisplayRemoved$0$InputMonitor()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->onDisplayRemoved(I)V

    .line 175
    return-void
.end method

.method layoutInputConsumers(II)V
    .locals 5
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .line 207
    const-wide/16 v0, 0x20

    :try_start_0
    const-string v2, "layoutInputConsumer"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 209
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InputConsumerImpl;

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/InputConsumerImpl;->layout(Landroid/view/SurfaceControl$Transaction;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 212
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 213
    nop

    .line 214
    return-void

    .line 212
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 213
    throw v2
.end method

.method onDisplayRemoved()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$InputMonitor$ew_vdS116C6DH9LxWaTuVXJYZPE;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$InputMonitor$ew_vdS116C6DH9LxWaTuVXJYZPE;-><init>(Lcom/android/server/wm/InputMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    .line 177
    return-void
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 2
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .line 408
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_1

    .line 409
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pausing WindowToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 414
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 416
    :cond_1
    return-void
.end method

.method populateInputWindowHandle(Landroid/view/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .locals 5
    .param p1, "inputWindowHandle"    # Landroid/view/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;
    .param p3, "flags"    # I
    .param p4, "type"    # I
    .param p5, "isVisible"    # Z
    .param p6, "hasFocus"    # Z
    .param p7, "hasWallpaper"    # Z

    .line 275
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 276
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p1, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 278
    invoke-virtual {p2, p1, p3}, Lcom/android/server/wm/WindowState;->getSurfaceTouchableRegion(Landroid/view/InputWindowHandle;I)I

    move-result p3

    .line 279
    iput p3, p1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 280
    iput p4, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 281
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v3

    iput-wide v3, p1, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 282
    iput-boolean p5, p1, Landroid/view/InputWindowHandle;->visible:Z

    .line 283
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    iput-boolean v0, p1, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    .line 284
    iput-boolean p6, p1, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 285
    iput-boolean p7, p1, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    .line 286
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->paused:Z

    :cond_1
    iput-boolean v1, p1, Landroid/view/InputWindowHandle;->paused:Z

    .line 287
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    iput v0, p1, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 288
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    iput v0, p1, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 289
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v0, p1, Landroid/view/InputWindowHandle;->inputFeatures:I

    .line 290
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    iput v0, p1, Landroid/view/InputWindowHandle;->displayId:I

    .line 292
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 293
    .local v0, "frame":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/view/InputWindowHandle;->frameLeft:I

    .line 294
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/view/InputWindowHandle;->frameTop:I

    .line 295
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/view/InputWindowHandle;->frameRight:I

    .line 296
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/view/InputWindowHandle;->frameBottom:I

    .line 301
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/view/InputWindowHandle;->surfaceInset:I

    .line 312
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    invoke-virtual {p1, v2}, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop(Landroid/view/SurfaceControl;)V

    .line 318
    :cond_2
    sget-boolean v1, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->IS_ZOOM_WINDOW_ENABLED:Z

    if-eqz v1, :cond_3

    .line 319
    invoke-static {p0, p2, p1}, Lcom/android/server/wm/ColorZoomWindowManagerServiceInjector;->adjustInputWindowHandle(Lcom/android/server/wm/InputMonitor;Lcom/android/server/wm/WindowState;Landroid/view/InputWindowHandle;)V

    .line 323
    :cond_3
    iget v1, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 327
    iget v1, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v2, v1

    iput v2, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    goto :goto_1

    .line 329
    :cond_4
    iput v2, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 332
    :goto_1
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v1, :cond_5

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addInputWindowHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_5
    if-eqz p6, :cond_6

    .line 338
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mFocusedInputWindowHandle:Landroid/view/InputWindowHandle;

    .line 340
    :cond_6
    return-void
.end method

.method resetInputConsumers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/InputConsumerImpl;->hide(Landroid/view/SurfaceControl$Transaction;)V

    .line 220
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 2
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .line 419
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_1

    .line 420
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resuming WindowToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 425
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 427
    :cond_1
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3
    .param p1, "newApp"    # Lcom/android/server/wm/ActivityRecord;

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    .line 404
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 403
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    .line 405
    return-void
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 6
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"    # Z

    .line 382
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x1101986f

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 384
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_2

    .line 385
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 392
    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 393
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 395
    if-eqz p2, :cond_2

    .line 396
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 399
    :cond_2
    return-void
.end method

.method setUpdateInputWindowsNeededLw()V
    .locals 1

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 344
    return-void
.end method

.method updateInputWindowsImmediately(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 370
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->run()V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsImmediately:Z

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 375
    return-void
.end method

.method updateInputWindowsLw(Z)V
    .locals 1
    .param p1, "force"    # Z

    .line 348
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez v0, :cond_0

    .line 349
    return-void

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->scheduleUpdateInputWindows()V

    .line 352
    return-void
.end method

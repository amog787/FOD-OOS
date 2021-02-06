.class public Lcom/android/server/accessibility/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationController$ControllerContext;,
        Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;,
        Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;,
        Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationController"

.field public static final MAX_SCALE:F = 8.0f

.field public static final MIN_SCALE:F = 1.0f


# instance fields
.field private final mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMainThreadId:J

.field private final mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 597
    new-instance v7, Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 598
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v4, Landroid/os/Handler;

    .line 599
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 600
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v5, v0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/wm/WindowManagerInternal;Landroid/os/Handler;J)V

    .line 597
    invoke-direct {p0, v7, p3}, Lcom/android/server/accessibility/MagnificationController;-><init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;)V

    .line 601
    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ctx"    # Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    .line 608
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    .line 609
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    .line 610
    invoke-virtual {p1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    .line 611
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    .line 612
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController;

    .line 59
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/MagnificationController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController;

    .line 59
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/MagnificationController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationController;->unregisterCallbackLocked(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/MagnificationController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController;

    .line 59
    iget-wide v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/MagnificationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController;

    .line 59
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onScreenTurnedOff()V

    return-void
.end method

.method public static synthetic lambda$UxSkaR2uzdX0ekJv4Wtodc8tuMY(Lcom/android/server/accessibility/MagnificationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(Z)V

    return-void
.end method

.method private onScreenTurnedOff()V
    .locals 2

    .line 1090
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$MagnificationController$UxSkaR2uzdX0ekJv4Wtodc8tuMY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$MagnificationController$UxSkaR2uzdX0ekJv4Wtodc8tuMY;

    .line 1091
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1090
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1092
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1093
    return-void
.end method

.method private resetAllIfNeeded(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 1096
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1097
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1098
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(IZ)Z

    .line 1097
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1100
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 1101
    return-void

    .line 1100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterCallbackLocked(IZ)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "delete"    # Z

    .line 1127
    if-eqz p2, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1131
    :cond_0
    const/4 v0, 0x0

    .line 1132
    .local v0, "hasRegister":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1133
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1134
    .local v2, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v0

    .line 1135
    if-eqz v0, :cond_1

    .line 1136
    goto :goto_1

    .line 1132
    .end local v2    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1139
    .end local v1    # "i":I
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 1140
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->unregister()V

    .line 1142
    :cond_3
    return-void
.end method

.method private unregisterLocked(IZ)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "delete"    # Z

    .line 1104
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1105
    .local v0, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v0, :cond_0

    .line 1106
    return-void

    .line 1108
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1109
    if-eqz p2, :cond_1

    .line 1110
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1112
    :cond_1
    return-void

    .line 1114
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1115
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->unregister(Z)V

    goto :goto_0

    .line 1117
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->unregisterPending(Z)V

    .line 1119
    :goto_0
    return-void
.end method


# virtual methods
.method public getCenterX(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 809
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 811
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 812
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 814
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterX()F

    move-result v2

    monitor-exit v0

    return v2

    .line 815
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCenterY(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 843
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 844
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 845
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 846
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 848
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterY()F

    move-result v2

    monitor-exit v0

    return v2

    .line 849
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdOfLastServiceToMagnify(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 979
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 980
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 981
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 982
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 984
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result v2

    monitor-exit v0

    return v2

    .line 985
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMagnificationBounds(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 740
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 742
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 743
    monitor-exit v0

    return-void

    .line 745
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 746
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 747
    return-void

    .line 746
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMagnificationRegion(ILandroid/graphics/Region;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 758
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 760
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 761
    monitor-exit v0

    return-void

    .line 763
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnificationRegion(Landroid/graphics/Region;)V

    .line 764
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 765
    return-void

    .line 764
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOffsetX(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 792
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 794
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 795
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 797
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getOffsetX()F

    move-result v2

    monitor-exit v0

    return v2

    .line 798
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOffsetY(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 826
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 828
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 829
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 831
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getOffsetY()F

    move-result v2

    monitor-exit v0

    return v2

    .line 832
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPersistedScale()F
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getMagnificationScale(I)F

    move-result v0

    return v0
.end method

.method public getScale(I)F
    .locals 3
    .param p1, "displayId"    # I

    .line 775
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 777
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 778
    const/high16 v2, 0x3f800000    # 1.0f

    monitor-exit v0

    return v2

    .line 780
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result v2

    monitor-exit v0

    return v2

    .line 781
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMagnifying(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 701
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 703
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 704
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 706
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 707
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRegistered(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 686
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 688
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 689
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 691
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 692
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public magnificationRegionContains(IFF)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 721
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 723
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 724
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 726
    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->magnificationRegionContains(FF)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 727
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public offsetMagnifiedRegion(IFFI)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "id"    # I

    .line 963
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 965
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 966
    monitor-exit v0

    return-void

    .line 968
    :cond_0
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->offsetMagnifiedRegion(FFI)V

    .line 969
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    monitor-exit v0

    .line 970
    return-void

    .line 969
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 671
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/MagnificationController;->unregisterLocked(IZ)V

    .line 673
    monitor-exit v0

    .line 674
    return-void

    .line 673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public persistScale()V
    .locals 4

    .line 993
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->getScale(I)F

    move-result v1

    .line 994
    .local v1, "scale":F
    iget v2, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    .line 996
    .local v2, "userId":I
    new-instance v3, Lcom/android/server/accessibility/MagnificationController$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController$1;-><init>(Lcom/android/server/accessibility/MagnificationController;FI)V

    new-array v0, v0, [Ljava/lang/Void;

    .line 1002
    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/MagnificationController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1003
    return-void
.end method

.method public register(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 624
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 626
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 627
    new-instance v2, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    invoke-direct {v2, p0, p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;-><init>(Lcom/android/server/accessibility/MagnificationController;I)V

    move-object v1, v2

    .line 629
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 630
    monitor-exit v0

    return-void

    .line 632
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->register()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 633
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 634
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->registerIfNecessary()V

    .line 636
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :cond_2
    monitor-exit v0

    .line 637
    return-void

    .line 636
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset(IZ)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 863
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 864
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 865
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 866
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 868
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->reset(Z)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 869
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetAllIfNeeded(I)V
    .locals 3
    .param p1, "connectionId"    # I

    .line 1035
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1036
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1037
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(II)Z

    .line 1036
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1039
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 1040
    return-void

    .line 1039
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetIfNeeded(II)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "connectionId"    # I

    .line 1068
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1069
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1070
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1071
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getIdOfLastServiceToMagnify()I

    move-result v2

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 1074
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->reset(Z)Z

    .line 1075
    monitor-exit v0

    return v2

    .line 1072
    :cond_1
    :goto_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1076
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetIfNeeded(IZ)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "animate"    # Z

    .line 1050
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1051
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1052
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->reset(Z)Z

    .line 1056
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1053
    :cond_1
    :goto_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1057
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCenter(IFFZI)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    .line 914
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 916
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 917
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 919
    :cond_0
    const/high16 v3, 0x7fc00000    # Float.NaN

    move-object v2, v1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZI)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 920
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setForceShowMagnifiableBounds(IZ)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "show"    # Z

    .line 1080
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 1082
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 1083
    monitor-exit v0

    return-void

    .line 1085
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setForceShowMagnifiableBounds(Z)V

    .line 1086
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
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

.method public setScale(IFFFZI)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F
    .param p5, "animate"    # Z
    .param p6, "id"    # I

    .line 889
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 890
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 891
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 892
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 894
    :cond_0
    move-object v2, v1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setScale(FFFZI)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 895
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setScaleAndCenter(IFFFZI)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "animate"    # Z
    .param p6, "id"    # I

    .line 942
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 943
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    .line 944
    .local v1, "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    if-nez v1, :cond_0

    .line 945
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 947
    :cond_0
    move-object v2, v1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZI)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 948
    .end local v1    # "display":Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUserId(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1022
    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    if-ne v0, p1, :cond_0

    .line 1023
    return-void

    .line 1025
    :cond_0
    iput p1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    .line 1026
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(Z)V

    .line 1027
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1147
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MagnificationController["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    const-string/jumbo v1, "mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1149
    const-string v1, ", mDisplays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1150
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregister(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 646
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/MagnificationController;->unregisterLocked(IZ)V

    .line 648
    monitor-exit v0

    .line 649
    return-void

    .line 648
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterAll()V
    .locals 5

    .line 655
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 659
    .local v1, "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 660
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/accessibility/MagnificationController;->unregisterLocked(IZ)V

    .line 659
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 662
    .end local v1    # "displays":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;>;"
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

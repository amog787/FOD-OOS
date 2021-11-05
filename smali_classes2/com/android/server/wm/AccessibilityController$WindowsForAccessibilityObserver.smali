.class final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowsForAccessibilityObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

.field private final mDisplayId:I

.field private final mEmbeddedDisplayIdList:Landroid/util/IntArray;

.field private final mHandler:Landroid/os/Handler;

.field private final mRecurringAccessibilityEventsIntervalMillis:J

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempBinderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempRegion:Landroid/graphics/Region;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 2
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayId"    # I
    .param p3, "callback"    # Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 1219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1191
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 1193
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1195
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1197
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1199
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    .line 1201
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1203
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1215
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    .line 1220
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1221
    iput-object p3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 1222
    iput p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    .line 1223
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 1224
    nop

    .line 1225
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 1226
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    .line 1227
    return-void
.end method

.method private static addPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Ljava/util/List;Ljava/util/Set;)V
    .locals 2
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "regionInScreen"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Region;",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 1477
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    .local p3, "tokenOut":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object v0

    .line 1478
    .local v0, "window":Landroid/view/WindowInfo;
    iget-object v1, v0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1479
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    .line 1480
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1481
    iget-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1482
    return-void
.end method

.method private static clearAndRecycleWindows(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 1485
    .local p0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1486
    .local v0, "windowCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1487
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 1486
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1489
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private computeWindowRegionInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V
    .locals 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 1454
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1455
    .local v0, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1458
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1459
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-static {p1, v1}, Lcom/android/server/wm/AccessibilityController;->access$500(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 1461
    new-instance v2, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$2C1tADzS58YZU_H5KqoEnZ2M57I;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$2C1tADzS58YZU_H5KqoEnZ2M57I;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;Landroid/graphics/Region;)V

    invoke-static {v0, v2}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    .line 1473
    return-void
.end method

.method private findRootDisplayParentWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1534
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1535
    .local v0, "displayParentWindow":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    .line 1536
    const/4 v1, 0x0

    return-object v1

    .line 1538
    :cond_0
    move-object v1, v0

    .line 1539
    .local v1, "candidate":Lcom/android/server/wm/WindowState;
    :goto_0
    if-eqz v1, :cond_1

    .line 1540
    move-object v0, v1

    .line 1541
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    .line 1543
    :cond_1
    return-object v0
.end method

.method private getTopFocusWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1547
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private static isReportedWindowType(I)Z
    .locals 1
    .param p0, "windowType"    # I

    .line 1492
    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7ea

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7eb

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7ee

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$populateVisibleWindowsOnScreenLocked$1(Ljava/util/List;Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "tempWindowStatesList"    # Ljava/util/List;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1512
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1513
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1515
    :cond_0
    return-void
.end method

.method private populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 1505
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .local v0, "tempWindowStatesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/WindowState;>;"
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1507
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_0

    .line 1508
    return-void

    .line 1511
    :cond_0
    new-instance v2, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$gS9b6G5QkV-2hX2iGcgQl5HPWws;

    invoke-direct {v2, v0}, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$gS9b6G5QkV-2hX2iGcgQl5HPWws;-><init>(Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1518
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$n5Rg8WjCeBbjXNbZvPUlKzhx8Nw;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$n5Rg8WjCeBbjXNbZvPUlKzhx8Nw;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Ljava/util/List;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1528
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1529
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1528
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1531
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private updateUnaccountedSpace(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Landroid/graphics/Region;Ljava/util/HashSet;)V
    .locals 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "regionInScreen"    # Landroid/graphics/Region;
    .param p3, "unaccountedSpace"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Region;",
            "Landroid/graphics/Region;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1408
    .local p4, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f0

    if-eq v0, v1, :cond_2

    .line 1414
    sget-object v0, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, p2, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1418
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x28

    if-nez v0, :cond_2

    .line 1420
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasTapExcludeRegion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1424
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v0, p3, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    .line 1428
    :cond_0
    new-instance v0, Landroid/graphics/Region;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 1429
    .local v0, "displayRegion":Landroid/graphics/Region;
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 1430
    .local v1, "tapExcludeRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->getTapExcludeRegion(Landroid/graphics/Region;)V

    .line 1431
    sget-object v2, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1433
    sget-object v2, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v0, p3, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1437
    .end local v0    # "displayRegion":Landroid/graphics/Region;
    .end local v1    # "tapExcludeRegion":Landroid/graphics/Region;
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1438
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1

    .line 1441
    iget v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1442
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasTapExcludeRegion()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1446
    invoke-virtual {p3}, Landroid/graphics/Region;->setEmpty()V

    .line 1450
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_2
    :goto_1
    return-void
.end method

.method private windowMattersToAccessibility(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Landroid/graphics/Region;Ljava/util/HashSet;)Z
    .locals 6
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "regionInScreen"    # Landroid/graphics/Region;
    .param p3, "unaccountedSpace"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Region;",
            "Landroid/graphics/Region;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1370
    .local p4, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 1371
    .local v0, "controller":Lcom/android/server/wm/RecentsAnimationController;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentsAnimationController;->shouldIgnoreForAccessibility(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1372
    return v1

    .line 1375
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1376
    return v3

    .line 1380
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1381
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_2

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1382
    return v1

    .line 1388
    :cond_2
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7f2

    if-eq v4, v5, :cond_3

    .line 1390
    return v1

    .line 1394
    :cond_3
    invoke-virtual {p3, p2}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Region;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1395
    return v1

    .line 1399
    :cond_4
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1400
    return v3

    .line 1403
    :cond_5
    return v1
.end method


# virtual methods
.method addEmbeddedDisplay(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 1250
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    if-ne p1, v0, :cond_0

    .line 1251
    return-void

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 1254
    return-void
.end method

.method public computeChangedWindows(Z)V
    .locals 21
    .param p1, "forceSend"    # Z

    .line 1266
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 1268
    .local v2, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    const/4 v3, 0x0

    .line 1270
    .local v3, "topFocusedWindowToken":Landroid/os/IBinder;
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1274
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->getTopFocusWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1275
    .local v0, "topFocusedWindowState":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1359
    .end local v0    # "topFocusedWindowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v0

    move/from16 v6, p1

    goto/16 :goto_8

    .line 1277
    .restart local v0    # "topFocusedWindowState":Lcom/android/server/wm/WindowState;
    :cond_0
    :try_start_2
    iget-object v5, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v6, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1278
    .local v5, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v5, :cond_1

    .line 1279
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1281
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    .line 1282
    .local v6, "display":Landroid/view/Display;
    iget-object v7, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1283
    iget-object v7, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    .line 1284
    .local v7, "screenWidth":I
    iget-object v8, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    .line 1286
    .local v8, "screenHeight":I
    iget-object v9, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1287
    .local v9, "unaccountedSpace":Landroid/graphics/Region;
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 1289
    iget-object v10, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 1290
    .local v10, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    invoke-direct {v1, v10}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 1291
    iget-object v11, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1292
    .local v11, "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v11}, Ljava/util/Set;->clear()V

    .line 1294
    const/4 v12, 0x0

    .line 1296
    .local v12, "focusedWindowAdded":Z
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 1297
    .local v13, "visibleWindowCount":I
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1300
    .local v14, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    add-int/lit8 v15, v13, -0x1

    .local v15, "i":I
    :goto_0
    if-ltz v15, :cond_5

    .line 1301
    :try_start_5
    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v16

    .line 1302
    .local v17, "windowState":Lcom/android/server/wm/WindowState;
    new-instance v16, Landroid/graphics/Region;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Region;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v18, v16

    .line 1303
    .local v18, "regionInScreen":Landroid/graphics/Region;
    move-object/from16 v16, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v18

    .end local v18    # "regionInScreen":Landroid/graphics/Region;
    .local v3, "windowState":Lcom/android/server/wm/WindowState;
    .local v6, "regionInScreen":Landroid/graphics/Region;
    .local v16, "topFocusedWindowToken":Landroid/os/IBinder;
    .local v17, "display":Landroid/view/Display;
    :try_start_6
    invoke-direct {v1, v3, v6}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowRegionInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V

    .line 1305
    invoke-direct {v1, v3, v6, v9, v14}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowMattersToAccessibility(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Landroid/graphics/Region;Ljava/util/HashSet;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1307
    invoke-static {v3, v6, v2, v11}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->addPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Ljava/util/List;Ljava/util/Set;)V

    .line 1308
    invoke-direct {v1, v3, v6, v9, v14}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->updateUnaccountedSpace(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Landroid/graphics/Region;Ljava/util/HashSet;)V

    .line 1310
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v18

    or-int v12, v12, v18

    move-object/from16 v19, v3

    move-object/from16 v18, v6

    goto :goto_1

    .line 1311
    :cond_2
    move-object/from16 v18, v6

    .end local v6    # "regionInScreen":Landroid/graphics/Region;
    .restart local v18    # "regionInScreen":Landroid/graphics/Region;
    iget-object v6, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    invoke-static {v3, v6}, Lcom/android/server/wm/AccessibilityController;->isUntouchableNavigationBar(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1316
    invoke-static {v5}, Lcom/android/server/wm/AccessibilityController;->getNavBarInsets(Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;

    move-result-object v6

    move-object/from16 v19, v3

    .end local v3    # "windowState":Lcom/android/server/wm/WindowState;
    .local v19, "windowState":Lcom/android/server/wm/WindowState;
    sget-object v3, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v6, v9, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_1

    .line 1311
    .end local v19    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v3    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_3
    move-object/from16 v19, v3

    .line 1320
    .end local v3    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v19    # "windowState":Lcom/android/server/wm/WindowState;
    :goto_1
    invoke-virtual {v9}, Landroid/graphics/Region;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v12, :cond_4

    .line 1321
    goto :goto_2

    .line 1300
    .end local v18    # "regionInScreen":Landroid/graphics/Region;
    .end local v19    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_4
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    goto :goto_0

    .line 1359
    .end local v0    # "topFocusedWindowState":Lcom/android/server/wm/WindowState;
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v7    # "screenWidth":I
    .end local v8    # "screenHeight":I
    .end local v9    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v10    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v11    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v12    # "focusedWindowAdded":Z
    .end local v13    # "visibleWindowCount":I
    .end local v14    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v15    # "i":I
    .end local v16    # "topFocusedWindowToken":Landroid/os/IBinder;
    .end local v17    # "display":Landroid/view/Display;
    .local v3, "topFocusedWindowToken":Landroid/os/IBinder;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    move/from16 v6, p1

    goto/16 :goto_8

    .line 1300
    .restart local v0    # "topFocusedWindowState":Lcom/android/server/wm/WindowState;
    .restart local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v6, "display":Landroid/view/Display;
    .restart local v7    # "screenWidth":I
    .restart local v8    # "screenHeight":I
    .restart local v9    # "unaccountedSpace":Landroid/graphics/Region;
    .restart local v10    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .restart local v11    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .restart local v12    # "focusedWindowAdded":Z
    .restart local v13    # "visibleWindowCount":I
    .restart local v14    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v15    # "i":I
    :cond_5
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    .line 1325
    .end local v3    # "topFocusedWindowToken":Landroid/os/IBinder;
    .end local v6    # "display":Landroid/view/Display;
    .end local v15    # "i":I
    .restart local v16    # "topFocusedWindowToken":Landroid/os/IBinder;
    .restart local v17    # "display":Landroid/view/Display;
    :goto_2
    iget-object v3, v5, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_3
    if-ltz v3, :cond_7

    .line 1326
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ShellRoot;

    invoke-virtual {v6}, Lcom/android/server/wm/ShellRoot;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object v6

    .line 1327
    .local v6, "info":Landroid/view/WindowInfo;
    if-nez v6, :cond_6

    .line 1328
    goto :goto_4

    .line 1330
    :cond_6
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v15

    iput v15, v6, Landroid/view/WindowInfo;->layer:I

    .line 1331
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    iget-object v15, v6, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {v11, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1325
    .end local v6    # "info":Landroid/view/WindowInfo;
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1336
    .end local v3    # "i":I
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1337
    .local v3, "windowCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    if-ge v6, v3, :cond_c

    .line 1338
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/WindowInfo;

    .line 1339
    .local v15, "window":Landroid/view/WindowInfo;
    move/from16 v18, v3

    .end local v3    # "windowCount":I
    .local v18, "windowCount":I
    iget-object v3, v15, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-interface {v11, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1340
    const/4 v3, 0x0

    iput-object v3, v15, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1342
    :cond_8
    iget-object v3, v15, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v3, :cond_b

    .line 1343
    iget-object v3, v15, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1344
    .local v3, "childTokenCount":I
    add-int/lit8 v19, v3, -0x1

    move/from16 v20, v3

    move/from16 v3, v19

    .local v3, "j":I
    .local v20, "childTokenCount":I
    :goto_6
    if-ltz v3, :cond_a

    .line 1345
    move-object/from16 v19, v5

    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v19, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v5, v15, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1346
    iget-object v5, v15, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1344
    :cond_9
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v5, v19

    goto :goto_6

    .end local v19    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_a
    move-object/from16 v19, v5

    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v19    # "dc":Lcom/android/server/wm/DisplayContent;
    goto :goto_7

    .line 1342
    .end local v3    # "j":I
    .end local v19    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v20    # "childTokenCount":I
    .restart local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_b
    move-object/from16 v19, v5

    .line 1337
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "window":Landroid/view/WindowInfo;
    .restart local v19    # "dc":Lcom/android/server/wm/DisplayContent;
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v18

    move-object/from16 v5, v19

    goto :goto_5

    .end local v18    # "windowCount":I
    .end local v19    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v3, "windowCount":I
    .restart local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_c
    move/from16 v18, v3

    move-object/from16 v19, v5

    .line 1353
    .end local v3    # "windowCount":I
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "i":I
    .restart local v18    # "windowCount":I
    .restart local v19    # "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 1354
    invoke-interface {v11}, Ljava/util/Set;->clear()V

    .line 1357
    iget-object v3, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 1358
    .local v3, "topFocusedDisplayId":I
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1359
    .end local v0    # "topFocusedWindowState":Lcom/android/server/wm/WindowState;
    .end local v7    # "screenWidth":I
    .end local v8    # "screenHeight":I
    .end local v9    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v10    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v11    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v12    # "focusedWindowAdded":Z
    .end local v13    # "visibleWindowCount":I
    .end local v14    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v16    # "topFocusedWindowToken":Landroid/os/IBinder;
    .end local v17    # "display":Landroid/view/Display;
    .end local v18    # "windowCount":I
    .end local v19    # "dc":Lcom/android/server/wm/DisplayContent;
    .local v5, "topFocusedWindowToken":Landroid/os/IBinder;
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1360
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    move/from16 v6, p1

    invoke-interface {v0, v6, v3, v5, v2}, Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(ZILandroid/os/IBinder;Ljava/util/List;)V

    .line 1364
    invoke-static {v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    .line 1365
    return-void

    .line 1359
    .end local v3    # "topFocusedDisplayId":I
    :catchall_2
    move-exception v0

    move/from16 v6, p1

    move-object v3, v5

    goto :goto_8

    .end local v5    # "topFocusedWindowToken":Landroid/os/IBinder;
    .restart local v16    # "topFocusedWindowToken":Landroid/os/IBinder;
    :catchall_3
    move-exception v0

    move/from16 v6, p1

    move-object/from16 v3, v16

    goto :goto_8

    .end local v16    # "topFocusedWindowToken":Landroid/os/IBinder;
    .local v3, "topFocusedWindowToken":Landroid/os/IBinder;
    :catchall_4
    move-exception v0

    move/from16 v6, p1

    move-object/from16 v16, v3

    :goto_8
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_8
.end method

.method getAndClearEmbeddedDisplayIdList()Landroid/util/IntArray;
    .locals 2

    .line 1242
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 1243
    .local v0, "returnedArray":Landroid/util/IntArray;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 1244
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 1246
    return-object v0
.end method

.method public synthetic lambda$computeWindowRegionInScreen$0$AccessibilityController$WindowsForAccessibilityObserver(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "outRegion"    # Landroid/graphics/Region;
    .param p4, "rect"    # Landroid/graphics/Rect;

    .line 1463
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1464
    .local v0, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1465
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 1467
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1470
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 1472
    return-void
.end method

.method public synthetic lambda$populateVisibleWindowsOnScreenLocked$2$AccessibilityController$WindowsForAccessibilityObserver(Ljava/util/List;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "tempWindowStatesList"    # Ljava/util/List;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 1519
    invoke-direct {p0, p2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->findRootDisplayParentWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1520
    .local v0, "parentWindow":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    .line 1521
    return-void

    .line 1524
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1525
    invoke-interface {p1, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p1, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1527
    :cond_1
    return-void
.end method

.method public performComputeChangedWindowsNotLocked(Z)V
    .locals 2
    .param p1, "forceSend"    # Z

    .line 1230
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1231
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    .line 1232
    return-void
.end method

.method public scheduleComputeChangedWindowsLocked()V
    .locals 4

    .line 1235
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1239
    :cond_0
    return-void
.end method

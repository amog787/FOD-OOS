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

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mOldWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private mTempLayer:I

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

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
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 2
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 1042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    .line 1044
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1046
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1048
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1050
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    .line 1052
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1054
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1056
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1068
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempLayer:I

    .line 1072
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    .line 1073
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1074
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 1075
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 1076
    nop

    .line 1077
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 1078
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    .line 1079
    return-void
.end method

.method private static addPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Ljava/util/List;Ljava/util/Set;)V
    .locals 2
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "boundsInScreen"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 1312
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    .local p3, "tokenOut":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object v0

    .line 1313
    .local v0, "window":Landroid/view/WindowInfo;
    iget-object v1, v0, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1314
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    .line 1315
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1316
    iget-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1317
    return-void
.end method

.method private cacheWindows(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 1320
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1321
    .local v0, "oldWindowCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1322
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 1321
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1324
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1325
    .local v1, "newWindowCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1326
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    .line 1327
    .local v3, "newWindow":Landroid/view/WindowInfo;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-static {v3}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    .end local v3    # "newWindow":Landroid/view/WindowInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1329
    .end local v2    # "i":I
    :cond_1
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

    .line 1378
    .local p0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1379
    .local v0, "windowCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1380
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 1379
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1382
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 1289
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1290
    .local v0, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1291
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1292
    .local v1, "touchableFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 1295
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1296
    .local v2, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1297
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 1300
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1301
    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-static {p1, v3}, Lcom/android/server/wm/AccessibilityController;->access$500(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 1302
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1305
    iget v4, v2, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1307
    return-void
.end method

.method private findRootDisplayParentWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1416
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1417
    .local v0, "displayParentWindow":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    .line 1418
    const/4 v1, 0x0

    return-object v1

    .line 1420
    :cond_0
    move-object v1, v0

    .line 1421
    .local v1, "candidate":Lcom/android/server/wm/WindowState;
    :goto_0
    if-eqz v1, :cond_1

    .line 1422
    move-object v0, v1

    .line 1423
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    .line 1425
    :cond_1
    return-object v0
.end method

.method private static isReportedWindowType(I)Z
    .locals 1
    .param p0, "windowType"    # I

    .line 1385
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

.method private populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 1398
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1399
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempLayer:I

    .line 1400
    new-instance v2, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$vRhBz0DqTZWNemKfoIyId7HacTk;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$vRhBz0DqTZWNemKfoIyId7HacTk;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/util/SparseArray;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1405
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$B_IsvCwgODO-zAT2_hQ1EOsBsJg;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/-$$Lambda$AccessibilityController$WindowsForAccessibilityObserver$B_IsvCwgODO-zAT2_hQ1EOsBsJg;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/util/SparseArray;)V

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1413
    return-void
.end method

.method private updateUnaccountedSpace(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Region;Ljava/util/HashSet;)V
    .locals 2
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "boundsInScreen"    # Landroid/graphics/Rect;
    .param p3, "unaccountedSpace"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Region;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1255
    .local p4, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f0

    if-eq v0, v1, :cond_1

    .line 1261
    sget-object v0, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, p2, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1265
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x28

    if-nez v0, :cond_1

    .line 1270
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v0, p3, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1273
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1274
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 1277
    iget v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1281
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Region;->setEmpty()V

    .line 1285
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_1
    :goto_0
    return-void
.end method

.method private windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .locals 6
    .param p1, "oldWindow"    # Landroid/view/WindowInfo;
    .param p2, "newWindow"    # Landroid/view/WindowInfo;

    .line 1332
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 1333
    return v0

    .line 1335
    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1336
    return v1

    .line 1338
    :cond_1
    if-nez p2, :cond_2

    .line 1339
    return v1

    .line 1341
    :cond_2
    iget v2, p1, Landroid/view/WindowInfo;->type:I

    iget v3, p2, Landroid/view/WindowInfo;->type:I

    if-eq v2, v3, :cond_3

    .line 1342
    return v1

    .line 1344
    :cond_3
    iget-boolean v2, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v3, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v2, v3, :cond_4

    .line 1345
    return v1

    .line 1347
    :cond_4
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_5

    .line 1348
    iget-object v2, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_6

    .line 1349
    return v1

    .line 1351
    :cond_5
    iget-object v2, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1352
    return v1

    .line 1354
    :cond_6
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v2, :cond_7

    .line 1355
    iget-object v2, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v2, :cond_8

    .line 1356
    return v1

    .line 1358
    :cond_7
    iget-object v2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iget-object v3, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1359
    return v1

    .line 1361
    :cond_8
    iget-object v2, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    iget-object v3, p2, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1362
    return v1

    .line 1364
    :cond_9
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v2, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 1365
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1366
    return v1

    .line 1368
    :cond_a
    iget-object v2, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-object v3, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1369
    return v1

    .line 1371
    :cond_b
    iget-wide v2, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    iget-wide v4, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 1372
    return v1

    .line 1374
    :cond_c
    return v0
.end method

.method private windowMattersToAccessibility(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Region;Ljava/util/HashSet;)Z
    .locals 5
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "boundsInScreen"    # Landroid/graphics/Rect;
    .param p3, "unaccountedSpace"    # Landroid/graphics/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Region;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1222
    .local p4, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1223
    return v1

    .line 1227
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1228
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v3, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1229
    return v2

    .line 1235
    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7f2

    if-eq v3, v4, :cond_2

    .line 1237
    return v2

    .line 1241
    :cond_2
    invoke-virtual {p3, p2}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1242
    return v2

    .line 1246
    :cond_3
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1247
    return v1

    .line 1250
    :cond_4
    return v2
.end method


# virtual methods
.method public computeChangedWindows(Z)V
    .locals 19
    .param p1, "forceSend"    # Z

    .line 1103
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1104
    .local v2, "windowsChanged":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1106
    .local v3, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1112
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 1113
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1116
    :cond_0
    :try_start_2
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    const-string v5, "window"

    .line 1117
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1118
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1119
    iget-object v5, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 1120
    .local v5, "screenWidth":I
    iget-object v6, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 1122
    .local v6, "screenHeight":I
    iget-object v7, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 1123
    .local v7, "unaccountedSpace":Landroid/graphics/Region;
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 1125
    iget-object v8, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 1126
    .local v8, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    invoke-direct {v1, v8}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 1127
    iget-object v9, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1128
    .local v9, "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v9}, Ljava/util/Set;->clear()V

    .line 1130
    const/4 v10, 0x0

    .line 1132
    .local v10, "focusedWindowAdded":Z
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 1133
    .local v11, "visibleWindowCount":I
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1136
    .local v12, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    add-int/lit8 v13, v11, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_3

    .line 1137
    :try_start_3
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 1139
    .local v14, "windowState":Lcom/android/server/wm/WindowState;
    iget-object v15, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1140
    .local v15, "boundsInScreen":Landroid/graphics/Rect;
    invoke-direct {v1, v14, v15}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1142
    invoke-direct {v1, v14, v15, v7, v12}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowMattersToAccessibility(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Region;Ljava/util/HashSet;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1144
    invoke-static {v14, v15, v3, v9}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->addPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Ljava/util/List;Ljava/util/Set;)V

    .line 1145
    invoke-direct {v1, v14, v15, v7, v12}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->updateUnaccountedSpace(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Region;Ljava/util/HashSet;)V

    .line 1147
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v16

    or-int v10, v10, v16

    .line 1150
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v16, :cond_2

    if-eqz v10, :cond_2

    .line 1151
    goto :goto_1

    .line 1136
    .end local v14    # "windowState":Lcom/android/server/wm/WindowState;
    .end local v15    # "boundsInScreen":Landroid/graphics/Rect;
    :cond_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 1156
    .end local v13    # "i":I
    :cond_3
    :goto_1
    :try_start_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    .line 1157
    .local v13, "windowCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v13, :cond_8

    .line 1158
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/WindowInfo;

    .line 1159
    .local v15, "window":Landroid/view/WindowInfo;
    move-object/from16 v16, v0

    .end local v0    # "windowManager":Landroid/view/WindowManager;
    .local v16, "windowManager":Landroid/view/WindowManager;
    iget-object v0, v15, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_4

    .line 1160
    const/4 v0, 0x0

    :try_start_5
    iput-object v0, v15, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1162
    :cond_4
    :try_start_6
    iget-object v0, v15, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1163
    iget-object v0, v15, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1164
    .local v0, "childTokenCount":I
    add-int/lit8 v17, v0, -0x1

    move/from16 v18, v0

    move/from16 v0, v17

    .local v0, "j":I
    .local v18, "childTokenCount":I
    :goto_3
    if-ltz v0, :cond_6

    .line 1165
    move/from16 v17, v2

    .end local v2    # "windowsChanged":Z
    .local v17, "windowsChanged":Z
    :try_start_7
    iget-object v2, v15, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1166
    iget-object v2, v15, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1164
    :cond_5
    add-int/lit8 v0, v0, -0x1

    move/from16 v2, v17

    goto :goto_3

    .end local v17    # "windowsChanged":Z
    .restart local v2    # "windowsChanged":Z
    :cond_6
    move/from16 v17, v2

    .end local v2    # "windowsChanged":Z
    .restart local v17    # "windowsChanged":Z
    goto :goto_4

    .line 1162
    .end local v0    # "j":I
    .end local v17    # "windowsChanged":Z
    .end local v18    # "childTokenCount":I
    .restart local v2    # "windowsChanged":Z
    :cond_7
    move/from16 v17, v2

    .line 1157
    .end local v2    # "windowsChanged":Z
    .end local v15    # "window":Landroid/view/WindowInfo;
    .restart local v17    # "windowsChanged":Z
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    move/from16 v2, v17

    goto :goto_2

    .end local v16    # "windowManager":Landroid/view/WindowManager;
    .end local v17    # "windowsChanged":Z
    .local v0, "windowManager":Landroid/view/WindowManager;
    .restart local v2    # "windowsChanged":Z
    :cond_8
    move-object/from16 v16, v0

    move/from16 v17, v2

    .line 1173
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    .end local v2    # "windowsChanged":Z
    .end local v14    # "i":I
    .restart local v16    # "windowManager":Landroid/view/WindowManager;
    .restart local v17    # "windowsChanged":Z
    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 1174
    invoke-interface {v9}, Ljava/util/Set;->clear()V

    .line 1176
    if-nez p1, :cond_c

    .line 1178
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_9

    .line 1180
    const/4 v0, 0x1

    move v2, v0

    .end local v17    # "windowsChanged":Z
    .local v0, "windowsChanged":Z
    goto :goto_6

    .line 1181
    .end local v0    # "windowsChanged":Z
    .restart local v17    # "windowsChanged":Z
    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1185
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v13, :cond_c

    .line 1186
    iget-object v2, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    .line 1187
    .local v2, "oldWindow":Landroid/view/WindowInfo;
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowInfo;

    .line 1191
    .local v14, "newWindow":Landroid/view/WindowInfo;
    invoke-direct {v1, v2, v14}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z

    move-result v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v15, :cond_b

    .line 1192
    const/4 v15, 0x1

    .line 1193
    .end local v17    # "windowsChanged":Z
    .local v15, "windowsChanged":Z
    move v2, v15

    goto :goto_6

    .line 1185
    .end local v2    # "oldWindow":Landroid/view/WindowInfo;
    .end local v14    # "newWindow":Landroid/view/WindowInfo;
    .end local v15    # "windowsChanged":Z
    .restart local v17    # "windowsChanged":Z
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1199
    .end local v0    # "i":I
    :cond_c
    move/from16 v2, v17

    .end local v17    # "windowsChanged":Z
    .local v2, "windowsChanged":Z
    :goto_6
    if-nez p1, :cond_d

    if-eqz v2, :cond_e

    .line 1200
    :cond_d
    :try_start_8
    invoke-direct {v1, v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->cacheWindows(Ljava/util/List;)V

    .line 1202
    .end local v5    # "screenWidth":I
    .end local v6    # "screenHeight":I
    .end local v7    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v8    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v9    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v10    # "focusedWindowAdded":Z
    .end local v11    # "visibleWindowCount":I
    .end local v12    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v13    # "windowCount":I
    .end local v16    # "windowManager":Landroid/view/WindowManager;
    :cond_e
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1205
    if-nez p1, :cond_f

    if-eqz v2, :cond_10

    .line 1209
    :cond_f
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    invoke-interface {v0, v3}, Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(Ljava/util/List;)V

    .line 1217
    :cond_10
    invoke-static {v3}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    .line 1218
    return-void

    .line 1202
    .end local v2    # "windowsChanged":Z
    .restart local v17    # "windowsChanged":Z
    :catchall_0
    move-exception v0

    move/from16 v2, v17

    goto :goto_7

    .end local v17    # "windowsChanged":Z
    .restart local v2    # "windowsChanged":Z
    :catchall_1
    move-exception v0

    move/from16 v17, v2

    :goto_7
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_7
.end method

.method public synthetic lambda$populateVisibleWindowsOnScreenLocked$0$AccessibilityController$WindowsForAccessibilityObserver(Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "outWindows"    # Landroid/util/SparseArray;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 1401
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempLayer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempLayer:I

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1404
    :cond_0
    return-void
.end method

.method public synthetic lambda$populateVisibleWindowsOnScreenLocked$1$AccessibilityController$WindowsForAccessibilityObserver(Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "outWindows"    # Landroid/util/SparseArray;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 1406
    invoke-direct {p0, p2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->findRootDisplayParentWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1407
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1410
    iget v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempLayer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempLayer:I

    invoke-virtual {p1, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1412
    :cond_0
    return-void
.end method

.method public performComputeChangedWindowsNotLocked(Z)V
    .locals 2
    .param p1, "forceSend"    # Z

    .line 1082
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1083
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    .line 1084
    return-void
.end method

.method public scheduleComputeChangedWindowsLocked()V
    .locals 4

    .line 1087
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1091
    :cond_0
    return-void
.end method

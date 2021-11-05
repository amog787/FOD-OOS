.class final Lcom/android/server/wm/AccessibilityController;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;,
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    }
.end annotation


# static fields
.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field private static final sTempFloats:[F


# instance fields
.field private mDisplayMagnifiers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mWindowsForAccessibilityObserver:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/AccessibilityController;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 84
    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 87
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 88
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowState;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .line 79
    invoke-static {p0, p1}, Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static getNavBarInsets(Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 1176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    .line 1177
    .local v0, "source":Landroid/view/InsetsSource;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/wm/AccessibilityController;->EMPTY_RECT:Landroid/graphics/Rect;

    :goto_0
    return-object v1
.end method

.method private static isEmbeddedDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .locals 3
    .param p0, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 378
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 380
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static isUntouchableNavigationBar(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)Z
    .locals 2
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "touchableRegion"    # Landroid/graphics/Region;

    .line 1164
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_0

    .line 1165
    const/4 v0, 0x0

    return v0

    .line 1169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1171
    invoke-virtual {p1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private static populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .locals 1
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .line 353
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 354
    return-void
.end method

.method private removeObserverOfEmbeddedDisplay(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;)V
    .locals 4
    .param p1, "observerOfParentDisplay"    # Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 368
    nop

    .line 369
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->getAndClearEmbeddedDisplayIdList()Landroid/util/IntArray;

    move-result-object v0

    .line 371
    .local v0, "embeddedDisplayIdList":Landroid/util/IntArray;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 372
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 373
    .local v2, "embeddedDisplayId":I
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 371
    .end local v2    # "embeddedDisplayId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v1    # "index":I
    :cond_0
    return-void
.end method


# virtual methods
.method public drawMagnifiedRegionBorderIfNeededLocked(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 299
    .local v0, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->drawMagnifiedRegionBorderIfNeededLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 303
    :cond_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 359
    .local v1, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v1, :cond_0

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Magnification display# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 361
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 357
    .end local v1    # "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getMagnificationRegionLocked(ILandroid/graphics/Region;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "outMagnificationRegion"    # Landroid/graphics/Region;

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 205
    .local v0, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationRegionLocked(Landroid/graphics/Region;)V

    .line 208
    :cond_0
    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .locals 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 306
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 307
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 308
    .local v1, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v1, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v2

    return-object v2

    .line 311
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public handleWindowObserverOfEmbeddedDisplayLocked(ILcom/android/server/wm/WindowState;)V
    .locals 4
    .param p1, "embeddedDisplayId"    # I
    .param p2, "parentWindow"    # Lcom/android/server/wm/WindowState;

    .line 329
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 334
    :cond_0
    move-object v0, p2

    .line 335
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    :goto_0
    if-eqz v0, :cond_1

    .line 336
    move-object p2, v0

    .line 337
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    .line 341
    .local v1, "parentDisplayId":I
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 342
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 344
    .local v2, "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    if-eqz v2, :cond_2

    .line 345
    invoke-virtual {v2, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->addEmbeddedDisplay(I)V

    .line 347
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    :cond_2
    return-void

    .line 330
    .end local v0    # "candidate":Lcom/android/server/wm/WindowState;
    .end local v1    # "parentDisplayId":I
    .end local v2    # "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :cond_3
    :goto_1
    return-void
.end method

.method public hasCallbacksLocked()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 316
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 315
    :goto_1
    return v0
.end method

.method public onAppWindowTransitionLocked(II)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "transition"    # I

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 245
    .local v0, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onAppWindowTransitionLocked(II)V

    .line 249
    :cond_0
    return-void
.end method

.method public onRectangleOnScreenRequestedLocked(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "rectangle"    # Landroid/graphics/Rect;

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 212
    .local v0, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V

    .line 216
    :cond_0
    return-void
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 231
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 232
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 233
    .local v1, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v1, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 237
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 238
    .local v2, "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    if-eqz v2, :cond_1

    .line 239
    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 241
    :cond_1
    return-void
.end method

.method public varargs onSomeWindowResizedOrMovedLocked([I)V
    .locals 3
    .param p1, "displayIds"    # [I

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    aget v2, p1, v0

    .line 289
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 290
    .local v1, "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 287
    .end local v1    # "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onWindowFocusChangedNotLocked(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 270
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 271
    .local v2, "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    if-eqz v2, :cond_0

    .line 272
    move-object v0, v2

    .line 274
    .end local v2    # "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    if-eqz v0, :cond_1

    .line 276
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindowsNotLocked(Z)V

    .line 278
    :cond_1
    return-void

    .line 274
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onWindowLayersChangedLocked(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 220
    .local v0, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowLayersChangedLocked()V

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 224
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 225
    .local v1, "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 228
    :cond_1
    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    .line 252
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 253
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 254
    .local v1, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 258
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 259
    .local v2, "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    if-eqz v2, :cond_1

    .line 260
    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 262
    :cond_1
    return-void
.end method

.method public performComputeChangedWindowsNotLocked(IZ)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "forceSend"    # Z

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 181
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 182
    .local v2, "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    if-eqz v2, :cond_0

    .line 183
    move-object v0, v2

    .line 185
    .end local v2    # "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindowsNotLocked(Z)V

    .line 189
    :cond_1
    return-void

    .line 185
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setForceShowMagnifiableBoundsLocked(IZ)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "show"    # Z

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 321
    .local v0, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setForceShowMagnifiableBoundsLocked(Z)V

    .line 323
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->showMagnificationBoundsIfNeeded()V

    .line 325
    :cond_0
    return-void
.end method

.method public setMagnificationCallbacksLocked(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "callbacks"    # Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "result":Z
    if-eqz p2, :cond_2

    .line 99
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 103
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 105
    .local v2, "display":Landroid/view/Display;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 106
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, v1, v2, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/Display;Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    const/4 v0, 0x1

    .line 111
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "display":Landroid/view/Display;
    :cond_0
    goto :goto_0

    .line 100
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Magnification callbacks already set!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 113
    .local v1, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->destroyLocked()V

    .line 117
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 118
    const/4 v0, 0x1

    .line 120
    .end local v1    # "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    :goto_0
    return v0

    .line 114
    .restart local v1    # "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Magnification callbacks already cleared!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "spec"    # Landroid/view/MagnificationSpec;

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 193
    .local v0, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 197
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 198
    .local v1, "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 201
    :cond_1
    return-void
.end method

.method public setWindowsForAccessibilityCallbackLocked(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)Z
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "callback"    # Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 134
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 135
    return v1

    .line 138
    :cond_0
    const-string v2, "Windows for accessibility callback of display "

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    .line 139
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController;->isEmbeddedDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 144
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 145
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/AccessibilityController;->handleWindowObserverOfEmbeddedDisplayLocked(ILcom/android/server/wm/WindowState;)V

    .line 147
    :cond_1
    return v1

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, v4, p1, p2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 149
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already set!"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_4
    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController;->isEmbeddedDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 162
    return v3

    .line 164
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    .line 165
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 166
    .local v1, "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    if-eqz v1, :cond_6

    .line 171
    invoke-direct {p0, v1}, Lcom/android/server/wm/AccessibilityController;->removeObserverOfEmbeddedDisplay(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;)V

    .line 172
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 174
    .end local v1    # "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :goto_0
    return v3

    .line 167
    .restart local v1    # "windowsForA11yObserver":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already cleared!"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

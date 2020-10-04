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

.field private mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 84
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 85
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowState;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .line 77
    invoke-static {p0, p1}, Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .locals 1
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .line 270
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 271
    return-void
.end method


# virtual methods
.method public drawMagnifiedRegionBorderIfNeededLocked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 239
    .local v0, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 243
    :cond_0
    return-void
.end method

.method public getMagnificationRegionLocked(ILandroid/graphics/Region;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "outMagnificationRegion"    # Landroid/graphics/Region;

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 159
    .local v0, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationRegionLocked(Landroid/graphics/Region;)V

    .line 162
    :cond_0
    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .locals 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 246
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 247
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 248
    .local v1, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v1, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v2

    return-object v2

    .line 251
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public hasCallbacksLocked()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 2
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    .line 196
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 197
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 198
    .local v1, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 202
    :cond_0
    return-void
.end method

.method public onRectangleOnScreenRequestedLocked(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "rectangle"    # Landroid/graphics/Rect;

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 166
    .local v0, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 184
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 185
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 186
    .local v1, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 191
    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 193
    :cond_1
    return-void
.end method

.method public onSomeWindowResizedOrMovedLocked()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 234
    :cond_0
    return-void
.end method

.method public onWindowFocusChangedNotLocked()V
    .locals 3

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    move-object v0, v2

    .line 222
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindowsNotLocked(Z)V

    .line 226
    :cond_0
    return-void

    .line 222
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

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 174
    .local v0, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowLayersChangedLocked()V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 179
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 181
    :cond_1
    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .locals 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "transition"    # I

    .line 205
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 206
    .local v0, "displayId":I
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 207
    .local v1, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 212
    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 214
    :cond_1
    return-void
.end method

.method public performComputeChangedWindowsNotLocked(Z)V
    .locals 3
    .param p1, "forceSend"    # Z

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "observer":Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    move-object v0, v2

    .line 140
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindowsNotLocked(Z)V

    .line 144
    :cond_0
    return-void

    .line 140
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

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 262
    .local v0, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setForceShowMagnifiableBoundsLocked(Z)V

    .line 264
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->showMagnificationBoundsIfNeeded()V

    .line 266
    :cond_0
    return-void
.end method

.method public setMagnificationCallbacksLocked(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "callbacks"    # Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "result":Z
    if-eqz p2, :cond_2

    .line 95
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 99
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 101
    .local v2, "display":Landroid/view/Display;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, v1, v2, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/Display;Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    const/4 v0, 0x1

    .line 107
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "display":Landroid/view/Display;
    :cond_0
    goto :goto_0

    .line 96
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Magnification callbacks already set!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 109
    .local v1, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v1, :cond_3

    .line 112
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->destroyLocked()V

    .line 113
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 114
    const/4 v0, 0x1

    .line 116
    .end local v1    # "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    :goto_0
    return v0

    .line 110
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

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 148
    .local v0, "displayMagnifier":Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 153
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 155
    :cond_1
    return-void
.end method

.method public setWindowsForAccessibilityCallback(Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 120
    if-eqz p1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Windows for accessibility callback already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_2

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Windows for accessibility callback already cleared!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

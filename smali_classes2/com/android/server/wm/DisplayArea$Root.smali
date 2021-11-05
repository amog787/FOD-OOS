.class public Lcom/android/server/wm/DisplayArea$Root;
.super Lcom/android/server/wm/DisplayArea;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Root"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayArea<",
        "Lcom/android/server/wm/DisplayArea;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDimmer:Lcom/android/server/wm/Dimmer;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 291
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    const-string v1, "DisplayArea.Root"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 287
    new-instance v0, Lcom/android/server/wm/Dimmer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea$Root;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 288
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea$Root;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 292
    return-void
.end method

.method static synthetic lambda$prepareSurfaces$0(Lcom/android/server/wm/Task;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 307
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canAffectSystemUiFlags()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic commitPendingTransaction()V
    .locals 0

    .line 286
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    .line 286
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Root;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 286
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 286
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 286
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 286
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onTransactionReady(ILjava/util/Set;)V
    .locals 0

    .line 286
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onTransactionReady(ILjava/util/Set;)V

    return-void
.end method

.method prepareSurfaces()V
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Root;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 302
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->prepareSurfaces()V

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Root;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea$Root;->getBounds(Landroid/graphics/Rect;)V

    .line 307
    sget-object v0, Lcom/android/server/wm/-$$Lambda$DisplayArea$Root$FFTAJJ7j74rtyQzx7LluB65mKYM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayArea$Root$FFTAJJ7j74rtyQzx7LluB65mKYM;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea$Root;->forAllTasks(Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Root;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Root;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 314
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_2

    .line 315
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea$Root;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea$Root;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v1, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea$Root;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v1, v1, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 317
    const-string v2, "com.android.settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 319
    const-string v1, "WindowManager"

    const-string v2, "DisplayArea(): skip update dim layers, tansit=TRANSIT_TASK_OPEN"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_1
    return-void

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea$Root;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Root;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayArea$Root;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Root;->scheduleAnimation()V

    .line 329
    :cond_3
    return-void
.end method

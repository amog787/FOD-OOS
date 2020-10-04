.class Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;
.super Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonAppWindowContainers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<",
        "Lcom/android/server/wm/WindowToken;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDimmer:Lcom/android/server/wm/Dimmer;

.field private final mGetOrientingWindow:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private final mWindowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 4940
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4941
    invoke-direct {p0, p3}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 4917
    new-instance p1, Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$nqCymC3xR9b3qaeohnnJJpSiajc;

    invoke-direct {p1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$nqCymC3xR9b3qaeohnnJJpSiajc;-><init>(Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWindowComparator:Ljava/util/Comparator;

    .line 4924
    sget-object p1, Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$FI_O7m2qEDfIRZef3D32AxG-rcs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$NonAppWindowContainers$FI_O7m2qEDfIRZef3D32AxG-rcs;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mGetOrientingWindow:Ljava/util/function/Predicate;

    .line 4937
    new-instance p1, Lcom/android/server/wm/Dimmer;

    invoke-direct {p1, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 4938
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 4942
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mName:Ljava/lang/String;

    .line 4943
    return-void
.end method

.method static synthetic lambda$new$1(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 4925
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 4928
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4929
    .local v0, "req":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 4933
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 4931
    :cond_2
    :goto_0
    return v1

    .line 4926
    .end local v0    # "req":I
    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 4946
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWindowComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 4947
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 1

    .line 4998
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 4993
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getOrientation()I
    .locals 6

    .line 4951
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4953
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mGetOrientingWindow:Ljava/util/function/Predicate;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4955
    .local v1, "win":Lcom/android/server/wm/WindowState;
    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eqz v1, :cond_3

    .line 4956
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4957
    .local v4, "req":I
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v5}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4958
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v5, v4}, Lcom/android/server/wm/DisplayContent;->access$502(Lcom/android/server/wm/DisplayContent;I)I

    .line 4959
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mKeyguardGoingAway:Z

    if-eqz v5, :cond_0

    .line 4961
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v5, v3}, Lcom/android/server/wm/DisplayContent;->access$602(Lcom/android/server/wm/DisplayContent;I)I

    .line 4962
    return v2

    .line 4971
    :cond_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " forcing orientation to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for display id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4973
    invoke-static {v3}, Lcom/android/server/wm/DisplayContent;->access$200(Lcom/android/server/wm/DisplayContent;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4971
    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4974
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v2, v4}, Lcom/android/server/wm/DisplayContent;->access$602(Lcom/android/server/wm/DisplayContent;I)I

    move-result v2

    return v2

    .line 4977
    .end local v4    # "req":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v4, v3}, Lcom/android/server/wm/DisplayContent;->access$602(Lcom/android/server/wm/DisplayContent;I)I

    .line 4981
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 4982
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 4983
    invoke-virtual {v3}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 4984
    .local v3, "isUnoccluding":Z
    :goto_0
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v3, :cond_5

    goto :goto_1

    .line 4988
    :cond_5
    return v2

    .line 4985
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->access$500(Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    return v2
.end method

.method public synthetic lambda$new$0$DisplayContent$NonAppWindowContainers(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowToken;)I
    .locals 4
    .param p1, "token1"    # Lcom/android/server/wm/WindowToken;
    .param p2, "token2"    # Lcom/android/server/wm/WindowToken;

    .line 4921
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v1, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v2, p1, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    .line 4919
    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v2, p2, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v3, p2, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    .line 4921
    invoke-interface {v1, v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4922
    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4919
    :goto_0
    return v0
.end method

.method prepareSurfaces()V
    .locals 5

    .line 5003
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 5004
    invoke-super {p0}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->prepareSurfaces()V

    .line 5005
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getBounds(Landroid/graphics/Rect;)V

    .line 5009
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->isOneHandModeShouldShowWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mName:Ljava/lang/String;

    .line 5012
    const-string v1, "mBelowAppWindowsContainers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5013
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->getOneHandModeScreenSize()Landroid/graphics/Rect;

    move-result-object v0

    .line 5014
    .local v0, "screenSize":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 5015
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5017
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 5018
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 5017
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wm/OpOneHandModeInjector;->updateOneHandDims(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5019
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->scheduleAnimation()V

    .line 5025
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpOneHandModeInjector;->continueAnimation()V

    .line 5028
    :cond_1
    return-void

    .line 5032
    .end local v0    # "screenSize":Landroid/graphics/Rect;
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5033
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->scheduleAnimation()V

    .line 5035
    :cond_3
    return-void
.end method

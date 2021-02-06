.class public Lcom/android/server/wm/DisplayArea$Tokens;
.super Lcom/android/server/wm/DisplayArea;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tokens"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayArea<",
        "Lcom/android/server/wm/WindowToken;",
        ">;"
    }
.end annotation


# instance fields
.field private final mGetOrientingWindow:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mLastKeyguardForcedOrientation:I

.field private final mWindowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "type"    # Lcom/android/server/wm/DisplayArea$Type;
    .param p3, "name"    # Ljava/lang/String;

    .line 237
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    .line 207
    sget-object v0, Lcom/android/server/wm/-$$Lambda$CD-g9zNm970tG9hCSQ-1BiBOrwY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$CD-g9zNm970tG9hCSQ-1BiBOrwY;

    .line 208
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWindowComparator:Ljava/util/Comparator;

    .line 210
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayArea$Tokens$m3rhEbIWQl888W_2uGBIkkXLdlA;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayArea$Tokens$m3rhEbIWQl888W_2uGBIkkXLdlA;-><init>(Lcom/android/server/wm/DisplayArea$Tokens;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mGetOrientingWindow:Ljava/util/function/Predicate;

    .line 238
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 241
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWindowComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayArea$Tokens;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 242
    return-void
.end method

.method public bridge synthetic commitPendingTransaction()V
    .locals 0

    .line 204
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    .line 204
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getOrientation(I)I
    .locals 14
    .param p1, "candidate"    # I

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mGetOrientingWindow:Ljava/util/function/Predicate;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea$Tokens;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 249
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    .line 250
    return p1

    .line 252
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 255
    .local v1, "req":I
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_1

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " forcing orientation to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for display id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 257
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :cond_1
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    int-to-long v3, v1

    .local v3, "protoLogParam1":J
    iget-object v5, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    int-to-long v5, v5

    .local v5, "protoLogParam2":J
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x63d29d4b

    const/16 v9, 0x14

    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v12, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 264
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":J
    .end local v5    # "protoLogParam2":J
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 267
    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 268
    iput v1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    goto :goto_1

    .line 270
    :cond_3
    iget v1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastKeyguardForcedOrientation:I

    .line 273
    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 274
    return v1
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$0$DisplayArea$Tokens(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 212
    .local v0, "policy":Lcom/android/server/policy/WindowManagerPolicy;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 213
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mKeyguardGoingAway:Z

    if-eqz v1, :cond_0

    .line 214
    return v3

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 219
    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    const/16 v4, 0x17

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 221
    invoke-virtual {v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 224
    .local v1, "isUnoccluding":Z
    :goto_0
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_3

    .line 225
    :cond_2
    return v2

    .line 228
    .end local v1    # "isUnoccluding":Z
    :cond_3
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 229
    .local v1, "req":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_5

    const/4 v4, -0x2

    if-ne v1, v4, :cond_4

    goto :goto_1

    .line 233
    :cond_4
    return v2

    .line 231
    :cond_5
    :goto_1
    return v3
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 204
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 204
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 204
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onTransactionReady(ILjava/util/Set;)V
    .locals 0

    .line 204
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onTransactionReady(ILjava/util/Set;)V

    return-void
.end method

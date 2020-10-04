.class final Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;
.super Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AboveAppWindowContainers"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 4853
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4854
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    .line 4855
    return-void
.end method


# virtual methods
.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4872
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 4873
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .locals 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "imeContainer"    # Lcom/android/server/wm/WindowContainer;

    .line 4876
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 4877
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4878
    .local v1, "needAssignIme":Z
    :goto_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4879
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 4882
    .local v3, "wt":Lcom/android/server/wm/WindowToken;
    iget v4, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v5, 0x7f2

    if-ne v4, v5, :cond_1

    .line 4883
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v4}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/wm/WindowToken;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4884
    goto :goto_2

    .line 4886
    :cond_1
    iget-boolean v4, v3, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v4, :cond_2

    .line 4887
    const v4, 0x40000002    # 2.0000005f

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/WindowToken;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4888
    goto :goto_2

    .line 4890
    :cond_2
    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/WindowToken;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4891
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowToken;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4893
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v5, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v6, v3, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    invoke-interface {v4, v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v4

    .line 4896
    .local v4, "layer":I
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v6, 0x7dc

    invoke-interface {v5, v6, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 4898
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {p2, p1, v5, v6}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4899
    const/4 v1, 0x0

    .line 4878
    .end local v3    # "wt":Lcom/android/server/wm/WindowToken;
    .end local v4    # "layer":I
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4902
    .end local v2    # "j":I
    :cond_4
    if-eqz v1, :cond_5

    .line 4903
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {p2, p1, v0, v2}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4905
    :cond_5
    return-void
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .locals 2
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 4859
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4860
    .local v0, "builder":Landroid/view/SurfaceControl$Builder;
    instance-of v1, p1, Lcom/android/server/wm/WindowToken;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v1, :cond_0

    .line 4865
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 4867
    :cond_0
    return-object v0
.end method

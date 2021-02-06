.class Lcom/android/server/wm/DisplayContent$WindowContainers;
.super Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowContainers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 4624
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4625
    invoke-direct {p0, p3}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 4626
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->mName:Ljava/lang/String;

    .line 4627
    return-void
.end method


# virtual methods
.method addChildren()V
    .locals 2

    .line 4677
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$400(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayArea$Root;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent$WindowContainers;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 4678
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicy;->attachDisplayAreas()V

    .line 4679
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4631
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$300(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$ImeContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->setNeedsLayer()V

    .line 4633
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$400(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayArea$Root;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayArea$Root;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4635
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 4655
    .local v0, "imeTarget":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4656
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4657
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 4658
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isAppTransitioning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4659
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4660
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$300(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$ImeContainer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/DisplayContent$ImeContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4668
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$400(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayArea$Root;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayArea$Root;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4669
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 4673
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->mName:Ljava/lang/String;

    return-object v0
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includingParents"    # Z

    .line 4685
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$WindowContainers;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 4686
    return-void
.end method

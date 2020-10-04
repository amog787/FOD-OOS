.class Lcom/android/server/wm/Dimmer$DimAnimatable;
.super Ljava/lang/Object;
.source "Dimmer.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Dimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimAnimatable"
.end annotation


# instance fields
.field private mDimLayer:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/wm/Dimmer;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V
    .locals 0
    .param p2, "dimLayer"    # Landroid/view/SurfaceControl;

    .line 46
    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;Lcom/android/server/wm/Dimmer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/Dimmer;
    .param p2, "x1"    # Landroid/view/SurfaceControl;
    .param p3, "x2"    # Lcom/android/server/wm/Dimmer$1;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Dimmer$DimAnimatable;-><init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V

    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    .line 58
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 62
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 66
    return-void
.end method

.method removeSurface()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/server/wm/Dimmer$DimAnimatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    .line 109
    return-void
.end method

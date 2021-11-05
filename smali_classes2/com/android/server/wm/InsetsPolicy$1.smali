.class Lcom/android/server/wm/InsetsPolicy$1;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InsetsPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/InsetsPolicy;

    .line 80
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyInsetsControlChanged()V
    .locals 9

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "hasLeash":Z
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 86
    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->access$000(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v1

    .line 87
    .local v1, "controls":[Landroid/view/InsetsSourceControl;
    if-nez v1, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 91
    .local v4, "control":Landroid/view/InsetsSourceControl;
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v5

    .line 92
    .local v5, "type":I
    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v6}, Lcom/android/server/wm/InsetsPolicy;->access$100(Lcom/android/server/wm/InsetsPolicy;)Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/IntArray;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 100
    if-nez v5, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v6}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 101
    invoke-static {v6}, Lcom/android/server/wm/InsetsPolicy;->access$300(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 102
    invoke-static {v6}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v7}, Lcom/android/server/wm/InsetsPolicy;->access$300(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 103
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyInsetsControlChanged do anim for nonFull="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 105
    invoke-static {v7}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " topFull="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    .line 106
    invoke-static {v7}, Lcom/android/server/wm/InsetsPolicy;->access$300(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 104
    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 115
    .local v6, "leash":Landroid/view/SurfaceControl;
    if-eqz v6, :cond_3

    .line 116
    const/4 v0, 0x1

    .line 120
    iget-object v7, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v7}, Lcom/android/server/wm/InsetsPolicy;->access$400(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    .line 121
    invoke-static {v5}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 120
    :goto_1
    invoke-virtual {v7, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 90
    .end local v4    # "control":Landroid/view/InsetsSourceControl;
    .end local v5    # "type":I
    .end local v6    # "leash":Landroid/view/SurfaceControl;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 124
    :cond_4
    if-eqz v0, :cond_5

    .line 125
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$1;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {v2}, Lcom/android/server/wm/InsetsPolicy;->access$400(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 127
    :cond_5
    return-void
.end method

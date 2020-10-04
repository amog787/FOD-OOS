.class Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;
.super Ljava/lang/Object;
.source "InsetsSourceProvider.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsSourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlAdapter"
.end annotation


# instance fields
.field private mCapturedLeash:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/wm/InsetsSourceProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsSourceProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/InsetsSourceProvider;
    .param p2, "x1"    # Lcom/android/server/wm/InsetsSourceProvider$1;

    .line 205
    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;-><init>(Lcom/android/server/wm/InsetsSourceProvider;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;)Landroid/view/SurfaceControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 250
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public getDurationHint()J
    .locals 2

    .line 240
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .locals 1

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .locals 2

    .line 245
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 3
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {v0}, Lcom/android/server/wm/InsetsSourceProvider;->access$300(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {v0}, Lcom/android/server/wm/InsetsSourceProvider;->access$500(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {v1}, Lcom/android/server/wm/InsetsSourceProvider;->access$400(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InsetsStateController;->notifyControlRevoked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {v0}, Lcom/android/server/wm/InsetsSourceProvider;->access$600(Lcom/android/server/wm/InsetsSourceProvider;)Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/InsetsSourceProvider;->access$700(Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/InsetsSourceProvider;->access$802(Lcom/android/server/wm/InsetsSourceProvider;Landroid/view/InsetsSourceControl;)Landroid/view/InsetsSourceControl;

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {v0, v1}, Lcom/android/server/wm/InsetsSourceProvider;->access$402(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {v0, v1}, Lcom/android/server/wm/InsetsSourceProvider;->access$302(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;)Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 236
    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 4
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "finishCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 222
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {v0}, Lcom/android/server/wm/InsetsSourceProvider;->access$200(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 224
    .local v0, "frame":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 225
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 254
    return-void
.end method

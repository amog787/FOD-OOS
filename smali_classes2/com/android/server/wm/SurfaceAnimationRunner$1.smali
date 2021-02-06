.class Lcom/android/server/wm/SurfaceAnimationRunner$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SurfaceAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

.field final synthetic val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 201
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->access$300(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v1, v1, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object v2, v2, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->access$100(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-static {v2}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->access$000(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->access$400(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object v3, v3, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mFinishCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    return-void

    .line 223
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/wm/SurfaceAnimationRunner$1;
    .end local p1    # "animation":Landroid/animation/Animator;
    :try_start_4
    throw v2

    .line 224
    .restart local p0    # "this":Lcom/android/server/wm/SurfaceAnimationRunner$1;
    .restart local p1    # "animation":Landroid/animation/Animator;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->access$100(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-static {v1}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->access$000(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-static {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->access$200(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$1;->val$a:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    iget-object v2, v2, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 210
    :cond_0
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

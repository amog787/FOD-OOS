.class interface abstract Lcom/android/server/wm/AnimationAdapter;
.super Ljava/lang/Object;
.source "AnimationAdapter.java"


# static fields
.field public static final STATUS_BAR_TRANSITION_DURATION:J = 0x78L


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 2
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 82
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 83
    .local v0, "token":J
    invoke-interface {p0, p1}, Lcom/android/server/wm/AnimationAdapter;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 85
    return-void
.end method

.method public abstract getDurationHint()J
.end method

.method public abstract getShowWallpaper()Z
.end method

.method public abstract getStatusBarTransitionsStartTime()J
.end method

.method public abstract onAnimationCancelled(Landroid/view/SurfaceControl;)V
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "endDeferFinishCallback"    # Ljava/lang/Runnable;

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public abstract startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
.end method

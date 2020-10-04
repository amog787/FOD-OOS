.class interface abstract Lcom/android/server/wm/AnimationAdapter;
.super Ljava/lang/Object;
.source "AnimationAdapter.java"


# static fields
.field public static final STATUS_BAR_TRANSITION_DURATION:J = 0x78L


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract getBackgroundColor()I
.end method

.method public abstract getDurationHint()J
.end method

.method public abstract getShowWallpaper()Z
.end method

.method public abstract getStatusBarTransitionsStartTime()J
.end method

.method public abstract onAnimationCancelled(Landroid/view/SurfaceControl;)V
.end method

.method public abstract startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
.end method

.method public abstract writeToProto(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 2
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 86
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 87
    .local v0, "token":J
    invoke-interface {p0, p1}, Lcom/android/server/wm/AnimationAdapter;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 89
    return-void
.end method

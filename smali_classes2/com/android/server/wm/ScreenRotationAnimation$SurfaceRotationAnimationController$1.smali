.class Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startColorAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

.field final synthetic val$colorTransitionMs:I

.field final synthetic val$duration:J

.field final synthetic val$endColor:I

.field final synthetic val$rgbTmpFloat:[F

.field final synthetic val$startColor:I

.field final synthetic val$va:Landroid/animation/ArgbEvaluator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;JLandroid/animation/ArgbEvaluator;II[FI)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    .line 801
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    iput-wide p2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$duration:J

    iput-object p4, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$va:Landroid/animation/ArgbEvaluator;

    iput p5, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$startColor:I

    iput p6, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$endColor:I

    iput-object p7, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$rgbTmpFloat:[F

    iput p8, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$colorTransitionMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "currentPlayTime"    # J

    .line 810
    long-to-float v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->getFraction(F)F

    move-result v0

    .line 811
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$va:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$startColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$endColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 812
    .local v1, "color":I
    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v2

    .line 813
    .local v2, "middleColor":Landroid/graphics/Color;
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$rgbTmpFloat:[F

    invoke-virtual {v2}, Landroid/graphics/Color;->red()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 814
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$rgbTmpFloat:[F

    invoke-virtual {v2}, Landroid/graphics/Color;->green()F

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 815
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$rgbTmpFloat:[F

    invoke-virtual {v2}, Landroid/graphics/Color;->blue()F

    move-result v4

    const/4 v5, 0x2

    aput v4, v3, v5

    .line 816
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 817
    iget-object v3, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$rgbTmpFloat:[F

    invoke-virtual {p1, p2, v3}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 819
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "startLuma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    iget-object v1, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$900(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " endLuma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    iget-object v1, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 824
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1000(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " durationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$colorTransitionMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 823
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 830
    const-wide v0, 0x10b00000004L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 831
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    iget-object v2, v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->access$900(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v2

    const-wide v3, 0x10200000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 832
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->this$1:Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;

    iget-object v2, v2, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1000(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v2

    const-wide v3, 0x10200000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 833
    iget v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$colorTransitionMs:I

    const-wide v3, 0x10300000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 834
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 835
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 804
    iget-wide v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;->val$duration:J

    return-wide v0
.end method

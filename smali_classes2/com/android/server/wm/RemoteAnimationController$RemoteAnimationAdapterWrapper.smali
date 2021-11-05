.class Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;
.super Ljava/lang/Object;
.source "RemoteAnimationController.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RemoteAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteAnimationAdapterWrapper"
.end annotation


# instance fields
.field private mAnimationType:I

.field private mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field mCapturedLeash:Landroid/view/SurfaceControl;

.field final mLocalBounds:Landroid/graphics/Rect;

.field final mPosition:Landroid/graphics/Point;

.field private final mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

.field final mStackBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/server/wm/RemoteAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wm/RemoteAnimationController;
    .param p2, "record"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .param p3, "position"    # Landroid/graphics/Point;
    .param p4, "localBounds"    # Landroid/graphics/Rect;
    .param p5, "stackBounds"    # Landroid/graphics/Rect;

    .line 545
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    .line 542
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStackBounds:Landroid/graphics/Rect;

    .line 546
    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 547
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Point;->x:I

    iget v2, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 548
    iput-object p4, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mLocalBounds:Landroid/graphics/Rect;

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 550
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 535
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 535
    iget v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAnimationType:I

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 604
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "container="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    :goto_0
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 615
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 616
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v2, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v2, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/RemoteAnimationTarget;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 619
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 620
    return-void
.end method

.method public getDurationHint()J
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$400(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .locals 1

    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .locals 4

    .line 598
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    .line 599
    invoke-static {v2}, Lcom/android/server/wm/RemoteAnimationController;->access$400(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 598
    return-wide v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iput-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iput-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 583
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-nez v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$500(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$500(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    const-string v1, "allAppAnimationsCanceled"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 589
    :cond_2
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 5
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "type"    # I
    .param p4, "finishCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 560
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v1, -0x5f30386d

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v1, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 565
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v1, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    .line 566
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 565
    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 571
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 572
    iput-object p4, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 573
    iput p3, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAnimationType:I

    .line 574
    return-void
.end method

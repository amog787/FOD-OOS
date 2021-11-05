.class final Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SystemGesturesPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SystemGesturesPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlingGestureDetector"
.end annotation


# instance fields
.field private mOverscroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V
    .locals 1

    .line 362
    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 363
    new-instance v0, Landroid/widget/OverScroller;

    invoke-static {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$000(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    .line 364
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 15
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "up"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 376
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 379
    .local v1, "now":J
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-static {v3}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/wm/SystemGesturesPointerEventListener;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-static {v3}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/wm/SystemGesturesPointerEventListener;)J

    move-result-wide v5

    const-wide/16 v7, 0x1388

    add-long/2addr v5, v7

    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    .line 380
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v4}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 382
    :cond_0
    iget-object v5, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p3

    float-to-int v8, v3

    move/from16 v14, p4

    float-to-int v9, v14

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    const/high16 v12, -0x80000000

    const v13, 0x7fffffff

    invoke-virtual/range {v5 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 384
    iget-object v5, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getDuration()I

    move-result v5

    .line 385
    .local v5, "duration":I
    const/16 v6, 0x1388

    if-le v5, v6, :cond_1

    .line 386
    const/16 v5, 0x1388

    .line 388
    :cond_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    .line 389
    iget-object v6, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-static {v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$200(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onVerticalFling(I)V

    goto :goto_0

    .line 391
    :cond_2
    iget-object v6, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-static {v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$200(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onHorizontalFling(I)V

    .line 393
    :goto_0
    iget-object v6, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-static {v6, v1, v2}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$102(Lcom/android/server/wm/SystemGesturesPointerEventListener;J)J

    .line 394
    iget-object v6, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-static {v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$200(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onFling(I)V

    .line 395
    return v4
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$300(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-static {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$200(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onScroll(Z)V

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-static {v0, v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$302(Lcom/android/server/wm/SystemGesturesPointerEventListener;Z)Z

    .line 405
    :cond_0
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 371
    :cond_0
    return v1
.end method

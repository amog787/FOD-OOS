.class Lcom/android/server/display/OverlayDisplayWindow$3;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/OverlayDisplayWindow;

    .line 342
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 346
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 347
    .local v0, "oldX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 348
    .local v1, "oldY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 350
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayWindow;->access$400(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/GestureDetector;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 351
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayWindow;->access$500(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/ScaleGestureDetector;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 353
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayWindow$3;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayWindow;->access$600(Lcom/android/server/display/OverlayDisplayWindow;)V

    .line 361
    :goto_0
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 362
    return v3
.end method

.class final Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;
.super Ljava/lang/Object;
.source "FullScreenMagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DelegatingState"
.end annotation


# instance fields
.field public mLastDelegatedDownEventTime:J

.field final synthetic this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 575
    iput-object p1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 591
    goto :goto_0

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;->mLastDelegatedDownEventTime:J

    .line 599
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 606
    iget-wide v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;->mLastDelegatedDownEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 607
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$500(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 609
    :cond_2
    return-void
.end method

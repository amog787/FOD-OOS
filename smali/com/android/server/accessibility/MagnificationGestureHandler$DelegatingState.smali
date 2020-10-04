.class final Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DelegatingState"
.end annotation


# instance fields
.field public mLastDelegatedDownEventTime:J

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 569
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 584
    goto :goto_0

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 588
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->mLastDelegatedDownEventTime:J

    .line 592
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 599
    iget-wide v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->mLastDelegatedDownEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 600
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$500(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 602
    :cond_2
    return-void
.end method

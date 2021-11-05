.class final Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;
.super Ljava/lang/Object;
.source "FullScreenMagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DetectingState"
.end annotation


# static fields
.field private static final MESSAGE_ON_TRIPLE_TAP_AND_HOLD:I = 0x1

.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x2

.field private static final MESSAGE_TRANSITION_TO_PANNINGSCALING_STATE:I = 0x3


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

.field mHandler:Landroid/os/Handler;

.field private mLastDetectingDownEventTime:J

.field mLastDown:Landroid/view/MotionEvent;

.field private mLastUp:Landroid/view/MotionEvent;

.field final mLongTapMinDelay:I

.field final mMultiTapMaxDelay:I

.field final mMultiTapMaxDistance:I

.field private mPreLastDown:Landroid/view/MotionEvent;

.field private mPreLastUp:Landroid/view/MotionEvent;

.field private mSecondPointerDownLocation:Landroid/graphics/PointF;

.field mShortcutTriggered:Z

.field final mSwipeMinDistance:I

.field final synthetic this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
    .param p2, "context"    # Landroid/content/Context;

    .line 640
    iput-object p1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 638
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 641
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    .line 642
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 643
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 645
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    .line 646
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    .line 647
    return-void
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 873
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 875
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    goto :goto_0

    .line 876
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 877
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 878
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 881
    :cond_1
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v0

    .line 883
    .local v0, "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    if-nez v1, :cond_2

    .line 884
    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    goto :goto_2

    .line 886
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 887
    .local v1, "tail":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    :goto_1
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->access$600(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 888
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->access$600(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    goto :goto_1

    .line 890
    :cond_3
    invoke-static {v1, v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->access$602(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 892
    .end local v1    # "tail":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    :goto_2
    return-void
.end method

.method private clearDelayedMotionEvents()V
    .locals 2

    .line 917
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 919
    .local v0, "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->access$600(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 920
    invoke-virtual {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->recycle()V

    .line 921
    .end local v0    # "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    goto :goto_0

    .line 922
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 923
    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 924
    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 925
    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 926
    return-void
.end method

.method private isMagnifying()Z
    .locals 2

    .line 951
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v0

    return v0
.end method

.method private isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "first"    # Landroid/view/MotionEvent;
    .param p2, "second"    # Landroid/view/MotionEvent;

    .line 814
    iget v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    iget v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/accessibility/gestures/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z

    move-result v0

    return v0
.end method

.method private onTripleTap(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "up"    # Landroid/view/MotionEvent;

    .line 940
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 943
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$400(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)V

    goto :goto_0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$800(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;FF)V

    .line 948
    :goto_0
    return-void
.end method

.method private removePendingDelayedMessages()V
    .locals 2

    .line 866
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 867
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 868
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 869
    return-void
.end method

.method private secondPointerDownValid()Z
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sendDelayedMotionEvents()V
    .locals 8

    .line 895
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    if-nez v0, :cond_0

    .line 896
    return-void

    .line 903
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDetectingDownEventTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    int-to-long v2, v2

    .line 902
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 906
    .local v0, "offset":J
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 907
    .local v2, "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    invoke-static {v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->access$600(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 909
    iget-object v3, v2, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget-object v4, v2, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 910
    iget-object v3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v4, v3, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;

    iget-object v5, v2, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget-object v6, v2, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    iget v7, v2, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$700(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 912
    invoke-virtual {v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->recycle()V

    .line 913
    .end local v2    # "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    if-nez v2, :cond_1

    .line 914
    return-void

    .line 913
    :cond_1
    goto :goto_0
.end method

.method private storeSecondPointerDownLocation(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 782
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 783
    return-void
.end method

.method private timeBetween(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)J
    .locals 4
    .param p1, "a"    # Landroid/view/MotionEvent;
    .param p2, "b"    # Landroid/view/MotionEvent;

    .line 822
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 823
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->timeOf(Landroid/view/MotionEvent;)J

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->timeOf(Landroid/view/MotionEvent;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private timeOf(Landroid/view/MotionEvent;)J
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 835
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0
.end method

.method private transitToPanningScalingStateAndClear()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 792
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 793
    return-void
.end method


# virtual methods
.method public afterLongTapTimeoutTransitionToDraggingState(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 851
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 853
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 852
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 854
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 851
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 855
    return-void
.end method

.method public afterMultiTapTimeoutTransitionToDelegatingState()V
    .locals 4

    .line 844
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 847
    return-void
.end method

.method public clear()V
    .locals 2

    .line 859
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    .line 860
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->removePendingDelayedMessages()V

    .line 861
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->clearDelayedMotionEvents()V

    .line 862
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 863
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 651
    iget v0, p1, Landroid/os/Message;->what:I

    .line 652
    .local v0, "type":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 664
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitToPanningScalingStateAndClear()V

    .line 666
    goto :goto_0

    .line 668
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 662
    goto :goto_0

    .line 654
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    .line 655
    .local v2, "down":Landroid/view/MotionEvent;
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    .line 656
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 658
    .end local v2    # "down":Landroid/view/MotionEvent;
    nop

    .line 671
    :goto_0
    return v1
.end method

.method public isFingerDown()Z
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultiTapTriggered(I)Z
    .locals 5
    .param p1, "numTaps"    # I

    .line 798
    iget-boolean v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v0

    add-int/2addr v0, v3

    if-lt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-boolean v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectTripleTap:Z

    if-eqz v0, :cond_2

    .line 801
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v0

    if-lt v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 802
    invoke-direct {p0, v0, v4}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 803
    invoke-direct {p0, v0, v4}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v0, v1

    .line 806
    .local v0, "multitapTriggered":Z
    if-eqz v0, :cond_3

    if-le p1, v3, :cond_3

    .line 807
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-static {v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v1

    .line 808
    .local v1, "enabled":Z
    invoke-static {v1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationTripleTap(Z)V

    .line 810
    .end local v1    # "enabled":Z
    :cond_3
    return v0
.end method

.method isTapOutOfDistanceSlop()Z
    .locals 6

    .line 1001
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-boolean v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectTripleTap:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    if-nez v2, :cond_1

    goto :goto_1

    .line 1005
    :cond_1
    nop

    .line 1006
    invoke-static {v0, v2}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v2

    iget v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1007
    .local v0, "outOfDistanceSlop":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 1008
    return v0

    .line 1012
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget v5, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 1013
    invoke-static {v3, v4, v5}, Lcom/android/server/accessibility/gestures/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1014
    return v2

    .line 1016
    :cond_4
    return v1

    .line 1003
    .end local v0    # "outOfDistanceSlop":Z
    :cond_5
    :goto_1
    return v1
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 676
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 677
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_b

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 724
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 726
    goto/16 :goto_1

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-static {v3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 715
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->storeSecondPointerDownLocation(Landroid/view/MotionEvent;)V

    .line 716
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 717
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v3, v1

    .line 716
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 719
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 722
    goto/16 :goto_1

    .line 728
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 729
    invoke-static {v0, p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v4

    iget v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v6, v0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_6

    .line 736
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 737
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 738
    :cond_4
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 740
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitToPanningScalingStateAndClear()V

    goto/16 :goto_1

    .line 742
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_1

    .line 744
    :cond_6
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->secondPointerDownValid()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 745
    invoke-static {v0, p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distanceClosestPointerToPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_11

    .line 748
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitToPanningScalingStateAndClear()V

    goto/16 :goto_1

    .line 754
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 756
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 757
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 756
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(IFF)Z

    move-result v0

    if-nez v0, :cond_8

    .line 759
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_1

    .line 761
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 763
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->onTripleTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 765
    :cond_9
    nop

    .line 767
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 769
    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->timeBetween(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 770
    invoke-static {v0, v1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_11

    .line 772
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_1

    .line 680
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDetectingDownEventTime:J

    .line 681
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 683
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 684
    invoke-static {v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 683
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(IFF)Z

    move-result v0

    if-nez v0, :cond_c

    .line 686
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_1

    .line 688
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 691
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->afterLongTapTimeoutTransitionToDraggingState(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 693
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isTapOutOfDistanceSlop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 695
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_1

    .line 697
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-boolean v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectTripleTap:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 701
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_0

    .line 708
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 711
    goto :goto_1

    .line 703
    :cond_10
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->afterMultiTapTimeoutTransitionToDelegatingState()V

    .line 778
    :cond_11
    :goto_1
    return-void
.end method

.method setShortcutTriggered(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 985
    iget-boolean v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    if-ne v0, p1, :cond_0

    .line 986
    return-void

    .line 990
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 991
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/MagnificationController;->setForceShowMagnifiableBounds(IZ)V

    .line 992
    return-void
.end method

.method public tapCount()I
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetectingState{tapCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShortcutTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayedEventQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 976
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    return-object v0
.end method

.method toggleShortcutTriggered()V
    .locals 1

    .line 981
    iget-boolean v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    .line 982
    return-void
.end method

.method transitionToDelegatingStateAndClear()V
    .locals 2

    .line 929
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 930
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->sendDelayedMotionEvents()V

    .line 931
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->removePendingDelayedMessages()V

    .line 932
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 933
    return-void
.end method

.method transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "down"    # Landroid/view/MotionEvent;

    .line 957
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 959
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 960
    invoke-static {v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mZoomedInBeforeDrag:Z

    .line 963
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    iget-boolean v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mZoomedInBeforeDrag:Z

    xor-int/lit8 v0, v0, 0x1

    .line 964
    .local v0, "enabled":Z
    invoke-static {v0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationTripleTap(Z)V

    .line 966
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$800(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;FF)V

    .line 968
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v2, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    invoke-static {v1, v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 969
    return-void
.end method

.class final Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/gestures/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExitGestureDetectionModeDelayed"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/gestures/TouchExplorer;)V
    .locals 0

    .line 973
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/gestures/TouchExplorer;Lcom/android/server/accessibility/gestures/TouchExplorer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/accessibility/gestures/TouchExplorer;
    .param p2, "x1"    # Lcom/android/server/accessibility/gestures/TouchExplorer$1;

    .line 973
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$300(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 981
    return-void
.end method

.method public post()V
    .locals 3

    .line 976
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$300(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 977
    return-void
.end method

.method public run()V
    .locals 2

    .line 986
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$400(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/EventDispatcher;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 987
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$500(Lcom/android/server/accessibility/gestures/TouchExplorer;)V

    .line 988
    return-void
.end method

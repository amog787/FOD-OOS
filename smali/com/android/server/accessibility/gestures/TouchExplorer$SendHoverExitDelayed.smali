.class Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/gestures/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverExitDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field private mPrototype:Landroid/view/MotionEvent;

.field private mRawEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/gestures/TouchExplorer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 1080
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    const-string v0, "SendHoverExitDelayed"

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    .line 1080
    invoke-direct {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    return v0
.end method

.method private clear()V
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 1111
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 1114
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1116
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    .line 1117
    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Landroid/view/MotionEvent;

    .line 1118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 1119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 1120
    return-void
.end method

.method private isPending()Z
    .locals 1

    .line 1106
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$300(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1099
    invoke-direct {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$300(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1101
    invoke-direct {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->clear()V

    .line 1103
    :cond_0
    return-void
.end method

.method public forceSendAndRemove()V
    .locals 1

    .line 1123
    invoke-direct {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->run()V

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 1127
    :cond_0
    return-void
.end method

.method public post(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)V
    .locals 3
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    .line 1090
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 1091
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    .line 1092
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Landroid/view/MotionEvent;

    .line 1093
    iput p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    .line 1094
    iput p4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    .line 1095
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$300(Lcom/android/server/accessibility/gestures/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$600(Lcom/android/server/accessibility/gestures/TouchExplorer;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1096
    return-void
.end method

.method public run()V
    .locals 7

    .line 1134
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$400(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/EventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Landroid/view/MotionEvent;

    iget v5, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    iget v6, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    const/16 v3, 0xa

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(Landroid/view/MotionEvent;ILandroid/view/MotionEvent;II)V

    .line 1140
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$700(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$700(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 1142
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$700(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$800(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$800(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 1146
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->access$800(Lcom/android/server/accessibility/gestures/TouchExplorer;)Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 1148
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->clear()V

    .line 1149
    return-void
.end method

.class Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendAccessibilityEventDelayed"
.end annotation


# instance fields
.field private final mDelay:I

.field private final mEventType:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/TouchExplorer;II)V
    .locals 0
    .param p2, "eventType"    # I
    .param p3, "delay"    # I

    .line 1304
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1305
    iput p2, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->mEventType:I

    .line 1306
    iput p3, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    .line 1307
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1310
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1311
    return-void
.end method

.method public forceSendAndRemove()V
    .locals 1

    .line 1322
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->run()V

    .line 1324
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 1326
    :cond_0
    return-void
.end method

.method public isPending()Z
    .locals 1

    .line 1318
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public post()V
    .locals 3

    .line 1314
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1315
    return-void
.end method

.method public run()V
    .locals 2

    .line 1330
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->mEventType:I

    invoke-static {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->access$400(Lcom/android/server/accessibility/TouchExplorer;I)V

    .line 1331
    return-void
.end method

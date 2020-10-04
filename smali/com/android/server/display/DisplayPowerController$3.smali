.class Lcom/android/server/display/DisplayPowerController$3;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/RampAnimator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    .line 1129
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 1134
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->getBrightnessValue()I

    move-result v0

    const/16 v1, 0x6e

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 1135
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$400(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$500(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$600(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->adjustBrightenDebounceTime(I)V

    goto :goto_0

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$600(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v0

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->adjustBrightenDebounceTime(I)V

    .line 1141
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$300(Lcom/android/server/display/DisplayPowerController;)V

    .line 1142
    return-void
.end method

.method public setDimmingSpeed(II)V
    .locals 4
    .param p1, "frames"    # I
    .param p2, "delay"    # I

    .line 1148
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x58

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1151
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1152
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1154
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

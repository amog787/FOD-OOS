.class final Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;
.super Landroid/os/Handler;
.source "OpBrightnessReasonAndRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OpBrightnessReasonAndRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OpBrightnessReasonHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OpBrightnessReasonAndRate;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OpBrightnessReasonAndRate;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 977
    iput-object p1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;->this$0:Lcom/android/server/display/OpBrightnessReasonAndRate;

    .line 978
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 979
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 983
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;->this$0:Lcom/android/server/display/OpBrightnessReasonAndRate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$1402(Lcom/android/server/display/OpBrightnessReasonAndRate;Z)Z

    .line 986
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;->this$0:Lcom/android/server/display/OpBrightnessReasonAndRate;

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->access$1500(Lcom/android/server/display/OpBrightnessReasonAndRate;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 989
    :goto_0
    return-void
.end method

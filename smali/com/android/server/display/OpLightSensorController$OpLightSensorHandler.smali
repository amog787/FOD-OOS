.class final Lcom/android/server/display/OpLightSensorController$OpLightSensorHandler;
.super Landroid/os/Handler;
.source "OpLightSensorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OpLightSensorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OpLightSensorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OpLightSensorController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OpLightSensorController;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 65
    iput-object p1, p0, Lcom/android/server/display/OpLightSensorController$OpLightSensorHandler;->this$0:Lcom/android/server/display/OpLightSensorController;

    .line 66
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 67
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OpLightSensorController$OpLightSensorHandler;->this$0:Lcom/android/server/display/OpLightSensorController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/OpLightSensorController;->access$002(Lcom/android/server/display/OpLightSensorController;Z)Z

    .line 74
    nop

    .line 78
    :goto_0
    return-void
.end method

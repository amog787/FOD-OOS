.class Lcom/android/server/display/DisplayPowerController$11;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController;->initOnlineConfig()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 3040
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 3043
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3045
    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$1300()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3046
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    nop

    .line 3050
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    .line 3051
    .local v1, "jsonArr":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v2, v1}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;Lorg/json/JSONArray;)V

    .line 3052
    nop

    .line 3056
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    .end local v1    # "jsonArr":Lorg/json/JSONArray;
    :goto_0
    return-void
.end method

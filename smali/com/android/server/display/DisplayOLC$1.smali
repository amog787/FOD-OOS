.class Lcom/android/server/display/DisplayOLC$1;
.super Landroid/os/Handler;
.source "DisplayOLC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayOLC;->initOnlineConfig()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayOLC;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayOLC;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayOLC;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 79
    iput-object p1, p0, Lcom/android/server/display/DisplayOLC$1;->this$0:Lcom/android/server/display/DisplayOLC;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/display/DisplayOLC$1;->this$0:Lcom/android/server/display/DisplayOLC;

    invoke-static {v1}, Lcom/android/server/display/DisplayOLC;->access$000(Lcom/android/server/display/DisplayOLC;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "DisplayOLC"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    nop

    .line 89
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    .line 90
    .local v1, "jsonArr":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/android/server/display/DisplayOLC$1;->this$0:Lcom/android/server/display/DisplayOLC;

    invoke-static {v2, v1}, Lcom/android/server/display/DisplayOLC;->access$100(Lcom/android/server/display/DisplayOLC;Lorg/json/JSONArray;)V

    .line 91
    nop

    .line 95
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    .end local v1    # "jsonArr":Lorg/json/JSONArray;
    :goto_0
    return-void
.end method

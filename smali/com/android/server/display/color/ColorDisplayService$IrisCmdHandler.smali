.class final Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;
.super Landroid/os/Handler;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IrisCmdHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 964
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 965
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 966
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 970
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2300(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2700(Lcom/android/server/display/color/ColorDisplayService;)Lcom/oneplus/iris/IOneplusIrisManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/oneplus/iris/IOneplusIrisManager;->setAutoColorTemperature(I)V

    goto :goto_0

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2700(Lcom/android/server/display/color/ColorDisplayService;)Lcom/oneplus/iris/IOneplusIrisManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/oneplus/iris/IOneplusIrisManager;->setManualColorTemperature(I)V

    .line 990
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mScreenColorTemperature:I

    .line 991
    goto :goto_3

    .line 972
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_3

    .line 973
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2700(Lcom/android/server/display/color/ColorDisplayService;)Lcom/oneplus/iris/IOneplusIrisManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v3, v3, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget v3, v3, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mScreenColorTemperature:I

    invoke-interface {v0, v3}, Lcom/oneplus/iris/IOneplusIrisManager;->setManualColorTemperature(I)V

    goto :goto_1

    .line 974
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_5

    .line 975
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2700(Lcom/android/server/display/color/ColorDisplayService;)Lcom/oneplus/iris/IOneplusIrisManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v3, v3, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget v3, v3, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mScreenColorTemperature:I

    invoke-interface {v0, v3}, Lcom/oneplus/iris/IOneplusIrisManager;->setAutoColorTemperature(I)V

    .line 980
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2700(Lcom/android/server/display/color/ColorDisplayService;)Lcom/oneplus/iris/IOneplusIrisManager;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3}, Lcom/oneplus/iris/IOneplusIrisManager;->setColorTemperatureMode(I)V

    .line 981
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$2302(Lcom/android/server/display/color/ColorDisplayService;Z)Z

    .line 982
    nop

    .line 995
    :goto_3
    return-void

    .line 977
    :cond_5
    const-string v0, "ColorDisplayService"

    const-string v1, "Invalid color temperatrue mode, ignore."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void
.end method

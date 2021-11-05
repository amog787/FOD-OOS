.class public final Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;
.super Ljava/lang/Object;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ColorDisplayServiceInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 2098
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachColorTransformController(Ljava/lang/String;ILjava/lang/ref/WeakReference;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;",
            ">;)Z"
        }
    .end annotation

    .line 2151
    .local p3, "controller":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;>;"
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$4100(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/AppSaturationController;

    move-result-object v0

    .line 2152
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/color/AppSaturationController;->addColorTransformController(Ljava/lang/String;ILjava/lang/ref/WeakReference;)Z

    move-result v0

    .line 2151
    return v0
.end method

.method public cancelAnimation()V
    .locals 2

    .line 2161
    const-string v0, "ColorDisplayService"

    const-string v1, "cancelAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2200(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2163
    return-void
.end method

.method public isDisplayWhiteBalanceEnabled()Z
    .locals 1

    .line 2142
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$4000(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v0

    return v0
.end method

.method public isNightDisplayActivated()Z
    .locals 3

    .line 2169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2171
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2171
    return v2

    .line 2173
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2174
    throw v2
.end method

.method public resetDisplayWhiteBalanceColorTemperature()Z
    .locals 3

    .line 2124
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2125
    const v1, 0x10e004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2126
    .local v0, "temperatureDefault":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetDisplayWhiteBalanceColorTemperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorDisplayService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setDisplayWhiteBalanceColorTemperature(I)Z

    move-result v1

    return v1
.end method

.method public setDisplayWhiteBalanceColorTemperature(I)Z
    .locals 5
    .param p1, "cct"    # I

    .line 2108
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setMatrix(I)V

    .line 2110
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$2200(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$2200(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    const/16 v4, 0x1f40

    invoke-virtual {v2, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2115
    const/4 v0, 0x1

    return v0

    .line 2117
    :cond_0
    return v1
.end method

.method public setDisplayWhiteBalanceListener(Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    .line 2134
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$3902(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;)Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    .line 2135
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v0

    return v0
.end method

.class final Lcom/android/server/display/color/ColorDisplayService$TintHandler;
.super Landroid/os/Handler;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TintHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2036
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2037
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2038
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;Lcom/android/server/display/color/ColorDisplayService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/server/display/color/ColorDisplayService$1;

    .line 2034
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/color/ColorDisplayService$TintHandler;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2042
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_a

    const/4 v2, 0x4

    const/16 v4, 0x64

    const-string v5, "ColorDisplayService"

    if-eq v0, v2, :cond_7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    if-eq v0, v4, :cond_0

    goto/16 :goto_3

    .line 2133
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0, v3}, Lcom/android/server/display/color/ColorDisplayService;->access$4602(Lcom/android/server/display/color/ColorDisplayService;Z)Z

    goto/16 :goto_3

    .line 2123
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$4000(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 2124
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const-class v1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->access$4500(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 2125
    .local v0, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    if-eqz v0, :cond_e

    .line 2126
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/color/ColorDisplayService;->access$4000(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    goto/16 :goto_3

    .line 2106
    .end local v0    # "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$4200(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$4300(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 2116
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-static {v0, v1, v3}, Lcom/android/server/display/color/ColorDisplayService;->access$4100(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    .line 2119
    goto/16 :goto_3

    .line 2108
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v0

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_5

    .line 2109
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2

    const-string v4, "fod_mode"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .local v0, "fodMode":I
    goto :goto_1

    .line 2111
    .end local v0    # "fodMode":I
    :cond_5
    const/4 v0, 0x0

    .line 2113
    .restart local v0    # "fodMode":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fod mode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v4, v2, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    if-nez v0, :cond_6

    move v1, v3

    :cond_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v4, v1, v3}, Lcom/android/server/display/color/ColorDisplayService;->access$4400(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;ZI)V

    .line 2115
    .end local v0    # "fodMode":I
    goto/16 :goto_3

    .line 2052
    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v2, "accessibility_display_grayscale_enabled"

    if-nez v0, :cond_8

    .line 2053
    const-string v0, "grayscale  is opening"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2055
    invoke-static {v4}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v4

    .line 2054
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2056
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    .line 2058
    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_9

    .line 2059
    const-string v0, "grayscale is closed"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 2061
    invoke-static {v4}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v4

    .line 2060
    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2062
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2065
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->updateNightStatusForInvAndDalAndGray()V

    .line 2067
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$4000(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/android/server/display/color/TintController;->setMatrix(I)V

    .line 2074
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const-string v2, "ColorDisable"

    invoke-virtual {v0, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_e

    .line 2075
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$4000(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/server/display/color/ColorDisplayService;->access$4100(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    goto :goto_3

    .line 2096
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$3600(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v0

    const-string v2, "NightMode"

    if-eqz v0, :cond_b

    .line 2097
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {v0, v2, v1, v3}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_3

    .line 2099
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1, v3}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    .line 2102
    goto :goto_3

    .line 2047
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->access$700(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 2048
    goto :goto_3

    .line 2044
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->onUserChanged(I)V

    .line 2045
    nop

    .line 2137
    :cond_e
    :goto_3
    return-void
.end method

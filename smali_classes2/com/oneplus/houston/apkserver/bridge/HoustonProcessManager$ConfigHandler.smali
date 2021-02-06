.class Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$ConfigHandler;
.super Landroid/os/Handler;
.source "HoustonProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 503
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$ConfigHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    .line 504
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 505
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 509
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 511
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 512
    .local v0, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    const-string v1, "HoustonProcessManager"

    if-nez v0, :cond_1

    .line 513
    const-string v2, "hp == null in handler!"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    goto :goto_1

    .line 516
    :cond_1
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$ConfigHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    invoke-static {v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    .line 517
    .local v2, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    if-eqz v2, :cond_3

    .line 518
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 520
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "pid"

    iget v5, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 521
    const-string v4, "lifeCycle"

    iget v5, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 522
    const-string v4, "package"

    iget-object v5, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    iget v4, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 524
    const-string v4, "param"

    invoke-virtual {v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->getParamJson()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    :cond_2
    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$ConfigHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    const-string v5, "/sys/module/houston/parameters/ht_online_config_update"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    goto :goto_0

    .line 527
    :catch_0
    move-exception v4

    .line 528
    .local v4, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to initial jsonObject for ht_online_config_update: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oneplus/houston/common/client/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    goto :goto_1

    .line 532
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No adjust for package \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    nop

    .line 537
    .end local v0    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    .end local v2    # "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    :goto_1
    return-void
.end method

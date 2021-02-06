.class public Lcom/oneplus/onlineconfig/OpUFSHPBConfig;
.super Ljava/lang/Object;
.source "OpUFSHPBConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/onlineconfig/OpUFSHPBConfig$OnlineConfigUpdater;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OpUFSHPBConfig"

.field private static final UFS_HPBDisableProp:Ljava/lang/String; = "persist.sys.ufs_hpb_disable"

.field private static final UFS_HPB_CONFIG:Ljava/lang/String; = "UFSHPBConfig"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    const-string v0, "OpUFSHPBConfig"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/oneplus/onlineconfig/OpUFSHPBConfig;->mContext:Landroid/content/Context;

    .line 28
    new-instance v1, Lcom/oneplus/onlineconfig/OpUFSHPBConfig$OnlineConfigUpdater;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/onlineconfig/OpUFSHPBConfig$OnlineConfigUpdater;-><init>(Lcom/oneplus/onlineconfig/OpUFSHPBConfig;Lcom/oneplus/onlineconfig/OpUFSHPBConfig$1;)V

    .line 29
    .local v1, "updater":Lcom/oneplus/onlineconfig/OpUFSHPBConfig$OnlineConfigUpdater;
    new-instance v2, Lcom/oneplus/config/ConfigObserver;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "UFSHPBConfig"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    .line 32
    .local v2, "observer":Lcom/oneplus/config/ConfigObserver;
    :try_start_0
    invoke-virtual {v2}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 33
    const-string v3, "Register online config observer"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 34
    :catch_0
    move-exception v3

    .line 35
    .local v3, "e":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register online config fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$resolveOnlineConfig$0$OpUFSHPBConfig()V
    .locals 3

    .line 49
    const-string v0, "OpUFSHPBConfig"

    const-string v1, "Take the initiative in retrieving online config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/oneplus/onlineconfig/OpUFSHPBConfig;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "UFSHPBConfig"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/onlineconfig/OpUFSHPBConfig;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 53
    return-void
.end method

.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 57
    const-string v0, "OpUFSHPBConfig"

    if-nez p1, :cond_0

    .line 58
    const-string v1, "[OnlineConfig] config is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 62
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 63
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 64
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "name":Ljava/lang/String;
    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "value":Ljava/lang/String;
    const-string v5, "disable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "persist.sys.ufs_hpb_disable"

    if-eqz v5, :cond_1

    .line 68
    :try_start_1
    const-string v5, "set UFS HPB disable"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v5, "1"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_1
    const-string v5, "enable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    const-string v5, "set UFS HPB enable"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v5, "0"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "index":I
    :cond_3
    goto :goto_2

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] UFS HPB online config error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 76
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    nop

    .line 81
    :goto_3
    return-void
.end method

.method public resolveOnlineConfig()V
    .locals 2

    .line 48
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/onlineconfig/-$$Lambda$OpUFSHPBConfig$xJwP9v4DyN9OFW2Mgukpg9JlxVs;

    invoke-direct {v1, p0}, Lcom/oneplus/onlineconfig/-$$Lambda$OpUFSHPBConfig$xJwP9v4DyN9OFW2Mgukpg9JlxVs;-><init>(Lcom/oneplus/onlineconfig/OpUFSHPBConfig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

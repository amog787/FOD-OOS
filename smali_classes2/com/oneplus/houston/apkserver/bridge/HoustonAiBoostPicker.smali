.class public Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;
.super Ljava/lang/Object;
.source "HoustonAiBoostPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker$AiBoostConfigUpdater;
    }
.end annotation


# static fields
.field public static final EMPTY:[Ljava/lang/String;

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final ONLINE_CONFIG_BLACKLIST_CONTENT_NAME:Ljava/lang/String; = "houston_ai_boost_blacklist"

.field private static final ONLINE_CONFIG_CONTENT_NAME:Ljava/lang/String; = "houston_ai_boost"

.field private static final ONLINE_CONFIG_CONTROLLER_CONTENT_NAME:Ljava/lang/String; = "houston_ai_boost_controller"

.field private static final ONLINE_CONFIG_PROJ_NAME:Ljava/lang/String; = "HoustonAiBoost"

.field private static final TAG:Ljava/lang/String; = "HoustonAiBoostPicker"

.field private static mAiBoostBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAiBoostController:I

.field private static mAiBoostWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAiBoostWhiteMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnlineConfigHandler:Landroid/os/Handler;

.field private mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostController:I

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->EMPTY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HoustonAiConfig"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mContext:Landroid/content/Context;

    .line 55
    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker$1;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mOnlineConfigHandler:Landroid/os/Handler;

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->initOnlineConfig()V

    .line 70
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mOnlineConfigHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;

    .line 33
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->parseConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private handleAiBoostBlackListUpdate(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    sget-object v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 183
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 184
    .local v1, "pkgListJsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 185
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 186
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "pkgName":Ljava/lang/String;
    const-string v4, "HoustonAiBoostPicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   ai black list:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/houston/common/client/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    sget-object v4, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "pkgListJsonArray":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v2, "HoustonAiBoostPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] Failed to process onlineconfig! AiBoostBlackList\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v2, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 196
    sget-object v2, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 198
    .end local v0    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    monitor-exit p0

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private handleAiBoostControllerUpdate(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 203
    const-string v0, "HoustonAiBoostPicker"

    :try_start_0
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostController:I

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] mAiBoostController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostController:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! AiBoostController \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private handleAiBoostWhiteMapUpdate(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 134
    monitor-enter p0

    .line 137
    :try_start_0
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 138
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 140
    .local v0, "pkgListJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 141
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "package"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "HoustonAiBoostPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ai white list:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v3, 0x0

    .line 144
    .local v3, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    const-string v4, ""

    .line 145
    .local v4, "pr1":Ljava/lang/String;
    const-string v5, ""

    .line 146
    .local v5, "pr2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "param"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 147
    .local v6, "paramJsonArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_4

    .line 148
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 149
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "param1"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, "p1":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "param2"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, "p2":Ljava/lang/String;
    if-nez v8, :cond_0

    const-string v10, ""

    goto :goto_2

    :cond_0
    move-object v10, v8

    :goto_2
    move-object v4, v10

    .line 152
    if-nez v9, :cond_1

    const-string v10, ""

    goto :goto_3

    :cond_1
    move-object v10, v9

    :goto_3
    move-object v5, v10

    .line 154
    if-nez v3, :cond_2

    .line 155
    new-instance v10, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    invoke-direct {v10, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;-><init>(Ljava/lang/String;)V

    move-object v3, v10

    .line 157
    :cond_2
    const-string v10, ""

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, ""

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_4

    .line 160
    :cond_3
    new-instance v10, Lcom/oneplus/houston/apkserver/bridge/Param;

    invoke-direct {v10, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v10, "param":Lcom/oneplus/houston/apkserver/bridge/Param;
    invoke-virtual {v3, v10}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->addParam(Lcom/oneplus/houston/apkserver/bridge/Param;)V

    .line 148
    .end local v8    # "p1":Ljava/lang/String;
    .end local v9    # "p2":Ljava/lang/String;
    .end local v10    # "param":Lcom/oneplus/houston/apkserver/bridge/Param;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 166
    .end local v7    # "j":I
    :cond_4
    if-eqz v2, :cond_5

    .line 167
    sget-object v7, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    .end local v4    # "pr1":Ljava/lang/String;
    .end local v5    # "pr2":Ljava/lang/String;
    .end local v6    # "paramJsonArray":Lorg/json/JSONArray;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 172
    .end local v0    # "pkgListJsonArray":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_6
    goto :goto_5

    .line 173
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    const-string v1, "HoustonAiBoostPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! mAiBoostWhiteList \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_5
    monitor-exit p0

    .line 174
    return-void

    .line 173
    :goto_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parseConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 211
    if-nez p1, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseConfigFromJson jsonArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonAiBoostPicker"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    monitor-enter p0

    .line 217
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 218
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 219
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "name":Ljava/lang/String;
    const-string v3, "houston_ai_boost"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    invoke-direct {p0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->handleAiBoostWhiteMapUpdate(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 222
    :cond_1
    const-string v3, "houston_ai_boost_blacklist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    invoke-direct {p0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->handleAiBoostBlackListUpdate(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 224
    :cond_2
    const-string v3, "houston_ai_boost_controller"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 225
    invoke-direct {p0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->handleAiBoostControllerUpdate(Lorg/json/JSONObject;)V

    .line 217
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "index":I
    :cond_4
    const-string v0, "HoustonAiBoostPicker"

    const-string v1, "[OnlineConfig] houston ai boost config updated complete"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :goto_2
    goto :goto_3

    .line 236
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "HoustonAiBoostPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 230
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "HoustonAiBoostPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Lorg/json/JSONException;
    goto :goto_2

    .line 235
    :goto_3
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->getAiBoostBlackList()[Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostController:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateConfig(Ljava/util/HashMap;[Ljava/lang/String;I)V

    .line 236
    monitor-exit p0

    .line 237
    return-void

    .line 236
    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAiBoostBlackList()[Ljava/lang/String;
    .locals 3

    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 253
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 254
    sget-object v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    sget-object v2, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit p0

    return-object v1

    .line 256
    :cond_0
    sget-object v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->EMPTY:[Ljava/lang/String;

    monitor-exit p0

    return-object v1

    .line 258
    .end local v0    # "size":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAiBoostWhiteList()[Ljava/lang/String;
    .locals 3

    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 242
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 243
    sget-object v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteList:Ljava/util/ArrayList;

    sget-object v2, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit p0

    return-object v1

    .line 245
    :cond_0
    sget-object v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->EMPTY:[Ljava/lang/String;

    monitor-exit p0

    return-object v1

    .line 247
    .end local v0    # "size":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initOnlineConfig()V
    .locals 5

    .line 81
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mOnlineConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker$AiBoostConfigUpdater;

    invoke-direct {v3, p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker$AiBoostConfigUpdater;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;)V

    const-string v4, "HoustonAiBoost"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 82
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 83
    return-void
.end method

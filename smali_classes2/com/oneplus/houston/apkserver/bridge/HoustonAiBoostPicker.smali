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
.field private static final DBG:Z = false

.field public static EMPTY:[Ljava/lang/String; = null

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

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostController:I

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->EMPTY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HoustonAiConfig"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mContext:Landroid/content/Context;

    .line 56
    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker$1;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mOnlineConfigHandler:Landroid/os/Handler;

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->initOnlineConfig()V

    .line 71
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mOnlineConfigHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 72
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
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 183
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 184
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v1, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :try_start_1
    sget-object v2, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 189
    const-string v2, "value"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 193
    .local v2, "pkgListJsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    .line 194
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 195
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 200
    sget-object v5, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "pkgListJsonArray":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v3, "HoustonAiBoostPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Failed to process onlineconfig! AiBoostBlackList\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v3, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 207
    sget-object v3, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 209
    .end local v1    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private handleAiBoostControllerUpdate(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 214
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

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] mAiBoostController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostController:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! AiBoostController \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private handleAiBoostWhiteMapUpdate(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 139
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 143
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 144
    .local v1, "pkgListJsonArray":Lorg/json/JSONArray;
    const-string v2, "HoustonAiBoostPicker"

    const-string v3, "[OnlineConfig] houston ai boost config:"

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 147
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "package"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "pkgName":Ljava/lang/String;
    const-string v5, "HoustonAiBoostPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ai white list:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v5, 0x0

    .line 150
    .local v5, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    const-string v6, ""

    .line 151
    .local v6, "pr1":Ljava/lang/String;
    const-string v7, ""

    .line 152
    .local v7, "pr2":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "param"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 153
    .local v8, "paramJsonArray":Lorg/json/JSONArray;
    if-eqz v8, :cond_4

    .line 154
    move v9, v2

    .local v9, "j":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 155
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "param1"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 156
    .local v10, "p1":Ljava/lang/String;
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "param2"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 157
    .local v11, "p2":Ljava/lang/String;
    if-nez v10, :cond_0

    const-string v12, ""

    goto :goto_2

    :cond_0
    move-object v12, v10

    :goto_2
    move-object v6, v12

    .line 158
    if-nez v11, :cond_1

    const-string v12, ""

    goto :goto_3

    :cond_1
    move-object v12, v11

    :goto_3
    move-object v7, v12

    .line 160
    if-nez v5, :cond_2

    .line 161
    new-instance v12, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    invoke-direct {v12, v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;-><init>(Ljava/lang/String;)V

    move-object v5, v12

    .line 163
    :cond_2
    const-string v12, ""

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, ""

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_4

    .line 166
    :cond_3
    new-instance v12, Lcom/oneplus/houston/apkserver/bridge/Param;

    invoke-direct {v12, v6, v7}, Lcom/oneplus/houston/apkserver/bridge/Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v12, "param":Lcom/oneplus/houston/apkserver/bridge/Param;
    invoke-virtual {v5, v12}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->addParam(Lcom/oneplus/houston/apkserver/bridge/Param;)V

    .line 154
    .end local v10    # "p1":Ljava/lang/String;
    .end local v11    # "p2":Ljava/lang/String;
    .end local v12    # "param":Lcom/oneplus/houston/apkserver/bridge/Param;
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 172
    .end local v9    # "j":I
    :cond_4
    if-eqz v4, :cond_5

    .line 173
    sget-object v9, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    .end local v6    # "pr1":Ljava/lang/String;
    .end local v7    # "pr2":Ljava/lang/String;
    .end local v8    # "paramJsonArray":Lorg/json/JSONArray;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 178
    .end local v1    # "pkgListJsonArray":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_6
    goto :goto_5

    .line 179
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    const-string v2, "HoustonAiBoostPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] Failed to process onlineconfig! mAiBoostWhiteList \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_5
    monitor-exit v0

    .line 180
    return-void

    .line 179
    :goto_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private parseConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 222
    const-string v0, "HoustonAiBoostPicker"

    if-nez p1, :cond_0

    .line 223
    return-void

    .line 229
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 230
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 231
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "name":Ljava/lang/String;
    const-string v4, "houston_ai_boost"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    invoke-direct {p0, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->handleAiBoostWhiteMapUpdate(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 234
    :cond_1
    const-string v4, "houston_ai_boost_blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 235
    invoke-direct {p0, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->handleAiBoostBlackListUpdate(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 236
    :cond_2
    const-string v4, "houston_ai_boost_controller"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 237
    invoke-direct {p0, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->handleAiBoostControllerUpdate(Lorg/json/JSONObject;)V

    .line 229
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "index":I
    :cond_4
    const-string v1, "[OnlineConfig] houston ai boost config updated complete"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 242
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    nop

    .line 247
    :goto_3
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->getAiBoostBlackList()[Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostController:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateConfig(Ljava/util/HashMap;[Ljava/lang/String;I)V

    .line 248
    return-void
.end method


# virtual methods
.method public getAiBoostBlackList()[Ljava/lang/String;
    .locals 3

    .line 260
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 261
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 262
    sget-object v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostBlackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 264
    :cond_0
    sget-object v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->EMPTY:[Ljava/lang/String;

    return-object v1
.end method

.method public getAiBoostWhiteList()[Ljava/lang/String;
    .locals 3

    .line 251
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 252
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 253
    sget-object v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mAiBoostWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 255
    :cond_0
    sget-object v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->EMPTY:[Ljava/lang/String;

    return-object v1
.end method

.method public initOnlineConfig()V
    .locals 5

    .line 82
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mOnlineConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker$AiBoostConfigUpdater;

    invoke-direct {v3, p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker$AiBoostConfigUpdater;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;)V

    const-string v4, "HoustonAiBoost"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 83
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 88
    return-void
.end method

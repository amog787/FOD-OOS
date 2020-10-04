.class public Lcom/oneplus/onlineconfig/OpNavBarColorConfig;
.super Ljava/lang/Object;
.source "OpNavBarColorConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/onlineconfig/OpNavBarColorConfig$OnlineConfigUpdater;
    }
.end annotation


# static fields
.field private static final BLACK_LIST:Ljava/lang/String; = "blackList"

.field private static final BLACK_LIST_PACKAGE_VERIFY:Ljava/lang/String;

.field private static final NAV_COLOR_CONFIG:Ljava/lang/String; = "navColorConfig"

.field private static final TAG:Ljava/lang/String; = "OpNavBarColorConfig"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final WHITE_LIST:Ljava/lang/String; = "whiteList"

.field private static final WHITE_LIST_PACKAGE_VERIFY:Ljava/lang/String;


# instance fields
.field private mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    nop

    .line 28
    const-string v0, "com.oneplus.systemui.test"

    const-string v1, "persist.white_list.package.verify"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->WHITE_LIST_PACKAGE_VERIFY:Ljava/lang/String;

    .line 32
    nop

    .line 33
    const-string v1, "persist.black_list.package.verify"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->BLACK_LIST_PACKAGE_VERIFY:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    move-object/from16 v1, p0

    const-string v2, "OpNavBarColorConfig"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const-string v3, "org.zwanoo.android.speedtest"

    const-string v4, "com.ss.android.ugc.aweme"

    const-string v5, "com.netflix.mediaclient"

    const-string v6, "com.google.android.gms"

    const-string v7, "com.google.android.apps.messaging"

    const-string v8, "com.google.android.apps.wellbeing"

    const-string v9, "com.google.android.apps.photos"

    const-string v10, "com.meitu.meiyancamera"

    const-string v11, "com.mt.mtxx.mtxx"

    const-string v12, "com.nearme.browser"

    const-string v13, "com.heytap.browser"

    const-string v14, "com.tencent.mm"

    const-string v15, "com.whatsapp"

    const-string v16, "com.android.nfc"

    const-string v17, "com.spotify.music"

    const-string v18, "com.bilibili.app"

    const-string v19, "tv.danmaku.bili"

    const-string v20, "com.sogou.sgsa"

    const-string v21, "com.google.android.googlequicksearchbox"

    const-string v22, "com.estrongs.android.pop"

    filled-new-array/range {v3 .. v22}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mWhiteList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const-string v3, "com.tencent.mobileqq"

    const-string v4, "com.sina.weibo"

    const-string v5, "com.tmall.wireless"

    const-string v6, "com.jingdong.app.mall"

    const-string v7, "com.xiaomi.shop"

    const-string v8, "com.mi.global.shop"

    const-string v9, "com.xiaomi.youpin"

    const-string v10, "com.netease.yanxuan"

    const-string v11, "com.UCMobile"

    const-string v12, "com.netease.cloudmusic"

    const-string v13, "com.shhxzq.ztb"

    const-string v14, "com.cubic.autohome"

    const-string v15, "com.taobao.taobao"

    const-string v16, "com.tencent.qqlive"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mBlackList:Ljava/util/ArrayList;

    .line 79
    move-object/from16 v3, p1

    iput-object v3, v1, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mContext:Landroid/content/Context;

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->addVerifyProperty()V

    .line 81
    new-instance v0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig$OnlineConfigUpdater;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/oneplus/onlineconfig/OpNavBarColorConfig$OnlineConfigUpdater;-><init>(Lcom/oneplus/onlineconfig/OpNavBarColorConfig;Lcom/oneplus/onlineconfig/OpNavBarColorConfig$1;)V

    move-object v4, v0

    .line 82
    .local v4, "updater":Lcom/oneplus/onlineconfig/OpNavBarColorConfig$OnlineConfigUpdater;
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-string v7, "navColorConfig"

    invoke-direct {v0, v5, v6, v4, v7}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    move-object v5, v0

    .line 85
    .local v5, "observer":Lcom/oneplus/config/ConfigObserver;
    :try_start_0
    invoke-virtual {v5}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 86
    const-string v0, "Register online config observer"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Register online config fail, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    return-void
.end method

.method private addVerifyProperty()V
    .locals 3

    .line 166
    sget-object v0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->WHITE_LIST_PACKAGE_VERIFY:Ljava/lang/String;

    const-string v1, "com.oneplus.systemui.test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mWhiteList:Ljava/util/ArrayList;

    sget-object v2, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->WHITE_LIST_PACKAGE_VERIFY:Ljava/lang/String;

    .line 167
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mWhiteList:Ljava/util/ArrayList;

    sget-object v2, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->WHITE_LIST_PACKAGE_VERIFY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    sget-object v0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->BLACK_LIST_PACKAGE_VERIFY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mBlackList:Ljava/util/ArrayList;

    sget-object v1, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->BLACK_LIST_PACKAGE_VERIFY:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mBlackList:Ljava/util/ArrayList;

    sget-object v1, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->BLACK_LIST_PACKAGE_VERIFY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_1
    return-void
.end method


# virtual methods
.method public getBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mBlackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mWhiteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public synthetic lambda$resolveOnlineConfig$0$OpNavBarColorConfig()V
    .locals 3

    .line 102
    const-string v0, "OpNavBarColorConfig"

    const-string v1, "Take the initiative in retrieving online config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "navColorConfig"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 106
    return-void
.end method

.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 110
    if-nez p1, :cond_0

    .line 111
    const-string v0, "OpNavBarColorConfig"

    const-string v1, "[OnlineConfig] config is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 116
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 117
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v4, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 121
    .local v5, "list":Lorg/json/JSONArray;
    move v6, v0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 122
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 125
    .end local v6    # "i":I
    :cond_1
    const-string v6, "whiteList"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    iget-object v6, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mWhiteList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :try_start_1
    iget-object v7, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object v7, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :try_start_2
    const-string v6, "OpNavBarColorConfig"

    const-string v7, "[OnlineConfig] Nav color white list changed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 129
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/oneplus/onlineconfig/OpNavBarColorConfig;
    .end local p1    # "jsonArray":Lorg/json/JSONArray;
    :try_start_4
    throw v0

    .line 131
    .restart local p0    # "this":Lcom/oneplus/onlineconfig/OpNavBarColorConfig;
    .restart local p1    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    const-string v6, "blackList"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 132
    iget-object v6, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mBlackList:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 133
    :try_start_5
    iget-object v7, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 134
    iget-object v7, p0, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 136
    :try_start_6
    const-string v6, "OpNavBarColorConfig"

    const-string v7, "[OnlineConfig] Nav color black list changed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 135
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local p0    # "this":Lcom/oneplus/onlineconfig/OpNavBarColorConfig;
    .end local p1    # "jsonArray":Lorg/json/JSONArray;
    :try_start_8
    throw v0

    .line 115
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "list":Lorg/json/JSONArray;
    .restart local p0    # "this":Lcom/oneplus/onlineconfig/OpNavBarColorConfig;
    .restart local p1    # "jsonArray":Lorg/json/JSONArray;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v1    # "index":I
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/onlineconfig/OpNavBarColorConfig;->addVerifyProperty()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Get nav bar color online config error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpNavBarColorConfig"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpNavBarColorConfig"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    nop

    .line 147
    :goto_4
    return-void
.end method

.method public resolveOnlineConfig()V
    .locals 2

    .line 101
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/onlineconfig/-$$Lambda$OpNavBarColorConfig$NDf-eQ0ss8Pz7BMuhsS9G2G9CXs;

    invoke-direct {v1, p0}, Lcom/oneplus/onlineconfig/-$$Lambda$OpNavBarColorConfig$NDf-eQ0ss8Pz7BMuhsS9G2G9CXs;-><init>(Lcom/oneplus/onlineconfig/OpNavBarColorConfig;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

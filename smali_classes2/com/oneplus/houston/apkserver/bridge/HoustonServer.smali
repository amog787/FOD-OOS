.class public Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
.super Lcom/oneplus/houston/common/client/HoustonServiceNative;
.source "HoustonServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ServiceConnectedCallback;,
        Lcom/oneplus/houston/apkserver/bridge/HoustonServer$HoustonGlobalConfigUpdater;,
        Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;,
        Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;,
        Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;
    }
.end annotation


# static fields
.field public static final ENABLE_LAUNCHTIME_COLLECTOR:I = 0x1

.field private static final HOUSTON_GLOBAL_CONFIG:Ljava/lang/String; = "HoustonGlobalConfig"

.field private static final MSG_INIT_ONLINECONFIG:I = 0x1

.field private static final MSG_MARK_ACTIVITY_DISPLAYED:I = 0x5

.field private static final MSG_MARK_PROCESS_STARTED:I = 0x3

.field private static final MSG_REMOVE_PROCESS:I = 0x6

.field private static final MSG_REPORT_SYSTEM_UI_PID:I = 0x8

.field private static final MSG_RESET_ASSERT_SCREEN:I = 0x7

.field private static final MSG_THREEE_HOURS_TIMEOUT:I = 0x0

.field private static final MSG_UPDATE_FRONT_PKG:I = 0x4

.field private static final MSG_UPDATE_SCREEN_STATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HoustonServer"

.field public static mGlobalConfig:I

.field private static mInternalForSaveMdm:I

.field private static sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;


# instance fields
.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private final mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

.field private final mContext:Landroid/content/Context;

.field private mDropbox:Landroid/os/DropBoxManager;

.field private final mLooper:Landroid/os/Looper;

.field private final mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

.field private volatile timeReached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    .line 58
    const v0, 0xa4cb80

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mInternalForSaveMdm:I

    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 3
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Lcom/oneplus/houston/common/client/HoustonServiceNative;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    .line 97
    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mContext:Landroid/content/Context;

    .line 98
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 99
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HoustonServer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 101
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mLooper:Landroid/os/Looper;

    .line 102
    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    .line 103
    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p2, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    .line 104
    new-instance v2, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$1;

    invoke-direct {v2, p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$1;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->setConnectedCallback(Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ServiceConnectedCallback;)V

    .line 110
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->initDefaultConfig()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    .line 47
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    .line 47
    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    .line 47
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    .line 47
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mAms:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    .line 47
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->resetCollectorTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->parseConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private generateMessage(Lcom/oneplus/houston/common/client/Event;)Ljava/lang/String;
    .locals 7
    .param p1, "event"    # Lcom/oneplus/houston/common/client/Event;

    .line 169
    const-string v0, "message"

    const-string v1, "activityName"

    const-string v2, "packageName"

    const-string v3, "timestamp"

    const-string v4, "reason"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 171
    .local v5, "object":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1, v4}, Lcom/oneplus/houston/common/client/Event;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    invoke-virtual {p1, v3}, Lcom/oneplus/houston/common/client/Event;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    invoke-virtual {p1, v2}, Lcom/oneplus/houston/common/client/Event;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    invoke-virtual {p1, v1}, Lcom/oneplus/houston/common/client/Event;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    invoke-virtual {p1, v0}, Lcom/oneplus/houston/common/client/Event;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Lorg/json/JSONException;
    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
    .locals 1

    .line 77
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    return-object v0
.end method

.method private initDefaultConfig()V
    .locals 1

    .line 117
    sget v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    .line 118
    return-void
.end method

.method private parseConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 384
    if-nez p1, :cond_0

    .line 385
    return-void

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HoustonGlobalConfigUpdater jsonArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonServer"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_12

    .line 390
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 391
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "name":Ljava/lang/String;
    const-string v4, "module_enable_launchtime_collector"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const-string v6, "value"

    if-eqz v4, :cond_2

    .line 393
    :try_start_1
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 394
    sget v4, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    const/4 v5, 0x1

    or-int/2addr v4, v5

    sput v4, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    .line 395
    iput-boolean v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    goto/16 :goto_1

    .line 397
    :cond_1
    sget v4, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    and-int/lit8 v4, v4, -0x2

    sput v4, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    goto/16 :goto_1

    .line 399
    :cond_2
    const-string v4, "threshold_for_cold_launch_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 400
    nop

    .line 401
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdLaunchThreshold:I

    goto/16 :goto_1

    .line 402
    :cond_3
    const-string v4, "threshold_for_warm_launch_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 403
    nop

    .line 404
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmLaunchThreshold:I

    goto/16 :goto_1

    .line 405
    :cond_4
    const-string v4, "threshold_for_save_mdm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 406
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mInternalForSaveMdm:I

    goto/16 :goto_1

    .line 407
    :cond_5
    const-string v4, "perf_monitor_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 408
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 409
    .local v4, "enable":Z
    const-string v5, "persist.sys.perf.monitor.enable"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    if-eqz v4, :cond_6

    .line 411
    iget-object v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->systemReady()V

    .line 412
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->resetCollectorTimer()V

    .line 414
    .end local v4    # "enable":Z
    :cond_6
    goto/16 :goto_1

    :cond_7
    const-string v4, "perf_slow_binder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 415
    const-string v4, "debug.perf.slow.binder"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 416
    :cond_8
    const-string v4, "perf_slow_message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 417
    const-string v4, "debug.perf.slow.message"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 418
    :cond_9
    const-string v4, "perf_monitor_datail"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 419
    const-string v4, "persist.sys.perf.monitor.detail"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 420
    :cond_a
    const-string v4, "perf_input_app_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 421
    const-string v4, "persist.sys.input.app.timeout"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 422
    :cond_b
    const-string v4, "perf_input_ss_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 423
    const-string v4, "persist.sys.input.ss.timeout"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 424
    :cond_c
    const-string v4, "jank_threshold_start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 425
    const-string v4, "persist.sys.jank.threshold.start"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 426
    :cond_d
    const-string v4, "jank_threshold_end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 427
    const-string v4, "persist.sys.jank.threshold.end"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 428
    :cond_e
    const-string v4, "jank_threshold_continuous"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 429
    const-string v4, "persist.sys.jank.continuous.threshold"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 430
    :cond_f
    const-string v4, "jank_intermittent_ratio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 431
    const-string v4, "persist.sys.jank.intermittent.ratio"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 432
    :cond_10
    const-string v4, "trace_engine_atrace_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 433
    const-string v4, "persist.sys.trace.engine.atrace"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 389
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "name":Ljava/lang/String;
    :cond_11
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 438
    .end local v0    # "index":I
    :cond_12
    goto :goto_2

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static publish(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    .line 84
    :cond_0
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    const-string v1, "houston_server"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 85
    return-void
.end method

.method private resetCollectorTimer()V
    .locals 4

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    .line 134
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    sget v2, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mInternalForSaveMdm:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 247
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 248
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 249
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    invoke-virtual {v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump Houston Info from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    return-void

    .line 228
    :cond_0
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p3, v0

    .line 229
    const-string v2, "--fps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v0, p3, v0

    const-string v1, "--ai_config_controller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLogLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/houston/common/client/utils/Logger;->mLogLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mGlobalConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mColdLaunchThreshold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdLaunchThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWarmLaunchThreshold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmLaunchThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mInternalForSaveMdm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mInternalForSaveMdm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0, p1, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void
.end method

.method public isBinderAlive()Z
    .locals 1

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 191
    return-void
.end method

.method public onResult(Lcom/oneplus/houston/common/client/Event;)V
    .locals 0
    .param p1, "event"    # Lcom/oneplus/houston/common/client/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    return-void
.end method

.method public preBindApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V
    .locals 9
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "bindApplicationDelayMs"    # I

    .line 242
    new-instance v8, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, v8}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sendMessage(ILjava/lang/Object;)V

    .line 244
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 303
    return-void
.end method

.method public reportActivityDisplayed(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "bindApplicationDelayMs"    # I
    .param p4, "launchTime"    # I
    .param p5, "componentName"    # Ljava/lang/String;

    .line 277
    sget v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 278
    const/4 v0, 0x5

    new-instance v9, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$ComponentTime;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-direct {p0, v0, v9}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sendMessage(ILjava/lang/Object;)V

    .line 282
    :cond_0
    return-void
.end method

.method public scheduleProcessEvent(I)V
    .locals 1
    .param p1, "arg"    # I

    .line 208
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->scheduleProcessEvent(I)V

    .line 209
    return-void
.end method

.method public scheduleProcessEvent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->scheduleProcessEvent(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method public scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/oneplus/houston/common/client/Event;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleProcessEvent event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/houston/common/client/Event;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonServer"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    .line 214
    return-void
.end method

.method public sendCommand(I)V
    .locals 0
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public sendCommand(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    return-void
.end method

.method public sendCommand(Lcom/oneplus/houston/common/client/Event;)V
    .locals 5
    .param p1, "event"    # Lcom/oneplus/houston/common/client/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HoutonServer get command event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonServer"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p1}, Lcom/oneplus/houston/common/client/Event;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bug_report"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mDropbox:Landroid/os/DropBoxManager;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mDropbox:Landroid/os/DropBoxManager;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mDropbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->generateMessage(Lcom/oneplus/houston/common/client/Event;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "orm_outlier"

    invoke-virtual {v0, v2, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/houston/common/client/Event;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace_assert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Jank reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reason"

    invoke-virtual {p1, v1}, Lcom/oneplus/houston/common/client/Event;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\nTimeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "timestamp"

    invoke-virtual {p1, v1}, Lcom/oneplus/houston/common/client/Event;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\nPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Lcom/oneplus/houston/common/client/Event;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\nActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "activityName"

    invoke-virtual {p1, v1}, Lcom/oneplus/houston/common/client/Event;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\nMessages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "message"

    invoke-virtual {p1, v1}, Lcom/oneplus/houston/common/client/Event;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Lcom/oem/debug/OPAssertInjector;->showMessage(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    const/4 v2, 0x7

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method public setFront(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 298
    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sendMessage(ILjava/lang/Object;)V

    .line 299
    return-void
.end method

.method public systemReady()V
    .locals 2

    .line 88
    const-string v0, "persist.sys.perf.monitor.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->systemReady()V

    .line 90
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->resetCollectorTimer()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->sendEmptyMessage(I)Z

    .line 93
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->resetCollectorTimer()V

    .line 94
    return-void
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 195
    invoke-super {p0, p1, p2}, Lcom/oneplus/houston/common/client/HoustonServiceNative;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0
.end method

.method public updateScreenState(Z)V
    .locals 2
    .param p1, "isScreenOn"    # Z

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sendMessage(ILjava/lang/Object;)V

    .line 130
    return-void
.end method

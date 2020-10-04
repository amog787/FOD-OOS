.class public Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
.super Lcom/oneplus/houston/common/client/HoustonServiceNative;
.source "HoustonServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private static final MSG_THREEE_HOURS_TIMEOUT:I = 0x0

.field private static final MSG_UPDATE_FRONT_PKG:I = 0x4

.field private static final MSG_UPDATE_SCREEN_STATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HoustonServer"

.field public static mGlobalConfig:I

.field private static mInternalForSaveMdm:I

.field private static sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;


# instance fields
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

    .line 57
    const v0, 0xa4cb80

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mInternalForSaveMdm:I

    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Lcom/oneplus/houston/common/client/HoustonServiceNative;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    .line 95
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HoustonServer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 98
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mLooper:Landroid/os/Looper;

    .line 99
    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    .line 100
    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    .line 47
    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    .line 47
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    .line 47
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    .line 47
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->resetCollectorTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/houston/apkserver/bridge/HoustonServer;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->parseConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;
    .locals 1

    .line 74
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    return-object v0
.end method

.method private initDefaultConfig()V
    .locals 1

    .line 108
    sget v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    .line 109
    return-void
.end method

.method private parseConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 336
    if-nez p1, :cond_0

    .line 337
    return-void

    .line 339
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

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x0

    move v2, v0

    .local v2, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 342
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 343
    .local v3, "json":Lorg/json/JSONObject;
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "name":Ljava/lang/String;
    const-string v5, "module_enable_launchtime_collector"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "value"

    if-eqz v5, :cond_2

    .line 345
    :try_start_1
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 346
    sget v5, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    sput v5, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    .line 347
    iput-boolean v6, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    goto/16 :goto_1

    .line 349
    :cond_1
    sget v5, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    and-int/lit8 v5, v5, -0x2

    sput v5, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    goto/16 :goto_1

    .line 351
    :cond_2
    const-string v5, "threshold_for_cold_launch_time"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 352
    nop

    .line 353
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdLaunchThreshold:I

    goto/16 :goto_1

    .line 354
    :cond_3
    const-string v5, "threshold_for_warm_launch_time"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 355
    nop

    .line 356
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmLaunchThreshold:I

    goto/16 :goto_1

    .line 357
    :cond_4
    const-string v5, "threshold_for_save_mdm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 358
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mInternalForSaveMdm:I

    goto/16 :goto_1

    .line 359
    :cond_5
    const-string v5, "perf_monitor_enabled"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 360
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 361
    .local v5, "enable":Z
    const-string v7, "persist.sys.perf.monitor.enable"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-eqz v5, :cond_6

    .line 363
    iget-object v6, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->systemReady()V

    .line 364
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->resetCollectorTimer()V

    .line 366
    .end local v5    # "enable":Z
    :cond_6
    goto :goto_1

    :cond_7
    const-string v5, "perf_slow_binder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 367
    const-string v5, "debug.perf.slow.binder"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 368
    :cond_8
    const-string v5, "perf_slow_message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 369
    const-string v5, "debug.perf.slow.message"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 370
    :cond_9
    const-string v5, "perf_monitor_datail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 371
    const-string v5, "persist.sys.perf.monitor.detail"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 372
    :cond_a
    const-string v5, "perf_input_app_time"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 373
    const-string v5, "persist.sys.input.app.timeout"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 374
    :cond_b
    const-string v5, "perf_input_ss_time"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 375
    const-string v5, "persist.sys.input.ss.timeout"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "name":Ljava/lang/String;
    :cond_c
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 380
    .end local v2    # "index":I
    :cond_d
    goto :goto_2

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static publish(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    invoke-direct {v0, p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    .line 82
    :cond_0
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    const-string v1, "houston_server"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 83
    return-void
.end method

.method private resetCollectorTimer()V
    .locals 4

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->timeReached:Z

    .line 125
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    sget v2, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mInternalForSaveMdm:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 127
    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 213
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 214
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 215
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    invoke-virtual {v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump Houston Info from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
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

    .line 190
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    return-void

    .line 194
    :cond_0
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p3, v0

    .line 195
    const-string v2, "--fps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v0, p3, v0

    const-string v1, "--ai_config_controller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
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

    .line 197
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

    .line 200
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0, p1, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void
.end method

.method public isBinderAlive()Z
    .locals 1

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 157
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

    .line 152
    return-void
.end method

.method public preBindApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V
    .locals 9
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "bindApplicationDelayMs"    # I

    .line 208
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

    .line 210
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    return-void
.end method

.method public reportActivityDisplayed(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "bindApplicationDelayMs"    # I
    .param p4, "launchTime"    # I
    .param p5, "componentName"    # Ljava/lang/String;

    .line 243
    sget v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 244
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

    .line 248
    :cond_0
    return-void
.end method

.method public scheduleProcessEvent(I)V
    .locals 1
    .param p1, "arg"    # I

    .line 174
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->scheduleProcessEvent(I)V

    .line 175
    return-void
.end method

.method public scheduleProcessEvent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 183
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->scheduleProcessEvent(Landroid/content/Intent;)V

    .line 184
    return-void
.end method

.method public scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/oneplus/houston/common/client/Event;

    .line 178
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

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    .line 180
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

    .line 131
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

    .line 135
    return-void
.end method

.method public sendCommand(Lcom/oneplus/houston/common/client/Event;)V
    .locals 3
    .param p1, "event"    # Lcom/oneplus/houston/common/client/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HoutonServer get command event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonServer"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/houston/common/client/Event;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bug_report"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mDropbox:Landroid/os/DropBoxManager;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mDropbox:Landroid/os/DropBoxManager;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mDropbox:Landroid/os/DropBoxManager;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "orm_outlier"

    invoke-virtual {v0, v2, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_1
    return-void
.end method

.method public setFront(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 264
    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$FrontActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sendMessage(ILjava/lang/Object;)V

    .line 265
    return-void
.end method

.method public systemReady()V
    .locals 2

    .line 86
    const/4 v0, 0x1

    const-string v1, "persist.sys.perf.monitor.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mClient:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->systemReady()V

    .line 88
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->resetCollectorTimer()V

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mMainHandler:Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;

    invoke-virtual {v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->resetCollectorTimer()V

    .line 92
    return-void
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I

    .line 161
    invoke-super {p0, p1, p2}, Lcom/oneplus/houston/common/client/HoustonServiceNative;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0
.end method

.method public updateScreenState(Z)V
    .locals 2
    .param p1, "isScreenOn"    # Z

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->sendMessage(ILjava/lang/Object;)V

    .line 121
    return-void
.end method

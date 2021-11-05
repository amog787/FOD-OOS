.class public Lcom/android/server/am/OomAdjusterInjector;
.super Ljava/lang/Object;
.source "OomAdjusterInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjusterInjector$OomAdjusterConfigUpdater;
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final DEBUG_PROCESS_ADJ_CONTROL:Z

.field public static final OOMADJUSTER_CONFIG_NAME:Ljava/lang/String; = "OomAdjuster"

.field private static final PROCESS_ADJ_CONTROL_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OomAdjusterInjector"

.field public static mNumHighUsed:I

.field public static mNumRecentTasks:I

.field public static mStartOptAdj:I

.field private static opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

.field private static sBServiceLimitWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDebugOptAdj:Z

.field public static sEnableOptAdj:Z

.field public static sEnableOptCameraAdj:Z

.field public static sEnableTuneFgService:Z

.field private static sEndIndex:I

.field private static sFgServiceBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOomAdjusterInjector:Lcom/android/server/am/OomAdjusterInjector;

.field private static sPersistBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecentTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sStartIndex:I

.field private static sTunedAdj:I


# instance fields
.field private mConfigHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mOomAdjusterConfigObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/OomAdjusterInjector;->mNumRecentTasks:I

    .line 48
    const/4 v1, 0x2

    sput v1, Lcom/android/server/am/OomAdjusterInjector;->mNumHighUsed:I

    .line 49
    const/16 v1, 0x320

    sput v1, Lcom/android/server/am/OomAdjusterInjector;->mStartOptAdj:I

    .line 51
    const/4 v1, 0x1

    sput v1, Lcom/android/server/am/OomAdjusterInjector;->sStartIndex:I

    .line 52
    sput v1, Lcom/android/server/am/OomAdjusterInjector;->sEndIndex:I

    .line 53
    const-string/jumbo v2, "persist.sys.debugopt.adj"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    .line 54
    const-string/jumbo v2, "persist.sys.enableopt.adj"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptAdj:Z

    .line 55
    const-string/jumbo v2, "persist.sys.enableoptcamera.adj"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptCameraAdj:Z

    .line 56
    const-string/jumbo v2, "persist.sys.enableopt.fgservice"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OomAdjusterInjector;->sEnableTuneFgService:Z

    .line 57
    const/16 v2, 0x325

    sput v2, Lcom/android/server/am/OomAdjusterInjector;->sTunedAdj:I

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/am/OomAdjusterInjector;->sFgServiceBlackList:Ljava/util/ArrayList;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/am/OomAdjusterInjector;->sPersistBlackList:Ljava/util/ArrayList;

    .line 61
    new-instance v2, Lcom/android/server/am/OomAdjusterInjector$1;

    invoke-direct {v2}, Lcom/android/server/am/OomAdjusterInjector$1;-><init>()V

    sput-object v2, Lcom/android/server/am/OomAdjusterInjector;->sBServiceLimitWhiteList:Ljava/util/ArrayList;

    .line 74
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v2, Lcom/android/server/am/OomAdjusterInjector;->DEBUG_ONEPLUS:Z

    .line 75
    nop

    .line 76
    const-string v2, "OomAdjusterInjector"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->DEBUG_PROCESS_ADJ_CONTROL:Z

    .line 77
    new-array v0, v1, [I

    const/16 v1, 0xad

    aput v1, v0, v3

    .line 78
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->PROCESS_ADJ_CONTROL_ENABLED:Z

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterInjector;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OomAdjusterInjector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OomAdjusterInjector;->mConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OomAdjusterInjector$OomAdjusterConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OomAdjusterInjector$OomAdjusterConfigUpdater;-><init>(Lcom/android/server/am/OomAdjusterInjector;)V

    const-string v4, "OomAdjuster"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterInjector;->mOomAdjusterConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 97
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 98
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "oomadjuster"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterInjector;->mHandlerThread:Landroid/os/HandlerThread;

    .line 99
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v0, Lcom/android/server/am/OomAdjusterInjector$2;

    iget-object v1, p0, Lcom/android/server/am/OomAdjusterInjector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjusterInjector$2;-><init>(Lcom/android/server/am/OomAdjusterInjector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterInjector;->mConfigHandler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OomAdjusterInjector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OomAdjusterInjector;

    .line 44
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static adjustProcessAdj(Ljava/lang/String;I)I
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "curAdj"    # I

    .line 166
    sget-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->DEBUG_PROCESS_ADJ_CONTROL:Z

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustProcessAdj(), packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", curAdj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OomAdjusterInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    move v0, p1

    .line 173
    .local v0, "adj":I
    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->PROCESS_ADJ_CONTROL_ENABLED:Z

    if-eqz v1, :cond_2

    .line 174
    sget-object v1, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    if-nez v1, :cond_1

    .line 175
    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_process_adj_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v1}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IOpProcessAdjControl;

    sput-object v1, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    .line 179
    :cond_1
    sget-object v1, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    if-eqz v1, :cond_2

    .line 180
    invoke-interface {v1, p0, p1}, Lcom/android/server/am/IOpProcessAdjControl;->forImportant(Ljava/lang/String;I)I

    move-result v0

    .line 181
    sget-object v1, Lcom/android/server/am/OomAdjusterInjector;->opProcessAdjControl:Lcom/android/server/am/IOpProcessAdjControl;

    invoke-interface {v1, p0, v0}, Lcom/android/server/am/IOpProcessAdjControl;->forForeground(Ljava/lang/String;I)I

    move-result v0

    .line 185
    :cond_2
    return v0
.end method

.method public static getBServiceLimitWhiteList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sBServiceLimitWhiteList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 322
    return-object v0

    .line 324
    :cond_0
    const-string v0, "OomAdjusterInjector"

    const-string/jumbo v1, "sBServiceLimitWhiteList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/OomAdjusterInjector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 89
    invoke-static {p0}, Lcom/android/server/am/OomAdjusterInjector;->initOomAdjusterInjector(Landroid/content/Context;)V

    .line 91
    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sOomAdjusterInjector:Lcom/android/server/am/OomAdjusterInjector;

    return-object v0
.end method

.method public static initOomAdjusterInjector(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 83
    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sOomAdjusterInjector:Lcom/android/server/am/OomAdjusterInjector;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/server/am/OomAdjusterInjector;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjusterInjector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/OomAdjusterInjector;->sOomAdjusterInjector:Lcom/android/server/am/OomAdjusterInjector;

    .line 86
    :cond_0
    return-void
.end method

.method public static resolveConfig(Lorg/json/JSONArray;)V
    .locals 11
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .line 342
    if-nez p0, :cond_0

    .line 343
    const-string v0, "OomAdjusterInjector"

    const-string v1, "[OnlineConfig] OomAdjusterInjector jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 347
    :cond_0
    :try_start_0
    const-class v0, Lcom/android/server/am/OomAdjusterInjector;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 349
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 350
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "name":Ljava/lang/String;
    const-string v4, "enable_opt_adj"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 352
    const-string v4, "OomAdjusterInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before enablePolicy : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptAdj:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptAdj:Z

    .line 354
    const-string v4, "OomAdjusterInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enablePolicy : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptAdj:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 355
    :cond_1
    const-string/jumbo v4, "opt_adj_num_recent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 356
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/OomAdjusterInjector;->mNumRecentTasks:I

    .line 357
    const-string v4, "OomAdjusterInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NUM_OPT_ADJ_RECENT_TASKS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OomAdjusterInjector;->mNumRecentTasks:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 358
    :cond_2
    const-string/jumbo v4, "opt_adj_num_high"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 359
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/OomAdjusterInjector;->mNumHighUsed:I

    .line 360
    const-string v4, "OomAdjusterInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NUM_OPT_ADJ_HIGH_USED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OomAdjusterInjector;->mNumHighUsed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 361
    :cond_3
    const-string/jumbo v4, "opt_adj_start_adj"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 362
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/OomAdjusterInjector;->mStartOptAdj:I

    .line 363
    const-string v4, "OomAdjusterInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartOptAdj : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OomAdjusterInjector;->mStartOptAdj:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 364
    :cond_4
    const-string/jumbo v4, "opt_adj_tuned_fg_adj"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 365
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/OomAdjusterInjector;->sTunedAdj:I

    .line 366
    const-string v4, "OomAdjusterInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TunedFgServiceAdj : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OomAdjusterInjector;->sTunedAdj:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 367
    :cond_5
    const-string/jumbo v4, "opt_adj_fgs_black"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 368
    sget-object v4, Lcom/android/server/am/OomAdjusterInjector;->sFgServiceBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 369
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 370
    .local v4, "listJsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 371
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, "proc":Ljava/lang/String;
    const-string v7, "OomAdjusterInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is added to fg service opt list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-object v7, Lcom/android/server/am/OomAdjusterInjector;->sFgServiceBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    nop

    .end local v6    # "proc":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 375
    .end local v4    # "listJsonArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_6
    goto/16 :goto_5

    :cond_7
    const-string/jumbo v4, "opt_bservice_limit_white"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 376
    sget-object v4, Lcom/android/server/am/OomAdjusterInjector;->sBServiceLimitWhiteList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 377
    :try_start_2
    sget-object v5, Lcom/android/server/am/OomAdjusterInjector;->sBServiceLimitWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 378
    const-string/jumbo v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 379
    .local v5, "listJsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 380
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 381
    .local v7, "pkg":Ljava/lang/String;
    const-string v8, "OomAdjusterInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is added to bservice limit white list"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget-object v8, Lcom/android/server/am/OomAdjusterInjector;->sBServiceLimitWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    nop

    .end local v7    # "pkg":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 384
    .end local v5    # "listJsonArray":Lorg/json/JSONArray;
    .end local v6    # "i":I
    :cond_8
    monitor-exit v4

    goto/16 :goto_5

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "jsonArray":Lorg/json/JSONArray;
    :try_start_3
    throw v5

    .line 385
    .restart local p0    # "jsonArray":Lorg/json/JSONArray;
    :cond_9
    const-string/jumbo v4, "opt_adj_tune_fgservice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 386
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OomAdjusterInjector;->sEnableTuneFgService:Z

    .line 387
    const-string v4, "OomAdjusterInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnableTuneFgService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OomAdjusterInjector;->sEnableTuneFgService:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 388
    :cond_a
    const-string/jumbo v4, "opt_adj_persist_black"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 389
    sget-object v4, Lcom/android/server/am/OomAdjusterInjector;->sPersistBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 390
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 391
    .restart local v4    # "listJsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 392
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 393
    .local v6, "proc":Ljava/lang/String;
    const-string v7, "OomAdjusterInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is added to persist opt list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-object v7, Lcom/android/server/am/OomAdjusterInjector;->sPersistBlackList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    nop

    .end local v6    # "proc":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v4    # "listJsonArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_b
    goto :goto_4

    .line 396
    :cond_c
    const-string/jumbo v4, "opt_adj_camera"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 397
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptCameraAdj:Z

    .line 398
    const-string v4, "OomAdjusterInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnableOptCameraAdj : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptCameraAdj:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 396
    :cond_d
    :goto_4
    nop

    .line 348
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "name":Ljava/lang/String;
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 401
    .end local v1    # "index":I
    :cond_e
    const-string v1, "OomAdjusterInjector"

    const-string v2, "[OnlineConfig] OomAdjusterInjector updated complete"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    monitor-exit v0

    .line 405
    goto :goto_6

    .line 402
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "jsonArray":Lorg/json/JSONArray;
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 403
    .restart local p0    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolve error message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OomAdjusterInjector"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method private static setHighUsedAdj(Lcom/android/server/am/ProcessRecord;)V
    .locals 12
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 270
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doGetHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 271
    .local v1, "highUsedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v2, "targetHighUsed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 274
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    .local v4, "curHighUsed":Ljava/lang/String;
    sget-object v5, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 276
    .local v5, "recentTaskSize":I
    const/4 v6, 0x0

    .line 278
    .local v6, "isDuplicate":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    sget v8, Lcom/android/server/am/OomAdjusterInjector;->sEndIndex:I

    if-ge v7, v8, :cond_2

    .line 279
    sget-object v8, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 280
    .local v8, "top":Landroid/content/ComponentName;
    sget-object v9, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 282
    .local v9, "real":Landroid/content/ComponentName;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 283
    const/4 v6, 0x1

    .line 284
    goto :goto_2

    .line 285
    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 286
    const/4 v6, 0x1

    .line 287
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "top is null : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {v11}, Landroid/app/ActivityManager$RecentTaskInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "OomAdjusterInjector"

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    goto :goto_2

    .line 278
    .end local v8    # "top":Landroid/content/ComponentName;
    .end local v9    # "real":Landroid/content/ComponentName;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 291
    .end local v7    # "j":I
    :cond_2
    :goto_2
    if-nez v6, :cond_4

    .line 292
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    const-class v7, Lcom/android/server/am/OomAdjusterInjector;

    monitor-enter v7

    .line 294
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget v9, Lcom/android/server/am/OomAdjusterInjector;->mNumHighUsed:I

    if-lt v8, v9, :cond_3

    .line 295
    monitor-exit v7

    goto :goto_4

    .line 297
    :cond_3
    monitor-exit v7

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 273
    .end local v4    # "curHighUsed":Ljava/lang/String;
    .end local v5    # "recentTaskSize":I
    .end local v6    # "isDuplicate":Z
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 300
    .end local v3    # "i":I
    :cond_5
    :goto_4
    sget-boolean v3, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v3, :cond_6

    .line 301
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 302
    .local v4, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "targetHighUsed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OomAdjusterInjector"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v4    # "str":Ljava/lang/String;
    goto :goto_5

    .line 305
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 306
    .restart local v4    # "str":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v0

    :goto_7
    if-ge v7, v6, :cond_9

    aget-object v8, v5, v7

    .line 307
    .local v8, "pkg":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 309
    sget v0, Lcom/android/server/am/OomAdjusterInjector;->mStartOptAdj:I

    sget v3, Lcom/android/server/am/OomAdjusterInjector;->mNumRecentTasks:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 310
    sget-boolean v0, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v0, :cond_7

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set high used "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to ADJ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OomAdjusterInjector"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_7
    return-void

    .line 306
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 316
    .end local v4    # "str":Ljava/lang/String;
    :cond_9
    goto :goto_6

    .line 317
    :cond_a
    return-void
.end method

.method public static setOptimizationAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;)V
    .locals 5
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "hasSet":Z
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v2, 0x384

    if-lt v1, v2, :cond_4

    .line 193
    sget v1, Lcom/android/server/am/OomAdjusterInjector;->mNumRecentTasks:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v4

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    .line 195
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v1, :cond_1

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastMemoryLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OomAdjusterInjector"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    iget v1, p1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 202
    invoke-static {p0, p1}, Lcom/android/server/am/OomAdjusterInjector;->setRecentTaskAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;)Z

    goto :goto_0

    .line 203
    :cond_2
    iget v1, p1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    if-nez v1, :cond_3

    .line 204
    invoke-static {p0, p1}, Lcom/android/server/am/OomAdjusterInjector;->setRecentTaskAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    .line 205
    if-nez v0, :cond_4

    .line 206
    invoke-static {p0}, Lcom/android/server/am/OomAdjusterInjector;->setHighUsedAdj(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-static {p0}, Lcom/android/server/am/OomAdjusterInjector;->setSecondTask(Lcom/android/server/am/ProcessRecord;)V

    .line 212
    :cond_4
    :goto_0
    return-void
.end method

.method private static setRecentTaskAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .locals 10
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 240
    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lcom/android/server/am/OomAdjusterInjector;->sStartIndex:I

    if-le v0, v2, :cond_6

    .line 242
    sget v0, Lcom/android/server/am/OomAdjusterInjector;->mNumRecentTasks:I

    add-int/2addr v2, v0

    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v2, v0, :cond_0

    .line 243
    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/server/am/OomAdjusterInjector;->sStartIndex:I

    sget v2, Lcom/android/server/am/OomAdjusterInjector;->mNumRecentTasks:I

    add-int/2addr v0, v2

    :goto_0
    sput v0, Lcom/android/server/am/OomAdjusterInjector;->sEndIndex:I

    .line 244
    sget v0, Lcom/android/server/am/OomAdjusterInjector;->sStartIndex:I

    .local v0, "i":I
    :goto_1
    sget v2, Lcom/android/server/am/OomAdjusterInjector;->sEndIndex:I

    if-ge v0, v2, :cond_6

    .line 245
    sget-object v2, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 246
    .local v2, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    const-string v4, "OomAdjusterInjector"

    if-eqz v3, :cond_4

    .line 247
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 249
    .local v8, "pkg":Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 251
    sget v1, Lcom/android/server/am/OomAdjusterInjector;->mStartOptAdj:I

    sget v5, Lcom/android/server/am/OomAdjusterInjector;->sStartIndex:I

    sub-int v5, v0, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 252
    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v1, :cond_1

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Recent task "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to ADJ "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_1
    return v6

    .line 248
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 258
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 259
    :cond_4
    sget-boolean v3, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v3, :cond_5

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Top activity is null + "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RecentTaskInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v2    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 265
    .end local v0    # "i":I
    :cond_6
    return v1
.end method

.method private static setSecondTask(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 216
    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/android/server/am/OomAdjusterInjector;->sStartIndex:I

    if-le v0, v1, :cond_4

    .line 217
    sget-object v0, Lcom/android/server/am/OomAdjusterInjector;->sRecentTasks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 218
    .local v0, "secondTask":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    const-string v2, "OomAdjusterInjector"

    if-eqz v1, :cond_3

    .line 219
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 221
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 223
    sget v3, Lcom/android/server/am/OomAdjusterInjector;->mStartOptAdj:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 224
    sget-boolean v3, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v3, :cond_0

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set the second task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to ADJ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    return-void

    .line 220
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 231
    :cond_3
    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v1, :cond_4

    .line 232
    const-string v1, "The second task\'s top activity is null"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v0    # "secondTask":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_4
    :goto_1
    return-void
.end method

.method public static setTunedAdj(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "top"    # Lcom/android/server/am/ProcessRecord;

    .line 111
    :try_start_0
    const-class v0, Lcom/android/server/am/OomAdjusterInjector;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->sEnableOptCameraAdj:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 114
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v3, "com.oneplus.camera"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v3, "com.oneplus.camera.pictureprocessing"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-lez v1, :cond_0

    .line 116
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 117
    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "OomAdjusterInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is set to adj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " camera is top"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->sEnableTuneFgService:Z

    if-nez v1, :cond_1

    .line 124
    monitor-exit v0

    return-void

    .line 127
    :cond_1
    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 128
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/OomAdjusterInjector;->sFgServiceBlackList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    const-string/jumbo v1, "started-services"

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 130
    sget v1, Lcom/android/server/am/OomAdjusterInjector;->sTunedAdj:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 131
    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    .line 134
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->setCurProcState(I)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->setCurRawProcState(I)V

    .line 136
    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v1, :cond_5

    .line 137
    const-string v1, "OomAdjusterInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is set to adj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to in fgs opt list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 139
    :cond_2
    sget-object v1, Lcom/android/server/am/OomAdjusterInjector;->sPersistBlackList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 140
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget v2, Lcom/android/server/am/OomAdjusterInjector;->sTunedAdj:I

    if-ge v1, v2, :cond_5

    .line 143
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v1, :cond_4

    .line 145
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->isPreviousProcess()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v2, 0x2bc

    if-ge v1, v2, :cond_3

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    .line 148
    :cond_3
    const/16 v1, 0x384

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    goto :goto_0

    .line 151
    :cond_4
    sget v1, Lcom/android/server/am/OomAdjusterInjector;->sTunedAdj:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->modifyRawOomAdj(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 153
    :goto_0
    sget-boolean v1, Lcom/android/server/am/OomAdjusterInjector;->sDebugOptAdj:Z

    if-eqz v1, :cond_5

    .line 154
    const-string v1, "OomAdjusterInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is set to adj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to in persist opt list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_5
    :goto_1
    monitor-exit v0

    .line 162
    goto :goto_2

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p1    # "top":Lcom/android/server/am/ProcessRecord;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    .restart local p0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p1    # "top":Lcom/android/server/am/ProcessRecord;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public forceUpdateOnlineConfig()V
    .locals 3

    .line 330
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OomAdjusterInjector;->mContext:Landroid/content/Context;

    const-string v2, "OomAdjuster"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 331
    .local v0, "adjGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OomAdjusterInjector;->resolveConfig(Lorg/json/JSONArray;)V

    .line 332
    return-void
.end method

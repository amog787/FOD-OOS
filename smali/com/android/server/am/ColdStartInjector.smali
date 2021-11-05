.class public Lcom/android/server/am/ColdStartInjector;
.super Ljava/lang/Object;
.source "ColdStartInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ColdStartInjector$SingleData;,
        Lcom/android/server/am/ColdStartInjector$ColdStartConfigUpdater;
    }
.end annotation


# static fields
.field private static final COLDSTART_ADJ_COUNT:Ljava/lang/String; = "cold_adj_count"

.field public static final COLDSTART_CONFIG_NAME:Ljava/lang/String; = "ColdStart"

.field private static final COLDSTART_COUNT:Ljava/lang/String; = "cold_count"

.field private static final COLDSTART_MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final COLDSTART_MDM_EVENT:Ljava/lang/String; = "cold_start"

.field private static final DEBUG_COLDSTART:Z

.field private static final HOTSTART_COUNT:Ljava/lang/String; = "hot_count"

.field private static final OOM_ADJ:[I

.field private static final TAG:Ljava/lang/String; = "ColdStart"

.field private static final TASK_POSITION_COUNT:Ljava/lang/String; = "task_position_count"

.field private static sEnable:Z

.field private static sEnableMdm:Z

.field private static sInstance:Lcom/android/server/am/ColdStartInjector;

.field private static sReportInterval:J


# instance fields
.field private final mClearHistorySize:I

.field private mConfigHandler:Landroid/os/Handler;

.field private mConfigHandlerThread:Landroid/os/HandlerThread;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mContext:Landroid/content/Context;

.field private mCrashKillProcess:Ljava/lang/String;

.field private mDiedProcessMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mHistoryTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastReportTime:J

.field private final mMaxHistorySize:I

.field private final mMaxPosition:I

.field private mMdmRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ColdStartInjector$SingleData;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskPositionCount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-string/jumbo v0, "persist.sys.coldstart.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    .line 59
    if-eqz v0, :cond_0

    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x5265c00

    :goto_0
    sput-wide v0, Lcom/android/server/am/ColdStartInjector;->sReportInterval:J

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/ColdStartInjector;->sEnable:Z

    .line 61
    sput-boolean v0, Lcom/android/server/am/ColdStartInjector;->sEnableMdm:Z

    .line 77
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ColdStartInjector;->OOM_ADJ:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ColdStartInjector;->mLastReportTime:J

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mCrashKillProcess:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mHistoryTasks:Ljava/util/ArrayList;

    .line 89
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/am/ColdStartInjector;->mMaxHistorySize:I

    .line 90
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/am/ColdStartInjector;->mClearHistorySize:I

    .line 91
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/ColdStartInjector;->mMaxPosition:I

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mTaskPositionCount:Ljava/util/ArrayList;

    .line 117
    iput-object p1, p0, Lcom/android/server/am/ColdStartInjector;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mDiedProcessMap:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mExtraData:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mMdmRecord:Ljava/util/ArrayList;

    .line 121
    invoke-direct {p0}, Lcom/android/server/am/ColdStartInjector;->fillAllMdmData()V

    .line 123
    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mHandlerThread:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "ColdStart"

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mHandlerThread:Landroid/os/HandlerThread;

    .line 125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/ColdStartInjector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mHandler:Landroid/os/Handler;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mConfigHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mConfigHandlerThread:Landroid/os/HandlerThread;

    .line 130
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 131
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mConfigHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mConfigHandler:Landroid/os/Handler;

    .line 133
    :cond_1
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/ColdStartInjector;->mConfigHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/ColdStartInjector$ColdStartConfigUpdater;

    invoke-direct {v4, p0}, Lcom/android/server/am/ColdStartInjector$ColdStartConfigUpdater;-><init>(Lcom/android/server/am/ColdStartInjector;)V

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 134
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ColdStartInjector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ColdStartInjector;

    .line 44
    invoke-direct {p0}, Lcom/android/server/am/ColdStartInjector;->makeAdjString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ColdStartInjector;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ColdStartInjector;

    .line 44
    invoke-direct {p0}, Lcom/android/server/am/ColdStartInjector;->makePositionCountString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ColdStartInjector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ColdStartInjector;

    .line 44
    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/ColdStartInjector;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ColdStartInjector;

    .line 44
    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mMdmRecord:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lorg/json/JSONArray;

    .line 44
    invoke-static {p0}, Lcom/android/server/am/ColdStartInjector;->resolveConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method private addMdmData(I)V
    .locals 3
    .param p1, "adj"    # I

    .line 301
    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mMdmRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ColdStartInjector$SingleData;

    .line 302
    .local v1, "sd":Lcom/android/server/am/ColdStartInjector$SingleData;
    iget v2, v1, Lcom/android/server/am/ColdStartInjector$SingleData;->mAdjRange:I

    if-gt p1, v2, :cond_1

    .line 303
    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMdmData, orig adj : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is put to range "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/ColdStartInjector$SingleData;->mAdjRange:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ColdStart"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/ColdStartInjector$SingleData;->addCount()V

    .line 307
    goto :goto_1

    .line 309
    .end local v1    # "sd":Lcom/android/server/am/ColdStartInjector$SingleData;
    :cond_1
    goto :goto_0

    .line 310
    :cond_2
    :goto_1
    return-void
.end method

.method private addPositionCount(I)V
    .locals 4
    .param p1, "pos"    # I

    .line 385
    const-string v0, "ColdStart"

    if-gez p1, :cond_1

    .line 386
    sget-boolean v1, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v1, :cond_0

    .line 387
    const-string v1, "addPositionCount: Not Found!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    return-void

    .line 391
    :cond_1
    const/16 v1, 0x14

    if-lt p1, v1, :cond_2

    .line 392
    const/16 p1, 0x13

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mTaskPositionCount:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 395
    .local v1, "cnt":I
    iget-object v2, p0, Lcom/android/server/am/ColdStartInjector;->mTaskPositionCount:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-boolean v2, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v2, :cond_3

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPositionCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ColdStartInjector;->mTaskPositionCount:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_3
    return-void
.end method

.method private checkNeedSubmit()V
    .locals 6

    .line 203
    iget-wide v0, p0, Lcom/android/server/am/ColdStartInjector;->mLastReportTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ColdStartInjector;->mLastReportTime:J

    .line 205
    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "ColdStart"

    const-string v1, "Ignore the first report mdm after booting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    return-void

    .line 210
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 211
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/am/ColdStartInjector;->mLastReportTime:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/server/am/ColdStartInjector;->sReportInterval:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 212
    iput-wide v0, p0, Lcom/android/server/am/ColdStartInjector;->mLastReportTime:J

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, "totalCount":I
    iget-object v3, p0, Lcom/android/server/am/ColdStartInjector;->mMdmRecord:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ColdStartInjector$SingleData;

    .line 215
    .local v4, "sd":Lcom/android/server/am/ColdStartInjector$SingleData;
    iget v5, v4, Lcom/android/server/am/ColdStartInjector$SingleData;->mCount:I

    add-int/2addr v2, v5

    .line 216
    .end local v4    # "sd":Lcom/android/server/am/ColdStartInjector$SingleData;
    goto :goto_0

    .line 217
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "countStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/ColdStartInjector;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/am/ColdStartInjector$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/am/ColdStartInjector$1;-><init>(Lcom/android/server/am/ColdStartInjector;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    .end local v2    # "totalCount":I
    .end local v3    # "countStr":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private fillAllMdmData()V
    .locals 6

    .line 138
    sget-object v0, Lcom/android/server/am/ColdStartInjector;->OOM_ADJ:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 139
    .local v3, "adj":I
    iget-object v4, p0, Lcom/android/server/am/ColdStartInjector;->mMdmRecord:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/am/ColdStartInjector$SingleData;

    invoke-direct {v5, v3}, Lcom/android/server/am/ColdStartInjector$SingleData;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v3    # "adj":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method private getHistoryTaskPosition(Ljava/lang/String;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 371
    const/4 v0, -0x1

    .line 372
    .local v0, "pos":I
    const-string v1, "ColdStart"

    if-nez p1, :cond_0

    .line 373
    const-string v2, "getHistoryTaskPosition: package name is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return v0

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ColdStartInjector;->mHistoryTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 377
    if-gez v0, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ColdStartInjector;->mHistoryTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    :goto_0
    move v0, v2

    .line 378
    sget-boolean v2, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v2, :cond_2

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHistoryTaskPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_2
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/ColdStartInjector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 103
    sget-object v0, Lcom/android/server/am/ColdStartInjector;->sInstance:Lcom/android/server/am/ColdStartInjector;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/server/am/ColdStartInjector;

    invoke-direct {v0, p0}, Lcom/android/server/am/ColdStartInjector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/ColdStartInjector;->sInstance:Lcom/android/server/am/ColdStartInjector;

    .line 106
    :cond_0
    sget-object v0, Lcom/android/server/am/ColdStartInjector;->sInstance:Lcom/android/server/am/ColdStartInjector;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 97
    sget-object v0, Lcom/android/server/am/ColdStartInjector;->sInstance:Lcom/android/server/am/ColdStartInjector;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/android/server/am/ColdStartInjector;

    invoke-direct {v0, p0}, Lcom/android/server/am/ColdStartInjector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/ColdStartInjector;->sInstance:Lcom/android/server/am/ColdStartInjector;

    .line 100
    :cond_0
    return-void
.end method

.method private makeAdjString()Ljava/lang/String;
    .locals 5

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mMdmRecord:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 249
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 250
    iget-object v3, p0, Lcom/android/server/am/ColdStartInjector;->mMdmRecord:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ColdStartInjector$SingleData;

    .line 251
    .local v3, "sd":Lcom/android/server/am/ColdStartInjector$SingleData;
    invoke-virtual {v3}, Lcom/android/server/am/ColdStartInjector$SingleData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v4, v1, -0x1

    if-eq v2, v4, :cond_0

    .line 253
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .end local v3    # "sd":Lcom/android/server/am/ColdStartInjector$SingleData;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private makePositionCountString()Ljava/lang/String;
    .locals 5

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mTaskPositionCount:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 404
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ColdStartInjector;->mTaskPositionCount:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_0

    .line 407
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    .end local v2    # "i":I
    :cond_1
    sget-boolean v2, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v2, :cond_2

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makePositionCountString = {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ColdStart"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 416
    iget-object v3, p0, Lcom/android/server/am/ColdStartInjector;->mTaskPositionCount:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 418
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static resolveConfig(Lorg/json/JSONArray;)V
    .locals 7
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .line 273
    const-string v0, "ColdStart"

    if-nez p0, :cond_0

    .line 274
    const-string v1, "[OnlineConfig] ColdStartInjector jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    .line 278
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 279
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 280
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "name":Ljava/lang/String;
    const-string v4, "enable_cold_start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v5, "value"

    if-eqz v4, :cond_1

    .line 282
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before sEnable : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/ColdStartInjector;->sEnable:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/ColdStartInjector;->sEnable:Z

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sEnable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/ColdStartInjector;->sEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 285
    :cond_1
    const-string v4, "enable_cold_start_mdm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before sEnableMdm : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/ColdStartInjector;->sEnableMdm:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/ColdStartInjector;->sEnableMdm:Z

    .line 288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after sEnableMdm : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/ColdStartInjector;->sEnableMdm:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 289
    :cond_2
    const-string v4, "cold_start_mdm_interval"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 290
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/android/server/am/ColdStartInjector;->sReportInterval:J

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sReportInterval : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/am/ColdStartInjector;->sReportInterval:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 294
    .end local v1    # "index":I
    :cond_4
    const-string v1, "[OnlineConfig] ColdStartInjector updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    goto :goto_2

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolve error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public addDiedRecord(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "rec"    # Lcom/android/server/am/ProcessRecord;

    .line 144
    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->sEnable:Z

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 150
    :cond_0
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x64

    const-string v2, "ColdStart"

    if-ge v0, v1, :cond_2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-ltz v0, :cond_2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 152
    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore TOP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    return-void

    .line 158
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mCrashKillProcess:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0xc7

    if-eq v0, v1, :cond_3

    .line 159
    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mDiedProcessMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v0, :cond_3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDiedRecord "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adj : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mCrashKillProcess:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 166
    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v0, :cond_4

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset mCrashKillProcess : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mCrashKillProcess:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_4
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/ColdStartInjector;->mCrashKillProcess:Ljava/lang/String;

    .line 171
    :cond_5
    return-void
.end method

.method public addHistoryTask(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 336
    const-string v0, "ColdStart"

    if-nez p1, :cond_0

    .line 337
    const-string v1, "addHistoryTask: No Activity!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 341
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ColdStartInjector;->mHistoryTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 343
    .local v2, "idx":I
    iget-object v3, p0, Lcom/android/server/am/ColdStartInjector;->mHistoryTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 344
    .local v3, "historySize":I
    if-ltz v2, :cond_2

    .line 345
    iget-object v4, p0, Lcom/android/server/am/ColdStartInjector;->mHistoryTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 346
    iget-object v4, p0, Lcom/android/server/am/ColdStartInjector;->mHistoryTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v2

    .line 348
    .local v4, "pos":I
    sget-boolean v5, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v5, :cond_1

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addHistoryTask: move "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .end local v4    # "pos":I
    :cond_1
    goto :goto_1

    .line 353
    :cond_2
    const/16 v4, 0x3c

    if-lt v3, v4, :cond_4

    .line 354
    const/16 v4, 0xf

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    .line 355
    iget-object v5, p0, Lcom/android/server/am/ColdStartInjector;->mHistoryTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 354
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 357
    .end local v4    # "i":I
    :cond_3
    sget-boolean v4, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v4, :cond_4

    .line 358
    const-string v4, "addHistoryTask: clear 15 from list (reach MAX=60)"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ColdStartInjector;->mHistoryTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :goto_1
    sget-boolean v4, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v4, :cond_5

    .line 366
    invoke-virtual {p0}, Lcom/android/server/am/ColdStartInjector;->dumpHistoryTask()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_5
    return-void
.end method

.method public checkColdStart(Ljava/lang/String;)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;

    .line 174
    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->sEnable:Z

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 179
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/ColdStartInjector;->getHistoryTaskPosition(Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, "pos":I
    invoke-direct {p0, v0}, Lcom/android/server/am/ColdStartInjector;->addPositionCount(I)V

    .line 183
    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mDiedProcessMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 184
    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mDiedProcessMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 185
    .local v1, "diedAdj":I
    sget-boolean v2, Lcom/android/server/am/ColdStartInjector;->DEBUG_COLDSTART:Z

    if-eqz v2, :cond_1

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is cold start, previous adj is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ColdStart"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ColdStartInjector;->mDiedProcessMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-boolean v2, Lcom/android/server/am/ColdStartInjector;->sEnableMdm:Z

    if-eqz v2, :cond_4

    .line 191
    const/16 v2, 0x384

    if-le v1, v2, :cond_2

    .line 192
    const/16 v1, 0x384

    goto :goto_0

    .line 193
    :cond_2
    const/16 v3, 0x320

    if-le v1, v3, :cond_3

    if-ge v1, v2, :cond_3

    .line 194
    const/16 v1, 0x320

    .line 196
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/am/ColdStartInjector;->addMdmData(I)V

    .line 198
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/ColdStartInjector;->checkNeedSubmit()V

    .line 200
    .end local v1    # "diedAdj":I
    :cond_5
    return-void
.end method

.method public dumpHistoryTask()Ljava/lang/String;
    .locals 6

    .line 422
    const-string v0, "===================History Task==================\n"

    .line 423
    .local v0, "history":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mHistoryTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 424
    .local v1, "historySize":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 425
    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v3, v2

    .line 426
    .local v3, "pos":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "History #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ColdStartInjector;->mHistoryTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    .end local v3    # "pos":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 428
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "===================History Task==================\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    return-object v0
.end method

.method public forceUpdateOnlineConfig()V
    .locals 3

    .line 261
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/ColdStartInjector;->mContext:Landroid/content/Context;

    const-string v2, "ColdStart"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    .local v0, "adjGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/ColdStartInjector;->resolveConfig(Lorg/json/JSONArray;)V

    .line 263
    return-void
.end method

.method public setCrashKillProc(Ljava/lang/String;)V
    .locals 1
    .param p1, "proc"    # Ljava/lang/String;

    .line 110
    sget-boolean v0, Lcom/android/server/am/ColdStartInjector;->sEnable:Z

    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ColdStartInjector;->mCrashKillProcess:Ljava/lang/String;

    .line 114
    return-void
.end method

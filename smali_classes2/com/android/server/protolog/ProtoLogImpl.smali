.class public Lcom/android/server/protolog/ProtoLogImpl;
.super Ljava/lang/Object;
.source "ProtoLogImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/protolog/ProtoLogImpl$LogLevel;
    }
.end annotation


# static fields
.field private static final BUFFER_CAPACITY:I = 0x100000

.field private static final LOG_FILENAME:Ljava/lang/String; = "/data/misc/wmtrace/wm_log.pb"

.field private static final LOG_GROUPS:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAGIC_NUMBER_VALUE:J = 0x474f4c4f544f5250L

.field static final PROTOLOG_VERSION:Ljava/lang/String; = "1.0.0"

.field private static final TAG:Ljava/lang/String; = "ProtoLog"

.field private static final VIEWER_CONFIG_FILENAME:Ljava/lang/String; = "/system/etc/protolog.conf.json.gz"

.field static sCacheUpdater:Ljava/lang/Runnable;

.field private static sServiceInstance:Lcom/android/server/protolog/ProtoLogImpl;


# instance fields
.field private final mBuffer:Lcom/android/internal/util/TraceBuffer;

.field private final mLogFile:Ljava/io/File;

.field private mProtoLogEnabled:Z

.field private final mProtoLogEnabledLock:Ljava/lang/Object;

.field private mProtoLogEnabledLockFree:Z

.field private final mViewerConfig:Lcom/android/server/protolog/ProtoLogViewerConfigReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/server/protolog/ProtoLogImpl;->LOG_GROUPS:Ljava/util/TreeMap;

    .line 65
    sget-object v0, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$W1-9aFv3AkmuxF_FKhP3IYl2IMA;->INSTANCE:Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$W1-9aFv3AkmuxF_FKhP3IYl2IMA;

    sput-object v0, Lcom/android/server/protolog/ProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    .line 74
    invoke-static {}, Lcom/android/server/wm/ProtoLogGroup;->values()[Lcom/android/server/wm/ProtoLogGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->addLogGroupEnum([Lcom/android/server/protolog/common/IProtoLogGroup;)V

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/server/protolog/ProtoLogImpl;

    return-void
.end method

.method constructor <init>(Ljava/io/File;ILcom/android/server/protolog/ProtoLogViewerConfigReader;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "bufferCapacity"    # I
    .param p3, "viewerConfig"    # Lcom/android/server/protolog/ProtoLogViewerConfigReader;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/protolog/ProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    .line 295
    iput-object p1, p0, Lcom/android/server/protolog/ProtoLogImpl;->mLogFile:Ljava/io/File;

    .line 296
    new-instance v0, Lcom/android/internal/util/TraceBuffer;

    invoke-direct {v0, p2}, Lcom/android/internal/util/TraceBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/protolog/ProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 297
    iput-object p3, p0, Lcom/android/server/protolog/ProtoLogImpl;->mViewerConfig:Lcom/android/server/protolog/ProtoLogViewerConfigReader;

    .line 298
    return-void
.end method

.method private static addLogGroupEnum([Lcom/android/server/protolog/common/IProtoLogGroup;)V
    .locals 5
    .param p0, "config"    # [Lcom/android/server/protolog/common/IProtoLogGroup;

    .line 68
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 69
    .local v2, "group":Lcom/android/server/protolog/common/IProtoLogGroup;
    sget-object v3, Lcom/android/server/protolog/ProtoLogImpl;->LOG_GROUPS:Ljava/util/TreeMap;

    invoke-interface {v2}, Lcom/android/server/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v2    # "group":Lcom/android/server/protolog/common/IProtoLogGroup;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method public static varargs d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "group"    # Lcom/android/server/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # I
    .param p2, "paramsMask"    # I
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 81
    invoke-static {}, Lcom/android/server/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/server/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->DEBUG:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    .line 82
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/protolog/ProtoLogImpl;->log(Lcom/android/server/protolog/ProtoLogImpl$LogLevel;Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public static varargs e(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "group"    # Lcom/android/server/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # I
    .param p2, "paramsMask"    # I
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 111
    invoke-static {}, Lcom/android/server/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/server/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->ERROR:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    .line 112
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/protolog/ProtoLogImpl;->log(Lcom/android/server/protolog/ProtoLogImpl$LogLevel;Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public static declared-synchronized getSingleInstance()Lcom/android/server/protolog/ProtoLogImpl;
    .locals 5

    const-class v0, Lcom/android/server/protolog/ProtoLogImpl;

    monitor-enter v0

    .line 149
    :try_start_0
    sget-object v1, Lcom/android/server/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/server/protolog/ProtoLogImpl;

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Lcom/android/server/protolog/ProtoLogImpl;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/wmtrace/wm_log.pb"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x100000

    new-instance v4, Lcom/android/server/protolog/ProtoLogViewerConfigReader;

    invoke-direct {v4}, Lcom/android/server/protolog/ProtoLogViewerConfigReader;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;-><init>(Ljava/io/File;ILcom/android/server/protolog/ProtoLogViewerConfigReader;)V

    sput-object v1, Lcom/android/server/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/server/protolog/ProtoLogImpl;

    .line 153
    :cond_0
    sget-object v1, Lcom/android/server/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/server/protolog/ProtoLogImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "group"    # Lcom/android/server/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # I
    .param p2, "paramsMask"    # I
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 97
    invoke-static {}, Lcom/android/server/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/server/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->INFO:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/protolog/ProtoLogImpl;->log(Lcom/android/server/protolog/ProtoLogImpl$LogLevel;Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public static isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z
    .locals 1
    .param p0, "group"    # Lcom/android/server/protolog/common/IProtoLogGroup;

    .line 124
    invoke-interface {p0}, Lcom/android/server/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-interface {p0}, Lcom/android/server/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/server/protolog/ProtoLogImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 124
    :goto_1
    return v0
.end method

.method static synthetic lambda$getStatus$3(Lcom/android/server/protolog/common/IProtoLogGroup;)Z
    .locals 1
    .param p0, "it"    # Lcom/android/server/protolog/common/IProtoLogGroup;

    .line 422
    invoke-interface {p0}, Lcom/android/server/protolog/common/IProtoLogGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/server/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getStatus$4(Lcom/android/server/protolog/common/IProtoLogGroup;)Z
    .locals 1
    .param p0, "it"    # Lcom/android/server/protolog/common/IProtoLogGroup;

    .line 426
    invoke-interface {p0}, Lcom/android/server/protolog/common/IProtoLogGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/server/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$logToProto$1(Ljava/lang/Long;)J
    .locals 2
    .param p0, "i"    # Ljava/lang/Long;

    .line 271
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$logToProto$2(Ljava/lang/Double;)D
    .locals 2
    .param p0, "i"    # Ljava/lang/Double;

    .line 275
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$static$0()V
    .locals 0

    .line 65
    return-void
.end method

.method static logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 459
    const-string v0, "ProtoLog"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    if-eqz p0, :cond_0

    .line 461
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 464
    :cond_0
    return-void
.end method

.method private logToLogcat(Ljava/lang/String;Lcom/android/server/protolog/ProtoLogImpl$LogLevel;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/android/server/protolog/ProtoLogImpl$LogLevel;
    .param p3, "messageHash"    # I
    .param p4, "messageString"    # Ljava/lang/String;
    .param p5, "args"    # [Ljava/lang/Object;

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "message":Ljava/lang/String;
    if-nez p4, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/server/protolog/ProtoLogImpl;->mViewerConfig:Lcom/android/server/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {v1, p3}, Lcom/android/server/protolog/ProtoLogViewerConfigReader;->getViewerString(I)Ljava/lang/String;

    move-result-object p4

    .line 186
    :cond_0
    if-eqz p4, :cond_1

    .line 188
    :try_start_0
    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/IllegalFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 191
    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "ex":Ljava/util/IllegalFormatConversionException;
    const-string v2, "ProtoLog"

    const-string v3, "Invalid ProtoLog format string."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v1    # "ex":Ljava/util/IllegalFormatConversionException;
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN MESSAGE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v2, p5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p5, v3

    .line 196
    .local v4, "o":Ljava/lang/Object;
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/protolog/ProtoLogImpl;->passToLogcat(Ljava/lang/String;Lcom/android/server/protolog/ProtoLogImpl$LogLevel;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private logToProto(II[Ljava/lang/Object;)V
    .locals 20
    .param p1, "messageHash"    # I
    .param p2, "paramsMask"    # I
    .param p3, "args"    # [Ljava/lang/Object;

    .line 231
    move-object/from16 v1, p3

    const-string v2, "ProtoLog"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/protolog/ProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    return-void

    .line 235
    :cond_0
    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    move-object v3, v0

    .line 236
    .local v3, "os":Landroid/util/proto/ProtoOutputStream;
    const-wide v4, 0x20b00000004L

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 237
    .local v4, "token":J
    const-wide v6, 0x10f00000001L

    move/from16 v8, p1

    :try_start_1
    invoke-virtual {v3, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 238
    const-wide v6, 0x10600000002L

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    invoke-virtual {v3, v6, v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 240
    if-eqz v1, :cond_9

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "argIndex":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v6, "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v7, "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v9, "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    array-length v10, v1

    const/4 v11, 0x0

    move v12, v11

    move v11, v0

    .end local v0    # "argIndex":I
    .local v11, "argIndex":I
    :goto_0
    if-ge v12, v10, :cond_5

    aget-object v0, v1, v12

    move-object v13, v0

    .line 246
    .local v13, "o":Ljava/lang/Object;
    move/from16 v14, p2

    invoke-static {v14, v11}, Lcom/android/server/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v15, v0

    .line 248
    .local v15, "type":I
    move-wide/from16 v16, v4

    .end local v4    # "token":J
    .local v16, "token":J
    const-wide v4, 0x20900000003L

    if-eqz v15, :cond_4

    const/4 v0, 0x1

    if-eq v15, v0, :cond_3

    const/4 v0, 0x2

    if-eq v15, v0, :cond_2

    const/4 v0, 0x3

    if-eq v15, v0, :cond_1

    goto :goto_1

    .line 259
    :cond_1
    :try_start_2
    move-object v0, v13

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 256
    :cond_2
    move-object v0, v13

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    goto :goto_1

    .line 253
    :cond_3
    move-object v0, v13

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    goto :goto_1

    .line 250
    :cond_4
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 251
    nop

    .line 266
    :goto_1
    move-object v5, v13

    goto :goto_2

    .line 262
    :catch_0
    move-exception v0

    .line 264
    .local v0, "ex":Ljava/lang/ClassCastException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(INVALID PARAMS_MASK) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v13

    const-wide v13, 0x20900000003L

    .end local v13    # "o":Ljava/lang/Object;
    .local v5, "o":Ljava/lang/Object;
    invoke-virtual {v3, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 265
    const-string v4, "Invalid ProtoLog paramsMask"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    :goto_2
    nop

    .end local v5    # "o":Ljava/lang/Object;
    .end local v15    # "type":I
    add-int/lit8 v11, v11, 0x1

    .line 245
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v16

    goto/16 :goto_0

    .line 269
    .end local v16    # "token":J
    .restart local v4    # "token":J
    :cond_5
    move-wide/from16 v16, v4

    .end local v4    # "token":J
    .restart local v16    # "token":J
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 270
    const-wide v4, 0x51200000004L

    .line 271
    invoke-virtual {v6}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v10, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$u2ST5Fi0HXPt_TWW4vWXOLOmOOU;->INSTANCE:Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$u2ST5Fi0HXPt_TWW4vWXOLOmOOU;

    invoke-interface {v0, v10}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v0

    .line 270
    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedSInt64(J[J)V

    .line 273
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 274
    const-wide v4, 0x50100000005L

    .line 275
    invoke-virtual {v7}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v10, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$mcAeBX3AFrWeIaIbVZQdFHsbH1E;->INSTANCE:Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$mcAeBX3AFrWeIaIbVZQdFHsbH1E;

    invoke-interface {v0, v10}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object v0

    .line 274
    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedDouble(J[D)V

    .line 277
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 278
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    .line 279
    .local v0, "arr":[Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 280
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    aput-boolean v5, v0, v4

    .line 279
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 282
    .end local v4    # "i":I
    :cond_8
    const-wide v4, 0x50800000006L

    invoke-virtual {v3, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->writePackedBool(J[Z)V

    goto :goto_4

    .line 240
    .end local v0    # "arr":[Z
    .end local v6    # "longParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v7    # "doubleParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v9    # "booleanParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v11    # "argIndex":I
    .end local v16    # "token":J
    .local v4, "token":J
    :cond_9
    move-wide/from16 v16, v4

    .line 285
    .end local v4    # "token":J
    .restart local v16    # "token":J
    :cond_a
    :goto_4
    move-wide/from16 v4, v16

    .end local v16    # "token":J
    .restart local v4    # "token":J
    invoke-virtual {v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 286
    move-object/from16 v6, p0

    :try_start_4
    iget-object v0, v6, Lcom/android/server/protolog/ProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 289
    .end local v3    # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v4    # "token":J
    goto :goto_6

    .line 287
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v8, p1

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    const-string v3, "Exception while logging to proto"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method private setLogging(Landroid/os/ShellCommand;ZZ)I
    .locals 5
    .param p1, "shell"    # Landroid/os/ShellCommand;
    .param p2, "setTextLogging"    # Z
    .param p3, "value"    # Z

    .line 352
    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "group":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 353
    sget-object v0, Lcom/android/server/protolog/ProtoLogImpl;->LOG_GROUPS:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/protolog/common/IProtoLogGroup;

    .line 354
    .local v0, "g":Lcom/android/server/protolog/common/IProtoLogGroup;
    if-eqz v0, :cond_1

    .line 355
    if-eqz p2, :cond_0

    .line 356
    invoke-interface {v0, p3}, Lcom/android/server/protolog/common/IProtoLogGroup;->setLogToLogcat(Z)V

    goto :goto_1

    .line 358
    :cond_0
    invoke-interface {v0, p3}, Lcom/android/server/protolog/common/IProtoLogGroup;->setLogToProto(Z)V

    .line 364
    .end local v0    # "g":Lcom/android/server/protolog/common/IProtoLogGroup;
    :goto_1
    goto :goto_0

    .line 361
    .restart local v0    # "g":Lcom/android/server/protolog/common/IProtoLogGroup;
    :cond_1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No IProtoLogGroup named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/protolog/ProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 362
    const/4 v2, -0x1

    return v2

    .line 365
    .end local v0    # "g":Lcom/android/server/protolog/common/IProtoLogGroup;
    :cond_2
    sget-object v0, Lcom/android/server/protolog/ProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized setSingleInstance(Lcom/android/server/protolog/ProtoLogImpl;)V
    .locals 1
    .param p0, "instance"    # Lcom/android/server/protolog/ProtoLogImpl;

    const-class v0, Lcom/android/server/protolog/ProtoLogImpl;

    monitor-enter v0

    .line 158
    :try_start_0
    sput-object p0, Lcom/android/server/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/server/protolog/ProtoLogImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit v0

    return-void

    .line 157
    .end local p0    # "instance":Lcom/android/server/protolog/ProtoLogImpl;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private unknownCommand(Ljava/io/PrintWriter;)I
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 370
    const-string v0, "Unknown command"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    const-string v0, "Window manager logging options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    const-string v0, "  start: Start proto logging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    const-string v0, "  stop: Stop proto logging"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    const-string v0, "  enable [group...]: Enable proto logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const-string v0, "  disable [group...]: Disable proto logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    const-string v0, "  enable-text [group...]: Enable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    const-string v0, "  disable-text [group...]: Disable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "group"    # Lcom/android/server/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # I
    .param p2, "paramsMask"    # I
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 89
    invoke-static {}, Lcom/android/server/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/server/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->VERBOSE:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/protolog/ProtoLogImpl;->log(Lcom/android/server/protolog/ProtoLogImpl$LogLevel;Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public static varargs w(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "group"    # Lcom/android/server/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # I
    .param p2, "paramsMask"    # I
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 104
    invoke-static {}, Lcom/android/server/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/server/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->WARN:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/protolog/ProtoLogImpl;->log(Lcom/android/server/protolog/ProtoLogImpl$LogLevel;Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method private writeProtoLogToFileLocked()V
    .locals 7

    .line 446
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 447
    .local v0, "offset":J
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 448
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10600000001L

    const-wide v5, 0x474f4c4f544f5250L

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 449
    const-wide v3, 0x10900000002L

    const-string v5, "1.0.0"

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 450
    const-wide v3, 0x10600000003L

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 451
    iget-object v3, p0, Lcom/android/server/protolog/ProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    iget-object v4, p0, Lcom/android/server/protolog/ProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v0    # "offset":J
    .end local v2    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ProtoLog"

    const-string v2, "Unable to write buffer to file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public static varargs wtf(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "group"    # Lcom/android/server/protolog/common/IProtoLogGroup;
    .param p1, "messageHash"    # I
    .param p2, "paramsMask"    # I
    .param p3, "messageString"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 119
    invoke-static {}, Lcom/android/server/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/server/protolog/ProtoLogImpl;

    move-result-object v0

    sget-object v1, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->WTF:Lcom/android/server/protolog/ProtoLogImpl$LogLevel;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/protolog/ProtoLogImpl;->log(Lcom/android/server/protolog/ProtoLogImpl$LogLevel;Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 4

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtoLog status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p0}, Lcom/android/server/protolog/ProtoLogImpl;->isProtoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Enabled"

    goto :goto_0

    :cond_0
    const-string v1, "Disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nEnabled log groups: \n  Proto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/protolog/ProtoLogImpl;->LOG_GROUPS:Ljava/util/TreeMap;

    .line 421
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$dhk0iBKAK3ywNSTqD4XUL3Oq0hM;->INSTANCE:Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$dhk0iBKAK3ywNSTqD4XUL3Oq0hM;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/protolog/-$$Lambda$PfxMAktVLMbQMPp_FRkrQxibSKE;->INSTANCE:Lcom/android/server/protolog/-$$Lambda$PfxMAktVLMbQMPp_FRkrQxibSKE;

    .line 423
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, " "

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  Logcat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/protolog/ProtoLogImpl;->LOG_GROUPS:Ljava/util/TreeMap;

    .line 425
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$G6yKiHAdF7lI4aTCybTMCes5zyI;->INSTANCE:Lcom/android/server/protolog/-$$Lambda$ProtoLogImpl$G6yKiHAdF7lI4aTCybTMCes5zyI;

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/android/server/protolog/-$$Lambda$PfxMAktVLMbQMPp_FRkrQxibSKE;->INSTANCE:Lcom/android/server/protolog/-$$Lambda$PfxMAktVLMbQMPp_FRkrQxibSKE;

    .line 427
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nLogging definitions loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/protolog/ProtoLogImpl;->mViewerConfig:Lcom/android/server/protolog/ProtoLogViewerConfigReader;

    .line 428
    invoke-virtual {v1}, Lcom/android/server/protolog/ProtoLogViewerConfigReader;->knownViewerStringsNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    return-object v0
.end method

.method public isProtoEnabled()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lcom/android/server/protolog/ProtoLogImpl;->mProtoLogEnabledLockFree:Z

    return v0
.end method

.method public log(Lcom/android/server/protolog/ProtoLogImpl$LogLevel;Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "level"    # Lcom/android/server/protolog/ProtoLogImpl$LogLevel;
    .param p2, "group"    # Lcom/android/server/protolog/common/IProtoLogGroup;
    .param p3, "messageHash"    # I
    .param p4, "paramsMask"    # I
    .param p5, "messageString"    # Ljava/lang/String;
    .param p6, "args"    # [Ljava/lang/Object;

    .line 172
    invoke-interface {p2}, Lcom/android/server/protolog/common/IProtoLogGroup;->isLogToProto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0, p3, p4, p6}, Lcom/android/server/protolog/ProtoLogImpl;->logToProto(II[Ljava/lang/Object;)V

    .line 175
    :cond_0
    invoke-interface {p2}, Lcom/android/server/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-interface {p2}, Lcom/android/server/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/protolog/ProtoLogImpl;->logToLogcat(Ljava/lang/String;Lcom/android/server/protolog/ProtoLogImpl$LogLevel;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_1
    return-void
.end method

.method public onShellCommand(Landroid/os/ShellCommand;)I
    .locals 6
    .param p1, "shell"    # Landroid/os/ShellCommand;

    .line 385
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 386
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "cmd":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 388
    invoke-direct {p0, v0}, Lcom/android/server/protolog/ProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 390
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "disable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v3, "start"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v5

    goto :goto_0

    :sswitch_2
    const-string v3, "stop"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    goto :goto_0

    :sswitch_3
    const-string v3, "status"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v3, "disable-text"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_5
    const-string v3, "enable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v3, "enable-text"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 410
    invoke-direct {p0, v0}, Lcom/android/server/protolog/ProtoLogImpl;->unknownCommand(Ljava/io/PrintWriter;)I

    move-result v2

    return v2

    .line 408
    :pswitch_0
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/protolog/ProtoLogImpl;->setLogging(Landroid/os/ShellCommand;ZZ)I

    move-result v2

    return v2

    .line 406
    :pswitch_1
    invoke-direct {p0, p1, v5, v5}, Lcom/android/server/protolog/ProtoLogImpl;->setLogging(Landroid/os/ShellCommand;ZZ)I

    move-result v2

    return v2

    .line 403
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/protolog/ProtoLogImpl;->mViewerConfig:Lcom/android/server/protolog/ProtoLogViewerConfigReader;

    const-string v3, "/system/etc/protolog.conf.json.gz"

    invoke-virtual {v2, v0, v3}, Lcom/android/server/protolog/ProtoLogViewerConfigReader;->loadViewerConfig(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 404
    invoke-direct {p0, p1, v4, v4}, Lcom/android/server/protolog/ProtoLogImpl;->setLogging(Landroid/os/ShellCommand;ZZ)I

    move-result v2

    return v2

    .line 401
    :pswitch_3
    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/protolog/ProtoLogImpl;->setLogging(Landroid/os/ShellCommand;ZZ)I

    move-result v2

    return v2

    .line 398
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/protolog/ProtoLogImpl;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/protolog/ProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 399
    return v5

    .line 395
    :pswitch_5
    invoke-virtual {p0, v0, v4}, Lcom/android/server/protolog/ProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    .line 396
    return v5

    .line 392
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/android/server/protolog/ProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    .line 393
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x57eac4c9 -> :sswitch_6
        -0x4d6ada7d -> :sswitch_5
        -0x3d842b0e -> :sswitch_4
        -0x3532300e -> :sswitch_3
        0x360802 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public passToLogcat(Ljava/lang/String;Lcom/android/server/protolog/ProtoLogImpl$LogLevel;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/android/server/protolog/ProtoLogImpl$LogLevel;
    .param p3, "message"    # Ljava/lang/String;

    .line 208
    sget-object v0, Lcom/android/server/protolog/ProtoLogImpl$1;->$SwitchMap$com$android$server$protolog$ProtoLogImpl$LogLevel:[I

    invoke-virtual {p2}, Lcom/android/server/protolog/ProtoLogImpl$LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 225
    :pswitch_0
    invoke-static {p1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    goto :goto_0

    .line 219
    :pswitch_2
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    goto :goto_0

    .line 216
    :pswitch_3
    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    goto :goto_0

    .line 213
    :pswitch_4
    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    goto :goto_0

    .line 210
    :pswitch_5
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    nop

    .line 228
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startProtoLog(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 306
    invoke-virtual {p0}, Lcom/android/server/protolog/ProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/server/protolog/ProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start logging to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/protolog/ProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/protolog/ProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/android/server/protolog/ProtoLogImpl;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 312
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/protolog/ProtoLogImpl;->mProtoLogEnabled:Z

    .line 313
    iput-boolean v1, p0, Lcom/android/server/protolog/ProtoLogImpl;->mProtoLogEnabledLockFree:Z

    .line 314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    sget-object v0, Lcom/android/server/protolog/ProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 316
    return-void

    .line 314
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopProtoLog(Ljava/io/PrintWriter;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "writeToFile"    # Z

    .line 325
    invoke-virtual {p0}, Lcom/android/server/protolog/ProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/server/protolog/ProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop logging to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/protolog/ProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Waiting for log to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/protolog/ProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 330
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/protolog/ProtoLogImpl;->mProtoLogEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/protolog/ProtoLogImpl;->mProtoLogEnabled:Z

    .line 331
    if-eqz p2, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/android/server/protolog/ProtoLogImpl;->writeProtoLogToFileLocked()V

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/protolog/ProtoLogImpl;->mLogFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/protolog/ProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 335
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/protolog/ProtoLogImpl;->mProtoLogEnabled:Z

    if-nez v1, :cond_2

    .line 339
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    sget-object v0, Lcom/android/server/protolog/ProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 341
    return-void

    .line 336
    :cond_2
    :try_start_1
    const-string v1, "ERROR: logging was re-enabled while waiting for flush."

    invoke-static {p1, v1}, Lcom/android/server/protolog/ProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 337
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "logging enabled while waiting for flush."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/protolog/ProtoLogImpl;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "writeToFile":Z
    throw v1

    .line 339
    .restart local p0    # "this":Lcom/android/server/protolog/ProtoLogImpl;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "writeToFile":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public writeProtoLogToFile()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/android/server/protolog/ProtoLogImpl;->mProtoLogEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/protolog/ProtoLogImpl;->writeProtoLogToFileLocked()V

    .line 440
    monitor-exit v0

    .line 441
    return-void

    .line 440
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

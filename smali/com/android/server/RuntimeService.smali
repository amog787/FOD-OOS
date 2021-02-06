.class public Lcom/android/server/RuntimeService;
.super Landroid/os/Binder;
.source "RuntimeService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RuntimeService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/RuntimeService;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private static addDistroVersionDebugInfo(Ljava/lang/String;Ljava/lang/String;Llibcore/util/DebugInfo;)V
    .locals 8
    .param p0, "distroVersionFileName"    # Ljava/lang/String;
    .param p1, "debugKeyPrefix"    # Ljava/lang/String;
    .param p2, "debugInfo"    # Llibcore/util/DebugInfo;

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "statusKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    :try_start_0
    sget v2, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_FILE_LENGTH:I

    .line 148
    invoke-static {v0, v2}, Lcom/android/timezone/distro/FileUtils;->readBytes(Ljava/io/File;I)[B

    move-result-object v2

    .line 149
    .local v2, "versionBytes":[B
    invoke-static {v2}, Lcom/android/timezone/distro/DistroVersion;->fromBytes([B)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v3

    .line 150
    .local v3, "distroVersion":Lcom/android/timezone/distro/DistroVersion;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "formatVersionString":Ljava/lang/String;
    const-string v5, "OK"

    invoke-virtual {p2, v1, v5}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Llibcore/util/DebugInfo;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "formatVersion"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-virtual {v5, v6, v4}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Llibcore/util/DebugInfo;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rulesVersion"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    .line 154
    invoke-virtual {v5, v6, v7}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Llibcore/util/DebugInfo;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "revision"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v3, Lcom/android/timezone/distro/DistroVersion;->revision:I

    .line 156
    invoke-virtual {v5, v6, v7}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;I)Llibcore/util/DebugInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    nop

    .end local v2    # "versionBytes":[B
    .end local v3    # "distroVersion":Lcom/android/timezone/distro/DistroVersion;
    .end local v4    # "formatVersionString":Ljava/lang/String;
    goto :goto_0

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ERROR"

    invoke-virtual {p2, v1, v3}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Llibcore/util/DebugInfo;

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "exception_class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {p2, v3, v4}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Llibcore/util/DebugInfo;

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "exception_msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Llibcore/util/DebugInfo;

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/server/RuntimeService;->logMessage(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 166
    :cond_0
    const-string v2, "NOT_FOUND"

    invoke-virtual {p2, v1, v2}, Llibcore/util/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Llibcore/util/DebugInfo;

    .line 168
    :goto_0
    return-void
.end method

.method private static addTimeZoneApkDebugInfo(Llibcore/util/DebugInfo;)V
    .locals 2
    .param p0, "coreLibraryDebugInfo"    # Llibcore/util/DebugInfo;

    .line 97
    const-string v0, "core_library.timezone.source.data_"

    .line 98
    .local v0, "debugKeyPrefix":Ljava/lang/String;
    const-string v1, "distro_version"

    invoke-static {v1}, Llibcore/timezone/TimeZoneDataFiles;->getDataTimeZoneFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "versionFileName":Ljava/lang/String;
    invoke-static {v1, v0, p0}, Lcom/android/server/RuntimeService;->addDistroVersionDebugInfo(Ljava/lang/String;Ljava/lang/String;Llibcore/util/DebugInfo;)V

    .line 101
    return-void
.end method

.method private static hasOption([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .line 81
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 82
    .local v3, "opt":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    const/4 v0, 0x1

    return v0

    .line 81
    .end local v3    # "opt":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_1
    return v1
.end method

.method private static logMessage(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 171
    const-string v0, "RuntimeService"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    return-void
.end method

.method private static reportTimeZoneInfo(Llibcore/util/DebugInfo;Ljava/io/PrintWriter;)V
    .locals 3
    .param p0, "coreLibraryDebugInfo"    # Llibcore/util/DebugInfo;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 111
    const-string v0, "Core Library Debug Info: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Llibcore/util/DebugInfo;->getDebugEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/util/DebugInfo$DebugEntry;

    .line 113
    .local v1, "debugEntry":Llibcore/util/DebugInfo$DebugEntry;
    invoke-virtual {v1}, Llibcore/util/DebugInfo$DebugEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    const-string v2, ": \""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Llibcore/util/DebugInfo$DebugEntry;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    .end local v1    # "debugEntry":Llibcore/util/DebugInfo$DebugEntry;
    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method private static reportTimeZoneInfoProto(Llibcore/util/DebugInfo;Landroid/util/proto/ProtoOutputStream;)V
    .locals 7
    .param p0, "coreLibraryDebugInfo"    # Llibcore/util/DebugInfo;
    .param p1, "protoStream"    # Landroid/util/proto/ProtoOutputStream;

    .line 128
    invoke-virtual {p0}, Llibcore/util/DebugInfo;->getDebugEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/util/DebugInfo$DebugEntry;

    .line 129
    .local v1, "debugEntry":Llibcore/util/DebugInfo$DebugEntry;
    const-wide v2, 0x20b00000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 130
    .local v2, "entryToken":J
    const-wide v4, 0x10900000001L

    invoke-virtual {v1}, Llibcore/util/DebugInfo$DebugEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 131
    const-wide v4, 0x10900000002L

    invoke-virtual {v1}, Llibcore/util/DebugInfo$DebugEntry;->getStringValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 132
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 133
    .end local v1    # "debugEntry":Llibcore/util/DebugInfo$DebugEntry;
    .end local v2    # "entryToken":J
    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/android/server/RuntimeService;->mContext:Landroid/content/Context;

    const-string v1, "RuntimeService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    return-void

    .line 61
    :cond_0
    const-string v0, "--proto"

    invoke-static {p3, v0}, Lcom/android/server/RuntimeService;->hasOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 62
    .local v0, "protoFormat":Z
    const/4 v1, 0x0

    .line 64
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-static {}, Llibcore/util/CoreLibraryDebug;->getDebugInfo()Llibcore/util/DebugInfo;

    move-result-object v2

    .line 65
    .local v2, "coreLibraryDebugInfo":Llibcore/util/DebugInfo;
    invoke-static {v2}, Lcom/android/server/RuntimeService;->addTimeZoneApkDebugInfo(Llibcore/util/DebugInfo;)V

    .line 67
    if-eqz v0, :cond_1

    .line 68
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v3

    .line 69
    invoke-static {v2, v1}, Lcom/android/server/RuntimeService;->reportTimeZoneInfoProto(Llibcore/util/DebugInfo;Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v2, p2}, Lcom/android/server/RuntimeService;->reportTimeZoneInfo(Llibcore/util/DebugInfo;Ljava/io/PrintWriter;)V

    .line 74
    :goto_0
    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 77
    :cond_2
    return-void
.end method

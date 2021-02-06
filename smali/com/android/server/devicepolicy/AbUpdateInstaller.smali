.class Lcom/android/server/devicepolicy/AbUpdateInstaller;
.super Lcom/android/server/devicepolicy/UpdateInstaller;
.source "AbUpdateInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_STATE_INITIALIZATION_ERROR:I = 0x14

.field private static final OFFSET_TO_FILE_NAME:I = 0x1e

.field private static final PAYLOAD_BIN:Ljava/lang/String; = "payload.bin"

.field private static final PAYLOAD_PROPERTIES_TXT:Ljava/lang/String; = "payload_properties.txt"

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "Unknown error with error code = "

.field private static final errorCodesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final errorStringsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEntries:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetForUpdate:J

.field private mPackedUpdateFile:Ljava/util/zip/ZipFile;

.field private mProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSizeForUpdate:J

.field private mUpdateInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->buildErrorCodesMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->errorCodesMap:Ljava/util/Map;

    .line 59
    invoke-static {}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->buildErrorStringsMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->errorStringsMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/app/admin/StartInstallingUpdateCallback;
    .param p4, "injector"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;
    .param p5, "constants"    # Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 147
    invoke-direct/range {p0 .. p5}, Lcom/android/server/devicepolicy/UpdateInstaller;-><init>(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mUpdateInstalled:Z

    .line 149
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->errorCodesMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->errorStringsMap:Ljava/util/Map;

    return-object v0
.end method

.method private applyPayload(Ljava/lang/String;)V
    .locals 10
    .param p1, "updatePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->updateStateForPayload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/devicepolicy/-$$Lambda$AbUpdateInstaller$jqambsFSkRKkP2tdaidkN0h_SUo;->INSTANCE:Lcom/android/server/devicepolicy/-$$Lambda$AbUpdateInstaller$jqambsFSkRKkP2tdaidkN0h_SUo;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 192
    .local v0, "headerKeyValuePairs":[Ljava/lang/String;
    iget-wide v1, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mSizeForUpdate:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const-string v8, "UpdateInstaller"

    if-nez v1, :cond_1

    .line 193
    const-string v1, "Failed to find payload entry in the given package."

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 197
    return-void

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->buildBoundUpdateEngine()Landroid/os/UpdateEngine;

    move-result-object v9

    .line 202
    .local v9, "updateEngine":Landroid/os/UpdateEngine;
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mOffsetForUpdate:J

    iget-wide v5, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mSizeForUpdate:J

    move-object v1, v9

    move-object v2, p1

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/os/UpdateEngine;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to install update from file."

    invoke-static {v8, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private buildBoundUpdateEngine()Landroid/os/UpdateEngine;
    .locals 2

    .line 182
    new-instance v0, Landroid/os/UpdateEngine;

    invoke-direct {v0}, Landroid/os/UpdateEngine;-><init>()V

    .line 183
    .local v0, "updateEngine":Landroid/os/UpdateEngine;
    new-instance v1, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/server/devicepolicy/AbUpdateInstaller$DelegatingUpdateEngineCallback;-><init>(Lcom/android/server/devicepolicy/UpdateInstaller;Landroid/os/UpdateEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;)Z

    .line 184
    return-object v0
.end method

.method private static buildErrorCodesMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 66
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 67
    nop

    .line 65
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    nop

    .line 69
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 70
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 68
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    nop

    .line 72
    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 73
    nop

    .line 71
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    nop

    .line 77
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 78
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 76
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    nop

    .line 80
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 81
    nop

    .line 79
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    nop

    .line 83
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 84
    nop

    .line 82
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    nop

    .line 86
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 87
    nop

    .line 85
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    nop

    .line 90
    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 91
    nop

    .line 89
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    nop

    .line 95
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 96
    nop

    .line 94
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    nop

    .line 98
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 99
    nop

    .line 97
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    nop

    .line 101
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 102
    nop

    .line 100
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    nop

    .line 104
    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 105
    nop

    .line 103
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-object v0
.end method

.method private static buildErrorStringsMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown error with error code = "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    nop

    .line 114
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 113
    const-string v2, "The delta update payload was targeted for another version or the source partitionwas modified after it was installed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    nop

    .line 118
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 117
    const-string v2, "Failed to finish the configured postinstall works."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    nop

    .line 121
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 120
    const-string v2, "Failed to open one of the partitions it tried to write to or read data from."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    nop

    .line 124
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 123
    const-string v2, "Payload mismatch error."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    nop

    .line 127
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    const-string v2, "Failed to read the payload data from the given URL."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    nop

    .line 130
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 129
    const-string v2, "Payload hash error."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    nop

    .line 132
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 131
    const-string v2, "Payload size mismatch error."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    nop

    .line 135
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 134
    const-string v2, "Failed to verify the signature of the payload."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    nop

    .line 138
    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 137
    const-string v2, "The payload has been successfully installed,but the active slot was not flipped."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-object v0
.end method

.method private buildOffsetForEntry(Ljava/util/zip/ZipEntry;Ljava/lang/String;)J
    .locals 4
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .param p2, "name"    # Ljava/lang/String;

    .line 243
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 244
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v2

    array-length v2, v2

    :goto_0
    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 243
    return-wide v0
.end method

.method static synthetic lambda$applyPayload$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 191
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method private setState()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mUpdateInstalled:Z

    .line 174
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mPackedUpdateFile:Ljava/util/zip/ZipFile;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mProperties:Ljava/util/List;

    .line 176
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mSizeForUpdate:J

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mOffsetForUpdate:J

    .line 178
    iget-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mPackedUpdateFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mEntries:Ljava/util/Enumeration;

    .line 179
    return-void
.end method

.method private updatePropertiesForEntry(Ljava/util/zip/ZipEntry;)V
    .locals 3
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mPackedUpdateFile:Ljava/util/zip/ZipFile;

    .line 249
    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 253
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mProperties:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 256
    .end local v2    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 257
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    return-void

    .line 248
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method private updateStateForPayload()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    const-wide/16 v0, 0x0

    .line 216
    .local v0, "offset":J
    :goto_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mEntries:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    iget-object v2, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mEntries:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 219
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "name":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->buildOffsetForEntry(Ljava/util/zip/ZipEntry;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 221
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 223
    goto :goto_0

    .line 225
    :cond_0
    const-string/jumbo v4, "payload.bin"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 226
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    const-string v4, "UpdateInstaller"

    const-string v5, "Invalid compression method."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v4, 0x3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 231
    const/4 v4, 0x0

    return v4

    .line 233
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mSizeForUpdate:J

    .line 234
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    sub-long v4, v0, v4

    iput-wide v4, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mOffsetForUpdate:J

    goto :goto_1

    .line 235
    :cond_2
    const-string/jumbo v4, "payload_properties.txt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->updatePropertiesForEntry(Ljava/util/zip/ZipEntry;)V

    .line 238
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    goto :goto_0

    .line 239
    :cond_4
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public installUpdateInThread()V
    .locals 3

    .line 153
    const-string v0, "UpdateInstaller"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mUpdateInstalled:Z

    if-nez v1, :cond_0

    .line 157
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->setState()V

    .line 158
    iget-object v1, p0, Lcom/android/server/devicepolicy/AbUpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->applyPayload(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    const/4 v0, 0x1

    .line 168
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {p0, v0, v2}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    goto :goto_1

    .line 159
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 160
    .local v1, "e":Ljava/util/zip/ZipException;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    const/4 v0, 0x3

    .line 163
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {p0, v0, v2}, Lcom/android/server/devicepolicy/AbUpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    .line 169
    .end local v1    # "e":Ljava/util/zip/ZipException;
    :goto_0
    nop

    .line 170
    :goto_1
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "installUpdateInThread can be called only once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

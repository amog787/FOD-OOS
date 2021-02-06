.class Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
.super Ljava/lang/Object;
.source "PackageManagerShellCommandDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommandDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Metadata"
.end annotation


# static fields
.field static final DATA_ONLY_STREAMING:B = 0x2t

.field static final LOCAL_FILE:B = 0x1t

.field static final STDIN:B = 0x0t

.field static final STREAMING:B = 0x3t


# instance fields
.field private final mData:Ljava/lang/String;

.field private final mMode:B


# direct methods
.method private constructor <init>(BLjava/lang/String;)V
    .locals 1
    .param p1, "mode"    # B
    .param p2, "data"    # Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-byte p1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    .line 155
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:Ljava/lang/String;

    .line 156
    return-void
.end method

.method static forDataOnlyStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 2
    .param p0, "fileId"    # Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;)V

    return-object v0
.end method

.method static forLocalFile(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;)V

    return-object v0
.end method

.method static forStdIn(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 2
    .param p0, "fileId"    # Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;)V

    return-object v0
.end method

.method static forStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 2
    .param p0, "fileId"    # Ljava/lang/String;

    .line 150
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;)V

    return-object v0
.end method

.method static fromByteArray([B)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 5
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 163
    .local v0, "mode":B
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 164
    .local v1, "data":Ljava/lang/String;
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    invoke-direct {v2, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;)V

    return-object v2

    .line 160
    .end local v0    # "mode":B
    .end local v1    # "data":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method getData()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:Ljava/lang/String;

    return-object v0
.end method

.method getMode()B
    .locals 1

    .line 176
    iget-byte v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    return v0
.end method

.method toByteArray()[B
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 169
    .local v0, "dataBytes":[B
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 170
    .local v1, "result":[B
    iget-byte v3, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 171
    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    return-object v1
.end method

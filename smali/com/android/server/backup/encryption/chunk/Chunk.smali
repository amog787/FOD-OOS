.class public Lcom/android/server/backup/encryption/chunk/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"


# instance fields
.field private mHash:[B

.field private mLength:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/server/backup/encryption/chunk/Chunk;->mHash:[B

    .line 44
    iput v0, p0, Lcom/android/server/backup/encryption/chunk/Chunk;->mLength:I

    .line 45
    return-void
.end method

.method static readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/backup/encryption/chunk/Chunk;
    .locals 3
    .param p0, "inputStream"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/android/server/backup/encryption/chunk/Chunk;

    invoke-direct {v0}, Lcom/android/server/backup/encryption/chunk/Chunk;-><init>()V

    .line 23
    .local v0, "result":Lcom/android/server/backup/encryption/chunk/Chunk;
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 24
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    const-wide v1, 0x10500000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Lcom/android/server/backup/encryption/chunk/Chunk;->mLength:I

    goto :goto_1

    .line 26
    :cond_1
    const-wide v1, 0x10c00000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/backup/encryption/chunk/Chunk;->mHash:[B

    .line 27
    nop

    .line 30
    :goto_1
    goto :goto_0

    .line 34
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getHash()[B
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunk/Chunk;->mHash:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/android/server/backup/encryption/chunk/Chunk;->mLength:I

    return v0
.end method

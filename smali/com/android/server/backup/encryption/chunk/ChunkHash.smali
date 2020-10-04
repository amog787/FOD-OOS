.class public Lcom/android/server/backup/encryption/chunk/ChunkHash;
.super Ljava/lang/Object;
.source "ChunkHash.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/backup/encryption/chunk/ChunkHash;",
        ">;"
    }
.end annotation


# static fields
.field public static final HASH_LENGTH_BYTES:I = 0x20

.field private static final UNSIGNED_MASK:I = 0xff


# instance fields
.field private final mHash:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "hash"    # [B

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Hash must have 256 bits"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/android/server/backup/encryption/chunk/ChunkHash;->mHash:[B

    .line 41
    return-void
.end method

.method private static lexicographicalCompareUnsignedBytes([B[B)I
    .locals 4
    .param p0, "left"    # [B
    .param p1, "right"    # [B

    .line 76
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 77
    .local v0, "minLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 78
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/server/backup/encryption/chunk/ChunkHash;->toInt(B)I

    move-result v2

    aget-byte v3, p1, v1

    invoke-static {v3}, Lcom/android/server/backup/encryption/chunk/ChunkHash;->toInt(B)I

    move-result v3

    sub-int/2addr v2, v3

    .line 79
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 80
    return v2

    .line 77
    .end local v2    # "result":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_1
    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1
.end method

.method private static toInt(B)I
    .locals 1
    .param p0, "value"    # B

    .line 87
    and-int/lit16 v0, p0, 0xff

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/android/server/backup/encryption/chunk/ChunkHash;)I
    .locals 2
    .param p1, "other"    # Lcom/android/server/backup/encryption/chunk/ChunkHash;

    .line 67
    invoke-virtual {p0}, Lcom/android/server/backup/encryption/chunk/ChunkHash;->getHash()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/backup/encryption/chunk/ChunkHash;->getHash()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/backup/encryption/chunk/ChunkHash;->lexicographicalCompareUnsignedBytes([B[B)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/android/server/backup/encryption/chunk/ChunkHash;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/encryption/chunk/ChunkHash;->compareTo(Lcom/android/server/backup/encryption/chunk/ChunkHash;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 49
    if-ne p0, p1, :cond_0

    .line 50
    const/4 v0, 0x1

    return v0

    .line 52
    :cond_0
    instance-of v0, p1, Lcom/android/server/backup/encryption/chunk/ChunkHash;

    if-nez v0, :cond_1

    .line 53
    const/4 v0, 0x0

    return v0

    .line 56
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/backup/encryption/chunk/ChunkHash;

    .line 57
    .local v0, "chunkHash":Lcom/android/server/backup/encryption/chunk/ChunkHash;
    iget-object v1, p0, Lcom/android/server/backup/encryption/chunk/ChunkHash;->mHash:[B

    iget-object v2, v0, Lcom/android/server/backup/encryption/chunk/ChunkHash;->mHash:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public getHash()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunk/ChunkHash;->mHash:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunk/ChunkHash;->mHash:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/encryption/chunk/ChunkHash;->mHash:[B

    invoke-virtual {v0, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

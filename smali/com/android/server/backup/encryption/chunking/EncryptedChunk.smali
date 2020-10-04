.class public Lcom/android/server/backup/encryption/chunking/EncryptedChunk;
.super Ljava/lang/Object;
.source "EncryptedChunk.java"


# static fields
.field public static final KEY_LENGTH_BYTES:I = 0x20

.field public static final NONCE_LENGTH_BYTES:I = 0xc


# instance fields
.field private mEncryptedBytes:[B

.field private mKey:Lcom/android/server/backup/encryption/chunk/ChunkHash;

.field private mNonce:[B


# direct methods
.method private constructor <init>(Lcom/android/server/backup/encryption/chunk/ChunkHash;[B[B)V
    .locals 0
    .param p1, "key"    # Lcom/android/server/backup/encryption/chunk/ChunkHash;
    .param p2, "nonce"    # [B
    .param p3, "encryptedBytes"    # [B

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mKey:Lcom/android/server/backup/encryption/chunk/ChunkHash;

    .line 53
    iput-object p2, p0, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mNonce:[B

    .line 54
    iput-object p3, p0, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mEncryptedBytes:[B

    .line 55
    return-void
.end method

.method public static create(Lcom/android/server/backup/encryption/chunk/ChunkHash;[B[B)Lcom/android/server/backup/encryption/chunking/EncryptedChunk;
    .locals 2
    .param p0, "key"    # Lcom/android/server/backup/encryption/chunk/ChunkHash;
    .param p1, "nonce"    # [B
    .param p2, "encryptedBytes"    # [B

    .line 42
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Nonce does not have the correct length."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 44
    new-instance v0, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;-><init>(Lcom/android/server/backup/encryption/chunk/ChunkHash;[B[B)V

    return-object v0
.end method


# virtual methods
.method public encryptedBytes()[B
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mEncryptedBytes:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 74
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 75
    return v0

    .line 77
    :cond_0
    instance-of v1, p1, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 78
    return v2

    .line 81
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;

    .line 82
    .local v1, "encryptedChunkOrdering":Lcom/android/server/backup/encryption/chunking/EncryptedChunk;
    iget-object v3, p0, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mEncryptedBytes:[B

    iget-object v4, v1, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mEncryptedBytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mNonce:[B

    iget-object v4, v1, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mNonce:[B

    .line 83
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mKey:Lcom/android/server/backup/encryption/chunk/ChunkHash;

    iget-object v4, v1, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mKey:Lcom/android/server/backup/encryption/chunk/ChunkHash;

    .line 84
    invoke-virtual {v3, v4}, Lcom/android/server/backup/encryption/chunk/ChunkHash;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 82
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mKey:Lcom/android/server/backup/encryption/chunk/ChunkHash;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mNonce:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mEncryptedBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public key()Lcom/android/server/backup/encryption/chunk/ChunkHash;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mKey:Lcom/android/server/backup/encryption/chunk/ChunkHash;

    return-object v0
.end method

.method public nonce()[B
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->mNonce:[B

    return-object v0
.end method

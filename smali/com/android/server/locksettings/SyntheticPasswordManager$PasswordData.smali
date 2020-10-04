.class Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PasswordData"
.end annotation


# instance fields
.field public passwordHandle:[B

.field public passwordType:I

.field salt:[B

.field scryptN:B

.field scryptP:B

.field scryptR:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(I)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .locals 2
    .param p0, "passwordType"    # I

    .line 230
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;-><init>()V

    .line 231
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    const/16 v1, 0xb

    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    .line 232
    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    .line 233
    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    .line 234
    iput p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    .line 235
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 236
    return-object v0
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .locals 5
    .param p0, "data"    # [B

    .line 240
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;-><init>()V

    .line 241
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    array-length v1, p0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 242
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 243
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 244
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    .line 245
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    .line 246
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    .line 247
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    .line 248
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 249
    .local v2, "saltLen":I
    new-array v3, v2, [B

    iput-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 250
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 251
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 252
    .local v3, "handleLen":I
    if-lez v3, :cond_0

    .line 253
    new-array v4, v3, [B

    iput-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 254
    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 256
    :cond_0
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 258
    :goto_0
    return-object v0
.end method


# virtual methods
.method public toBytes()[B
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xb

    add-int/lit8 v0, v0, 0x4

    .line 265
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 263
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 266
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 267
    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 268
    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 269
    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 270
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 271
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 272
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 273
    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 274
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 276
    :cond_1
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 278
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

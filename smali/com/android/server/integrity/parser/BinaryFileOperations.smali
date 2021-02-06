.class public Lcom/android/server/integrity/parser/BinaryFileOperations;
.super Ljava/lang/Object;
.source "BinaryFileOperations.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanValue(Lcom/android/server/integrity/model/BitInputStream;)Z
    .locals 2
    .param p0, "bitInputStream"    # Lcom/android/server/integrity/model/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getIntValue(Lcom/android/server/integrity/model/BitInputStream;)I
    .locals 1
    .param p0, "bitInputStream"    # Lcom/android/server/integrity/model/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v0

    return v0
.end method

.method public static getStringValue(Lcom/android/server/integrity/model/BitInputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "bitInputStream"    # Lcom/android/server/integrity/model/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, "isHashedValue":Z
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v1

    .line 43
    .local v1, "valueSize":I
    invoke-static {p0, v1, v0}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getStringValue(Lcom/android/server/integrity/model/BitInputStream;IZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getStringValue(Lcom/android/server/integrity/model/BitInputStream;IZ)Ljava/lang/String;
    .locals 3
    .param p0, "bitInputStream"    # Lcom/android/server/integrity/model/BitInputStream;
    .param p1, "valueSize"    # I
    .param p2, "isHashedValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    const/16 v0, 0x8

    if-nez p2, :cond_1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v1, "value":Ljava/lang/StringBuilder;
    :goto_0
    add-int/lit8 v2, p1, -0x1

    .end local p1    # "valueSize":I
    .local v2, "valueSize":I
    if-lez p1, :cond_0

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result p1

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v2

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    .end local v1    # "value":Ljava/lang/StringBuilder;
    .end local v2    # "valueSize":I
    .restart local p1    # "valueSize":I
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 63
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    :goto_1
    add-int/lit8 v2, p1, -0x1

    .end local p1    # "valueSize":I
    .restart local v2    # "valueSize":I
    if-lez p1, :cond_2

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move p1, v2

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {p1}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

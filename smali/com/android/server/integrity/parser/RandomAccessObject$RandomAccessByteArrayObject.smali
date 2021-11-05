.class Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;
.super Lcom/android/server/integrity/parser/RandomAccessObject;
.source "RandomAccessObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/integrity/parser/RandomAccessObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessByteArrayObject"
.end annotation


# instance fields
.field private final mBytes:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .line 97
    invoke-direct {p0}, Lcom/android/server/integrity/parser/RandomAccessObject;-><init>()V

    .line 98
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;->mBytes:Ljava/nio/ByteBuffer;

    .line 99
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    return-void
.end method

.method public length()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const/4 v0, -0x1

    return v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 118
    .local v0, "bytesToCopy":I
    if-gtz v0, :cond_0

    .line 119
    const/4 v1, 0x0

    return v1

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 122
    return v0
.end method

.method public seek(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    return-void
.end method

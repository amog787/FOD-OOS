.class public Lcom/android/server/integrity/model/ByteTrackedOutputStream;
.super Ljava/io/OutputStream;
.source "ByteTrackedOutputStream.java"


# instance fields
.field private final mOutputStream:Ljava/io/OutputStream;

.field private mWrittenBytesCount:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 33
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    .line 35
    iput-object p1, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 36
    return-void
.end method


# virtual methods
.method public getWrittenBytesCount()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    return v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    .line 41
    iget-object v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 42
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->write([BII)V

    .line 51
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    .line 56
    iget-object v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 57
    return-void
.end method

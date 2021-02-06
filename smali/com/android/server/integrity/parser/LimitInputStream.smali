.class public Lcom/android/server/integrity/parser/LimitInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitInputStream.java"


# instance fields
.field private final mLimit:I

.field private mReadBytes:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .line 29
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    if-ltz p2, :cond_0

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    .line 34
    iput p2, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mLimit:I

    .line 35
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cannot be negative"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mLimit:I

    iget v2, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget v0, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    iget v1, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mLimit:I

    if-ne v0, v1, :cond_0

    .line 45
    const/4 v0, -0x1

    return v0

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    .line 48
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/integrity/parser/LimitInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    if-gtz p3, :cond_0

    .line 59
    const/4 v0, 0x0

    return v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/LimitInputStream;->available()I

    move-result v0

    .line 62
    .local v0, "available":I
    if-gtz v0, :cond_1

    .line 63
    const/4 v1, -0x1

    return v1

    .line 65
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-super {p0, p1, p2, v1}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    .line 66
    .local v1, "result":I
    iget v2, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    .line 67
    return v1
.end method

.method public skip(J)J
    .locals 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 73
    return-wide v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/LimitInputStream;->available()I

    move-result v2

    .line 76
    .local v2, "available":I
    if-gtz v2, :cond_1

    .line 77
    return-wide v0

    .line 79
    :cond_1
    int-to-long v0, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 80
    .local v0, "bytesToSkip":I
    int-to-long v3, v0

    invoke-super {p0, v3, v4}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v3

    .line 81
    .local v3, "bytesSkipped":J
    iget v1, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    long-to-int v5, v3

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    .line 82
    return-wide v3
.end method

.class public Lcom/android/server/integrity/parser/RandomAccessInputStream;
.super Ljava/io/InputStream;
.source "RandomAccessInputStream.java"


# instance fields
.field private mPosition:I

.field private final mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;


# direct methods
.method public constructor <init>(Lcom/android/server/integrity/parser/RandomAccessObject;)V
    .locals 1
    .param p1, "object"    # Lcom/android/server/integrity/parser/RandomAccessObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    .line 32
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {v0}, Lcom/android/server/integrity/parser/RandomAccessObject;->length()I

    move-result v0

    iget v1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {v0}, Lcom/android/server/integrity/parser/RandomAccessObject;->close()V

    .line 53
    return-void
.end method

.method public getPosition()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    .line 58
    const/4 v0, -0x1

    return v0

    .line 60
    :cond_0
    iget v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    .line 61
    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {v0}, Lcom/android/server/integrity/parser/RandomAccessObject;->read()I

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

    .line 66
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->read([BII)I

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

    .line 71
    if-gtz p3, :cond_0

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->available()I

    move-result v0

    .line 75
    .local v0, "available":I
    if-gtz v0, :cond_1

    .line 76
    const/4 v1, -0x1

    return v1

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/integrity/parser/RandomAccessObject;->read([BII)I

    move-result v1

    .line 79
    .local v1, "result":I
    iget v2, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    .line 80
    return v1
.end method

.method public seek(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {v0, p1}, Lcom/android/server/integrity/parser/RandomAccessObject;->seek(I)V

    .line 42
    iput p1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    .line 43
    return-void
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 86
    return-wide v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->available()I

    move-result v2

    .line 89
    .local v2, "available":I
    if-gtz v2, :cond_1

    .line 90
    return-wide v0

    .line 92
    :cond_1
    int-to-long v0, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 93
    .local v0, "skipAmount":I
    iget v1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    .line 94
    iget-object v3, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {v3, v1}, Lcom/android/server/integrity/parser/RandomAccessObject;->seek(I)V

    .line 95
    int-to-long v3, v0

    return-wide v3
.end method

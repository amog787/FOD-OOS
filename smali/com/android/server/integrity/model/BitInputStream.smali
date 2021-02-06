.class public Lcom/android/server/integrity/model/BitInputStream;
.super Ljava/lang/Object;
.source "BitInputStream.java"


# instance fields
.field private mBitsRead:J

.field private mCurrentByte:B

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/integrity/model/BitInputStream;->mInputStream:Ljava/io/InputStream;

    .line 37
    return-void
.end method

.method private getNextByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/server/integrity/model/BitInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public getNext(I)I
    .locals 9
    .param p1, "numOfBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "component":I
    const/4 v1, 0x0

    .line 49
    .local v1, "count":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    if-ge v1, p1, :cond_1

    .line 50
    iget-wide v3, p0, Lcom/android/server/integrity/model/BitInputStream;->mBitsRead:J

    const-wide/16 v5, 0x8

    rem-long/2addr v3, v5

    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-nez v1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/android/server/integrity/model/BitInputStream;->getNextByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/integrity/model/BitInputStream;->mCurrentByte:B

    .line 53
    :cond_0
    iget-wide v3, p0, Lcom/android/server/integrity/model/BitInputStream;->mBitsRead:J

    rem-long v5, v3, v5

    long-to-int v1, v5

    rsub-int/lit8 v1, v1, 0x7

    .line 55
    .local v1, "offset":I
    shl-int/lit8 v0, v0, 0x1

    .line 56
    iget-byte v5, p0, Lcom/android/server/integrity/model/BitInputStream;->mCurrentByte:B

    ushr-int/2addr v5, v1

    and-int/lit8 v5, v5, 0x1

    or-int/2addr v0, v5

    .line 58
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/integrity/model/BitInputStream;->mBitsRead:J

    .line 59
    .end local v1    # "offset":I
    move v1, v2

    goto :goto_0

    .line 61
    :cond_1
    return v0
.end method

.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/server/integrity/model/BitInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

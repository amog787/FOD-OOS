.class public Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;
.super Ljava/lang/Object;
.source "SingleStreamDiffScriptWriter.java"

# interfaces
.implements Lcom/android/server/backup/encryption/chunking/DiffScriptWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter$Factory;
    }
.end annotation


# static fields
.field static final LINE_SEPARATOR:B = 0xat

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private mBufferSize:I

.field private final mByteBuffer:[B

.field private final mMaxNewByteChunkSize:I

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mReusableChunk:Lcom/android/server/backup/encryption/chunking/ByteRange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "maxNewByteChunkSize"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mBufferSize:I

    .line 45
    iput-object p1, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 46
    iput p2, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mMaxNewByteChunkSize:I

    .line 47
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mByteBuffer:[B

    .line 48
    return-void
.end method

.method private writeByteBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mOutputStream:Ljava/io/OutputStream;

    iget v1, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mBufferSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 92
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mOutputStream:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 93
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mByteBuffer:[B

    iget v3, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mBufferSize:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 94
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 95
    iput v4, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mBufferSize:I

    .line 96
    return-void
.end method

.method private writeReusableChunk()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mReusableChunk:Lcom/android/server/backup/encryption/chunking/ByteRange;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mOutputStream:Ljava/io/OutputStream;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mReusableChunk:Lcom/android/server/backup/encryption/chunking/ByteRange;

    .line 104
    invoke-virtual {v4}, Lcom/android/server/backup/encryption/chunking/ByteRange;->getStart()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mReusableChunk:Lcom/android/server/backup/encryption/chunking/ByteRange;

    .line 105
    invoke-virtual {v4}, Lcom/android/server/backup/encryption/chunking/ByteRange;->getEnd()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 101
    const-string v3, "%d-%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->UTF_8:Ljava/nio/charset/Charset;

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 107
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mOutputStream:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mReusableChunk:Lcom/android/server/backup/encryption/chunking/ByteRange;

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mBufferSize:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mReusableChunk:Lcom/android/server/backup/encryption/chunking/ByteRange;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 81
    iget v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mBufferSize:I

    if-eqz v0, :cond_2

    .line 82
    invoke-direct {p0}, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->writeByteBuffer()V

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mReusableChunk:Lcom/android/server/backup/encryption/chunking/ByteRange;

    if-eqz v0, :cond_3

    .line 85
    invoke-direct {p0}, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->writeReusableChunk()V

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 88
    return-void
.end method

.method public writeByte(B)V
    .locals 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mReusableChunk:Lcom/android/server/backup/encryption/chunking/ByteRange;

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->writeReusableChunk()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mByteBuffer:[B

    iget v1, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mBufferSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mBufferSize:I

    aput-byte p1, v0, v1

    .line 56
    iget v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mBufferSize:I

    iget v1, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mMaxNewByteChunkSize:I

    if-ne v0, v1, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->writeByteBuffer()V

    .line 59
    :cond_1
    return-void
.end method

.method public writeChunk(JI)V
    .locals 5
    .param p1, "chunkStart"    # J
    .param p3, "chunkLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 64
    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 65
    iget v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mBufferSize:I

    if-eqz v0, :cond_2

    .line 66
    invoke-direct {p0}, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->writeByteBuffer()V

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mReusableChunk:Lcom/android/server/backup/encryption/chunking/ByteRange;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/backup/encryption/chunking/ByteRange;->getEnd()J

    move-result-wide v3

    add-long/2addr v3, v1

    cmp-long v0, v3, p1

    if-nez v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mReusableChunk:Lcom/android/server/backup/encryption/chunking/ByteRange;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/encryption/chunking/ByteRange;->extend(J)Lcom/android/server/backup/encryption/chunking/ByteRange;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mReusableChunk:Lcom/android/server/backup/encryption/chunking/ByteRange;

    goto :goto_2

    .line 73
    :cond_3
    invoke-direct {p0}, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->writeReusableChunk()V

    .line 74
    new-instance v0, Lcom/android/server/backup/encryption/chunking/ByteRange;

    int-to-long v3, p3

    add-long/2addr v3, p1

    sub-long/2addr v3, v1

    invoke-direct {v0, p1, p2, v3, v4}, Lcom/android/server/backup/encryption/chunking/ByteRange;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/backup/encryption/chunking/SingleStreamDiffScriptWriter;->mReusableChunk:Lcom/android/server/backup/encryption/chunking/ByteRange;

    .line 76
    :goto_2
    return-void
.end method

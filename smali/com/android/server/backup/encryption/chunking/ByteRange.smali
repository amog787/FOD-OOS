.class final Lcom/android/server/backup/encryption/chunking/ByteRange;
.super Ljava/lang/Object;
.source "ByteRange.java"


# instance fields
.field private final mEnd:J

.field private final mStart:J


# direct methods
.method constructor <init>(JJ)V
    .locals 3
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
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

    .line 29
    cmp-long v0, p3, p1

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 30
    iput-wide p1, p0, Lcom/android/server/backup/encryption/chunking/ByteRange;->mStart:J

    .line 31
    iput-wide p3, p0, Lcom/android/server/backup/encryption/chunking/ByteRange;->mEnd:J

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 58
    return v0

    .line 60
    :cond_0
    instance-of v1, p1, Lcom/android/server/backup/encryption/chunking/ByteRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 61
    return v2

    .line 64
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/backup/encryption/chunking/ByteRange;

    .line 65
    .local v1, "byteRange":Lcom/android/server/backup/encryption/chunking/ByteRange;
    iget-wide v3, p0, Lcom/android/server/backup/encryption/chunking/ByteRange;->mEnd:J

    iget-wide v5, v1, Lcom/android/server/backup/encryption/chunking/ByteRange;->mEnd:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lcom/android/server/backup/encryption/chunking/ByteRange;->mStart:J

    iget-wide v5, v1, Lcom/android/server/backup/encryption/chunking/ByteRange;->mStart:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method extend(J)Lcom/android/server/backup/encryption/chunking/ByteRange;
    .locals 5
    .param p1, "length"    # J

    .line 51
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 52
    new-instance v0, Lcom/android/server/backup/encryption/chunking/ByteRange;

    iget-wide v1, p0, Lcom/android/server/backup/encryption/chunking/ByteRange;->mStart:J

    iget-wide v3, p0, Lcom/android/server/backup/encryption/chunking/ByteRange;->mEnd:J

    add-long/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/encryption/chunking/ByteRange;-><init>(JJ)V

    return-object v0
.end method

.method getEnd()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/ByteRange;->mEnd:J

    return-wide v0
.end method

.method getLength()I
    .locals 4

    .line 46
    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/ByteRange;->mEnd:J

    iget-wide v2, p0, Lcom/android/server/backup/encryption/chunking/ByteRange;->mStart:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method getStart()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/ByteRange;->mStart:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 70
    const/16 v0, 0x11

    .line 71
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/android/server/backup/encryption/chunking/ByteRange;->mStart:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 72
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/android/server/backup/encryption/chunking/ByteRange;->mEnd:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 73
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/server/backup/encryption/chunking/ByteRange;->mStart:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/server/backup/encryption/chunking/ByteRange;->mEnd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ByteRange{mStart=%d, mEnd=%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

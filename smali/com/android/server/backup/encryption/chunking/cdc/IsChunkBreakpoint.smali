.class public Lcom/android/server/backup/encryption/chunking/cdc/IsChunkBreakpoint;
.super Ljava/lang/Object;
.source "IsChunkBreakpoint.java"

# interfaces
.implements Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker$BreakpointPredicate;


# instance fields
.field private final mBitmask:J

.field private final mLeadingZeros:I


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "averageNumberOfTrialsUntilBreakpoint"    # J

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Average number of trials must be non-negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 53
    long-to-double v0, p1

    invoke-static {v0, v1}, Lcom/android/server/backup/encryption/chunking/cdc/IsChunkBreakpoint;->log2(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/IsChunkBreakpoint;->mLeadingZeros:I

    .line 54
    const-wide/16 v0, -0x1

    iget v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/IsChunkBreakpoint;->mLeadingZeros:I

    ushr-long/2addr v0, v2

    not-long v0, v0

    iput-wide v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/IsChunkBreakpoint;->mBitmask:J

    .line 55
    return-void
.end method

.method private static log2(D)D
    .locals 4
    .param p0, "x"    # D

    .line 76
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getLeadingZeros()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/IsChunkBreakpoint;->mLeadingZeros:I

    return v0
.end method

.method public isBreakpoint(J)Z
    .locals 4
    .param p1, "fingerprint"    # J

    .line 63
    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/IsChunkBreakpoint;->mBitmask:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

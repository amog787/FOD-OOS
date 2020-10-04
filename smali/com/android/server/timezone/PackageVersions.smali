.class final Lcom/android/server/timezone/PackageVersions;
.super Ljava/lang/Object;
.source "PackageVersions.java"


# instance fields
.field final mDataAppVersion:J

.field final mUpdateAppVersion:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .param p1, "updateAppVersion"    # J
    .param p3, "dataAppVersion"    # J

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    .line 29
    iput-wide p3, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 34
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 35
    return v0

    .line 37
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 41
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/timezone/PackageVersions;

    .line 43
    .local v2, "that":Lcom/android/server/timezone/PackageVersions;
    iget-wide v3, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    iget-wide v5, v2, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 44
    return v1

    .line 46
    :cond_2
    iget-wide v3, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    iget-wide v5, v2, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 38
    .end local v2    # "that":Lcom/android/server/timezone/PackageVersions;
    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 51
    iget-wide v0, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    .line 52
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 53
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageVersions{mUpdateAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDataAppVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

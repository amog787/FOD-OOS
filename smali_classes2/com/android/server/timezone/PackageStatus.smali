.class final Lcom/android/server/timezone/PackageStatus;
.super Ljava/lang/Object;
.source "PackageStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezone/PackageStatus$CheckStatus;
    }
.end annotation


# static fields
.field static final CHECK_COMPLETED_FAILURE:I = 0x3

.field static final CHECK_COMPLETED_SUCCESS:I = 0x2

.field static final CHECK_STARTED:I = 0x1


# instance fields
.field final mCheckStatus:I

.field final mVersions:Lcom/android/server/timezone/PackageVersions;


# direct methods
.method constructor <init>(ILcom/android/server/timezone/PackageVersions;)V
    .locals 3
    .param p1, "checkStatus"    # I
    .param p2, "versions"    # Lcom/android/server/timezone/PackageVersions;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    .line 49
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 52
    if-eqz p2, :cond_0

    .line 55
    iput-object p2, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    .line 56
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "versions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown checkStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 60
    if-ne p0, p1, :cond_0

    .line 61
    const/4 v0, 0x1

    return v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/timezone/PackageStatus;

    .line 69
    .local v1, "that":Lcom/android/server/timezone/PackageStatus;
    iget v2, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    iget v3, v1, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    if-eq v2, v3, :cond_2

    .line 70
    return v0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    iget-object v2, v1, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v0, v2}, Lcom/android/server/timezone/PackageVersions;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 64
    .end local v1    # "that":Lcom/android/server/timezone/PackageStatus;
    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 77
    iget v0, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    .line 78
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v2}, Lcom/android/server/timezone/PackageVersions;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 79
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageStatus{mCheckStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

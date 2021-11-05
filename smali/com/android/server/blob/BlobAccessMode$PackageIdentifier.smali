.class final Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;
.super Ljava/lang/Object;
.source "BlobAccessMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobAccessMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageIdentifier"
.end annotation


# instance fields
.field public final certificate:[B

.field public final packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->packageName:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->certificate:[B

    .line 190
    return-void
.end method

.method public static create(Ljava/lang/String;[B)Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "certificate"    # [B

    .line 194
    new-instance v0, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    invoke-direct {v0, p0, p1}, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 199
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 200
    return v0

    .line 202
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    if-nez v2, :cond_1

    goto :goto_1

    .line 205
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    .line 206
    .local v2, "other":Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;
    iget-object v3, p0, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->certificate:[B

    iget-object v4, v2, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->certificate:[B

    .line 207
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 206
    :goto_0
    return v0

    .line 203
    .end local v2    # "other":Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 212
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->certificate:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->certificate:[B

    .line 218
    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    return-object v0
.end method

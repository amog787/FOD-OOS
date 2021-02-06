.class Lcom/android/server/blob/BlobMetadata$Accessor;
.super Ljava/lang/Object;
.source "BlobMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Accessor"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput-object p1, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 795
    iput p2, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 796
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 804
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 805
    return v0

    .line 807
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Lcom/android/server/blob/BlobMetadata$Accessor;

    if-nez v2, :cond_1

    goto :goto_1

    .line 810
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 811
    .local v2, "other":Lcom/android/server/blob/BlobMetadata$Accessor;
    iget v3, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    iget v4, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 808
    .end local v2    # "other":Lcom/android/server/blob/BlobMetadata$Accessor;
    :cond_3
    :goto_1
    return v1
.end method

.method public equals(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 799
    iget v0, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 816
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

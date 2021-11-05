.class public Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
.super Ljava/lang/Object;
.source "LocationRequestStatistics.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationRequestStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageProviderKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;",
        ">;"
    }
.end annotation


# instance fields
.field public final mFeatureId:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mProviderName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "providerName"    # Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mPackageName:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mProviderName:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;)I
    .locals 5
    .param p1, "other"    # Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    .line 154
    iget-object v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mProviderName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mProviderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 155
    .local v0, "providerCompare":I
    if-eqz v0, :cond_0

    .line 156
    return v0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 160
    .local v1, "packageCompare":I
    if-eqz v1, :cond_1

    .line 161
    return v1

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    sget-object v4, Lcom/android/server/location/-$$Lambda$TEfSBt3hRUlBSSARfPEHsJesTtE;->INSTANCE:Lcom/android/server/location/-$$Lambda$TEfSBt3hRUlBSSARfPEHsJesTtE;

    .line 165
    invoke-static {v4}, Ljava/util/Comparator;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v4

    .line 164
    invoke-static {v2, v3, v4}, Ljava/util/Objects;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 120
    check-cast p1, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->compareTo(Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 170
    instance-of v0, p1, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 171
    return v1

    .line 174
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    .line 175
    .local v0, "otherKey":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mProviderName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mProviderName:Ljava/lang/String;

    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    .line 177
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 175
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mProviderName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 183
    .local v0, "hash":I
    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v2, v0, 0x1f

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 186
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mProviderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->mFeatureId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    return-object v0
.end method

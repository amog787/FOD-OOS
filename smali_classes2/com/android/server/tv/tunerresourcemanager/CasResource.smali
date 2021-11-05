.class public final Lcom/android/server/tv/tunerresourcemanager/CasResource;
.super Ljava/lang/Object;
.source "CasResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;
    }
.end annotation


# instance fields
.field private mAvailableSessionNum:I

.field private mMaxSessionNum:I

.field private mOwnerClientIdsToSessionNum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemId:I


# direct methods
.method private constructor <init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    .line 42
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->access$000(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    .line 43
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->access$100(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    .line 44
    invoke-static {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->access$100(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;Lcom/android/server/tv/tunerresourcemanager/CasResource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;
    .param p2, "x1"    # Lcom/android/server/tv/tunerresourcemanager/CasResource$1;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;-><init>(Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;)V

    return-void
.end method

.method private ownersMapToString()Ljava/lang/String;
    .locals 5

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "string":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 144
    .local v2, "clienId":I
    const-string v3, " clientId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    const-string v3, ", owns session num="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .end local v2    # "clienId":I
    goto :goto_0

    .line 150
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getMaxSessionNum()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    return v0
.end method

.method public getOwnerClientIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    return v0
.end method

.method public getUsedSessionNum()I
    .locals 2

    .line 56
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isFullyUsed()Z
    .locals 1

    .line 60
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeOwner(I)V
    .locals 3
    .param p1, "ownerId"    # I

    .line 92
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    .line 93
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public setOwner(I)V
    .locals 5
    .param p1, "ownerId"    # I

    .line 80
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 81
    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 82
    .local v0, "sessionNum":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mOwnerClientIdsToSessionNum:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget v2, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CasResource[systemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mSystemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFullyUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxSessionNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ownerClients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {p0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->ownersMapToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0
.end method

.method public updateMaxSessionNum(I)V
    .locals 2
    .param p1, "maxSessionNum"    # I

    .line 69
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    iget v1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mAvailableSessionNum:I

    .line 71
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;->mMaxSessionNum:I

    .line 72
    return-void
.end method

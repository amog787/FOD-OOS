.class Lcom/android/server/pm/IntentFilterVerificationKey;
.super Ljava/lang/Object;
.source "IntentFilterVerificationKey.java"


# instance fields
.field public className:Ljava/lang/String;

.field public domains:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "domains"    # [Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 33
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .end local v3    # "host":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 42
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 43
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 45
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/server/pm/IntentFilterVerificationKey;

    .line 47
    .local v2, "that":Lcom/android/server/pm/IntentFilterVerificationKey;
    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 48
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v4, v2, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 49
    :goto_1
    return v1

    .line 50
    :cond_5
    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v4, v2, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_6
    iget-object v3, v2, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 51
    :goto_2
    return v1

    .line 53
    :cond_7
    return v0

    .line 43
    .end local v2    # "that":Lcom/android/server/pm/IntentFilterVerificationKey;
    :cond_8
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->domains:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 59
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    .line 60
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lcom/android/server/pm/IntentFilterVerificationKey;->className:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    .line 61
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

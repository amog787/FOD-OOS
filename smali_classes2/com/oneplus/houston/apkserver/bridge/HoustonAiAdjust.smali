.class public final Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
.super Ljava/lang/Object;
.source "HoustonAiAdjust.java"


# instance fields
.field public mParam:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/houston/apkserver/bridge/Param;",
            ">;"
        }
    .end annotation
.end field

.field public mPkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->mPkg:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->mParam:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public addParam(Lcom/oneplus/houston/apkserver/bridge/Param;)V
    .locals 1
    .param p1, "param"    # Lcom/oneplus/houston/apkserver/bridge/Param;

    .line 35
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->mParam:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public clear()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->mParam:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    return-void
.end method

.method public getParamJson()Lorg/json/JSONArray;
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->mParam:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 73
    .local v0, "jsonArray":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->mParam:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/apkserver/bridge/Param;

    .line 74
    .local v2, "param":Lcom/oneplus/houston/apkserver/bridge/Param;
    invoke-virtual {v2}, Lcom/oneplus/houston/apkserver/bridge/Param;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 75
    .end local v2    # "param":Lcom/oneplus/houston/apkserver/bridge/Param;
    goto :goto_0

    .line 76
    :cond_1
    return-object v0
.end method

.method public removeParam(Lcom/oneplus/houston/apkserver/bridge/Param;)V
    .locals 4
    .param p1, "param"    # Lcom/oneplus/houston/apkserver/bridge/Param;

    .line 39
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->mParam:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 40
    .local v0, "size":I
    if-lez v0, :cond_1

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 42
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->mParam:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/apkserver/bridge/Param;

    .line 43
    .local v2, "p":Lcom/oneplus/houston/apkserver/bridge/Param;
    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2, p1}, Lcom/oneplus/houston/apkserver/bridge/Param;->equals(Lcom/oneplus/houston/apkserver/bridge/Param;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->mParam:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 41
    .end local v2    # "p":Lcom/oneplus/houston/apkserver/bridge/Param;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 6

    .line 53
    const-string v0, ""

    .line 54
    .local v0, "param":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->mParam:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 55
    .local v1, "size":I
    if-lez v1, :cond_1

    .line 56
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 57
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->mParam:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/Param;

    .line 58
    .local v3, "p":Lcom/oneplus/houston/apkserver/bridge/Param;
    if-eqz v3, :cond_0

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n 1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/oneplus/houston/apkserver/bridge/Param;->param1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/oneplus/houston/apkserver/bridge/Param;->param2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .end local v3    # "p":Lcom/oneplus/houston/apkserver/bridge/Param;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HoustonAiAdjust["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->mPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

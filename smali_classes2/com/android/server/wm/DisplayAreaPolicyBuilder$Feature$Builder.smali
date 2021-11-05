.class Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private final mId:I

.field private final mLayers:[Z

.field private final mName:Ljava/lang/String;

.field private final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V
    .locals 1
    .param p1, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 123
    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mName:Ljava/lang/String;

    .line 124
    iput p3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mId:I

    .line 125
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    .line 126
    return-void
.end method

.method private layerFromType(IZ)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "internalWindows"    # Z

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    .line 189
    .local v0, "layer":I
    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy;->opAdjustLayerFromType(I)I

    move-result v1

    return v1
.end method

.method private set(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # Z

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v2

    aput-boolean p2, v0, v2

    .line 177
    const/16 v0, 0x7f6

    if-ne p1, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v1

    aput-boolean p2, v0, v1

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/16 v1, 0x7d3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v1

    aput-boolean p2, v0, v1

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/16 v1, 0x7d6

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v1

    aput-boolean p2, v0, v1

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/16 v1, 0x7da

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v1

    aput-boolean p2, v0, v1

    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method all()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 133
    return-object p0
.end method

.method varargs and([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .locals 3
    .param p1, "types"    # [I

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 141
    aget v1, p1, v0

    .line 142
    .local v1, "type":I
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->set(IZ)V

    .line 140
    .end local v1    # "type":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;
    .locals 5

    .line 172
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mId:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    invoke-virtual {v3}, [Z->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;-><init>(Ljava/lang/String;I[ZLcom/android/server/wm/DisplayAreaPolicyBuilder$1;)V

    return-object v0
.end method

.method varargs except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .locals 3
    .param p1, "types"    # [I

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 152
    aget v1, p1, v0

    .line 153
    .local v1, "type":I
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->set(IZ)V

    .line 151
    .end local v1    # "type":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method upTo(I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;
    .locals 4
    .param p1, "typeInclusive"    # I

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v0

    .line 164
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_0

    .line 165
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    aput-boolean v2, v3, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->set(IZ)V

    .line 168
    return-object p0
.end method

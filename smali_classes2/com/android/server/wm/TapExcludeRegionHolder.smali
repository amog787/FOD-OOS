.class Lcom/android/server/wm/TapExcludeRegionHolder;
.super Ljava/lang/Object;
.source "TapExcludeRegionHolder.java"


# instance fields
.field private mTapExcludeRegions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRegions:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method amendRegion(Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 47
    iget-object v0, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRegions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 48
    iget-object v1, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRegions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    .line 49
    .local v1, "r":Landroid/graphics/Region;
    if-eqz p2, :cond_0

    .line 50
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 52
    :cond_0
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 47
    .end local v1    # "r":Landroid/graphics/Region;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 54
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method updateRegion(ILandroid/graphics/Region;)V
    .locals 1
    .param p1, "regionId"    # I
    .param p2, "region"    # Landroid/graphics/Region;

    .line 33
    iget-object v0, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRegions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 35
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TapExcludeRegionHolder;->mTapExcludeRegions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    return-void

    .line 37
    :cond_1
    :goto_0
    return-void
.end method

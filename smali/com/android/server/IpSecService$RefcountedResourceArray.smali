.class Lcom/android/server/IpSecService$RefcountedResourceArray;
.super Ljava/lang/Object;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefcountedResourceArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/server/IpSecService$IResource;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/IpSecService$RefcountedResource<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;

    .line 540
    .local p0, "this":Lcom/android/server/IpSecService$RefcountedResourceArray;, "Lcom/android/server/IpSecService$RefcountedResourceArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService$RefcountedResourceArray;->mArray:Landroid/util/SparseArray;

    .line 541
    iput-object p1, p0, Lcom/android/server/IpSecService$RefcountedResourceArray;->mTypeName:Ljava/lang/String;

    .line 542
    return-void
.end method


# virtual methods
.method getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;
    .locals 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/IpSecService$RefcountedResource<",
            "TT;>;"
        }
    .end annotation

    .line 559
    .local p0, "this":Lcom/android/server/IpSecService$RefcountedResourceArray;, "Lcom/android/server/IpSecService$RefcountedResourceArray<TT;>;"
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResourceArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$RefcountedResource;

    .line 560
    .local v0, "resource":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<TT;>;"
    if-eqz v0, :cond_0

    .line 565
    return-object v0

    .line 561
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/IpSecService$RefcountedResourceArray;->mTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 562
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "No such %s found for given id: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 550
    .local p0, "this":Lcom/android/server/IpSecService$RefcountedResourceArray;, "Lcom/android/server/IpSecService$RefcountedResourceArray<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IpSecService$RefcountedResource;->getResource()Lcom/android/server/IpSecService$IResource;

    move-result-object v0

    return-object v0
.end method

.method put(ILcom/android/server/IpSecService$RefcountedResource;)V
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/IpSecService$RefcountedResource<",
            "TT;>;)V"
        }
    .end annotation

    .line 569
    .local p0, "this":Lcom/android/server/IpSecService$RefcountedResourceArray;, "Lcom/android/server/IpSecService$RefcountedResourceArray<TT;>;"
    .local p2, "obj":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<TT;>;"
    const-string v0, "Null resources cannot be added"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResourceArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 571
    return-void
.end method

.method remove(I)V
    .locals 1
    .param p1, "key"    # I

    .line 574
    .local p0, "this":Lcom/android/server/IpSecService$RefcountedResourceArray;, "Lcom/android/server/IpSecService$RefcountedResourceArray<TT;>;"
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResourceArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 575
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 579
    .local p0, "this":Lcom/android/server/IpSecService$RefcountedResourceArray;, "Lcom/android/server/IpSecService$RefcountedResourceArray<TT;>;"
    iget-object v0, p0, Lcom/android/server/IpSecService$RefcountedResourceArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

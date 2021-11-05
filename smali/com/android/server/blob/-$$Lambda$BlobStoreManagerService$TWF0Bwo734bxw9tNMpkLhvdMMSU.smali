.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$TWF0Bwo734bxw9tNMpkLhvdMMSU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$TWF0Bwo734bxw9tNMpkLhvdMMSU;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iput-object p2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$TWF0Bwo734bxw9tNMpkLhvdMMSU;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$TWF0Bwo734bxw9tNMpkLhvdMMSU;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$TWF0Bwo734bxw9tNMpkLhvdMMSU;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object v1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$TWF0Bwo734bxw9tNMpkLhvdMMSU;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$TWF0Bwo734bxw9tNMpkLhvdMMSU;->f$2:I

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$handlePackageRemoved$12$BlobStoreManagerService(Ljava/lang/String;ILjava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

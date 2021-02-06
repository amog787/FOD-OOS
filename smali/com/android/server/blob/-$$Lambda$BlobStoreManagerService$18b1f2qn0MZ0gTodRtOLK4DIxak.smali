.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$18b1f2qn0MZ0gTodRtOLK4DIxak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$18b1f2qn0MZ0gTodRtOLK4DIxak;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iput-object p2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$18b1f2qn0MZ0gTodRtOLK4DIxak;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$18b1f2qn0MZ0gTodRtOLK4DIxak;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object v1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$18b1f2qn0MZ0gTodRtOLK4DIxak;->f$1:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$handleIdleMaintenanceLocked$13$BlobStoreManagerService(Ljava/util/ArrayList;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

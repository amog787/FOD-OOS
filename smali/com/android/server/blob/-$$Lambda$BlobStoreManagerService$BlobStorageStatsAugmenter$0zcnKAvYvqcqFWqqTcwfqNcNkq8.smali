.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$0zcnKAvYvqcqFWqqTcwfqNcNkq8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public synthetic constructor <init>(IZLjava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$0zcnKAvYvqcqFWqqTcwfqNcNkq8;->f$0:I

    iput-boolean p2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$0zcnKAvYvqcqFWqqTcwfqNcNkq8;->f$1:Z

    iput-object p3, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$0zcnKAvYvqcqFWqqTcwfqNcNkq8;->f$2:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$0zcnKAvYvqcqFWqqTcwfqNcNkq8;->f$0:I

    iget-boolean v1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$0zcnKAvYvqcqFWqqTcwfqNcNkq8;->f$1:Z

    iget-object v2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$0zcnKAvYvqcqFWqqTcwfqNcNkq8;->f$2:Ljava/util/concurrent/atomic/AtomicLong;

    check-cast p1, Lcom/android/server/blob/BlobMetadata;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->lambda$augmentStatsForUid$3(IZLjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

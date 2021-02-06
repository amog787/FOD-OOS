.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$shuup-g9zPirCAR3mwbzlpwbvzg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$shuup-g9zPirCAR3mwbzlpwbvzg;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$shuup-g9zPirCAR3mwbzlpwbvzg;->f$1:I

    iput-object p3, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$shuup-g9zPirCAR3mwbzlpwbvzg;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$shuup-g9zPirCAR3mwbzlpwbvzg;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$shuup-g9zPirCAR3mwbzlpwbvzg;->f$1:I

    iget-object v2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$shuup-g9zPirCAR3mwbzlpwbvzg;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Lcom/android/server/blob/BlobMetadata;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$getCommittedBlobsCountLocked$1(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

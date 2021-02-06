.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$6I1rElEek_dg0VKSQnT1Yv3L_Jc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public synthetic constructor <init>(ILjava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$6I1rElEek_dg0VKSQnT1Yv3L_Jc;->f$0:I

    iput-object p2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$6I1rElEek_dg0VKSQnT1Yv3L_Jc;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$6I1rElEek_dg0VKSQnT1Yv3L_Jc;->f$0:I

    iget-object v1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$6I1rElEek_dg0VKSQnT1Yv3L_Jc;->f$1:Ljava/util/concurrent/atomic/AtomicLong;

    check-cast p1, Lcom/android/server/blob/BlobStoreSession;

    invoke-static {v0, v1, p1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->lambda$augmentStatsForUid$2(ILjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V

    return-void
.end method

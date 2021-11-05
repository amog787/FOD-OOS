.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$dS4fzn6rXwz2QRynrQJnomB_CcU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:Landroid/util/ArrayMap;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/ArrayMap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$dS4fzn6rXwz2QRynrQJnomB_CcU;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iput-object p2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$dS4fzn6rXwz2QRynrQJnomB_CcU;->f$1:Landroid/util/ArrayMap;

    iput p3, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$dS4fzn6rXwz2QRynrQJnomB_CcU;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$dS4fzn6rXwz2QRynrQJnomB_CcU;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object v1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$dS4fzn6rXwz2QRynrQJnomB_CcU;->f$1:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$dS4fzn6rXwz2QRynrQJnomB_CcU;->f$2:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$queryBlobsForUserInternal$5$BlobStoreManagerService(Landroid/util/ArrayMap;ILjava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Mr19cV2OEeKTtbpkiW3uytTABZY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Mr19cV2OEeKTtbpkiW3uytTABZY;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iput-wide p2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Mr19cV2OEeKTtbpkiW3uytTABZY;->f$1:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Mr19cV2OEeKTtbpkiW3uytTABZY;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-wide v1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Mr19cV2OEeKTtbpkiW3uytTABZY;->f$1:J

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$deleteBlobInternal$8$BlobStoreManagerService(JLjava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

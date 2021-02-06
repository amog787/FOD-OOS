.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$B6INu6yYNZbmMBINR4KMMCBToN4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:Landroid/util/ArrayMap;

.field public final synthetic f$2:Landroid/app/blob/BlobHandle;

.field public final synthetic f$3:Lcom/android/server/blob/BlobMetadata;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/ArrayMap;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$B6INu6yYNZbmMBINR4KMMCBToN4;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iput-object p2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$B6INu6yYNZbmMBINR4KMMCBToN4;->f$1:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$B6INu6yYNZbmMBINR4KMMCBToN4;->f$2:Landroid/app/blob/BlobHandle;

    iput-object p4, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$B6INu6yYNZbmMBINR4KMMCBToN4;->f$3:Lcom/android/server/blob/BlobMetadata;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$B6INu6yYNZbmMBINR4KMMCBToN4;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object v1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$B6INu6yYNZbmMBINR4KMMCBToN4;->f$1:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$B6INu6yYNZbmMBINR4KMMCBToN4;->f$2:Landroid/app/blob/BlobHandle;

    iget-object v3, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$B6INu6yYNZbmMBINR4KMMCBToN4;->f$3:Lcom/android/server/blob/BlobMetadata;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$releaseLeaseInternal$4$BlobStoreManagerService(Landroid/util/ArrayMap;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

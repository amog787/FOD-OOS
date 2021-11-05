.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$vLEQSKdoEZ9cTJdF33Gj6FReI8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$vLEQSKdoEZ9cTJdF33Gj6FReI8k;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$vLEQSKdoEZ9cTJdF33Gj6FReI8k;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$vLEQSKdoEZ9cTJdF33Gj6FReI8k;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$vLEQSKdoEZ9cTJdF33Gj6FReI8k;->f$1:Ljava/util/ArrayList;

    check-cast p1, Landroid/app/blob/BlobHandle;

    check-cast p2, Lcom/android/server/blob/BlobMetadata;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$queryBlobsForUserInternal$7(Ljava/util/function/Function;Ljava/util/ArrayList;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

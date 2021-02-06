.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BUTOhgP9JLOMPxsEmHKh1cRuMiU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Landroid/app/blob/BlobHandle;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Landroid/app/blob/BlobHandle;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BUTOhgP9JLOMPxsEmHKh1cRuMiU;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BUTOhgP9JLOMPxsEmHKh1cRuMiU;->f$1:Landroid/app/blob/BlobHandle;

    iput-object p3, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BUTOhgP9JLOMPxsEmHKh1cRuMiU;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BUTOhgP9JLOMPxsEmHKh1cRuMiU;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BUTOhgP9JLOMPxsEmHKh1cRuMiU;->f$1:Landroid/app/blob/BlobHandle;

    iget-object v2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$BUTOhgP9JLOMPxsEmHKh1cRuMiU;->f$2:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$queryBlobsForUserInternal$6(Ljava/util/function/Function;Landroid/app/blob/BlobHandle;Ljava/util/ArrayList;Lcom/android/server/blob/BlobMetadata$Leasee;)V

    return-void
.end method

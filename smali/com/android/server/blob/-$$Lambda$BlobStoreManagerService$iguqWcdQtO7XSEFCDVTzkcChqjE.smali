.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$iguqWcdQtO7XSEFCDVTzkcChqjE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$iguqWcdQtO7XSEFCDVTzkcChqjE;->f$0:I

    iput-object p2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$iguqWcdQtO7XSEFCDVTzkcChqjE;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$iguqWcdQtO7XSEFCDVTzkcChqjE;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$iguqWcdQtO7XSEFCDVTzkcChqjE;->f$0:I

    iget-object v1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$iguqWcdQtO7XSEFCDVTzkcChqjE;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$iguqWcdQtO7XSEFCDVTzkcChqjE;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Lcom/android/server/blob/BlobStoreSession;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/blob/BlobStoreManagerService;->lambda$getSessionsCountLocked$0(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/blob/BlobStoreSession;)V

    return-void
.end method

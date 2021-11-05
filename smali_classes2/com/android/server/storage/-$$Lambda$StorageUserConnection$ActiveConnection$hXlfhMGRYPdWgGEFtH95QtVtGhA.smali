.class public final synthetic Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hXlfhMGRYPdWgGEFtH95QtVtGhA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

.field public final synthetic f$1:Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;

.field public final synthetic f$2:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hXlfhMGRYPdWgGEFtH95QtVtGhA;->f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iput-object p2, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hXlfhMGRYPdWgGEFtH95QtVtGhA;->f$1:Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;

    iput-object p3, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hXlfhMGRYPdWgGEFtH95QtVtGhA;->f$2:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hXlfhMGRYPdWgGEFtH95QtVtGhA;->f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object v1, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hXlfhMGRYPdWgGEFtH95QtVtGhA;->f$1:Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;

    iget-object v2, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hXlfhMGRYPdWgGEFtH95QtVtGhA;->f$2:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Landroid/service/storage/IExternalStorageService;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->lambda$waitForAsync$1$StorageUserConnection$ActiveConnection(Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;Ljava/util/concurrent/CompletableFuture;Landroid/service/storage/IExternalStorageService;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Stub$mVXWAa695LfE4TlN6SGB9gG_po0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService$Stub;

.field public final synthetic f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService$Stub;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Stub$mVXWAa695LfE4TlN6SGB9gG_po0;->f$0:Lcom/android/server/blob/BlobStoreManagerService$Stub;

    iput-object p2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Stub$mVXWAa695LfE4TlN6SGB9gG_po0;->f$1:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Stub$mVXWAa695LfE4TlN6SGB9gG_po0;->f$0:Lcom/android/server/blob/BlobStoreManagerService$Stub;

    iget-object v1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreManagerService$Stub$mVXWAa695LfE4TlN6SGB9gG_po0;->f$1:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/blob/BlobStoreManagerService$Stub;->lambda$waitForIdle$0$BlobStoreManagerService$Stub(Landroid/os/RemoteCallback;)V

    return-void
.end method

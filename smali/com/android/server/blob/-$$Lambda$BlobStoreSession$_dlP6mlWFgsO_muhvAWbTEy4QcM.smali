.class public final synthetic Lcom/android/server/blob/-$$Lambda$BlobStoreSession$_dlP6mlWFgsO_muhvAWbTEy4QcM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreSession;

.field public final synthetic f$1:Landroid/os/RevocableFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreSession;Landroid/os/RevocableFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreSession$_dlP6mlWFgsO_muhvAWbTEy4QcM;->f$0:Lcom/android/server/blob/BlobStoreSession;

    iput-object p2, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreSession$_dlP6mlWFgsO_muhvAWbTEy4QcM;->f$1:Landroid/os/RevocableFileDescriptor;

    return-void
.end method


# virtual methods
.method public final onClose(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreSession$_dlP6mlWFgsO_muhvAWbTEy4QcM;->f$0:Lcom/android/server/blob/BlobStoreSession;

    iget-object v1, p0, Lcom/android/server/blob/-$$Lambda$BlobStoreSession$_dlP6mlWFgsO_muhvAWbTEy4QcM;->f$1:Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/blob/BlobStoreSession;->lambda$trackRevocableFdLocked$0$BlobStoreSession(Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V

    return-void
.end method

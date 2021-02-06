.class public final synthetic Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$_fNj4MMVR2_fLDVK18ztgw4RUrI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/storage/StorageUserConnection$ActiveConnection;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$_fNj4MMVR2_fLDVK18ztgw4RUrI;->f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iput-object p2, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$_fNj4MMVR2_fLDVK18ztgw4RUrI;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$_fNj4MMVR2_fLDVK18ztgw4RUrI;->f$0:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    iget-object v1, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$_fNj4MMVR2_fLDVK18ztgw4RUrI;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->lambda$notifyVolumeStateChangedLocked$2$StorageUserConnection$ActiveConnection(Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V

    return-void
.end method

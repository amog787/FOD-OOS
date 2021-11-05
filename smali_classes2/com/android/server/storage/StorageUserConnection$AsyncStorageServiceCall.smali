.class interface abstract Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;
.super Ljava/lang/Object;
.source "StorageUserConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/StorageUserConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AsyncStorageServiceCall"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract run(Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

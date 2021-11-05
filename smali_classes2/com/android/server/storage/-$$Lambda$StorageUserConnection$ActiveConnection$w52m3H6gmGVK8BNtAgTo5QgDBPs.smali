.class public final synthetic Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$w52m3H6gmGVK8BNtAgTo5QgDBPs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;


# instance fields
.field public final synthetic f$0:Lcom/android/server/storage/StorageUserConnection$Session;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/storage/StorageUserConnection$Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$w52m3H6gmGVK8BNtAgTo5QgDBPs;->f$0:Lcom/android/server/storage/StorageUserConnection$Session;

    return-void
.end method


# virtual methods
.method public final run(Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$w52m3H6gmGVK8BNtAgTo5QgDBPs;->f$0:Lcom/android/server/storage/StorageUserConnection$Session;

    invoke-static {v0, p1, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->lambda$endSession$3(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V

    return-void
.end method

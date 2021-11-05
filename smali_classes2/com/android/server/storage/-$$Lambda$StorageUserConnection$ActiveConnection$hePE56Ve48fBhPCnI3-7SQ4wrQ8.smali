.class public final synthetic Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hePE56Ve48fBhPCnI3-7SQ4wrQ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;


# instance fields
.field public final synthetic f$0:Lcom/android/server/storage/StorageUserConnection$Session;

.field public final synthetic f$1:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hePE56Ve48fBhPCnI3-7SQ4wrQ8;->f$0:Lcom/android/server/storage/StorageUserConnection$Session;

    iput-object p2, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hePE56Ve48fBhPCnI3-7SQ4wrQ8;->f$1:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final run(Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hePE56Ve48fBhPCnI3-7SQ4wrQ8;->f$0:Lcom/android/server/storage/StorageUserConnection$Session;

    iget-object v1, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$hePE56Ve48fBhPCnI3-7SQ4wrQ8;->f$1:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->lambda$startSession$2(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V

    return-void
.end method

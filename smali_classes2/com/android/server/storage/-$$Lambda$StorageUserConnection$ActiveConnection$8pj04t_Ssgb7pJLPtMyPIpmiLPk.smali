.class public final synthetic Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$8pj04t_Ssgb7pJLPtMyPIpmiLPk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/os/storage/StorageVolume;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$8pj04t_Ssgb7pJLPtMyPIpmiLPk;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$8pj04t_Ssgb7pJLPtMyPIpmiLPk;->f$1:Landroid/os/storage/StorageVolume;

    return-void
.end method


# virtual methods
.method public final run(Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$8pj04t_Ssgb7pJLPtMyPIpmiLPk;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/storage/-$$Lambda$StorageUserConnection$ActiveConnection$8pj04t_Ssgb7pJLPtMyPIpmiLPk;->f$1:Landroid/os/storage/StorageVolume;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->lambda$notifyVolumeStateChanged$4(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/service/storage/IExternalStorageService;Landroid/os/RemoteCallback;)V

    return-void
.end method

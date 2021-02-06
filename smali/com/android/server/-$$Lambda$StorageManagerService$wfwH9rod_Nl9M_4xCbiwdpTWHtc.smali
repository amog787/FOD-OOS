.class public final synthetic Lcom/android/server/-$$Lambda$StorageManagerService$wfwH9rod_Nl9M_4xCbiwdpTWHtc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/StorageManagerService;

.field public final synthetic f$1:Landroid/os/storage/VolumeInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$StorageManagerService$wfwH9rod_Nl9M_4xCbiwdpTWHtc;->f$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$StorageManagerService$wfwH9rod_Nl9M_4xCbiwdpTWHtc;->f$1:Landroid/os/storage/VolumeInfo;

    iput p3, p0, Lcom/android/server/-$$Lambda$StorageManagerService$wfwH9rod_Nl9M_4xCbiwdpTWHtc;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$StorageManagerService$wfwH9rod_Nl9M_4xCbiwdpTWHtc;->f$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$StorageManagerService$wfwH9rod_Nl9M_4xCbiwdpTWHtc;->f$1:Landroid/os/storage/VolumeInfo;

    iget v2, p0, Lcom/android/server/-$$Lambda$StorageManagerService$wfwH9rod_Nl9M_4xCbiwdpTWHtc;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StorageManagerService;->lambda$onVolumeStateChangedLocked$2$StorageManagerService(Landroid/os/storage/VolumeInfo;I)V

    return-void
.end method

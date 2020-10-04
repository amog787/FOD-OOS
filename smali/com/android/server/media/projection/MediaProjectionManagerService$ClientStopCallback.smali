.class final Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientStopCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/media/projection/IMediaProjectionCallback;


# direct methods
.method public constructor <init>(Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionCallback;

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 741
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    invoke-interface {v0}, Landroid/media/projection/IMediaProjectionCallback;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjectionManagerService"

    const-string v2, "Failed to notify media projection has stopped"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 750
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

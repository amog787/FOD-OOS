.class public final synthetic Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$RfORIok5BEnBfxE_2EzvPUqnoY8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

.field public final synthetic f$1:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$2:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$3:Landroid/service/contentcapture/IDataShareReadAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$RfORIok5BEnBfxE_2EzvPUqnoY8;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    iput-object p2, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$RfORIok5BEnBfxE_2EzvPUqnoY8;->f$1:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$RfORIok5BEnBfxE_2EzvPUqnoY8;->f$2:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$RfORIok5BEnBfxE_2EzvPUqnoY8;->f$3:Landroid/service/contentcapture/IDataShareReadAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$RfORIok5BEnBfxE_2EzvPUqnoY8;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    iget-object v1, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$RfORIok5BEnBfxE_2EzvPUqnoY8;->f$1:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$RfORIok5BEnBfxE_2EzvPUqnoY8;->f$2:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$RfORIok5BEnBfxE_2EzvPUqnoY8;->f$3:Landroid/service/contentcapture/IDataShareReadAdapter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->lambda$accept$0$ContentCaptureManagerService$DataShareCallbackDelegate(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    return-void
.end method

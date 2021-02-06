.class public final synthetic Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

.field public final synthetic f$1:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$2:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$3:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$4:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$5:Landroid/service/contentcapture/IDataShareReadAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    iput-object p2, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;->f$1:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;->f$2:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;->f$3:Landroid/os/ParcelFileDescriptor;

    iput-object p5, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;->f$4:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;->f$5:Landroid/service/contentcapture/IDataShareReadAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;

    iget-object v1, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;->f$1:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;->f$2:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;->f$3:Landroid/os/ParcelFileDescriptor;

    iget-object v4, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;->f$4:Landroid/os/ParcelFileDescriptor;

    iget-object v5, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$DataShareCallbackDelegate$x2Qz6JROlFUZJrFhBfDpz3lEo0Q;->f$5:Landroid/service/contentcapture/IDataShareReadAdapter;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;->lambda$accept$1$ContentCaptureManagerService$DataShareCallbackDelegate(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/IDataShareReadAdapter;)V

    return-void
.end method

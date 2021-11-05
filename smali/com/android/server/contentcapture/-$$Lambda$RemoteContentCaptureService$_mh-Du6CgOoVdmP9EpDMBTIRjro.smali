.class public final synthetic Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$_mh-Du6CgOoVdmP9EpDMBTIRjro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/view/contentcapture/DataShareRequest;

.field public final synthetic f$1:Landroid/service/contentcapture/IDataShareCallback$Stub;


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$_mh-Du6CgOoVdmP9EpDMBTIRjro;->f$0:Landroid/view/contentcapture/DataShareRequest;

    iput-object p2, p0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$_mh-Du6CgOoVdmP9EpDMBTIRjro;->f$1:Landroid/service/contentcapture/IDataShareCallback$Stub;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$_mh-Du6CgOoVdmP9EpDMBTIRjro;->f$0:Landroid/view/contentcapture/DataShareRequest;

    iget-object v1, p0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$_mh-Du6CgOoVdmP9EpDMBTIRjro;->f$1:Landroid/service/contentcapture/IDataShareCallback$Stub;

    check-cast p1, Landroid/service/contentcapture/IContentCaptureService;

    invoke-static {v0, v1, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->lambda$onDataShareRequest$4(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback$Stub;Landroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method

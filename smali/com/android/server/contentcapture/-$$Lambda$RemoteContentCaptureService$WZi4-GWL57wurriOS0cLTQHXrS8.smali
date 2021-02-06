.class public final synthetic Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$WZi4-GWL57wurriOS0cLTQHXrS8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/service/contentcapture/SnapshotData;


# direct methods
.method public synthetic constructor <init>(ILandroid/service/contentcapture/SnapshotData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$WZi4-GWL57wurriOS0cLTQHXrS8;->f$0:I

    iput-object p2, p0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$WZi4-GWL57wurriOS0cLTQHXrS8;->f$1:Landroid/service/contentcapture/SnapshotData;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 2

    iget v0, p0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$WZi4-GWL57wurriOS0cLTQHXrS8;->f$0:I

    iget-object v1, p0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$WZi4-GWL57wurriOS0cLTQHXrS8;->f$1:Landroid/service/contentcapture/SnapshotData;

    check-cast p1, Landroid/service/contentcapture/IContentCaptureService;

    invoke-static {v0, v1, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->lambda$onActivitySnapshotRequest$2(ILandroid/service/contentcapture/SnapshotData;Landroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method

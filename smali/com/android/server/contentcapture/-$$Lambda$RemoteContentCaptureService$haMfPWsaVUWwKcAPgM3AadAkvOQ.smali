.class public final synthetic Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$haMfPWsaVUWwKcAPgM3AadAkvOQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/view/contentcapture/DataRemovalRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/DataRemovalRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$haMfPWsaVUWwKcAPgM3AadAkvOQ;->f$0:Landroid/view/contentcapture/DataRemovalRequest;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$haMfPWsaVUWwKcAPgM3AadAkvOQ;->f$0:Landroid/view/contentcapture/DataRemovalRequest;

    check-cast p1, Landroid/service/contentcapture/IContentCaptureService;

    invoke-static {v0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->lambda$onDataRemovalRequest$3(Landroid/view/contentcapture/DataRemovalRequest;Landroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method

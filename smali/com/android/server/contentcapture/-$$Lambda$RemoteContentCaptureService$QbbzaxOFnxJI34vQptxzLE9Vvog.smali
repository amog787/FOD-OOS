.class public final synthetic Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$QbbzaxOFnxJI34vQptxzLE9Vvog;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$QbbzaxOFnxJI34vQptxzLE9Vvog;->f$0:I

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    iget v0, p0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$QbbzaxOFnxJI34vQptxzLE9Vvog;->f$0:I

    check-cast p1, Landroid/service/contentcapture/IContentCaptureService;

    invoke-static {v0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->lambda$onSessionFinished$1(ILandroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method

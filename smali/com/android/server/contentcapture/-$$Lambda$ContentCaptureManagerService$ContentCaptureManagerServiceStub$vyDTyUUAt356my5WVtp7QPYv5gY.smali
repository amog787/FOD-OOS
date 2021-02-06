.class public final synthetic Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$vyDTyUUAt356my5WVtp7QPYv5gY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$vyDTyUUAt356my5WVtp7QPYv5gY;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$ContentCaptureManagerServiceStub$vyDTyUUAt356my5WVtp7QPYv5gY;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->lambda$isContentCaptureFeatureEnabled$0$ContentCaptureManagerService$ContentCaptureManagerServiceStub()V

    return-void
.end method

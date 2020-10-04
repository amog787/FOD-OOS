.class public final synthetic Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$yRaGuMutdbjMq9h32e3TC2_1a_A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field private final synthetic f$0:Landroid/service/contentcapture/ActivityEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/service/contentcapture/ActivityEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$yRaGuMutdbjMq9h32e3TC2_1a_A;->f$0:Landroid/service/contentcapture/ActivityEvent;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/contentcapture/-$$Lambda$RemoteContentCaptureService$yRaGuMutdbjMq9h32e3TC2_1a_A;->f$0:Landroid/service/contentcapture/ActivityEvent;

    check-cast p1, Landroid/service/contentcapture/IContentCaptureService;

    invoke-static {v0, p1}, Lcom/android/server/contentcapture/RemoteContentCaptureService;->lambda$onActivityLifecycleEvent$4(Landroid/service/contentcapture/ActivityEvent;Landroid/service/contentcapture/IContentCaptureService;)V

    return-void
.end method

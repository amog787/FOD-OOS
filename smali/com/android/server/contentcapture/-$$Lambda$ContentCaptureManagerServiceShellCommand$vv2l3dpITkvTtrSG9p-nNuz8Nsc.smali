.class public final synthetic Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerServiceShellCommand$vv2l3dpITkvTtrSG9p-nNuz8Nsc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/internal/os/IResultReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerServiceShellCommand$vv2l3dpITkvTtrSG9p-nNuz8Nsc;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

    iput p2, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerServiceShellCommand$vv2l3dpITkvTtrSG9p-nNuz8Nsc;->f$1:I

    iput-object p3, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerServiceShellCommand$vv2l3dpITkvTtrSG9p-nNuz8Nsc;->f$2:Lcom/android/internal/os/IResultReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerServiceShellCommand$vv2l3dpITkvTtrSG9p-nNuz8Nsc;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

    iget v1, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerServiceShellCommand$vv2l3dpITkvTtrSG9p-nNuz8Nsc;->f$1:I

    iget-object v2, p0, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerServiceShellCommand$vv2l3dpITkvTtrSG9p-nNuz8Nsc;->f$2:Lcom/android/internal/os/IResultReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->lambda$requestList$1$ContentCaptureManagerServiceShellCommand(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

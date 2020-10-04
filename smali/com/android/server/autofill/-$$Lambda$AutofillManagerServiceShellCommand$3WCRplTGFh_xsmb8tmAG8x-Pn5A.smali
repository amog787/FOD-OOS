.class public final synthetic Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$3WCRplTGFh_xsmb8tmAG8x-Pn5A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field private final synthetic f$0:Ljava/io/PrintWriter;

.field private final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$3WCRplTGFh_xsmb8tmAG8x-Pn5A;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$3WCRplTGFh_xsmb8tmAG8x-Pn5A;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$3WCRplTGFh_xsmb8tmAG8x-Pn5A;->f$0:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$3WCRplTGFh_xsmb8tmAG8x-Pn5A;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->lambda$getFieldClassificationScore$0(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V

    return-void
.end method

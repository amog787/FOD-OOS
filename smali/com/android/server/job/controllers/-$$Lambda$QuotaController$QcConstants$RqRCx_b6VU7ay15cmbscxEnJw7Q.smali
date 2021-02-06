.class public final synthetic Lcom/android/server/job/controllers/-$$Lambda$QuotaController$QcConstants$RqRCx_b6VU7ay15cmbscxEnJw7Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/QuotaController$QcConstants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController$QcConstants;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$QcConstants$RqRCx_b6VU7ay15cmbscxEnJw7Q;->f$0:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$QcConstants$RqRCx_b6VU7ay15cmbscxEnJw7Q;->f$0:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->lambda$updateConstants$0$QuotaController$QcConstants()V

    return-void
.end method

.class public final synthetic Lcom/android/server/autofill/-$$Lambda$RemoteFillService$adrL6UDQX3d0e-QQL11h9TWJcM4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic f$1:Ljava/lang/Throwable;

.field public final synthetic f$2:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$adrL6UDQX3d0e-QQL11h9TWJcM4;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$adrL6UDQX3d0e-QQL11h9TWJcM4;->f$1:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$adrL6UDQX3d0e-QQL11h9TWJcM4;->f$2:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$adrL6UDQX3d0e-QQL11h9TWJcM4;->f$0:Lcom/android/server/autofill/RemoteFillService;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$adrL6UDQX3d0e-QQL11h9TWJcM4;->f$1:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$adrL6UDQX3d0e-QQL11h9TWJcM4;->f$2:Landroid/content/IntentSender;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/RemoteFillService;->lambda$onSaveRequest$4$RemoteFillService(Ljava/lang/Throwable;Landroid/content/IntentSender;)V

    return-void
.end method

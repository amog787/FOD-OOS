.class public final synthetic Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$qroIh2ewx0BLP-J9XIAX2CaX8J4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field private final synthetic f$0:Landroid/app/prediction/AppPredictionSessionId;

.field private final synthetic f$1:Landroid/app/prediction/AppTargetEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$qroIh2ewx0BLP-J9XIAX2CaX8J4;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    iput-object p2, p0, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$qroIh2ewx0BLP-J9XIAX2CaX8J4;->f$1:Landroid/app/prediction/AppTargetEvent;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$qroIh2ewx0BLP-J9XIAX2CaX8J4;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    iget-object v1, p0, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$qroIh2ewx0BLP-J9XIAX2CaX8J4;->f$1:Landroid/app/prediction/AppTargetEvent;

    check-cast p1, Landroid/service/appprediction/IPredictionService;

    invoke-static {v0, v1, p1}, Lcom/android/server/appprediction/RemoteAppPredictionService;->lambda$notifyAppTargetEvent$1(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;Landroid/service/appprediction/IPredictionService;)V

    return-void
.end method

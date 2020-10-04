.class public final synthetic Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$9DCowUTEF8fYuBlWGxOmP5hTAWA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field private final synthetic f$0:Landroid/app/prediction/AppPredictionSessionId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$9DCowUTEF8fYuBlWGxOmP5hTAWA;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/appprediction/-$$Lambda$RemoteAppPredictionService$9DCowUTEF8fYuBlWGxOmP5hTAWA;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    check-cast p1, Landroid/service/appprediction/IPredictionService;

    invoke-static {v0, p1}, Lcom/android/server/appprediction/RemoteAppPredictionService;->lambda$requestPredictionUpdate$6(Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V

    return-void
.end method

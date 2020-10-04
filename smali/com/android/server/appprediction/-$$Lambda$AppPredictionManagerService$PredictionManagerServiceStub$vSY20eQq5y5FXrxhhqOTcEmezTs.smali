.class public final synthetic Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vSY20eQq5y5FXrxhhqOTcEmezTs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/app/prediction/AppPredictionSessionId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vSY20eQq5y5FXrxhhqOTcEmezTs;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$vSY20eQq5y5FXrxhhqOTcEmezTs;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    invoke-static {v0, p1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->lambda$requestPredictionUpdate$6(Landroid/app/prediction/AppPredictionSessionId;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    return-void
.end method

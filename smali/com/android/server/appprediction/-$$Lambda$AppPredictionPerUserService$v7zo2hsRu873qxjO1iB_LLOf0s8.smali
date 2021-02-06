.class public final synthetic Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$v7zo2hsRu873qxjO1iB_LLOf0s8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/app/prediction/AppPredictionContext;

.field public final synthetic f$1:Landroid/app/prediction/AppPredictionSessionId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$v7zo2hsRu873qxjO1iB_LLOf0s8;->f$0:Landroid/app/prediction/AppPredictionContext;

    iput-object p2, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$v7zo2hsRu873qxjO1iB_LLOf0s8;->f$1:Landroid/app/prediction/AppPredictionSessionId;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$v7zo2hsRu873qxjO1iB_LLOf0s8;->f$0:Landroid/app/prediction/AppPredictionContext;

    iget-object v1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$v7zo2hsRu873qxjO1iB_LLOf0s8;->f$1:Landroid/app/prediction/AppPredictionSessionId;

    check-cast p1, Landroid/service/appprediction/IPredictionService;

    invoke-static {v0, v1, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->lambda$onCreatePredictionSessionLocked$0(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;Landroid/service/appprediction/IPredictionService;)V

    return-void
.end method

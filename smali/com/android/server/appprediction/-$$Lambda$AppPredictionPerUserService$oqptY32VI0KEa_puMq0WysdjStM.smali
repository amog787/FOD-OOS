.class public final synthetic Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$oqptY32VI0KEa_puMq0WysdjStM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/app/prediction/AppPredictionSessionId;

.field public final synthetic f$1:Landroid/content/pm/ParceledListSlice;

.field public final synthetic f$2:Landroid/app/prediction/IPredictionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$oqptY32VI0KEa_puMq0WysdjStM;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    iput-object p2, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$oqptY32VI0KEa_puMq0WysdjStM;->f$1:Landroid/content/pm/ParceledListSlice;

    iput-object p3, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$oqptY32VI0KEa_puMq0WysdjStM;->f$2:Landroid/app/prediction/IPredictionCallback;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$oqptY32VI0KEa_puMq0WysdjStM;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    iget-object v1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$oqptY32VI0KEa_puMq0WysdjStM;->f$1:Landroid/content/pm/ParceledListSlice;

    iget-object v2, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$oqptY32VI0KEa_puMq0WysdjStM;->f$2:Landroid/app/prediction/IPredictionCallback;

    check-cast p1, Landroid/service/appprediction/IPredictionService;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->lambda$sortAppTargetsLocked$3(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Landroid/service/appprediction/IPredictionService;)V

    return-void
.end method

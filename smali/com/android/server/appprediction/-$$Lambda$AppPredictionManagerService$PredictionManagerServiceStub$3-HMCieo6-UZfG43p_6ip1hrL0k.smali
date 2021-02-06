.class public final synthetic Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$3-HMCieo6-UZfG43p_6ip1hrL0k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/prediction/AppPredictionSessionId;

.field public final synthetic f$1:Landroid/content/pm/ParceledListSlice;

.field public final synthetic f$2:Landroid/app/prediction/IPredictionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$3-HMCieo6-UZfG43p_6ip1hrL0k;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    iput-object p2, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$3-HMCieo6-UZfG43p_6ip1hrL0k;->f$1:Landroid/content/pm/ParceledListSlice;

    iput-object p3, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$3-HMCieo6-UZfG43p_6ip1hrL0k;->f$2:Landroid/app/prediction/IPredictionCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$3-HMCieo6-UZfG43p_6ip1hrL0k;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    iget-object v1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$3-HMCieo6-UZfG43p_6ip1hrL0k;->f$1:Landroid/content/pm/ParceledListSlice;

    iget-object v2, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$3-HMCieo6-UZfG43p_6ip1hrL0k;->f$2:Landroid/app/prediction/IPredictionCallback;

    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->lambda$sortAppTargets$3(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    return-void
.end method

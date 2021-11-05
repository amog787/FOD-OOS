.class public final synthetic Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$4yDhFef-19aMlJ-Y7O6RdjSAvnk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/prediction/AppPredictionSessionId;

.field public final synthetic f$1:Landroid/app/prediction/AppTargetEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$4yDhFef-19aMlJ-Y7O6RdjSAvnk;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    iput-object p2, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$4yDhFef-19aMlJ-Y7O6RdjSAvnk;->f$1:Landroid/app/prediction/AppTargetEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$4yDhFef-19aMlJ-Y7O6RdjSAvnk;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    iget-object v1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$4yDhFef-19aMlJ-Y7O6RdjSAvnk;->f$1:Landroid/app/prediction/AppTargetEvent;

    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    invoke-static {v0, v1, p1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->lambda$notifyAppTargetEvent$1(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    return-void
.end method

.class public Lcom/android/server/people/prediction/AppTargetPredictor;
.super Ljava/lang/Object;
.source "AppTargetPredictor.java"


# static fields
.field private static final UI_SURFACE_SHARE:Ljava/lang/String; = "share"


# instance fields
.field private final mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field final mCallingUserId:I

.field private final mDataManager:Lcom/android/server/people/data/DataManager;

.field private final mPredictionContext:Landroid/app/prediction/AppPredictionContext;

.field private final mUpdatePredictionsMethod:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;I)V
    .locals 1
    .param p1, "predictionContext"    # Landroid/app/prediction/AppPredictionContext;
    .param p3, "dataManager"    # Lcom/android/server/people/data/DataManager;
    .param p4, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionContext;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;",
            "Lcom/android/server/people/data/DataManager;",
            "I)V"
        }
    .end annotation

    .line 63
    .local p2, "updatePredictionsMethod":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/prediction/AppTarget;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    .line 65
    iput-object p2, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Ljava/util/function/Consumer;

    .line 66
    iput-object p3, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mDataManager:Lcom/android/server/people/data/DataManager;

    .line 67
    iput p4, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallingUserId:I

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 69
    return-void
.end method

.method public static create(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;I)Lcom/android/server/people/prediction/AppTargetPredictor;
    .locals 2
    .param p0, "predictionContext"    # Landroid/app/prediction/AppPredictionContext;
    .param p2, "dataManager"    # Lcom/android/server/people/data/DataManager;
    .param p3, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionContext;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;",
            "Lcom/android/server/people/data/DataManager;",
            "I)",
            "Lcom/android/server/people/prediction/AppTargetPredictor;"
        }
    .end annotation

    .line 47
    .local p1, "updatePredictionsMethod":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/prediction/AppTarget;>;>;"
    invoke-virtual {p0}, Landroid/app/prediction/AppPredictionContext;->getUiSurface()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "share"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/server/people/prediction/ShareTargetPredictor;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/people/prediction/ShareTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;I)V

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lcom/android/server/people/prediction/AppTargetPredictor;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/people/prediction/AppTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;I)V

    return-object v0
.end method


# virtual methods
.method getDataManager()Lcom/android/server/people/data/DataManager;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mDataManager:Lcom/android/server/people/data/DataManager;

    return-object v0
.end method

.method getPredictionContext()Landroid/app/prediction/AppPredictionContext;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    return-object v0
.end method

.method public getUpdatePredictionsMethod()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Ljava/util/function/Consumer;

    return-object v0
.end method

.method public synthetic lambda$onAppTargetEvent$0$AppTargetPredictor(Landroid/app/prediction/AppTargetEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/app/prediction/AppTargetEvent;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/people/prediction/AppTargetPredictor;->reportAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    return-void
.end method

.method public synthetic lambda$onSortAppTargets$1$AppTargetPredictor(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "targets"    # Ljava/util/List;
    .param p2, "callback"    # Ljava/util/function/Consumer;

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/prediction/AppTargetPredictor;->sortTargets(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/app/prediction/AppTargetEvent;

    .line 76
    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/people/prediction/-$$Lambda$AppTargetPredictor$AoCSjvx8UmO2ru-6I2SrqntXIec;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/prediction/-$$Lambda$AppTargetPredictor$AoCSjvx8UmO2ru-6I2SrqntXIec;-><init>(Lcom/android/server/people/prediction/AppTargetPredictor;Landroid/app/prediction/AppTargetEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public onLaunchLocationShown(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "launchLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTargetId;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p2, "targetIds":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTargetId;>;"
    return-void
.end method

.method public onRequestPredictionUpdate()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/people/prediction/-$$Lambda$YyxHEnch1g0ktFuyNAvHCkKiY6A;

    invoke-direct {v1, p0}, Lcom/android/server/people/prediction/-$$Lambda$YyxHEnch1g0ktFuyNAvHCkKiY6A;-><init>(Lcom/android/server/people/prediction/AppTargetPredictor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public onSortAppTargets(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;)V"
        }
    .end annotation

    .line 92
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/prediction/AppTarget;>;>;"
    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/people/prediction/-$$Lambda$AppTargetPredictor$jEhX8IfS4HyB_hke7vWd1UlHo_A;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/people/prediction/-$$Lambda$AppTargetPredictor$jEhX8IfS4HyB_hke7vWd1UlHo_A;-><init>(Lcom/android/server/people/prediction/AppTargetPredictor;Ljava/util/List;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method predictTargets()V
    .locals 0

    .line 116
    return-void
.end method

.method reportAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/app/prediction/AppTargetEvent;

    .line 111
    return-void
.end method

.method sortTargets(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;)V"
        }
    .end annotation

    .line 124
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/util/List<Landroid/app/prediction/AppTarget;>;>;"
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method updatePredictions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

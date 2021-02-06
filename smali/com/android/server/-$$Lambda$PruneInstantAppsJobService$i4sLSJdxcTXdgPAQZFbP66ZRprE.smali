.class public final synthetic Lcom/android/server/-$$Lambda$PruneInstantAppsJobService$i4sLSJdxcTXdgPAQZFbP66ZRprE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PruneInstantAppsJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PruneInstantAppsJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$PruneInstantAppsJobService$i4sLSJdxcTXdgPAQZFbP66ZRprE;->f$0:Lcom/android/server/PruneInstantAppsJobService;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$PruneInstantAppsJobService$i4sLSJdxcTXdgPAQZFbP66ZRprE;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$PruneInstantAppsJobService$i4sLSJdxcTXdgPAQZFbP66ZRprE;->f$0:Lcom/android/server/PruneInstantAppsJobService;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$PruneInstantAppsJobService$i4sLSJdxcTXdgPAQZFbP66ZRprE;->f$1:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1}, Lcom/android/server/PruneInstantAppsJobService;->lambda$onStartJob$0$PruneInstantAppsJobService(Landroid/app/job/JobParameters;)V

    return-void
.end method

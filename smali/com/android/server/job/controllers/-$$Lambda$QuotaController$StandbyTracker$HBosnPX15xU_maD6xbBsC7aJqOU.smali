.class public final synthetic Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$HBosnPX15xU_maD6xbBsC7aJqOU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/job/controllers/QuotaController$StandbyTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController$StandbyTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$HBosnPX15xU_maD6xbBsC7aJqOU;->f$0:Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$HBosnPX15xU_maD6xbBsC7aJqOU;->f$0:Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->lambda$onParoleStateChanged$1$QuotaController$StandbyTracker()V

    return-void
.end method

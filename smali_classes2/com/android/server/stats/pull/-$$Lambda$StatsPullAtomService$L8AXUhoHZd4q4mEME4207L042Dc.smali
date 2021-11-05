.class public final synthetic Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$L8AXUhoHZd4q4mEME4207L042Dc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$L8AXUhoHZd4q4mEME4207L042Dc;->f$0:I

    iput-object p2, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$L8AXUhoHZd4q4mEME4207L042Dc;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/health/V2_0/HealthInfo;)V
    .locals 2

    iget v0, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$L8AXUhoHZd4q4mEME4207L042Dc;->f$0:I

    iget-object v1, p0, Lcom/android/server/stats/pull/-$$Lambda$StatsPullAtomService$L8AXUhoHZd4q4mEME4207L042Dc;->f$1:Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$pullHealthHalLocked$19(ILjava/util/List;ILandroid/hardware/health/V2_0/HealthInfo;)V

    return-void
.end method

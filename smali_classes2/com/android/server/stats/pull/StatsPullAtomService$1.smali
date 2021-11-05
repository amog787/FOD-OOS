.class Lcom/android/server/stats/pull/StatsPullAtomService$1;
.super Ljava/lang/Object;
.source "StatsPullAtomService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;->pullWifiActivityInfoLocked(ILjava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 1653
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$1;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1658
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1659
    return-void
.end method

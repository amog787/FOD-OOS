.class public final synthetic Lcom/android/server/location/-$$Lambda$ContextHubTransactionManager$sHbjr4TaLEATkCX_yhD2L7ebuxE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/ContextHubTransactionManager;

.field public final synthetic f$1:Lcom/android/server/location/ContextHubServiceTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/ContextHubTransactionManager;Lcom/android/server/location/ContextHubServiceTransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$ContextHubTransactionManager$sHbjr4TaLEATkCX_yhD2L7ebuxE;->f$0:Lcom/android/server/location/ContextHubTransactionManager;

    iput-object p2, p0, Lcom/android/server/location/-$$Lambda$ContextHubTransactionManager$sHbjr4TaLEATkCX_yhD2L7ebuxE;->f$1:Lcom/android/server/location/ContextHubServiceTransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$ContextHubTransactionManager$sHbjr4TaLEATkCX_yhD2L7ebuxE;->f$0:Lcom/android/server/location/ContextHubTransactionManager;

    iget-object v1, p0, Lcom/android/server/location/-$$Lambda$ContextHubTransactionManager$sHbjr4TaLEATkCX_yhD2L7ebuxE;->f$1:Lcom/android/server/location/ContextHubServiceTransaction;

    invoke-virtual {v0, v1}, Lcom/android/server/location/ContextHubTransactionManager;->lambda$startNextTransaction$0$ContextHubTransactionManager(Lcom/android/server/location/ContextHubServiceTransaction;)V

    return-void
.end method

.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$nKgo614yKB7ibKKY1a7J5CTtlEU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$nKgo614yKB7ibKKY1a7J5CTtlEU;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iput p2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$nKgo614yKB7ibKKY1a7J5CTtlEU;->f$1:I

    iput-object p3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$nKgo614yKB7ibKKY1a7J5CTtlEU;->f$2:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$nKgo614yKB7ibKKY1a7J5CTtlEU;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget v1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$nKgo614yKB7ibKKY1a7J5CTtlEU;->f$1:I

    iget-object v2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$nKgo614yKB7ibKKY1a7J5CTtlEU;->f$2:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$notifyStagedSession$8$RollbackManagerServiceImpl(ILjava/util/concurrent/LinkedBlockingQueue;)V

    return-void
.end method

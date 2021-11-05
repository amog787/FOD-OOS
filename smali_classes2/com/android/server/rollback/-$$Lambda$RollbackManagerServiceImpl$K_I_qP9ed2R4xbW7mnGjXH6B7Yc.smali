.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$K_I_qP9ed2R4xbW7mnGjXH6B7Yc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$K_I_qP9ed2R4xbW7mnGjXH6B7Yc;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$K_I_qP9ed2R4xbW7mnGjXH6B7Yc;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$K_I_qP9ed2R4xbW7mnGjXH6B7Yc;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$K_I_qP9ed2R4xbW7mnGjXH6B7Yc;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$reloadPersistedData$1$RollbackManagerServiceImpl(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

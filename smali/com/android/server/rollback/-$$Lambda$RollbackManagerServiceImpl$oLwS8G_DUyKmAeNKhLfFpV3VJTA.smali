.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oLwS8G_DUyKmAeNKhLfFpV3VJTA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oLwS8G_DUyKmAeNKhLfFpV3VJTA;->f$0:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oLwS8G_DUyKmAeNKhLfFpV3VJTA;->f$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$getAvailableRollbacks$1(Ljava/util/concurrent/LinkedBlockingQueue;)V

    return-void
.end method

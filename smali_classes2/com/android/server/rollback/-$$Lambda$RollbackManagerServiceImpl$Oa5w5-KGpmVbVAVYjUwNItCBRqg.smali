.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$Oa5w5-KGpmVbVAVYjUwNItCBRqg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$Oa5w5-KGpmVbVAVYjUwNItCBRqg;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iput-wide p2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$Oa5w5-KGpmVbVAVYjUwNItCBRqg;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$Oa5w5-KGpmVbVAVYjUwNItCBRqg;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget-wide v1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$Oa5w5-KGpmVbVAVYjUwNItCBRqg;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$blockRollbackManager$2$RollbackManagerServiceImpl(J)V

    return-void
.end method

.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$5wr7eOUmDTfGrVye83nSq68E9AA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$5wr7eOUmDTfGrVye83nSq68E9AA;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iput p2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$5wr7eOUmDTfGrVye83nSq68E9AA;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$5wr7eOUmDTfGrVye83nSq68E9AA;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget v1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$5wr7eOUmDTfGrVye83nSq68E9AA;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$onUnlockUser$6$RollbackManagerServiceImpl(I)V

    return-void
.end method

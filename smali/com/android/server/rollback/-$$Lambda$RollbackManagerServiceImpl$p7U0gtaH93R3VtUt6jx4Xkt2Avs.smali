.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$p7U0gtaH93R3VtUt6jx4Xkt2Avs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$p7U0gtaH93R3VtUt6jx4Xkt2Avs;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$p7U0gtaH93R3VtUt6jx4Xkt2Avs;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$reloadPersistedData$5$RollbackManagerServiceImpl()V

    return-void
.end method

.class public final synthetic Lcom/android/server/am/-$$Lambda$UserController$2SW3yysxmLLBBPZQ1P-qHVFL46g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$UserController$2SW3yysxmLLBBPZQ1P-qHVFL46g;->f$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$UserController$2SW3yysxmLLBBPZQ1P-qHVFL46g;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$UserController$2SW3yysxmLLBBPZQ1P-qHVFL46g;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$UserController$2SW3yysxmLLBBPZQ1P-qHVFL46g;->f$0:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$UserController$2SW3yysxmLLBBPZQ1P-qHVFL46g;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$UserController$2SW3yysxmLLBBPZQ1P-qHVFL46g;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/UserController;->lambda$dispatchUserLocking$6$UserController(ILjava/util/List;)V

    return-void
.end method

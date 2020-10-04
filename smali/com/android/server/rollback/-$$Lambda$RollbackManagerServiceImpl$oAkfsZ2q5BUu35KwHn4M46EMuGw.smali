.class public final synthetic Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field private final synthetic f$1:Lcom/android/server/rollback/RollbackData;

.field private final synthetic f$2:Landroid/content/IntentSender;

.field private final synthetic f$3:I

.field private final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackData;Landroid/content/IntentSender;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iput-object p2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;->f$1:Lcom/android/server/rollback/RollbackData;

    iput-object p3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;->f$2:Landroid/content/IntentSender;

    iput p4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;->f$3:I

    iput-object p5, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;->f$1:Lcom/android/server/rollback/RollbackData;

    iget-object v2, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;->f$2:Landroid/content/IntentSender;

    iget v3, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;->f$3:I

    iget-object v4, p0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;->f$4:Ljava/util/List;

    move-object v5, p1

    check-cast v5, Landroid/content/Intent;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$commitRollbackInternal$4$RollbackManagerServiceImpl(Lcom/android/server/rollback/RollbackData;Landroid/content/IntentSender;ILjava/util/List;Landroid/content/Intent;)V

    return-void
.end method

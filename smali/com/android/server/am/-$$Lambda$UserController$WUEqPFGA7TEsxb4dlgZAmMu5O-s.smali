.class public final synthetic Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/UserController;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;IILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;->f$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;->f$1:I

    iput p3, p0, Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;->f$0:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;->f$1:I

    iget v2, p0, Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;->f$2:I

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$UserController$WUEqPFGA7TEsxb4dlgZAmMu5O-s;->f$3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController;->lambda$finishUserStopped$6$UserController(IILjava/util/ArrayList;)V

    return-void
.end method

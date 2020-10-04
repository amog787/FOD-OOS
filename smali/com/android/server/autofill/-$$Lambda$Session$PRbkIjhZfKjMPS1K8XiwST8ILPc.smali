.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Session$PRbkIjhZfKjMPS1K8XiwST8ILPc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/Session;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$Session$PRbkIjhZfKjMPS1K8XiwST8ILPc;->f$0:Lcom/android/server/autofill/Session;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$Session$PRbkIjhZfKjMPS1K8XiwST8ILPc;->f$0:Lcom/android/server/autofill/Session;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/Session;->lambda$cancelCurrentRequestLocked$0$Session(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    return-void
.end method

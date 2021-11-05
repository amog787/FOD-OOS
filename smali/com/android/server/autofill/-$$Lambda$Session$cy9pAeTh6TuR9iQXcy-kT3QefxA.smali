.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Session$cy9pAeTh6TuR9iQXcy-kT3QefxA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$Session$cy9pAeTh6TuR9iQXcy-kT3QefxA;->f$0:Lcom/android/server/autofill/Session;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$Session$cy9pAeTh6TuR9iQXcy-kT3QefxA;->f$0:Lcom/android/server/autofill/Session;

    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->lambda$triggerAugmentedAutofillLocked$5$Session()V

    return-void
.end method

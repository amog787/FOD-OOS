.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Session$Pjng4nWFLSS2miVoJMFq_OQCncI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session;

.field public final synthetic f$1:Landroid/view/autofill/AutofillId;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$Session$Pjng4nWFLSS2miVoJMFq_OQCncI;->f$0:Lcom/android/server/autofill/Session;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$Session$Pjng4nWFLSS2miVoJMFq_OQCncI;->f$1:Landroid/view/autofill/AutofillId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$Session$Pjng4nWFLSS2miVoJMFq_OQCncI;->f$0:Lcom/android/server/autofill/Session;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$Session$Pjng4nWFLSS2miVoJMFq_OQCncI;->f$1:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/Session;->lambda$requestShowInlineSuggestionsLocked$3$Session(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

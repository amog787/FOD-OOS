.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field public final synthetic f$3:Landroid/view/autofill/AutofillId;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/view/autofill/AutofillValue;

.field public final synthetic f$6:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;ILcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/AutofillId;ZLandroid/view/autofill/AutofillValue;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;->f$0:Lcom/android/server/autofill/Session;

    iput p2, p0, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;->f$1:I

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;->f$2:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iput-object p4, p0, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;->f$3:Landroid/view/autofill/AutofillId;

    iput-boolean p5, p0, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;->f$4:Z

    iput-object p6, p0, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;->f$5:Landroid/view/autofill/AutofillValue;

    iput-object p7, p0, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;->f$6:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;->f$0:Lcom/android/server/autofill/Session;

    iget v1, p0, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;->f$1:I

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;->f$2:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iget-object v3, p0, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;->f$3:Landroid/view/autofill/AutofillId;

    iget-boolean v4, p0, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;->f$4:Z

    iget-object v5, p0, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;->f$5:Landroid/view/autofill/AutofillValue;

    iget-object v6, p0, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;->f$6:Ljava/util/function/Function;

    move-object v7, p1

    check-cast v7, Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/autofill/Session;->lambda$triggerAugmentedAutofillLocked$6$Session(ILcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/AutofillId;ZLandroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/inputmethod/InlineSuggestionsRequest;)V

    return-void
.end method

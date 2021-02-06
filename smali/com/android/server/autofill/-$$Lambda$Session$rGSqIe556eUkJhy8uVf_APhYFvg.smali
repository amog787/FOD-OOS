.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Session$rGSqIe556eUkJhy8uVf_APhYFvg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session;

.field public final synthetic f$1:Landroid/view/autofill/AutofillId;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$Session$rGSqIe556eUkJhy8uVf_APhYFvg;->f$0:Lcom/android/server/autofill/Session;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$Session$rGSqIe556eUkJhy8uVf_APhYFvg;->f$1:Landroid/view/autofill/AutofillId;

    iput-object p3, p0, Lcom/android/server/autofill/-$$Lambda$Session$rGSqIe556eUkJhy8uVf_APhYFvg;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$Session$rGSqIe556eUkJhy8uVf_APhYFvg;->f$0:Lcom/android/server/autofill/Session;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$Session$rGSqIe556eUkJhy8uVf_APhYFvg;->f$1:Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Lcom/android/server/autofill/-$$Lambda$Session$rGSqIe556eUkJhy8uVf_APhYFvg;->f$2:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/autofill/Session;->lambda$triggerAugmentedAutofillLocked$7$Session(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    return-void
.end method

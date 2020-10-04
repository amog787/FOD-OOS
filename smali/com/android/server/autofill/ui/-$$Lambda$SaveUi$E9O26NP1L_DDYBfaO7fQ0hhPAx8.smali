.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/autofill/ui/SaveUi;

.field private final synthetic f$1:Landroid/service/autofill/SaveInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8;->f$1:Landroid/service/autofill/SaveInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8;->f$0:Lcom/android/server/autofill/ui/SaveUi;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8;->f$1:Landroid/service/autofill/SaveInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/autofill/ui/SaveUi;->lambda$new$0$SaveUi(Landroid/service/autofill/SaveInfo;Landroid/view/View;)V

    return-void
.end method

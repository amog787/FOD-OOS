.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$PXbcwumYwHXYcovQfoabkLzf8CM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/service/autofill/InternalOnClickAction;

.field public final synthetic f$1:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/service/autofill/InternalOnClickAction;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$PXbcwumYwHXYcovQfoabkLzf8CM;->f$0:Landroid/service/autofill/InternalOnClickAction;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$PXbcwumYwHXYcovQfoabkLzf8CM;->f$1:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$PXbcwumYwHXYcovQfoabkLzf8CM;->f$0:Landroid/service/autofill/InternalOnClickAction;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$PXbcwumYwHXYcovQfoabkLzf8CM;->f$1:Landroid/view/ViewGroup;

    invoke-static {v0, v1, p1}, Lcom/android/server/autofill/ui/SaveUi;->lambda$applyCustomDescription$4(Landroid/service/autofill/InternalOnClickAction;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

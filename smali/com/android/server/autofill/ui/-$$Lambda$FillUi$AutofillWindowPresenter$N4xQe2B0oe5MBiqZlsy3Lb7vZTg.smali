.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$FillUi$AutofillWindowPresenter$N4xQe2B0oe5MBiqZlsy3Lb7vZTg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

.field public final synthetic f$1:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$AutofillWindowPresenter$N4xQe2B0oe5MBiqZlsy3Lb7vZTg;->f$0:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$AutofillWindowPresenter$N4xQe2B0oe5MBiqZlsy3Lb7vZTg;->f$1:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$AutofillWindowPresenter$N4xQe2B0oe5MBiqZlsy3Lb7vZTg;->f$0:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$AutofillWindowPresenter$N4xQe2B0oe5MBiqZlsy3Lb7vZTg;->f$1:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;->lambda$show$0$FillUi$AutofillWindowPresenter(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.class final Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;
.super Landroid/view/autofill/IAutofillWindowPresenter$Stub;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/FillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutofillWindowPresenter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/ui/FillUi;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-direct {p0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/autofill/ui/FillUi;
    .param p2, "x1"    # Lcom/android/server/autofill/ui/FillUi$1;

    .line 614
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    return-void
.end method


# virtual methods
.method public hide(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "transitionEpicenter"    # Landroid/graphics/Rect;

    .line 627
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v1}, Lcom/android/server/autofill/ui/FillUi;->access$100(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/autofill/ui/-$$Lambda$E4J-3bUcyqJNd4ZlExSBhwy8Tx4;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/-$$Lambda$E4J-3bUcyqJNd4ZlExSBhwy8Tx4;-><init>(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 628
    return-void
.end method

.method public synthetic lambda$show$0$FillUi$AutofillWindowPresenter(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .line 622
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi;->access$100(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->show(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transitionEpicenter"    # Landroid/graphics/Rect;
    .param p3, "fitsSystemWindows"    # Z
    .param p4, "layoutDirection"    # I

    .line 618
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutofillWindowPresenter.show(): fit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-static {p1}, Lcom/android/server/autofill/Helper;->paramsToString(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    const-string v1, "FillUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$AutofillWindowPresenter$N4xQe2B0oe5MBiqZlsy3Lb7vZTg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$AutofillWindowPresenter$N4xQe2B0oe5MBiqZlsy3Lb7vZTg;-><init>(Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 623
    return-void
.end method

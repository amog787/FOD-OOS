.class Lcom/android/server/power/ShutdownThread$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 417
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 418
    .local v0, "mWindowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x50b0076

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 420
    .local v1, "mShutdownDecor":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 421
    const v2, 0x5080124

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 422
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 423
    const/16 v3, 0xe02

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSystemUiVisibility(I)V

    .line 427
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 429
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x7d9

    const/16 v8, 0x400

    const/4 v9, -0x3

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 436
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v4, "ShutdownDecor"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 437
    const/4 v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 439
    if-eqz v0, :cond_0

    .line 440
    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    goto :goto_0

    .line 443
    :cond_1
    const-string v3, "ShutdownThread"

    const-string v4, "textView is null, so do nothing"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_2
    :goto_0
    return-void
.end method

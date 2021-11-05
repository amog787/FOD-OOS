.class final Lcom/android/server/wm/FactoryErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "FactoryErrorDialog.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/android/server/wm/FactoryErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/FactoryErrorDialog$1;-><init>(Lcom/android/server/wm/FactoryErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/wm/FactoryErrorDialog;->mHandler:Landroid/os/Handler;

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/FactoryErrorDialog;->setCancelable(Z)V

    .line 31
    const v1, 0x1040345

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/FactoryErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/android/server/wm/FactoryErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 33
    nop

    .line 34
    const v1, 0x1040348

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FactoryErrorDialog;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 33
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/wm/FactoryErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/wm/FactoryErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 37
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "Factory Error"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/server/wm/FactoryErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    .line 42
    return-void
.end method

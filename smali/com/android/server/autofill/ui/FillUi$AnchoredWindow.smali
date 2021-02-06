.class final Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/FillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AnchoredWindow"
.end annotation


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field private mShowParams:Landroid/view/WindowManager$LayoutParams;

.field private mShowing:Z

.field private final mWm:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/autofill/ui/FillUi;
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "overlayControl"    # Lcom/android/server/autofill/ui/OverlayControl;

    .line 682
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mWm:Landroid/view/WindowManager;

    .line 684
    iput-object p2, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    .line 685
    iput-object p3, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 686
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 669
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 669
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 669
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method


# virtual methods
.method hide()V
    .locals 1

    .line 724
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide(Z)V

    .line 725
    return-void
.end method

.method hide(Z)V
    .locals 3
    .param p1, "destroyCallbackOnError"    # Z

    .line 729
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 743
    goto :goto_1

    .line 742
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 733
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v1, "FillUi"

    const-string v2, "Exception hiding window "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    if-eqz p1, :cond_0

    .line 739
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v1}, Lcom/android/server/autofill/ui/FillUi;->access$200(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 744
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    return-void

    .line 742
    :goto_2
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 743
    throw v0
.end method

.method public show(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 692
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowParams:Landroid/view/WindowManager$LayoutParams;

    .line 693
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "FillUi"

    if-eqz v0, :cond_0

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show(): showing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/autofill/Helper;->paramsToString(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_0
    :try_start_0
    const-string v0, "android"

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 698
    const-string v0, "Autofill UI"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 699
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    if-nez v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x104015f

    .line 701
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 702
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    invoke-interface {v0, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->hideOverlays()V

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    goto :goto_0

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    invoke-interface {v0, v2, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception showing window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v1}, Lcom/android/server/autofill/ui/FillUi;->access$200(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V

    goto :goto_1

    .line 708
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 709
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filed with with token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " gone."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {v1}, Lcom/android/server/autofill/ui/FillUi;->access$200(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V

    .line 717
    .end local v0    # "e":Landroid/view/WindowManager$BadTokenException;
    :goto_0
    nop

    .line 718
    :goto_1
    return-void
.end method

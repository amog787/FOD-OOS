.class Lcom/android/server/policy/PhoneWindowManager$16;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 5528
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$16;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 5530
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 5532
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5533
    const v0, 0x1030420

    .local v0, "theme":I
    goto :goto_0

    .line 5535
    .end local v0    # "theme":I
    :cond_0
    const/4 v0, 0x0

    .line 5538
    .restart local v0    # "theme":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$16$1;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/policy/PhoneWindowManager$16$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$16;Landroid/content/Context;I)V

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 5561
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5562
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const v2, 0x1040115

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    goto :goto_1

    .line 5564
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const v2, 0x104010e

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 5566
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 5567
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 5568
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x7e5

    invoke-virtual {v1, v3}, Landroid/view/Window;->setType(I)V

    .line 5570
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x102

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 5573
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 5574
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5575
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x5

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 5576
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 5577
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5578
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 5579
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 5581
    .end local v0    # "theme":I
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$16;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$16;->val$msg:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5582
    return-void
.end method

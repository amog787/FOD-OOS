.class Lcom/android/server/ConnectivityService$7;
.super Ljava/lang/Thread;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;->startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;

.field final synthetic val$callerPkg:Ljava/lang/String;

.field final synthetic val$mgr:Landroid/net/wifi/WifiManager;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;

.field final synthetic val$showProvisioningUi:Z

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;ILandroid/net/wifi/WifiManager;Landroid/os/ResultReceiver;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 4281
    iput-object p1, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    iput p2, p0, Lcom/android/server/ConnectivityService$7;->val$type:I

    iput-object p3, p0, Lcom/android/server/ConnectivityService$7;->val$mgr:Landroid/net/wifi/WifiManager;

    iput-object p4, p0, Lcom/android/server/ConnectivityService$7;->val$receiver:Landroid/os/ResultReceiver;

    iput-boolean p5, p0, Lcom/android/server/ConnectivityService$7;->val$showProvisioningUi:Z

    iput-object p6, p0, Lcom/android/server/ConnectivityService$7;->val$callerPkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 4283
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 4329
    iget-object v0, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/OpThemeUtils;->getInstance(Landroid/content/Context;)Landroid/content/res/OpThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/OpThemeUtils;->getThemeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4330
    const v0, 0x5100013

    goto :goto_0

    .line 4337
    :cond_0
    const v0, 0x510001b

    :goto_0
    nop

    .line 4340
    .local v0, "resId":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    .line 4341
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x50f00e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    .line 4342
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/ConnectivityService$7$1;

    invoke-direct {v4, p0}, Lcom/android/server/ConnectivityService$7$1;-><init>(Lcom/android/server/ConnectivityService$7;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4358
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 4359
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 4360
    .local v2, "mDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x50b0005

    const/4 v6, 0x0

    .line 4361
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 4362
    .local v4, "dialogView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 4363
    .local v5, "vg":Landroid/view/ViewGroup;
    if-eqz v5, :cond_1

    .line 4364
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4366
    :cond_1
    const v6, 0x5080035

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 4367
    .local v6, "message":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x50f00e6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4368
    const v7, 0x5080120

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 4369
    .local v7, "checkBox":Landroid/widget/CheckBox;
    new-instance v8, Lcom/android/server/ConnectivityService$7$2;

    invoke-direct {v8, p0}, Lcom/android/server/ConnectivityService$7$2;-><init>(Lcom/android/server/ConnectivityService$7;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4376
    invoke-virtual {v7, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4377
    iget-object v8, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x50f00e5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 4378
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 4380
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4381
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v8, 0x7de

    invoke-virtual {v3, v8}, Landroid/view/Window;->setType(I)V

    .line 4382
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 4383
    iget-object v3, p0, Lcom/android/server/ConnectivityService$7;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3, v1}, Lcom/android/server/ConnectivityService;->access$6202(Lcom/android/server/ConnectivityService;Z)Z

    .line 4384
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 4385
    return-void
.end method

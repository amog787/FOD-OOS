.class Lcom/android/server/usb/UsbService$2;
.super Ljava/lang/Thread;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbService;->setCurrentFunctions(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbService;

.field final synthetic val$functions:J

.field final synthetic val$mgr:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService;Landroid/net/wifi/WifiManager;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbService;

    .line 512
    iput-object p1, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    iput-object p2, p0, Lcom/android/server/usb/UsbService$2;->val$mgr:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/usb/UsbService$2;->val$functions:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 514
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 554
    iget-object v0, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/OpThemeUtils;->getInstance(Landroid/content/Context;)Landroid/content/res/OpThemeUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/OpThemeUtils;->getThemeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 555
    const v0, 0x5100013

    goto :goto_0

    .line 562
    :cond_0
    const v0, 0x510001b

    :goto_0
    nop

    .line 564
    .local v0, "resId":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v3}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    .line 565
    invoke-static {v3}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x50f00e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    .line 566
    invoke-static {v3}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/usb/UsbService$2$1;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbService$2$1;-><init>(Lcom/android/server/usb/UsbService$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 575
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 576
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 577
    .local v2, "mDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x50b0005

    const/4 v6, 0x0

    .line 578
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 579
    .local v4, "dialogView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 580
    .local v5, "vg":Landroid/view/ViewGroup;
    if-eqz v5, :cond_1

    .line 581
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 583
    :cond_1
    const v6, 0x5080035

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 584
    .local v6, "message":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v7}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x50f00e6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    const v7, 0x5080120

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 586
    .local v7, "checkBox":Landroid/widget/CheckBox;
    new-instance v8, Lcom/android/server/usb/UsbService$2$2;

    invoke-direct {v8, p0}, Lcom/android/server/usb/UsbService$2$2;-><init>(Lcom/android/server/usb/UsbService$2;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 593
    invoke-virtual {v7, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 594
    iget-object v8, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v8}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x50f00e5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 595
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 597
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 598
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v8, 0x7de

    invoke-virtual {v3, v8}, Landroid/view/Window;->setType(I)V

    .line 599
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 600
    iget-object v3, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v3, v1}, Lcom/android/server/usb/UsbService;->access$502(Lcom/android/server/usb/UsbService;Z)Z

    .line 601
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 602
    return-void
.end method

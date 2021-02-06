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


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbService;

    .line 662
    iput-object p1, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    iput-wide p2, p0, Lcom/android/server/usb/UsbService$2;->val$functions:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 664
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 665
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    .line 666
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x50f0102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    .line 667
    invoke-static {v1}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/usb/UsbService$2$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbService$2$1;-><init>(Lcom/android/server/usb/UsbService$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 677
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 679
    .local v0, "mDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 680
    const v3, 0x50b0003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 681
    .local v2, "dialogView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 682
    .local v3, "vg":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 683
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 685
    :cond_0
    const v4, 0x5080034

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 686
    .local v4, "message":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v5}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x50f0101

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    const v5, 0x5080122

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 688
    .local v5, "checkBox":Landroid/widget/CheckBox;
    new-instance v6, Lcom/android/server/usb/UsbService$2$2;

    invoke-direct {v6, p0}, Lcom/android/server/usb/UsbService$2$2;-><init>(Lcom/android/server/usb/UsbService$2;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 695
    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 696
    iget-object v6, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v6}, Lcom/android/server/usb/UsbService;->access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x50f0100

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 697
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 698
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 699
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v6, 0x7d3

    invoke-virtual {v1, v6}, Landroid/view/Window;->setType(I)V

    .line 700
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Landroid/view/Window;->addSystemFlags(I)V

    .line 701
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 702
    iget-object v1, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    const/4 v6, 0x1

    invoke-static {v1, v6}, Lcom/android/server/usb/UsbService;->access$602(Lcom/android/server/usb/UsbService;Z)Z

    .line 703
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 704
    return-void
.end method

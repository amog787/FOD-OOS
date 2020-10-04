.class final Lcom/android/server/am/CarUserSwitchingDialog;
.super Lcom/android/server/am/UserSwitchingDialog;
.source "CarUserSwitchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManagerCarUserSwitchingDialog"


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "oldUser"    # Landroid/content/pm/UserInfo;
    .param p4, "newUser"    # Landroid/content/pm/UserInfo;
    .param p5, "aboveSystem"    # Z
    .param p6, "switchingFromSystemUserMessage"    # Ljava/lang/String;
    .param p7, "switchingToSystemUserMessage"    # Ljava/lang/String;

    .line 56
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/am/CarUserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method


# virtual methods
.method inflateContent()V
    .locals 6

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/CarUserSwitchingDialog;->setCancelable(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/android/server/am/CarUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/server/am/CarUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10303e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/server/am/CarUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090048

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, "view":Landroid/view/View;
    nop

    .line 74
    invoke-virtual {p0}, Lcom/android/server/am/CarUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 75
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v3, p0, Lcom/android/server/am/CarUserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 76
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 77
    const v4, 0x1050059

    .line 78
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 77
    invoke-static {v3, v4}, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->getInstance(Landroid/graphics/Bitmap;F)Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;

    move-result-object v4

    .line 79
    .local v4, "drawable":Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;
    const v5, 0x10204e2

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .end local v4    # "drawable":Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;
    :cond_0
    const v4, 0x10204e1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x104011a

    .line 84
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/server/am/CarUserSwitchingDialog;->setView(Landroid/view/View;)V

    .line 86
    return-void
.end method

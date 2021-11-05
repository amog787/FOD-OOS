.class public Lcom/android/server/wm/UnsupportedCompileSdkDialog;
.super Ljava/lang/Object;
.source "UnsupportedCompileSdkDialog.java"


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 9
    .param p1, "manager"    # Lcom/android/server/wm/AppWarnings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mPackageName:Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 41
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/high16 v1, 0x43fa0000    # 500.0f

    const/4 v2, 0x5

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v1

    .line 45
    .local v1, "label":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v4, 0x10407f4

    invoke-virtual {p2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "message":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 50
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 51
    const v5, 0x1090132

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 54
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/android/server/utils/AppInstallerUtil;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 55
    .local v5, "installerIntent":Landroid/content/Intent;
    if-eqz v5, :cond_0

    .line 56
    const v6, 0x10407f3

    new-instance v7, Lcom/android/server/wm/-$$Lambda$UnsupportedCompileSdkDialog$s08IFWLhWLXfzf3tlanuXzZZzN8;

    invoke-direct {v7, p2, v5}, Lcom/android/server/wm/-$$Lambda$UnsupportedCompileSdkDialog$s08IFWLhWLXfzf3tlanuXzZZzN8;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    :cond_0
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    .line 62
    invoke-virtual {v6}, Landroid/app/AlertDialog;->create()V

    .line 64
    iget-object v6, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 65
    .local v6, "window":Landroid/view/Window;
    const/16 v7, 0x7d2

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 68
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    const-string v8, "UnsupportedCompileSdkDialog"

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v7, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    const v8, 0x10201dd

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 71
    .local v7, "alwaysShow":Landroid/widget/CheckBox;
    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    new-instance v2, Lcom/android/server/wm/-$$Lambda$UnsupportedCompileSdkDialog$UMRp9pktAbDwIyCxd4tnMBne_so;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/-$$Lambda$UnsupportedCompileSdkDialog$UMRp9pktAbDwIyCxd4tnMBne_so;-><init>(Lcom/android/server/wm/UnsupportedCompileSdkDialog;Lcom/android/server/wm/AppWarnings;)V

    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installerIntent"    # Landroid/content/Intent;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 57
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 86
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$new$1$UnsupportedCompileSdkDialog(Lcom/android/server/wm/AppWarnings;Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "manager"    # Lcom/android/server/wm/AppWarnings;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mPackageName:Ljava/lang/String;

    xor-int/lit8 v1, p3, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(Ljava/lang/String;IZ)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 82
    return-void
.end method

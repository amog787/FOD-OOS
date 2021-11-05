.class public Lcom/android/server/wm/OpOtaWizardInjector;
.super Ljava/lang/Object;
.source "OpOtaWizardInjector.java"


# static fields
.field private static final STOCK_PM_FLAGS:I = 0x400

.field private static final TAG:Ljava/lang/String; = "OpOtaWizardInjector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "userId"    # I

    .line 85
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 87
    .local v0, "newInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 88
    return-object v0
.end method

.method private static resolveOtaWizardActivity(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "otaWizardIntent"    # Landroid/content/Intent;

    .line 54
    const/16 v0, 0x400

    .line 55
    .local v0, "flags":I
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 56
    .local v1, "comp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 58
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    const/16 v3, 0x400

    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v1, v3, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 62
    :cond_0
    nop

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "resolvedType":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 65
    invoke-interface {v5, p2, v4, v3, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 66
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 67
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 72
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "resolvedType":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 70
    :catch_0
    move-exception v3

    .line 74
    :goto_1
    if-nez v2, :cond_2

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No home screen found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    const-string v5, "OpOtaWizardInjector"

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    const/4 v3, 0x0

    return-object v3

    .line 79
    :cond_2
    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3, v2}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    move-object v2, v3

    .line 80
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, p1}, Lcom/android/server/wm/OpOtaWizardInjector;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 81
    return-object v2
.end method

.method public static updateOtaWizardHomeIntent(Landroid/content/Intent;Landroid/content/Context;I)Landroid/content/pm/ActivityInfo;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 38
    nop

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_need_show_ota_wizard"

    .line 38
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    move v0, v2

    .line 40
    .local v0, "needShowOTAWizard":Z
    if-eqz v0, :cond_1

    .line 41
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.opbackup"

    const-string v4, "com.oneplus.opbackup.OTAUpdateWizardActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v2, "name":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 44
    const-string v1, "com.oneplus.opbackup.CATEGORY_HOME"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-static {p1, p2, p0}, Lcom/android/server/wm/OpOtaWizardInjector;->resolveOtaWizardActivity(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 49
    .end local v0    # "needShowOTAWizard":Z
    .end local v2    # "name":Landroid/content/ComponentName;
    :cond_1
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "OpOtaWizardInjector"

    const-string v2, "No OPBackup exist:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.class public Lcom/oneplus/worklife/OPWLBInjector;
.super Ljava/lang/Object;
.source "OPWLBInjector.java"


# static fields
.field private static final LIFE_MODE:I = 0x2

.field private static final OFF_MODE:I = 0x0

.field private static final SETTINGS_MODE_ACTIVATED:Ljava/lang/String; = "oneplus_wlb_activated_mode"

.field private static final TAG:Ljava/lang/String; = "OPSystemWLBHelper"

.field private static final WLB_LIFE_MODE:I = 0x3f1

.field private static final WLB_WORK_MODE:I = 0x3f0

.field private static final WORK_MODE:I = 0x1

.field private static sOpwlbHelper:Lcom/oneplus/worklife/OPWLBInjector;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    .line 60
    new-instance v0, Lcom/oneplus/worklife/OPWLBInjector$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/worklife/OPWLBInjector$1;-><init>(Lcom/oneplus/worklife/OPWLBInjector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 40
    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBInjector;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 42
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 43
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBInjector;->readCurrentMode()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/worklife/OPWLBInjector;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/worklife/OPWLBInjector;

    .line 14
    iget v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/worklife/OPWLBInjector;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/worklife/OPWLBInjector;

    .line 14
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBInjector;->readCurrentMode()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/worklife/OPWLBInjector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    sget-object v0, Lcom/oneplus/worklife/OPWLBInjector;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBInjector;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/oneplus/worklife/OPWLBInjector;

    invoke-direct {v0, p0}, Lcom/oneplus/worklife/OPWLBInjector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/worklife/OPWLBInjector;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBInjector;

    .line 36
    :cond_0
    sget-object v0, Lcom/oneplus/worklife/OPWLBInjector;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBInjector;

    return-object v0
.end method

.method private readCurrentMode()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_activated_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    .line 58
    return-void
.end method


# virtual methods
.method public isApplicationBlocked(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 76
    const-string v0, "OPSystemWLBHelper"

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 79
    :cond_0
    const/4 v2, 0x0

    .line 81
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/worklife/OPWLBInjector;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object v2, v3

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isApplicationBlocked appInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v3

    .line 84
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Couldn\'t find package"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v2, :cond_1

    .line 87
    return v1

    .line 89
    :cond_1
    iget v3, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    const/4 v4, 0x2

    const-string v5, "isApplicationBlocked "

    const/4 v6, 0x1

    const-string v7, " "

    if-ne v3, v4, :cond_3

    .line 90
    iget-object v3, p0, Lcom/oneplus/worklife/OPWLBInjector;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v4, 0x3f1

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v8, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    .line 91
    .local v3, "modeOP":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-nez v3, :cond_2

    move v1, v6

    :cond_2
    return v1

    .line 93
    .end local v3    # "modeOP":I
    :cond_3
    if-ne v3, v6, :cond_5

    .line 94
    iget-object v3, p0, Lcom/oneplus/worklife/OPWLBInjector;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v4, 0x3f0

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v8, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    .line 95
    .restart local v3    # "modeOP":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-nez v3, :cond_4

    move v1, v6

    :cond_4
    return v1

    .line 98
    .end local v3    # "modeOP":I
    :cond_5
    return v1

    .line 77
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    :goto_1
    return v1
.end method

.method public registerChanges()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    const-string v1, "oneplus_wlb_activated_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBInjector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 48
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 50
    return-void
.end method

.method public unRegisterChanges()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/worklife/OPWLBInjector;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 54
    return-void
.end method

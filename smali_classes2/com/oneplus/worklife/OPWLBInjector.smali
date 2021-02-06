.class public Lcom/oneplus/worklife/OPWLBInjector;
.super Ljava/lang/Object;
.source "OPWLBInjector.java"


# static fields
.field private static final LIFE_MODE:I = 0x2

.field private static final OFF_MODE:I = 0x0

.field private static final ON_MODE:I = 0x1

.field private static final SETTINGS_BREAK_MODE_ACTIVATED:Ljava/lang/String; = "oneplus_wlb_break_mode_activated"

.field private static final SETTINGS_MODE_ACTIVATED:Ljava/lang/String; = "oneplus_wlb_activated_mode"

.field private static final TAG:Ljava/lang/String; = "OPSystemWLBHelper"

.field private static final WLB_LIFE_MODE:I = 0x3f1

.field private static final WLB_WORK_MODE:I = 0x3f0

.field private static final WORK_MODE:I = 0x1

.field private static sOpwlbHelper:Lcom/oneplus/worklife/OPWLBInjector;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBreakMode:I

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    .line 31
    iput v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mBreakMode:I

    .line 67
    new-instance v0, Lcom/oneplus/worklife/OPWLBInjector$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/worklife/OPWLBInjector$1;-><init>(Lcom/oneplus/worklife/OPWLBInjector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 44
    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBInjector;->mContext:Landroid/content/Context;

    .line 45
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 46
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 47
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBInjector;->readCurrentMode()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/worklife/OPWLBInjector;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/worklife/OPWLBInjector;

    .line 15
    iget v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/worklife/OPWLBInjector;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/worklife/OPWLBInjector;

    .line 15
    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBInjector;->readCurrentMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/worklife/OPWLBInjector;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/worklife/OPWLBInjector;

    .line 15
    iget v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mBreakMode:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/worklife/OPWLBInjector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    sget-object v0, Lcom/oneplus/worklife/OPWLBInjector;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBInjector;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/oneplus/worklife/OPWLBInjector;

    invoke-direct {v0, p0}, Lcom/oneplus/worklife/OPWLBInjector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/worklife/OPWLBInjector;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBInjector;

    .line 40
    :cond_0
    sget-object v0, Lcom/oneplus/worklife/OPWLBInjector;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBInjector;

    return-object v0
.end method

.method private readCurrentMode()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_activated_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    .line 64
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_break_mode_activated"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mBreakMode:I

    .line 65
    return-void
.end method


# virtual methods
.method public isApplicationBlocked(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "channelName"    # Ljava/lang/CharSequence;

    .line 83
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/oneplus/worklife/OPWLBInjector;->mBreakMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    .line 86
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notificationChannel Name:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OPSystemWLBHelper"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/oneplus/worklife/OPWLBInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, "channelValue":I
    iget v4, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    and-int v5, v1, v4

    if-ne v5, v4, :cond_1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notificationChannel isBlocked:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pkg:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v2

    .line 95
    .end local v1    # "channelValue":I
    :cond_1
    const/4 v1, 0x0

    .line 97
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/worklife/OPWLBInjector;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object v1, v4

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isApplicationBlocked appInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v4

    .line 100
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Couldn\'t find package"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v1, :cond_2

    .line 103
    return v0

    .line 105
    :cond_2
    iget v4, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    const/4 v5, 0x2

    const-string v6, "isApplicationBlocked "

    const-string v7, " "

    if-ne v4, v5, :cond_4

    .line 106
    iget-object v4, p0, Lcom/oneplus/worklife/OPWLBInjector;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v5, 0x3f1

    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5, v8, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 107
    .local v4, "modeOP":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-nez v4, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 109
    .end local v4    # "modeOP":I
    :cond_4
    if-ne v4, v2, :cond_6

    .line 110
    iget-object v4, p0, Lcom/oneplus/worklife/OPWLBInjector;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v5, 0x3f0

    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5, v8, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 111
    .restart local v4    # "modeOP":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/oneplus/worklife/OPWLBInjector;->mCurrentMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-nez v4, :cond_5

    move v0, v2

    :cond_5
    return v0

    .line 114
    .end local v4    # "modeOP":I
    :cond_6
    return v0

    .line 84
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_7
    :goto_1
    return v0
.end method

.method public registerChanges()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    const-string v1, "oneplus_wlb_activated_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBInjector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 52
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 55
    const-string v1, "oneplus_wlb_break_mode_activated"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBInjector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 54
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 56
    return-void
.end method

.method public unRegisterChanges()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/worklife/OPWLBInjector;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 60
    return-void
.end method

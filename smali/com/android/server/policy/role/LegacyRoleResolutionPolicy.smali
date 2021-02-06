.class public Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;
.super Ljava/lang/Object;
.source "LegacyRoleResolutionPolicy.java"

# interfaces
.implements Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "LegacyRoleResolutionPol"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private isSettingsApplication(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 175
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 176
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0xd0000

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 180
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 181
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public getRoleHolders(Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "android.app.role.BROWSER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    const-string v0, "android.app.role.EMERGENCY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "android.app.role.ASSISTANT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "android.app.role.HOME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v0, "android.app.role.DIALER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_5
    const-string v0, "android.app.role.SMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v7, 0x0

    if-eqz v0, :cond_e

    if-eq v0, v6, :cond_d

    if-eq v0, v5, :cond_a

    const-string v5, "LegacyRoleResolutionPol"

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t know how to find legacy role holders for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    const-string v1, "emergency_assistance_application"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "defaultEmergencyApp":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 143
    .end local v0    # "defaultEmergencyApp":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 145
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0xd0000

    .line 146
    invoke-virtual {v0, v1, v2, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 151
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3

    .line 152
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    nop

    :goto_2
    move-object v2, v7

    .line 153
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-direct {p0, v2, p2}, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->isSettingsApplication(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 154
    const/4 v2, 0x0

    .line 156
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    goto :goto_3

    .line 157
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    .line 159
    .restart local v2    # "packageName":Ljava/lang/String;
    :goto_3
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 119
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "sms_default_application"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 123
    move-object v1, v0

    .local v1, "packageName":Ljava/lang/String;
    goto :goto_4

    .line 124
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 127
    iget-object v2, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    const v3, 0x1040024

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .restart local v2    # "packageName":Ljava/lang/String;
    new-array v3, v6, [I

    const/16 v4, 0xb7

    aput v4, v3, v1

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 132
    const-string/jumbo v1, "ro.boot.opcarrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "sprint"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 133
    const-string v1, "com.google.android.apps.messaging"

    .line 134
    .end local v2    # "packageName":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    const-string v2, "Set default sms app to com.google.android.apps.messaging"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 140
    .end local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_8
    move-object v1, v2

    goto :goto_4

    .line 138
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_9
    const/4 v1, 0x0

    .line 140
    .restart local v1    # "packageName":Ljava/lang/String;
    :goto_4
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 102
    .end local v0    # "setting":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialer_default_application"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0    # "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 106
    move-object v1, v0

    .restart local v1    # "packageName":Ljava/lang/String;
    goto :goto_5

    .line 107
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_b
    iget-object v1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 112
    iget-object v1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    const v2, 0x1040023

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "packageName":Ljava/lang/String;
    goto :goto_5

    .line 114
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_c
    const/4 v1, 0x0

    .line 116
    .restart local v1    # "packageName":Ljava/lang/String;
    :goto_5
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 95
    .end local v0    # "setting":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_d
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 97
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 75
    .end local v0    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_e
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "setting":Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 81
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 82
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :cond_f
    move-object v1, v7

    .line 83
    .local v1, "packageName":Ljava/lang/String;
    goto :goto_6

    .line 84
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "packageName":Ljava/lang/String;
    goto :goto_6

    .line 86
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_11
    iget-object v1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 87
    iget-object v1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    const v2, 0x1040021

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "defaultAssistant":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object v7, v1

    :cond_12
    move-object v1, v7

    .line 89
    .local v1, "packageName":Ljava/lang/String;
    goto :goto_6

    .line 90
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_13
    const/4 v1, 0x0

    .line 92
    .restart local v1    # "packageName":Ljava/lang/String;
    :goto_6
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a6aee0d -> :sswitch_5
        0x27b422c9 -> :sswitch_4
        0x32edda8b -> :sswitch_3
        0x61734092 -> :sswitch_2
        0x6d529345 -> :sswitch_1
        0x7529d9dc -> :sswitch_0
    .end sparse-switch
.end method

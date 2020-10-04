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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public getRoleHolders(Ljava/lang/String;I)Ljava/util/List;
    .locals 7
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

    .line 68
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
    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_a

    if-eq v0, v5, :cond_8

    const/4 v5, 0x0

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t know how to find legacy role holders for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyRoleResolutionPol"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    const-string v1, "emergency_assistance_application"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "defaultEmergencyApp":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 127
    .end local v0    # "defaultEmergencyApp":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 128
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    .line 130
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :cond_3
    move-object v3, v5

    .line 131
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 96
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    const-string/jumbo v2, "sms_default_application"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 102
    iget-object v2, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {v2, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionAsUser(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v2

    .line 105
    .local v2, "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    iget-object v3, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10401f6

    .line 106
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "defaultPackage":Ljava/lang/String;
    nop

    .line 108
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    .line 110
    .local v4, "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-nez v4, :cond_5

    .line 112
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v6

    if-eqz v6, :cond_5

    .line 113
    nop

    .line 114
    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v6

    aget-object v1, v6, v1

    move-object v4, v1

    check-cast v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 121
    :cond_5
    move-object v1, v4

    .line 122
    .local v1, "app":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v5, v1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    :goto_2
    move-object v0, v5

    .line 124
    .end local v1    # "app":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .end local v2    # "applications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;>;"
    .end local v3    # "defaultPackage":Ljava/lang/String;
    .end local v4    # "applicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :cond_7
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 87
    .end local v0    # "result":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 87
    const-string v1, "dialer_default_application"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "setting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 91
    move-object v1, v0

    goto :goto_3

    .line 92
    :cond_9
    iget-object v1, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v1

    .line 90
    :goto_3
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 80
    .end local v0    # "setting":Ljava/lang/String;
    :cond_a
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 82
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->singletonOrEmpty(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 70
    .end local v0    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/role/LegacyRoleResolutionPolicy;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    const-string v1, "assistant"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "legacyAssistant":Ljava/lang/String;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    .line 75
    :cond_c
    nop

    .line 76
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 73
    :cond_d
    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

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

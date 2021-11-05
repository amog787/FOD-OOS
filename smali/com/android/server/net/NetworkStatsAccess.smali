.class public final Lcom/android/server/net/NetworkStatsAccess;
.super Ljava/lang/Object;
.source "NetworkStatsAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsAccess$Level;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAccessLevel(Landroid/content/Context;ILjava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 108
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 110
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    nop

    .line 111
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 112
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 115
    .local v4, "hasCarrierPrivileges":Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v5, -0x2

    invoke-virtual {v0, p1, v5}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    .line 117
    .local v5, "isDeviceOwner":Z
    :goto_1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 118
    .local v6, "appId":I
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_7

    const/16 v7, 0x431

    if-ne v6, v7, :cond_2

    goto :goto_4

    .line 125
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkStatsAccess;->hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    .line 126
    .local v7, "hasAppOpsPermission":Z
    if-nez v7, :cond_6

    const-string v8, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {p0, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_3

    .line 131
    :cond_3
    if-eqz v0, :cond_4

    const/4 v8, -0x1

    invoke-virtual {v0, p1, v8}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v3

    goto :goto_2

    :cond_4
    move v8, v2

    .line 133
    .local v8, "isProfileOwner":Z
    :goto_2
    if-eqz v8, :cond_5

    .line 136
    return v3

    .line 140
    :cond_5
    return v2

    .line 128
    .end local v8    # "isProfileOwner":Z
    :cond_6
    :goto_3
    const/4 v2, 0x2

    return v2

    .line 122
    .end local v7    # "hasAppOpsPermission":Z
    :cond_7
    :goto_4
    const/4 v2, 0x3

    return v2
.end method

.method private static hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 176
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 179
    .local v1, "appOps":Landroid/app/AppOpsManager;
    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    .line 181
    .local v2, "mode":I
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 184
    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    .line 186
    .local v3, "permissionCheck":I
    if-nez v3, :cond_0

    move v0, v4

    :cond_0
    return v0

    .line 188
    .end local v3    # "permissionCheck":I
    :cond_1
    if-nez v2, :cond_2

    move v0, v4

    :cond_2
    return v0

    .line 190
    .end local v1    # "appOps":Landroid/app/AppOpsManager;
    .end local v2    # "mode":I
    :cond_3
    return v0
.end method

.method public static isAccessibleToUser(III)Z
    .locals 6
    .param p0, "uid"    # I
    .param p1, "callerUid"    # I
    .param p2, "accessLevel"    # I

    .line 149
    const/4 v0, -0x5

    const/4 v1, -0x4

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v4, :cond_5

    const/4 v5, 0x2

    if-eq p2, v5, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    .line 169
    if-ne p0, p1, :cond_0

    move v3, v4

    :cond_0
    return v3

    .line 152
    :cond_1
    return v4

    .line 157
    :cond_2
    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    .line 159
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    :cond_3
    move v3, v4

    .line 157
    :cond_4
    return v3

    .line 163
    :cond_5
    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    .line 165
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_7

    :cond_6
    move v3, v4

    .line 163
    :cond_7
    return v3
.end method

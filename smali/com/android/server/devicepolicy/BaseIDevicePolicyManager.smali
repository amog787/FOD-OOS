.class abstract Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "BaseIDevicePolicyManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public canProfileOwnerResetPasswordWhenLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public clearSystemUpdatePolicyFreezePeriodRecord()V
    .locals 0

    .line 59
    return-void
.end method

.method public getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 83
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method abstract handleStartUser(I)V
.end method

.method abstract handleStopUser(I)V
.end method

.method abstract handleUnlockUser(I)V
.end method

.method public isOrganizationOwnedDeviceWithManagedProfile()Z
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "hasGrant"    # Z

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public setLocationEnabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "locationEnabled"    # Z

    .line 66
    return-void
.end method

.method public setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeoutMs"    # J

    .line 80
    return-void
.end method

.method public setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "suspended"    # Z

    .line 77
    return-void
.end method

.method abstract systemReady(I)V
.end method

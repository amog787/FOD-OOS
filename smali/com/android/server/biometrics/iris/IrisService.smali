.class public Lcom/android/server/biometrics/iris/IrisService;
.super Lcom/android/server/biometrics/BiometricServiceBase;
.source "IrisService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IrisService"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected checkAppOps(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method protected checkUseBiometricPermission()V
    .locals 0

    .line 120
    return-void
.end method

.method protected getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
    .locals 1

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getConstants()Lcom/android/server/biometrics/Constants;
    .locals 1

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .locals 1

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getEnrolledTemplates(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getHalDeviceId()J
    .locals 2

    .line 104
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getLockoutBroadcastPermission()Ljava/lang/String;
    .locals 1

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLockoutMode()I
    .locals 1

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method protected getLockoutResetIntent()Ljava/lang/String;
    .locals 1

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getManageBiometricPermission()Ljava/lang/String;
    .locals 1

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "IrisService"

    return-object v0
.end method

.method protected hasEnrolledBiometrics(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method protected hasReachedEnrollmentLimit(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 0

    .line 59
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->onStart()V

    .line 60
    return-void
.end method

.method protected statsModality()I
    .locals 1

    .line 134
    const/4 v0, 0x2

    return v0
.end method

.method protected updateActiveGroup(ILjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "clientPackage"    # Ljava/lang/String;

    .line 90
    return-void
.end method

.class public Lcom/android/server/biometrics/fingerprint/FingerprintConstants;
.super Ljava/lang/Object;
.source "FingerprintConstants.java"

# interfaces
.implements Lcom/android/server/biometrics/Constants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireVendorCode()I
    .locals 1

    .line 73
    const/4 v0, 0x6

    return v0
.end method

.method public actionBiometricAuth()I
    .locals 1

    .line 63
    const/16 v0, 0xfc

    return v0
.end method

.method public actionBiometricEnroll()I
    .locals 1

    .line 68
    const/16 v0, 0xfb

    return v0
.end method

.method public logTag()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "FingerprintService"

    return-object v0
.end method

.method public tagAuthStartError()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "fingerprintd_auth_start_error"

    return-object v0
.end method

.method public tagAuthToken()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "fingerprint_token"

    return-object v0
.end method

.method public tagEnrollStartError()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "fingerprintd_enroll_start_error"

    return-object v0
.end method

.method public tagEnumerateStartError()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "fingerprintd_enum_start_error"

    return-object v0
.end method

.method public tagHalDied()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "fingerprintd_died"

    return-object v0
.end method

.method public tagRemoveStartError()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "fingerprintd_remove_start_error"

    return-object v0
.end method

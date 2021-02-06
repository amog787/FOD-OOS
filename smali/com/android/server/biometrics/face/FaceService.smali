.class public Lcom/android/server/biometrics/face/FaceService;
.super Lcom/android/server/biometrics/BiometricServiceBase;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;,
        Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;,
        Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;,
        Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;,
        Lcom/android/server/biometrics/face/FaceService$UsageStats;,
        Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.biometrics.face.ACTION_LOCKOUT_RESET"

.field private static final CHALLENGE_TIMEOUT_SEC:I = 0x258

.field private static final DEBUG:Z = true

.field private static final FACE_DATA_DIR:Ljava/lang/String; = "facedata"

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "FaceService"

.field private static final SKIP_KEYGUARD_ACQUIRE_IGNORE_LIST:Ljava/lang/String; = "com.android.server.biometrics.face.skip_keyguard_acquire_ignore_list"

.field protected static final TAG:Ljava/lang/String; = "FaceService"


# instance fields
.field private mBiometricPromptIgnoreList:[I

.field private mBiometricPromptIgnoreListVendor:[I

.field private mCurrentUserLockoutMode:I

.field private mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

.field private mDaemonCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

.field private final mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

.field private mEnrollIgnoreList:[I

.field private mEnrollIgnoreListVendor:[I

.field private final mFaceConstants:Lcom/android/server/biometrics/face/FaceConstants;

.field private mKeyguardIgnoreList:[I

.field private mKeyguardIgnoreListVendor:[I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mRevokeChallengePending:Z

.field private mUsageStats:Lcom/android/server/biometrics/face/FaceService$UsageStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1057
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;-><init>(Landroid/content/Context;)V

    .line 841
    new-instance v0, Lcom/android/server/biometrics/face/FaceConstants;

    invoke-direct {v0}, Lcom/android/server/biometrics/face/FaceConstants;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mFaceConstants:Lcom/android/server/biometrics/face/FaceConstants;

    .line 846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService;->mRevokeChallengePending:Z

    .line 862
    new-instance v1, Lcom/android/server/biometrics/face/FaceService$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/face/FaceService$1;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    .line 984
    new-instance v1, Lcom/android/server/biometrics/face/FaceService$2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/face/FaceService$2;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    .line 1059
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.server.biometrics.face.skip_keyguard_acquire_ignore_list"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1062
    .local v1, "ignoreKeyguardBlacklist":Z
    :goto_0
    new-instance v2, Lcom/android/server/biometrics/face/FaceService$UsageStats;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/face/FaceService$UsageStats;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/biometrics/face/FaceService;->mUsageStats:Lcom/android/server/biometrics/face/FaceService$UsageStats;

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/biometrics/face/FaceService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070044

    .line 1067
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreList:[I

    .line 1068
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070047

    .line 1069
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreListVendor:[I

    .line 1070
    if-eqz v1, :cond_1

    new-array v2, v0, [I

    goto :goto_1

    .line 1071
    :cond_1
    nop

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070046

    .line 1071
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreList:[I

    .line 1072
    nop

    .line 1073
    if-eqz v1, :cond_2

    new-array v0, v0, [I

    goto :goto_2

    .line 1074
    :cond_2
    nop

    .line 1073
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1070049

    .line 1074
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreListVendor:[I

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1070045

    .line 1076
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreList:[I

    .line 1077
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1070048

    .line 1078
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreListVendor:[I

    .line 1079
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10001(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # I

    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$10101(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # I

    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$10201(Lcom/android/server/biometrics/face/FaceService;JII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleError(JII)V

    return-void
.end method

.method static synthetic access$10302(Lcom/android/server/biometrics/face/FaceService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # J

    .line 95
    iput-wide p1, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide p1
.end method

.method static synthetic access$10402(Lcom/android/server/biometrics/face/FaceService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$10501(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$10601(Lcom/android/server/biometrics/face/FaceService;JII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAcquired(JII)V

    return-void
.end method

.method static synthetic access$10701(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # I

    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/biometrics/face/FaceService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mAuthenticatorIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->startGenerateChallenge(Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/face/FaceService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/biometrics/face/FaceService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/server/biometrics/face/FaceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/biometrics/face/FaceService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreList:[I

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/biometrics/face/FaceService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreListVendor:[I

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/biometrics/face/FaceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
    .param p2, "x2"    # I

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->cancelEnrollmentInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/biometrics/face/FaceService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/biometrics/face/FaceService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/server/biometrics/face/FaceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/face/FaceService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isStrongBiometric()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/biometrics/face/FaceService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/android/server/biometrics/face/FaceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .line 95
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/biometrics/face/FaceService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/biometrics/face/FaceService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->startCurrentClient(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/face/FaceService$UsageStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mUsageStats:Lcom/android/server/biometrics/face/FaceService$UsageStats;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .line 95
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/face/FaceService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/biometrics/face/FaceService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->setActiveUserInternal(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/biometrics/face/FaceService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/biometrics/face/FaceService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$4600(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/RemovalClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Lcom/android/server/biometrics/RemovalClient;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/biometrics/face/FaceService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/biometrics/face/FaceService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/face/FaceService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreList:[I

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/EnumerateClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Lcom/android/server/biometrics/EnumerateClient;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5201(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 95
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/biometrics/face/FaceService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # [Ljava/lang/String;

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->dumpHal(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/biometrics/face/FaceService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 95
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/biometrics/face/FaceService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$5900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/face/FaceService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreList:[I

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/biometrics/face/FaceService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->isCurrentUserOrProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/biometrics/face/FaceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 95
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 95
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/biometrics/face/FaceService;I)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->getAuthenticatorId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$6900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/face/FaceService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreListVendor:[I

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    return-object v0
.end method

.method static synthetic access$7602(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 95
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    return-object p1
.end method

.method static synthetic access$7700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/biometrics/face/FaceService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->initConfiguredStrengthInternal(I)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/biometrics/face/FaceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/face/FaceService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreListVendor:[I

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/biometrics/face/FaceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$8100(Lcom/android/server/biometrics/face/FaceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$8200(Lcom/android/server/biometrics/face/FaceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$8300(Lcom/android/server/biometrics/face/FaceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$8400(Lcom/android/server/biometrics/face/FaceService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$8500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->startRevokeChallenge(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$8702(Lcom/android/server/biometrics/face/FaceService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Z

    .line 95
    iput-boolean p1, p0, Lcom/android/server/biometrics/face/FaceService;->mRevokeChallengePending:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/android/server/biometrics/face/FaceService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isStrongBiometric()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/face/FaceService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9502(Lcom/android/server/biometrics/face/FaceService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I

    return p1
.end method

.method static synthetic access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/server/biometrics/face/FaceService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->notifyLockoutResetMonitors()V

    return-void
.end method

.method static synthetic access$9801(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # I

    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$9901(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # I

    .line 95
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method private dumpHal(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1362
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_0

    .line 1363
    return-void

    .line 1368
    :cond_0
    const-string/jumbo v0, "ro.face.disable_debug_data"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1369
    const-string/jumbo v0, "persist.face.disable_debug_data"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_4

    .line 1376
    :cond_1
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1377
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-eqz v0, :cond_3

    .line 1378
    const/4 v2, 0x0

    .line 1380
    .local v2, "devnull":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/dev/null"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 1381
    new-instance v3, Landroid/os/NativeHandle;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/FileDescriptor;

    .line 1382
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    new-array v5, v1, [I

    invoke-direct {v3, v4, v5, v1}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    move-object v1, v3

    .line 1384
    .local v1, "handle":Landroid/os/NativeHandle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1388
    .end local v1    # "handle":Landroid/os/NativeHandle;
    nop

    .line 1390
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1388
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1385
    :catch_0
    move-exception v1

    .line 1386
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "FaceService"

    const-string v4, "error while reading face debugging data"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1388
    nop

    .end local v1    # "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    .line 1390
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1392
    :goto_0
    goto :goto_3

    .line 1391
    :catch_1
    move-exception v1

    goto :goto_0

    .line 1388
    :goto_1
    if-eqz v2, :cond_2

    .line 1390
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1392
    goto :goto_2

    .line 1391
    :catch_2
    move-exception v3

    .line 1394
    :cond_2
    :goto_2
    throw v1

    .line 1396
    .end local v2    # "devnull":Ljava/io/FileOutputStream;
    :cond_3
    :goto_3
    return-void

    .line 1370
    .end local v0    # "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :cond_4
    :goto_4
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1313
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1315
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "service"

    const-string v2, "Face Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1317
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1318
    .local v1, "sets":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1319
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1320
    .local v4, "userId":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1321
    .local v5, "N":I
    iget-object v6, p0, Lcom/android/server/biometrics/face/FaceService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1322
    .local v6, "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    iget-object v7, p0, Lcom/android/server/biometrics/face/FaceService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1323
    .local v7, "cryptoStats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1324
    .local v8, "set":Lorg/json/JSONObject;
    const-string v9, "id"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1325
    const-string v9, "count"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1326
    const-string v9, "accept"

    const/4 v10, 0x0

    if-eqz v6, :cond_0

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_1

    :cond_0
    move v11, v10

    :goto_1
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1327
    const-string/jumbo v9, "reject"

    if-eqz v6, :cond_1

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_2

    :cond_1
    move v11, v10

    :goto_2
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1328
    const-string v9, "acquire"

    if-eqz v6, :cond_2

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_3

    :cond_2
    move v11, v10

    :goto_3
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1329
    const-string/jumbo v9, "lockout"

    if-eqz v6, :cond_3

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_4

    :cond_3
    move v11, v10

    :goto_4
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1330
    const-string/jumbo v9, "permanentLockout"

    if-eqz v6, :cond_4

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    goto :goto_5

    :cond_4
    move v11, v10

    :goto_5
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1333
    const-string v9, "acceptCrypto"

    if-eqz v7, :cond_5

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_6

    :cond_5
    move v11, v10

    :goto_6
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1334
    const-string/jumbo v9, "rejectCrypto"

    if-eqz v7, :cond_6

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_7

    :cond_6
    move v11, v10

    :goto_7
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1335
    const-string v9, "acquireCrypto"

    if-eqz v7, :cond_7

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_8

    :cond_7
    move v11, v10

    :goto_8
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1336
    const-string/jumbo v9, "lockoutCrypto"

    if-eqz v7, :cond_8

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_9

    :cond_8
    move v11, v10

    :goto_9
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1337
    const-string/jumbo v9, "permanentLockoutCrypto"

    .line 1338
    if-eqz v7, :cond_9

    iget v10, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    .line 1337
    :cond_9
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1339
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1340
    nop

    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    .end local v5    # "N":I
    .end local v6    # "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v7    # "cryptoStats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v8    # "set":Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 1342
    :cond_a
    const-string/jumbo v2, "prints"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    nop

    .end local v1    # "sets":Lorg/json/JSONArray;
    goto :goto_a

    .line 1343
    :catch_0
    move-exception v1

    .line 1344
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "FaceService"

    const-string v3, "dump formatting failure"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1346
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_a
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HAL deaths since last reboot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/face/FaceService;->mHALDeathCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService;->mUsageStats:Lcom/android/server/biometrics/face/FaceService$UsageStats;

    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/face/FaceService$UsageStats;->print(Ljava/io/PrintWriter;)V

    .line 1350
    return-void
.end method

.method private declared-synchronized getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .locals 7

    monitor-enter p0

    .line 1243
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    if-nez v0, :cond_2

    .line 1244
    const-string v0, "FaceService"

    const-string/jumbo v1, "mDaemon was null, reconnect to face"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    :try_start_1
    invoke-static {}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getService()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1251
    goto :goto_0

    .line 1249
    .end local p0    # "this":Lcom/android/server/biometrics/face/FaceService;
    :catch_0
    move-exception v0

    .line 1250
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "FaceService"

    const-string v2, "Failed to get biometric interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1247
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1251
    nop

    .line 1252
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1253
    const-string v0, "FaceService"

    const-string v2, "face HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1254
    monitor-exit p0

    return-object v1

    .line 1257
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1260
    :try_start_4
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonCallback:Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    invoke-interface {v0, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v0

    iget-wide v4, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    iput-wide v4, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1264
    goto :goto_1

    .line 1261
    :catch_2
    move-exception v0

    .line 1262
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "FaceService"

    const-string v5, "Failed to open face HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1263
    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1266
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const-string v0, "FaceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Face HAL id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget-wide v4, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 1268
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->loadAuthenticatorIds()V

    .line 1269
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 1270
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/face/FaceService;->doTemplateCleanupForUser(I)V

    goto :goto_2

    .line 1272
    :cond_1
    const-string v0, "FaceService"

    const-string v2, "Failed to open Face HAL!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "faced_openhal_error"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1274
    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1277
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic lambda$rveb67MoYJ0egfY6LL-l05KvUz8(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    return-object p0
.end method

.method private startGenerateChallenge(Landroid/os/IBinder;)J
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1281
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1282
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    const-wide/16 v1, 0x0

    const-string v3, "FaceService"

    if-nez v0, :cond_0

    .line 1283
    const-string/jumbo v4, "startGenerateChallenge: no face HAL!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    return-wide v1

    .line 1287
    :cond_0
    const/16 v4, 0x258

    :try_start_0
    invoke-interface {v0, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v4

    iget-wide v1, v4, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 1288
    :catch_0
    move-exception v4

    .line 1289
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "startGenerateChallenge failed"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1291
    .end local v4    # "e":Landroid/os/RemoteException;
    return-wide v1
.end method

.method private startRevokeChallenge(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1295
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1296
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    const/4 v1, 0x0

    const-string v2, "FaceService"

    if-nez v0, :cond_0

    .line 1297
    const-string/jumbo v3, "startRevokeChallenge: no face HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    return v1

    .line 1301
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->revokeChallenge()I

    move-result v3

    .line 1302
    .local v3, "res":I
    if-eqz v3, :cond_1

    .line 1303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "revokeChallenge returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    :cond_1
    return v3

    .line 1306
    .end local v3    # "res":I
    :catch_0
    move-exception v3

    .line 1307
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "startRevokeChallenge failed"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1309
    .end local v3    # "e":Landroid/os/RemoteException;
    return v1
.end method


# virtual methods
.method protected checkAppOps(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 1217
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkUseBiometricPermission()V
    .locals 0

    .line 1213
    return-void
.end method

.method protected getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
    .locals 1

    .line 1112
    invoke-static {}, Lcom/android/server/biometrics/face/FaceUtils;->getInstance()Lcom/android/server/biometrics/face/FaceUtils;

    move-result-object v0

    return-object v0
.end method

.method protected getConstants()Lcom/android/server/biometrics/Constants;
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mFaceConstants:Lcom/android/server/biometrics/face/FaceConstants;

    return-object v0
.end method

.method protected getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method protected getEnrolledTemplates(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 1223
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getHalDeviceId()J
    .locals 2

    .line 1187
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method protected getLockoutBroadcastPermission()Ljava/lang/String;
    .locals 1

    .line 1182
    const-string v0, "android.permission.RESET_FACE_LOCKOUT"

    return-object v0
.end method

.method protected getLockoutMode()I
    .locals 1

    .line 1238
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I

    return v0
.end method

.method protected getLockoutResetIntent()Ljava/lang/String;
    .locals 1

    .line 1177
    const-string v0, "com.android.server.biometrics.face.ACTION_LOCKOUT_RESET"

    return-object v0
.end method

.method protected getManageBiometricPermission()Ljava/lang/String;
    .locals 1

    .line 1207
    const-string v0, "android.permission.MANAGE_BIOMETRIC"

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1102
    const-string v0, "FaceService"

    return-object v0
.end method

.method protected handleUserSwitching(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1192
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->handleUserSwitching(I)V

    .line 1194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I

    .line 1195
    return-void
.end method

.method protected hasEnrolledBiometrics(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1199
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1200
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasReachedEnrollmentLimit(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1124
    .local v0, "limit":I
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1125
    .local v1, "enrolled":I
    if-lt v1, v0, :cond_0

    .line 1126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many faces registered, user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/4 v2, 0x1

    return v2

    .line 1129
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public synthetic lambda$onStart$0$FaceService()V
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$rveb67MoYJ0egfY6LL-l05KvUz8;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$rveb67MoYJ0egfY6LL-l05KvUz8;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected notifyClientActiveCallbacks(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .line 1229
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1092
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->onStart()V

    .line 1093
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/face/FaceService$1;)V

    const-string v1, "face"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/face/FaceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1096
    new-instance v0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$A0dfsVDvPu3BDJsON7widXUriSs;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$A0dfsVDvPu3BDJsON7widXUriSs;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    const-string v1, "FaceService.onStart"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1098
    return-void
.end method

.method protected removeClient(Lcom/android/server/biometrics/ClientMonitor;)V
    .locals 1
    .param p1, "client"    # Lcom/android/server/biometrics/ClientMonitor;

    .line 1083
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 1084
    iget-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService;->mRevokeChallengePending:Z

    if-eqz v0, :cond_0

    .line 1085
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/face/FaceService;->startRevokeChallenge(Landroid/os/IBinder;)I

    .line 1086
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService;->mRevokeChallengePending:Z

    .line 1088
    :cond_0
    return-void
.end method

.method public serviceDied(J)V
    .locals 1
    .param p1, "cookie"    # J

    .line 1134
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->serviceDied(J)V

    .line 1135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 1137
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    .line 1138
    return-void
.end method

.method protected statsModality()I
    .locals 1

    .line 1233
    const/4 v0, 0x4

    return v0
.end method

.method protected updateActiveGroup(ILjava/lang/String;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "clientPackage"    # Ljava/lang/String;

    .line 1142
    const-string v0, "FaceService"

    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v1

    .line 1144
    .local v1, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-eqz v1, :cond_4

    .line 1146
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/face/FaceService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v2

    move p1, v2

    .line 1147
    iget v2, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    if-eq p1, v2, :cond_3

    .line 1148
    invoke-static {p1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 1149
    .local v2, "baseDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "facedata"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1150
    .local v3, "faceDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1151
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot make directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    return-void

    .line 1158
    :cond_0
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1159
    const-string v4, "Restorecons failed. Directory will have wrong label."

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return-void

    .line 1164
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setActiveUser(ILjava/lang/String;)I

    .line 1165
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    .line 1166
    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1167
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v6

    iget-wide v6, v6, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1166
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    .end local v2    # "baseDir":Ljava/io/File;
    .end local v3    # "faceDir":Ljava/io/File;
    :cond_3
    goto :goto_1

    .line 1169
    :catch_0
    move-exception v2

    .line 1170
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to setActiveUser():"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1173
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    return-void
.end method

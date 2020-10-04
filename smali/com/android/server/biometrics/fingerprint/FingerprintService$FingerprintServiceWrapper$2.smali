.class Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$2;
.super Lcom/android/server/biometrics/RemovalClient;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->remove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;)V
    .locals 16
    .param p1, "this$1"    # Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "constants"    # Lcom/android/server/biometrics/Constants;
    .param p4, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p5, "halDeviceId"    # J
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p9, "biometricId"    # I
    .param p10, "groupId"    # I
    .param p11, "userId"    # I
    .param p12, "restricted"    # Z
    .param p13, "owner"    # Ljava/lang/String;
    .param p14, "utils"    # Lcom/android/server/biometrics/BiometricUtils;

    .line 333
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    iput-object v15, v14, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/RemovalClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;)V

    return-void
.end method


# virtual methods
.method protected statsModality()I
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper$2;->this$1:Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/biometrics/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->statsModality()I

    move-result v0

    return v0
.end method

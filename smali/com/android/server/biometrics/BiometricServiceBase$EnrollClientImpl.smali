.class public abstract Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
.super Lcom/android/server/biometrics/EnrollClient;
.source "BiometricServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "EnrollClientImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;[II)V
    .locals 16
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "daemon"    # Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .param p4, "halDeviceId"    # J
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "listener"    # Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;
    .param p8, "userId"    # I
    .param p9, "groupId"    # I
    .param p10, "cryptoToken"    # [B
    .param p11, "restricted"    # Z
    .param p12, "owner"    # Ljava/lang/String;
    .param p13, "disabledFeatures"    # [I
    .param p14, "timeoutSec"    # I

    .line 330
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iput-object v14, v15, Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    .line 331
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v2

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v13

    .line 331
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/android/server/biometrics/EnrollClient;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;II[BZLjava/lang/String;Lcom/android/server/biometrics/BiometricUtils;[II)V

    .line 334
    return-void
.end method


# virtual methods
.method public notifyUserActivity()V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricServiceBase;->access$500(Lcom/android/server/biometrics/BiometricServiceBase;)V

    .line 339
    return-void
.end method

.class final Lcom/android/server/usb/UsbPortManager$PortInfo;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PortInfo"
.end annotation


# static fields
.field public static final DISPOSITION_ADDED:I = 0x0

.field public static final DISPOSITION_CHANGED:I = 0x1

.field public static final DISPOSITION_READY:I = 0x2

.field public static final DISPOSITION_REMOVED:I = 0x3


# instance fields
.field public mCanChangeDataRole:Z

.field public mCanChangeMode:Z

.field public mCanChangePowerRole:Z

.field public mConnectedAtMillis:J

.field public mDisposition:I

.field public mLastConnectDurationMillis:J

.field public final mUsbPort:Landroid/hardware/usb/UsbPort;

.field public mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;


# direct methods
.method constructor <init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V
    .locals 8
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "portId"    # Ljava/lang/String;
    .param p3, "supportedModes"    # I
    .param p4, "supportedContaminantProtectionModes"    # I
    .param p5, "supportsEnableContaminantPresenceDetection"    # Z
    .param p6, "supportsEnableContaminantPresenceProtection"    # Z

    .line 1338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    new-instance v7, Landroid/hardware/usb/UsbPort;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbPort;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZ)V

    iput-object v7, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 1343
    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 8
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 1415
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1417
    .local v6, "token":J
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    const-string/jumbo v1, "port"

    const-wide v2, 0x10b00000001L

    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/internal/usb/DumpUtils;->writePort(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPort;)V

    .line 1418
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-string/jumbo v1, "status"

    const-wide v2, 0x10b00000002L

    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/internal/usb/DumpUtils;->writePortStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPortStatus;)V

    .line 1419
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    const-string v1, "can_change_mode"

    const-wide v2, 0x10800000003L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1420
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    const-string v1, "can_change_power_role"

    const-wide v2, 0x10800000004L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1422
    iget-boolean v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    const-string v1, "can_change_data_role"

    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1424
    iget-wide v4, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    const-string v1, "connected_at_millis"

    const-wide v2, 0x10300000006L

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 1426
    iget-wide v4, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    const-string/jumbo v1, "last_connect_duration_millis"

    const-wide v2, 0x10300000007L

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 1429
    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1430
    return-void
.end method

.method public setStatus(IZIZIZI)Z
    .locals 17
    .param p1, "currentMode"    # I
    .param p2, "canChangeMode"    # Z
    .param p3, "currentPowerRole"    # I
    .param p4, "canChangePowerRole"    # Z
    .param p5, "currentDataRole"    # I
    .param p6, "canChangeDataRole"    # Z
    .param p7, "supportedRoleCombinations"    # I

    .line 1349
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1351
    .local v1, "dispositionChanged":Z
    move/from16 v2, p2

    iput-boolean v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 1352
    move/from16 v3, p4

    iput-boolean v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 1353
    move/from16 v4, p6

    iput-boolean v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 1354
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v5, :cond_3

    .line 1355
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v5

    move/from16 v13, p1

    if-ne v5, v13, :cond_2

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1356
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v5

    move/from16 v14, p3

    if-ne v5, v14, :cond_1

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1357
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v5

    move/from16 v15, p5

    if-ne v5, v15, :cond_0

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1358
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v5

    move/from16 v12, p7

    if-eq v5, v12, :cond_4

    goto :goto_0

    .line 1357
    :cond_0
    move/from16 v12, p7

    goto :goto_0

    .line 1356
    :cond_1
    move/from16 v15, p5

    move/from16 v12, p7

    goto :goto_0

    .line 1355
    :cond_2
    move/from16 v14, p3

    move/from16 v15, p5

    move/from16 v12, p7

    goto :goto_0

    .line 1354
    :cond_3
    move/from16 v13, p1

    move/from16 v14, p3

    move/from16 v15, p5

    move/from16 v12, p7

    .line 1360
    :goto_0
    new-instance v5, Landroid/hardware/usb/UsbPortStatus;

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object v6, v5

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p7

    move/from16 v12, v16

    invoke-direct/range {v6 .. v12}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIII)V

    iput-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1363
    const/4 v1, 0x1

    .line 1366
    :cond_4
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_5

    iget-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_5

    .line 1367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1368
    iput-wide v6, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    goto :goto_1

    .line 1369
    :cond_5
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    if-nez v5, :cond_6

    iget-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_6

    .line 1370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1371
    iput-wide v6, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1374
    :cond_6
    :goto_1
    return v1
.end method

.method public setStatus(IZIZIZIII)Z
    .locals 16
    .param p1, "currentMode"    # I
    .param p2, "canChangeMode"    # Z
    .param p3, "currentPowerRole"    # I
    .param p4, "canChangePowerRole"    # Z
    .param p5, "currentDataRole"    # I
    .param p6, "canChangeDataRole"    # Z
    .param p7, "supportedRoleCombinations"    # I
    .param p8, "contaminantProtectionStatus"    # I
    .param p9, "contaminantDetectionStatus"    # I

    .line 1382
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1384
    .local v1, "dispositionChanged":Z
    move/from16 v2, p2

    iput-boolean v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 1385
    move/from16 v3, p4

    iput-boolean v3, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 1386
    move/from16 v4, p6

    iput-boolean v4, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 1387
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v5, :cond_5

    .line 1388
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v5

    move/from16 v13, p1

    if-ne v5, v13, :cond_4

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1389
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v5

    move/from16 v14, p3

    if-ne v5, v14, :cond_3

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1390
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v5

    move/from16 v15, p5

    if-ne v5, v15, :cond_2

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1391
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v5

    move/from16 v12, p7

    if-ne v5, v12, :cond_1

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1393
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getContaminantProtectionStatus()I

    move-result v5

    move/from16 v11, p8

    if-ne v5, v11, :cond_0

    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1395
    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v5

    move/from16 v10, p9

    if-eq v5, v10, :cond_6

    goto :goto_0

    .line 1393
    :cond_0
    move/from16 v10, p9

    goto :goto_0

    .line 1391
    :cond_1
    move/from16 v11, p8

    move/from16 v10, p9

    goto :goto_0

    .line 1390
    :cond_2
    move/from16 v12, p7

    move/from16 v11, p8

    move/from16 v10, p9

    goto :goto_0

    .line 1389
    :cond_3
    move/from16 v15, p5

    move/from16 v12, p7

    move/from16 v11, p8

    move/from16 v10, p9

    goto :goto_0

    .line 1388
    :cond_4
    move/from16 v14, p3

    move/from16 v15, p5

    move/from16 v12, p7

    move/from16 v11, p8

    move/from16 v10, p9

    goto :goto_0

    .line 1387
    :cond_5
    move/from16 v13, p1

    move/from16 v14, p3

    move/from16 v15, p5

    move/from16 v12, p7

    move/from16 v11, p8

    move/from16 v10, p9

    .line 1397
    :goto_0
    new-instance v5, Landroid/hardware/usb/UsbPortStatus;

    move-object v6, v5

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v6 .. v12}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIII)V

    iput-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 1400
    const/4 v1, 0x1

    .line 1403
    :cond_6
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_7

    iget-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v5, v8, v6

    if-nez v5, :cond_7

    .line 1404
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1405
    iput-wide v6, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    goto :goto_1

    .line 1406
    :cond_7
    iget-object v5, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    if-nez v5, :cond_8

    iget-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_8

    .line 1407
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 1408
    iput-wide v6, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    .line 1411
    :cond_8
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canChangeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canChangePowerRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canChangeDataRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", connectedAtMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mConnectedAtMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastConnectDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

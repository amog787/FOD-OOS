.class public interface abstract Lcom/android/server/am/IOpAppRecord;
.super Ljava/lang/Object;
.source "IOpAppRecord.java"


# virtual methods
.method public abstract addIsolatedUid(II)V
.end method

.method public abstract dumpsysOMM(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract forceStopPackageSmart(Ljava/lang/String;I)V
.end method

.method public abstract initAppRecord(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initEnv(Landroid/content/Context;)V
.end method

.method public abstract noteBluetoothConnectedChanged(Ljava/lang/String;Z)V
.end method

.method public abstract noteFlashlightOff(I)V
.end method

.method public abstract noteFlashlightOn(I)V
.end method

.method public abstract noteFloatWindowChange(Ljava/lang/String;IIZ)V
.end method

.method public abstract noteFreezeStateChange(IZ)V
.end method

.method public abstract noteFrontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
.end method

.method public abstract noteHighUsedAppChanged(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract noteNotificationChanged(Ljava/lang/String;IIZ)V
.end method

.method public abstract notePSSChanged(IIJ)V
.end method

.method public abstract notePauseGps(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract notePredctionAppChanged(Ljava/lang/String;Z)V
.end method

.method public abstract noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;ZII)V
.end method

.method public abstract noteResetAudio()V
.end method

.method public abstract noteResetCamera()V
.end method

.method public abstract noteResetFlashlight()V
.end method

.method public abstract noteResetVideo()V
.end method

.method public abstract noteRfcommSocketToServiceRecord(II)V
.end method

.method public abstract noteStartAudio(I)V
.end method

.method public abstract noteStartAudio(II)V
.end method

.method public abstract noteStartCamera(I)V
.end method

.method public abstract noteStartGps(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract noteStartSensor(II)V
.end method

.method public abstract noteStartVideo(I)V
.end method

.method public abstract noteStartVideo(II)V
.end method

.method public abstract noteStopAudio(I)V
.end method

.method public abstract noteStopAudio(II)V
.end method

.method public abstract noteStopCamera(I)V
.end method

.method public abstract noteStopGps(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract noteStopSensor(II)V
.end method

.method public abstract noteStopVideo(I)V
.end method

.method public abstract noteStopVideo(II)V
.end method

.method public abstract noteUserLockAppChanged(Ljava/lang/String;IZ)V
.end method

.method public abstract noteVibratorOff(I)V
.end method

.method public abstract noteVibratorOn(IJ)V
.end method

.method public abstract processDie(Lcom/android/server/am/ProcessRecord;I)V
.end method

.method public abstract processStart(Lcom/android/server/am/ProcessRecord;I)V
.end method

.method public abstract removeIsolatedUid(I)V
.end method

.method public abstract schedulePerformPoll()V
.end method

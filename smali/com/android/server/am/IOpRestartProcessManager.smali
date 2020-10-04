.class public interface abstract Lcom/android/server/am/IOpRestartProcessManager;
.super Ljava/lang/Object;
.source "IOpRestartProcessManager.java"


# virtual methods
.method public abstract doAddNewPackages(Ljava/lang/String;)V
.end method

.method public abstract doCleanAllData(J)V
.end method

.method public abstract doCleanData(J)V
.end method

.method public abstract doDump(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract doGetGeneralUsedPackageList(Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract doGetHighUsedPackageList(Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract doGetLowUsedPackageList(Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract doHandleCommand([Ljava/lang/String;)V
.end method

.method public abstract doIsHighUsedPackages(Ljava/lang/String;)Z
.end method

.method public abstract doRemovePackage(Ljava/lang/String;)V
.end method

.method public abstract doUpdateDuration(Landroid/content/Context;Ljava/lang/String;J)V
.end method

.method public abstract doUpdateLaunchTime(Landroid/content/Context;Ljava/lang/String;J)V
.end method

.method public abstract doWriteRecord(Z)V
.end method

.method public abstract getInitPackagesFromSystemReady()Z
.end method

.method public abstract initEssentials()V
.end method

.method public abstract rankAllPkgs()V
.end method

.method public abstract setInitPackagesFromSystemReady(Z)V
.end method

.method public abstract setScreenState(Z)V
.end method

.method public abstract setUpdatingPackage(Ljava/lang/String;)V
.end method

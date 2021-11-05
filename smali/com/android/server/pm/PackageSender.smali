.class interface abstract Lcom/android/server/pm/PackageSender;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# virtual methods
.method public abstract notifyPackageAdded(Ljava/lang/String;I)V
.end method

.method public abstract notifyPackageChanged(Ljava/lang/String;I)V
.end method

.method public abstract notifyPackageRemoved(Ljava/lang/String;I)V
.end method

.method public abstract sendPackageAddedForNewUsers(Ljava/lang/String;ZZI[I[II)V
.end method

.method public abstract sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/IIntentReceiver;",
            "[I[I",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation
.end method

.class Lcom/android/server/pm/PackageManagerService$ReconcileFailure;
.super Lcom/android/server/pm/PackageManagerException;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReconcileFailure"
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 16771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reconcile failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 16772
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerException;)V
    .locals 2
    .param p1, "e"    # Lcom/android/server/pm/PackageManagerException;

    .line 16774
    iget v0, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerService$ReconcileFailure;-><init>(ILjava/lang/String;)V

    .line 16775
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 16768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reconcile failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    .line 16769
    return-void
.end method

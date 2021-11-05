.class Lcom/android/server/pm/PackageManagerService$PrepareFailure;
.super Lcom/android/server/pm/PackageManagerException;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareFailure"
.end annotation


# instance fields
.field public conflictingPackage:Ljava/lang/String;

.field public conflictingPermission:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "error"    # I

    .line 17642
    const-string v0, "Failed to prepare for install."

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 17643
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 17646
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 17647
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .line 17650
    instance-of v0, p2, Landroid/content/pm/PackageParser$PackageParserException;

    if-eqz v0, :cond_0

    .line 17651
    move-object v0, p2

    check-cast v0, Landroid/content/pm/PackageParser$PackageParserException;

    iget v0, v0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    goto :goto_0

    .line 17652
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 17653
    :goto_0
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 17650
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 17654
    return-void
.end method


# virtual methods
.method conflictsWithExistingPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PrepareFailure;
    .locals 0
    .param p1, "conflictingPermission"    # Ljava/lang/String;
    .param p2, "conflictingPackage"    # Ljava/lang/String;

    .line 17658
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PrepareFailure;->conflictingPermission:Ljava/lang/String;

    .line 17659
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PrepareFailure;->conflictingPackage:Ljava/lang/String;

    .line 17660
    return-object p0
.end method

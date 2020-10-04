.class Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageInstalledInfo"
.end annotation


# instance fields
.field addedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;",
            ">;"
        }
    .end annotation
.end field

.field installerPackageName:Ljava/lang/String;

.field libraryConsumers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field newUsers:[I

.field origPackage:Ljava/lang/String;

.field origPermission:Ljava/lang/String;

.field origUsers:[I

.field pkg:Landroid/content/pm/PackageParser$Package;

.field removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

.field returnCode:I

.field returnMsg:Ljava/lang/String;

.field uid:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setReturnMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "returnMsg"    # Ljava/lang/String;

    .line 16713
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    .line 16714
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16715
    .local v0, "childCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 16716
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iput-object p1, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    .line 16715
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16718
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public setError(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 16679
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 16680
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    .line 16681
    const-string v0, "PackageManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16682
    return-void
.end method

.method public setError(Ljava/lang/String;Landroid/content/pm/PackageParser$PackageParserException;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Landroid/content/pm/PackageParser$PackageParserException;

    .line 16685
    iget v0, p2, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 16686
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    .line 16687
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16688
    .local v0, "childCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 16689
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setError(Ljava/lang/String;Landroid/content/pm/PackageParser$PackageParserException;)V

    .line 16688
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16691
    .end local v1    # "i":I
    :cond_1
    const-string v1, "PackageManager"

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16692
    return-void
.end method

.method public setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/android/server/pm/PackageManagerException;

    .line 16695
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 16696
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    .line 16697
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16698
    .local v0, "childCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 16699
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 16698
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16701
    .end local v1    # "i":I
    :cond_1
    const-string v1, "PackageManager"

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16702
    return-void
.end method

.method public setReturnCode(I)V
    .locals 3
    .param p1, "returnCode"    # I

    .line 16705
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 16706
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16707
    .local v0, "childCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 16708
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iput p1, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 16707
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16710
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

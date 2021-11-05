.class final Lcom/android/server/pm/ApexManager$ApexManagerFlattenedApex;
.super Lcom/android/server/pm/ApexManager;
.source "ApexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ApexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApexManagerFlattenedApex"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 966
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ApexManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/ApexManager$1;

    .line 966
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager$ApexManagerFlattenedApex;-><init>()V

    return-void
.end method


# virtual methods
.method abortStagedSession(I)Z
    .locals 1
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1074
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public destroyCeSnapshotsNotSpecified(I[I)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "retainRollbackIds"    # [I

    .line 1125
    const/4 v0, 0x1

    return v0
.end method

.method public destroyDeSnapshots(I)Z
    .locals 1
    .param p1, "rollbackId"    # I

    .line 1120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1131
    return-void
.end method

.method public getActiveApexInfos()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexManager$ActiveApexInfo;",
            ">;"
        }
    .end annotation

    .line 973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ApexManager$ActiveApexInfo;>;"
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object v1

    .line 979
    .local v1, "apexDir":Ljava/io/File;
    const-string v2, "com.android.art.release"

    const-string v3, "com.android.art.debug"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 980
    .local v2, "skipDirs":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 981
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 984
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_3

    .line 985
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    .line 986
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 987
    array-length v8, v2

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v2, v9

    .line 988
    .local v10, "skipDir":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 987
    .end local v10    # "skipDir":Ljava/lang/String;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 992
    :cond_1
    new-instance v8, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v7, v9, v10}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/ApexManager$1;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    .end local v7    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 997
    .end local v3    # "files":[Ljava/io/File;
    :cond_3
    return-object v0
.end method

.method public getActiveApexPackageNameContainingPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 1
    .param p1, "containedPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1035
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    const/4 v0, 0x0

    return-object v0
.end method

.method getActivePackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1013
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apexPackageName"    # Ljava/lang/String;

    .line 1105
    const/4 v0, 0x0

    return-object v0
.end method

.method getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "apexPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1099
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getFactoryPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1018
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getInactivePackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1023
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 1008
    const/4 v0, 0x0

    return-object v0
.end method

.method getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
    .locals 1
    .param p1, "sessionId"    # I

    .line 1042
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method isApexPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1028
    const/4 v0, 0x0

    return v0
.end method

.method isApexSupported()Z
    .locals 1

    .line 1064
    const/4 v0, 0x0

    return v0
.end method

.method isApkInApexInstallSuccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apexPackageName"    # Ljava/lang/String;

    .line 1094
    const/4 v0, 0x1

    return v0
.end method

.method markStagedSessionReady(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 1054
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method markStagedSessionSuccessful(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 1059
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method registerApkInApex(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 0
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1085
    return-void
.end method

.method reportErrorWithApkInApex(Ljava/lang/String;)V
    .locals 0
    .param p1, "scanDirPath"    # Ljava/lang/String;

    .line 1090
    return-void
.end method

.method public restoreCeData(IILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "rollbackId"    # I
    .param p3, "apexPackageName"    # Ljava/lang/String;

    .line 1115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method revertActiveSessions()Z
    .locals 1

    .line 1069
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method scanApexPackagesTraced(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 1004
    return-void
.end method

.method public snapshotCeData(IILjava/lang/String;)J
    .locals 1
    .param p1, "userId"    # I
    .param p2, "rollbackId"    # I
    .param p3, "apexPackageName"    # Ljava/lang/String;

    .line 1110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;
    .locals 3
    .param p1, "params"    # Landroid/apex/ApexSessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1048
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    const-string v2, "Device doesn\'t support updating APEX"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method uninstallApex(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apexPackagePath"    # Ljava/lang/String;

    .line 1079
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

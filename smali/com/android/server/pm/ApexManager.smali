.class public abstract Lcom/android/server/pm/ApexManager;
.super Ljava/lang/Object;
.source "ApexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ApexManager$ApexManagerFlattenedApex;,
        Lcom/android/server/pm/ApexManager$ApexManagerImpl;,
        Lcom/android/server/pm/ApexManager$PackageInfoFlags;,
        Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    }
.end annotation


# static fields
.field public static final MATCH_ACTIVE_PACKAGE:I = 0x1

.field static final MATCH_FACTORY_PACKAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ApexManager"

.field private static final sApexManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/android/server/pm/ApexManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/android/server/pm/ApexManager$1;

    invoke-direct {v0}, Lcom/android/server/pm/ApexManager$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/ApexManager;->sApexManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/pm/ApexManager;
    .locals 1

    .line 99
    sget-object v0, Lcom/android/server/pm/ApexManager;->sApexManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ApexManager;

    return-object v0
.end method

.method public static isFactory(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 202
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method abstract abortStagedSession(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation
.end method

.method public abstract destroyCeSnapshotsNotSpecified(I[I)Z
.end method

.method public abstract destroyDeSnapshots(I)Z
.end method

.method abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract getActiveApexInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexManager$ActiveApexInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActiveApexPackageNameContainingPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
.end method

.method abstract getActivePackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method abstract getApksInApex(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method abstract getFactoryPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method abstract getInactivePackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
.end method

.method abstract getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
.end method

.method abstract isApexPackage(Ljava/lang/String;)Z
.end method

.method abstract isApexSupported()Z
.end method

.method abstract isApkInApexInstallSuccess(Ljava/lang/String;)Z
.end method

.method abstract markStagedSessionReady(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation
.end method

.method abstract markStagedSessionSuccessful(I)V
.end method

.method abstract registerApkInApex(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
.end method

.method abstract reportErrorWithApkInApex(Ljava/lang/String;)V
.end method

.method public abstract restoreCeData(IILjava/lang/String;)Z
.end method

.method abstract revertActiveSessions()Z
.end method

.method abstract scanApexPackagesTraced(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
.end method

.method public abstract snapshotCeData(IILjava/lang/String;)J
.end method

.method abstract submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation
.end method

.method abstract uninstallApex(Ljava/lang/String;)Z
.end method

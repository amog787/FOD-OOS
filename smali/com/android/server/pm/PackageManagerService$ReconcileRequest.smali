.class Lcom/android/server/pm/PackageManagerService$ReconcileRequest;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReconcileRequest"
.end annotation


# instance fields
.field public final allPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field public final installArgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$InstallArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final installResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final lastStaticSharedLibSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field public final preparedPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PrepareResult;",
            ">;"
        }
    .end annotation
.end field

.field public final scannedPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public final sharedLibrarySource:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final versionInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$ScanResult;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 16729
    .local p1, "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$ScanResult;>;"
    .local p2, "sharedLibrarySource":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/LongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .local p3, "allPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local p4, "versionInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/Settings$VersionInfo;>;"
    .local p5, "lastStaticSharedLibSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 16730
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 16729
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 16732
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Ljava/util/Map;
    .param p5, "x4"    # Ljava/util/Map;
    .param p6, "x5"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 16695
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$ScanResult;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$InstallArgs;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PrepareResult;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 16713
    .local p1, "scannedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$ScanResult;>;"
    .local p2, "installArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$InstallArgs;>;"
    .local p3, "installResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;>;"
    .local p4, "preparedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$PrepareResult;>;"
    .local p5, "sharedLibrarySource":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/LongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .local p6, "allPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local p7, "versionInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/Settings$VersionInfo;>;"
    .local p8, "lastStaticSharedLibSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16714
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;->scannedPackages:Ljava/util/Map;

    .line 16715
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;->installArgs:Ljava/util/Map;

    .line 16716
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;->installResults:Ljava/util/Map;

    .line 16717
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;->preparedPackages:Ljava/util/Map;

    .line 16718
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;->sharedLibrarySource:Ljava/util/Map;

    .line 16719
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;->allPackages:Ljava/util/Map;

    .line 16720
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;->versionInfos:Ljava/util/Map;

    .line 16721
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;->lastStaticSharedLibSettings:Ljava/util/Map;

    .line 16722
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Ljava/util/Map;
    .param p5, "x4"    # Ljava/util/Map;
    .param p6, "x5"    # Ljava/util/Map;
    .param p7, "x6"    # Ljava/util/Map;
    .param p8, "x7"    # Ljava/util/Map;
    .param p9, "x8"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 16695
    invoke-direct/range {p0 .. p8}, Lcom/android/server/pm/PackageManagerService$ReconcileRequest;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.class public Lcom/android/server/pm/PackageManagerService$TestParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestParams"
.end annotation


# instance fields
.field public Metrics:Landroid/util/DisplayMetrics;

.field public apexManager:Lcom/android/server/pm/ApexManager;

.field public appPredictionServicePackage:Ljava/lang/String;

.field public artManagerService:Lcom/android/server/pm/dex/ArtManagerService;

.field public availableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public configuratorPackage:Ljava/lang/String;

.field public defParseFlags:I

.field public defaultTextClassifierPackage:Ljava/lang/String;

.field public dexManager:Lcom/android/server/pm/dex/DexManager;

.field public dirsToScanAsSystem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageManagerService$ScanPartition;",
            ">;"
        }
    .end annotation
.end field

.field public documenterPackage:Ljava/lang/String;

.field public factoryTest:Z

.field public handler:Landroid/os/Handler;

.field public handlerThread:Lcom/android/server/ServiceThread;

.field public incidentReportApproverPackage:Ljava/lang/String;

.field public incrementalManager:Landroid/os/incremental/IncrementalManager;

.field public installerService:Lcom/android/server/pm/PackageInstallerService;

.field public instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

.field public instantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

.field public instantAppResolverSettingsComponent:Landroid/content/ComponentName;

.field public intentFilterVerifier:Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier<",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public intentFilterVerifierComponent:Landroid/content/ComponentName;

.field public isPreNmr1Upgrade:Z

.field public isPreNupgrade:Z

.field public isPreQupgrade:Z

.field public isUpgrade:Z

.field public moduleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

.field public moveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

.field public onlyCore:Z

.field public optionalVerifierPackage:Ljava/lang/String;

.field public overlayConfig:Lcom/android/internal/content/om/OverlayConfig;

.field public packageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field public packageParserCallback:Lcom/android/server/pm/parsing/PackageParser2$Callback;

.field public packages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field public pendingPackageBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

.field public permissionManagerService:Landroid/permission/IPermissionManager;

.field public pmInternal:Landroid/content/pm/PackageManagerInternal;

.field public processLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

.field public protectedPackages:Lcom/android/server/pm/ProtectedPackages;

.field public requiredInstallerPackage:Ljava/lang/String;

.field public requiredPermissionControllerPackage:Ljava/lang/String;

.field public requiredUninstallerPackage:Ljava/lang/String;

.field public requiredVerifierPackage:Ljava/lang/String;

.field public resolveComponentName:Landroid/content/ComponentName;

.field public retailDemoPackage:Ljava/lang/String;

.field public separateProcesses:[Ljava/lang/String;

.field public servicesExtensionPackageName:Ljava/lang/String;

.field public setupWizardPackage:Ljava/lang/String;

.field public sharedSystemSharedLibraryPackageName:Ljava/lang/String;

.field public storageManagerPackage:Ljava/lang/String;

.field public systemTextClassifierPackage:Ljava/lang/String;

.field public viewCompiler:Lcom/android/server/pm/dex/ViewCompiler;

.field public wellbeingPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

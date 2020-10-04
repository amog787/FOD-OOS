.class Lcom/android/server/pm/PackageManagerService$PrepareResult;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareResult"
.end annotation


# instance fields
.field public final childPackageSettings:[Lcom/android/server/pm/PackageSetting;

.field public final clearCodeCache:Z

.field public final disabledPs:Lcom/android/server/pm/PackageSetting;

.field public final existingPackage:Landroid/content/pm/PackageParser$Package;

.field public final freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

.field public final installReason:I

.field public final installerPackageName:Ljava/lang/String;

.field public final originalPs:Lcom/android/server/pm/PackageSetting;

.field public final packageToScan:Landroid/content/pm/PackageParser$Package;

.field public final parseFlags:I

.field public final renamedPackage:Ljava/lang/String;

.field public final replace:Z

.field public final scanFlags:I

.field public final system:Z

.field public final user:Landroid/os/UserHandle;

.field public final volumeUuid:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZIILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageFreezer;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;[Lcom/android/server/pm/PackageSetting;)V
    .locals 16
    .param p1, "installReason"    # I
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .param p3, "installerPackageName"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;
    .param p5, "replace"    # Z
    .param p6, "scanFlags"    # I
    .param p7, "parseFlags"    # I
    .param p8, "existingPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p9, "packageToScan"    # Landroid/content/pm/PackageParser$Package;
    .param p10, "clearCodeCache"    # Z
    .param p11, "system"    # Z
    .param p12, "renamedPackage"    # Ljava/lang/String;
    .param p13, "freezer"    # Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .param p14, "originalPs"    # Lcom/android/server/pm/PackageSetting;
    .param p15, "disabledPs"    # Lcom/android/server/pm/PackageSetting;
    .param p16, "childPackageSettings"    # [Lcom/android/server/pm/PackageSetting;

    .line 17830
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17831
    move/from16 v1, p1

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->installReason:I

    .line 17832
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->volumeUuid:Ljava/lang/String;

    .line 17833
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->installerPackageName:Ljava/lang/String;

    .line 17834
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->user:Landroid/os/UserHandle;

    .line 17835
    move/from16 v5, p5

    iput-boolean v5, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->replace:Z

    .line 17836
    move/from16 v6, p6

    iput v6, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->scanFlags:I

    .line 17837
    move/from16 v7, p7

    iput v7, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->parseFlags:I

    .line 17838
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->existingPackage:Landroid/content/pm/PackageParser$Package;

    .line 17839
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->packageToScan:Landroid/content/pm/PackageParser$Package;

    .line 17840
    move/from16 v10, p10

    iput-boolean v10, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->clearCodeCache:Z

    .line 17841
    move/from16 v11, p11

    iput-boolean v11, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->system:Z

    .line 17842
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->renamedPackage:Ljava/lang/String;

    .line 17843
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    .line 17844
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->originalPs:Lcom/android/server/pm/PackageSetting;

    .line 17845
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->disabledPs:Lcom/android/server/pm/PackageSetting;

    .line 17846
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->childPackageSettings:[Lcom/android/server/pm/PackageSetting;

    .line 17847
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZIILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageFreezer;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;[Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/os/UserHandle;
    .param p5, "x4"    # Z
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # Landroid/content/pm/PackageParser$Package;
    .param p9, "x8"    # Landroid/content/pm/PackageParser$Package;
    .param p10, "x9"    # Z
    .param p11, "x10"    # Z
    .param p12, "x11"    # Ljava/lang/String;
    .param p13, "x12"    # Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .param p14, "x13"    # Lcom/android/server/pm/PackageSetting;
    .param p15, "x14"    # Lcom/android/server/pm/PackageSetting;
    .param p16, "x15"    # [Lcom/android/server/pm/PackageSetting;
    .param p17, "x16"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 17804
    invoke-direct/range {p0 .. p16}, Lcom/android/server/pm/PackageManagerService$PrepareResult;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZIILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;ZZLjava/lang/String;Lcom/android/server/pm/PackageManagerService$PackageFreezer;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;[Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

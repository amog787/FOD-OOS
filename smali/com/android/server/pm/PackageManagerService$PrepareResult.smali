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
.field public final clearCodeCache:Z

.field public final disabledPs:Lcom/android/server/pm/PackageSetting;

.field public final existingPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public final originalPs:Lcom/android/server/pm/PackageSetting;

.field public final packageToScan:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

.field public final parseFlags:I

.field public final replace:Z

.field public final scanFlags:I

.field public final system:Z


# direct methods
.method private constructor <init>(ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/ParsedPackage;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 0
    .param p1, "replace"    # Z
    .param p2, "scanFlags"    # I
    .param p3, "parseFlags"    # I
    .param p4, "existingPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "packageToScan"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p6, "clearCodeCache"    # Z
    .param p7, "system"    # Z
    .param p8, "originalPs"    # Lcom/android/server/pm/PackageSetting;
    .param p9, "disabledPs"    # Lcom/android/server/pm/PackageSetting;

    .line 17623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17624
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->replace:Z

    .line 17625
    iput p2, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->scanFlags:I

    .line 17626
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->parseFlags:I

    .line 17627
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->existingPackage:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 17628
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->packageToScan:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 17629
    iput-boolean p6, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->clearCodeCache:Z

    .line 17630
    iput-boolean p7, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->system:Z

    .line 17631
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->originalPs:Lcom/android/server/pm/PackageSetting;

    .line 17632
    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$PrepareResult;->disabledPs:Lcom/android/server/pm/PackageSetting;

    .line 17633
    return-void
.end method

.method synthetic constructor <init>(ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/ParsedPackage;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "x4"    # Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # Lcom/android/server/pm/PackageSetting;
    .param p9, "x8"    # Lcom/android/server/pm/PackageSetting;
    .param p10, "x9"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 17608
    invoke-direct/range {p0 .. p9}, Lcom/android/server/pm/PackageManagerService$PrepareResult;-><init>(ZIILcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/ParsedPackage;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

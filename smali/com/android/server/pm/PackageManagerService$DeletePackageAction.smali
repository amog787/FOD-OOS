.class Lcom/android/server/pm/PackageManagerService$DeletePackageAction;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeletePackageAction"
.end annotation


# instance fields
.field public final deletingPs:Lcom/android/server/pm/PackageSetting;

.field public final disabledPs:Lcom/android/server/pm/PackageSetting;

.field public final flags:I

.field public final outInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;ILandroid/os/UserHandle;)V
    .locals 0
    .param p1, "deletingPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "disabledPs"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "outInfo"    # Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .param p4, "flags"    # I
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 19687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19688
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$DeletePackageAction;->deletingPs:Lcom/android/server/pm/PackageSetting;

    .line 19689
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$DeletePackageAction;->disabledPs:Lcom/android/server/pm/PackageSetting;

    .line 19690
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$DeletePackageAction;->outInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 19691
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$DeletePackageAction;->flags:I

    .line 19692
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$DeletePackageAction;->user:Landroid/os/UserHandle;

    .line 19693
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;ILandroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "x1"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "x2"    # Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/os/UserHandle;
    .param p6, "x5"    # Lcom/android/server/pm/PackageManagerService$1;

    .line 19679
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerService$DeletePackageAction;-><init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;ILandroid/os/UserHandle;)V

    return-void
.end method

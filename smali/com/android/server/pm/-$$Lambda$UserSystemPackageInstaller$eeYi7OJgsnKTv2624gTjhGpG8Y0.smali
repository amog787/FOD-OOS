.class public final synthetic Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$eeYi7OJgsnKTv2624gTjhGpG8Y0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Landroid/content/pm/PackageManagerInternal;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$eeYi7OJgsnKTv2624gTjhGpG8Y0;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$eeYi7OJgsnKTv2624gTjhGpG8Y0;->f$1:Landroid/content/pm/PackageManagerInternal;

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$eeYi7OJgsnKTv2624gTjhGpG8Y0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$eeYi7OJgsnKTv2624gTjhGpG8Y0;->f$0:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$eeYi7OJgsnKTv2624gTjhGpG8Y0;->f$1:Landroid/content/pm/PackageManagerInternal;

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$eeYi7OJgsnKTv2624gTjhGpG8Y0;->f$2:Ljava/util/List;

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->lambda$getPackagesWhitelistErrors$1(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

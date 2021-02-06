.class public final synthetic Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$BaBM2EgGaZ_mwYNdMEwnvM1-1EU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserSystemPackageInstaller;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserSystemPackageInstaller;Ljava/util/Set;ZLjava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$BaBM2EgGaZ_mwYNdMEwnvM1-1EU;->f$0:Lcom/android/server/pm/UserSystemPackageInstaller;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$BaBM2EgGaZ_mwYNdMEwnvM1-1EU;->f$1:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$BaBM2EgGaZ_mwYNdMEwnvM1-1EU;->f$2:Z

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$BaBM2EgGaZ_mwYNdMEwnvM1-1EU;->f$3:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$BaBM2EgGaZ_mwYNdMEwnvM1-1EU;->f$0:Lcom/android/server/pm/UserSystemPackageInstaller;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$BaBM2EgGaZ_mwYNdMEwnvM1-1EU;->f$1:Ljava/util/Set;

    iget-boolean v2, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$BaBM2EgGaZ_mwYNdMEwnvM1-1EU;->f$2:Z

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$BaBM2EgGaZ_mwYNdMEwnvM1-1EU;->f$3:Ljava/util/Set;

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->lambda$getInstallablePackagesForUserType$2$UserSystemPackageInstaller(Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

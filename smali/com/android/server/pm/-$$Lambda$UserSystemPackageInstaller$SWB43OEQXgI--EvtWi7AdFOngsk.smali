.class public final synthetic Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;IZZLandroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;->f$0:Ljava/util/Set;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;->f$3:Z

    iput-object p5, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;->f$4:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;->f$0:Ljava/util/Set;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;->f$2:Z

    iget-boolean v3, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;->f$3:Z

    iget-object v4, p0, Lcom/android/server/pm/-$$Lambda$UserSystemPackageInstaller$SWB43OEQXgI--EvtWi7AdFOngsk;->f$4:Landroid/util/ArraySet;

    move-object v5, p1

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/UserSystemPackageInstaller;->lambda$installWhitelistedSystemPackages$0(Ljava/util/Set;IZZLandroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

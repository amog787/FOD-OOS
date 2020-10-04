.class public final synthetic Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$o-Qxi7Gaam-yhhMK-IMWv499oME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Landroid/content/pm/PackageParser$Package;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$o-Qxi7Gaam-yhhMK-IMWv499oME;->f$0:Landroid/content/pm/PackageParser$Package;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$o-Qxi7Gaam-yhhMK-IMWv499oME;->f$0:Landroid/content/pm/PackageParser$Package;

    check-cast p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    invoke-static {v0, p1}, Lcom/android/server/pm/InstantAppRegistry;->lambda$onPackageInstalledLPw$0(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z

    move-result p1

    return p1
.end method

.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$flUQp0qTsxUQY0aupDT6UsHb48I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field private final synthetic f$1:Landroid/content/pm/PackageParser$Package;

.field private final synthetic f$2:Landroid/content/pm/PackageParser$Package;

.field private final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$flUQp0qTsxUQY0aupDT6UsHb48I;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$flUQp0qTsxUQY0aupDT6UsHb48I;->f$1:Landroid/content/pm/PackageParser$Package;

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$flUQp0qTsxUQY0aupDT6UsHb48I;->f$2:Landroid/content/pm/PackageParser$Package;

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$flUQp0qTsxUQY0aupDT6UsHb48I;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$flUQp0qTsxUQY0aupDT6UsHb48I;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$flUQp0qTsxUQY0aupDT6UsHb48I;->f$1:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$flUQp0qTsxUQY0aupDT6UsHb48I;->f$2:Landroid/content/pm/PackageParser$Package;

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$flUQp0qTsxUQY0aupDT6UsHb48I;->f$3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->lambda$commitPackageSettings$6$PackageManagerService(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;)V

    return-void
.end method

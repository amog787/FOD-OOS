.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$yQ3ZqZMHaduvv1mk1KLU_DO0B8c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/content/pm/IPackageDeleteObserver2;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yQ3ZqZMHaduvv1mk1KLU_DO0B8c;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yQ3ZqZMHaduvv1mk1KLU_DO0B8c;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yQ3ZqZMHaduvv1mk1KLU_DO0B8c;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$yQ3ZqZMHaduvv1mk1KLU_DO0B8c;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->lambda$deletePackageVersioned$16(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    return-void
.end method

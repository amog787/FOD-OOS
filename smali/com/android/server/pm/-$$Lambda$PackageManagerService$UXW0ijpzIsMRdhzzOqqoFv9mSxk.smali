.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$UXW0ijpzIsMRdhzzOqqoFv9mSxk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/pm/IPackageDeleteObserver2;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$UXW0ijpzIsMRdhzzOqqoFv9mSxk;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$UXW0ijpzIsMRdhzzOqqoFv9mSxk;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$UXW0ijpzIsMRdhzzOqqoFv9mSxk;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$UXW0ijpzIsMRdhzzOqqoFv9mSxk;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->lambda$deletePackageVersionedInternal$24(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    return-void
.end method

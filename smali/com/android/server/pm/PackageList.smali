.class public Lcom/android/server/pm/PackageList;
.super Ljava/lang/Object;
.source "PackageList.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final mPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
    .locals 0
    .param p2, "observer"    # Landroid/content/pm/PackageManagerInternal$PackageListObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageManagerInternal$PackageListObserver;",
            ")V"
        }
    .end annotation

    .line 43
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/pm/PackageList;->mPackageNames:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lcom/android/server/pm/PackageList;->mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManagerInternal;->removePackageListObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V

    .line 72
    return-void
.end method

.method public getPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/server/pm/PackageList;->mPackageNames:Ljava/util/List;

    return-object v0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 50
    iget-object v0, p0, Lcom/android/server/pm/PackageList;->mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageAdded(Ljava/lang/String;I)V

    .line 53
    :cond_0
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 57
    iget-object v0, p0, Lcom/android/server/pm/PackageList;->mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageChanged(Ljava/lang/String;I)V

    .line 60
    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 64
    iget-object v0, p0, Lcom/android/server/pm/PackageList;->mWrappedObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageRemoved(Ljava/lang/String;I)V

    .line 67
    :cond_0
    return-void
.end method

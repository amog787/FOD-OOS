.class public interface abstract Landroid/content/pm/PackageManagerInternal$PackageListObserver;
.super Ljava/lang/Object;
.source "PackageManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageListObserver"
.end annotation


# virtual methods
.method public abstract onPackageAdded(Ljava/lang/String;I)V
.end method

.method public onPackageChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 138
    return-void
.end method

.method public abstract onPackageRemoved(Ljava/lang/String;I)V
.end method

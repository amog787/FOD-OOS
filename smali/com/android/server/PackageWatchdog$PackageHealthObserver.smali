.class public interface abstract Lcom/android/server/PackageWatchdog$PackageHealthObserver;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageHealthObserver"
.end annotation


# virtual methods
.method public abstract execute(Landroid/content/pm/VersionedPackage;)Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract onHealthCheckFailed(Landroid/content/pm/VersionedPackage;)I
.end method

.class public interface abstract Lcom/android/server/pm/AppsFilter$FeatureConfig;
.super Ljava/lang/Object;
.source "AppsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AppsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeatureConfig"
.end annotation


# virtual methods
.method public abstract enableLogging(IZ)V
.end method

.method public abstract isGloballyEnabled()Z
.end method

.method public abstract isLoggingEnabled(I)Z
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
.end method

.method public abstract updatePackageState(Lcom/android/server/pm/PackageSetting;Z)V
.end method

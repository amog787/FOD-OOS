.class public interface abstract Lcom/android/server/pm/IOpCompatibilityHelper;
.super Ljava/lang/Object;
.source "IOpCompatibilityHelper.java"


# virtual methods
.method public abstract abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract customizePackageIfNeeded(Landroid/content/pm/PackageParser$Package;)V
.end method

.method public abstract dumpToString()Ljava/lang/String;
.end method

.method public abstract getCompatConfigString(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract initCompatOnlineConfig()V
.end method

.method public abstract initInstance(Landroid/content/Context;)V
.end method

.method public abstract isInConfigList(ILjava/lang/String;)Z
.end method

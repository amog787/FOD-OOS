.class public interface abstract Lcom/android/server/pm/IOpCompatibilityHelper;
.super Ljava/lang/Object;
.source "IOpCompatibilityHelper.java"


# virtual methods
.method public abstract abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract customizeHardwareAccelerateIfNeeded(Landroid/content/pm/parsing/ParsingPackage;)V
.end method

.method public abstract customizePackageIfNeeded(Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V
.end method

.method public abstract customizeTargetSdkIfNeeded(Landroid/content/pm/parsing/ParsingPackage;)V
.end method

.method public abstract customizeVMSafeModeIfNeeded(Landroid/content/pm/parsing/ParsingPackage;)V
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

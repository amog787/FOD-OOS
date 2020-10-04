.class public interface abstract Lcom/android/server/IOpSmartPowerControl;
.super Ljava/lang/Object;
.source "IOpSmartPowerControl.java"


# virtual methods
.method public abstract addForcedOptApp(Ljava/lang/String;)Z
.end method

.method public abstract getForcedOptApps()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isDeepClean(Ljava/lang/String;)Z
.end method

.method public abstract isOptApp(Ljava/lang/String;)Z
.end method

.method public abstract isSmartOptApp(Ljava/lang/String;)Z
.end method

.method public abstract setPowerSaveWhitelistAppIds([I[I)V
.end method

.method public abstract shellCommand(Ljava/io/PrintWriter;)Z
.end method

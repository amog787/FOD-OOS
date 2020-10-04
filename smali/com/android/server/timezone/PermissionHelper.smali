.class public interface abstract Lcom/android/server/timezone/PermissionHelper;
.super Ljava/lang/Object;
.source "PermissionHelper.java"


# virtual methods
.method public abstract checkDumpPermission(Ljava/lang/String;Ljava/io/PrintWriter;)Z
.end method

.method public abstract enforceCallerHasPermission(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

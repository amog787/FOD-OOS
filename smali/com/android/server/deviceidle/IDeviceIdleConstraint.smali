.class public interface abstract Lcom/android/server/deviceidle/IDeviceIdleConstraint;
.super Ljava/lang/Object;
.source "IDeviceIdleConstraint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/deviceidle/IDeviceIdleConstraint$MinimumState;
    }
.end annotation


# static fields
.field public static final ACTIVE:I = 0x0

.field public static final SENSING_OR_ABOVE:I = 0x1


# virtual methods
.method public abstract startMonitoring()V
.end method

.method public abstract stopMonitoring()V
.end method

.class public interface abstract Lcom/android/server/NsdService$NsdSettings;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NsdSettings"
.end annotation


# direct methods
.method public static makeDefault(Landroid/content/Context;)Lcom/android/server/NsdService$NsdSettings;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 891
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 892
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/server/NsdService$NsdSettings$1;

    invoke-direct {v1, v0}, Lcom/android/server/NsdService$NsdSettings$1;-><init>(Landroid/content/ContentResolver;)V

    return-object v1
.end method


# virtual methods
.method public abstract isEnabled()Z
.end method

.method public abstract putEnabledStatus(Z)V
.end method

.method public abstract registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V
.end method

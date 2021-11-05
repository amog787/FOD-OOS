.class Lcom/android/server/NsdService$NsdSettings$1;
.super Ljava/lang/Object;
.source "NsdService.java"

# interfaces
.implements Lcom/android/server/NsdService$NsdSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NsdService$NsdSettings;->makeDefault(Landroid/content/Context;)Lcom/android/server/NsdService$NsdSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/android/server/NsdService$NsdSettings$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 3

    .line 895
    iget-object v0, p0, Lcom/android/server/NsdService$NsdSettings$1;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "nsd_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public putEnabledStatus(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 900
    iget-object v0, p0, Lcom/android/server/NsdService$NsdSettings$1;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "nsd_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 901
    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 905
    iget-object v0, p0, Lcom/android/server/NsdService$NsdSettings$1;->val$resolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 906
    return-void
.end method

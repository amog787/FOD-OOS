.class public Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;
.super Ljava/lang/Object;
.source "BatterySaverLocationPlugin.java"

# interfaces
.implements Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatterySaverLocationPlugin"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private updateLocationState(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 4
    .param p1, "caller"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 54
    nop

    .line 55
    invoke-virtual {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getGpsMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 62
    .local v0, "kill":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 63
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 62
    :goto_1
    const-string/jumbo v2, "location_global_kill_switch"

    invoke-static {v3, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    return-void
.end method


# virtual methods
.method public onBatterySaverChanged(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 0
    .param p1, "caller"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;->updateLocationState(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 43
    return-void
.end method

.method public onSystemReady(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 0
    .param p1, "caller"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;->updateLocationState(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 51
    return-void
.end method

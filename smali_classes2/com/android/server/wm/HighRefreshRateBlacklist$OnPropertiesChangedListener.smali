.class Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertiesChangedListener;
.super Ljava/lang/Object;
.source "HighRefreshRateBlacklist.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/HighRefreshRateBlacklist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPropertiesChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/HighRefreshRateBlacklist;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/HighRefreshRateBlacklist;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertiesChangedListener;->this$0:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/HighRefreshRateBlacklist;Lcom/android/server/wm/HighRefreshRateBlacklist$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/HighRefreshRateBlacklist;
    .param p2, "x1"    # Lcom/android/server/wm/HighRefreshRateBlacklist$1;

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertiesChangedListener;-><init>(Lcom/android/server/wm/HighRefreshRateBlacklist;)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 108
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "high_refresh_rate_blacklist"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertiesChangedListener;->this$0:Lcom/android/server/wm/HighRefreshRateBlacklist;

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Lcom/android/server/wm/HighRefreshRateBlacklist;->access$100(Lcom/android/server/wm/HighRefreshRateBlacklist;Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

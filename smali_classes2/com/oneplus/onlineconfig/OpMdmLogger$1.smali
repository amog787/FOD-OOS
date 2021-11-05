.class Lcom/oneplus/onlineconfig/OpMdmLogger$1;
.super Ljava/lang/Object;
.source "OpMdmLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/onlineconfig/OpMdmLogger;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/oneplus/onlineconfig/OpMdmLogger$1;->val$tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/onlineconfig/OpMdmLogger$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "appId"

    const-string v3, "X9HFK50WT7"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v2, p0, Lcom/oneplus/onlineconfig/OpMdmLogger$1;->val$tag:Ljava/lang/String;

    const-string v3, "lock_unlock_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-static {}, Lcom/oneplus/onlineconfig/OpMdmLogger;->access$000()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/oneplus/onlineconfig/OpMdmLogger$1;->val$context:Landroid/content/Context;

    const-string v3, "fingerprint"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 51
    .local v2, "fm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/onlineconfig/OpMdmLogger;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .end local v2    # "fm":Landroid/hardware/fingerprint/FingerprintManager;
    :cond_0
    invoke-static {}, Lcom/oneplus/onlineconfig/OpMdmLogger;->access$000()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oneplus/onlineconfig/OpMdmLogger;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-static {}, Lcom/oneplus/onlineconfig/OpMdmLogger;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "finger_sensor_type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_1
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/onlineconfig/OpMdmLogger$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/onlineconfig/OpMdmLogger$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 60
    return-void
.end method
